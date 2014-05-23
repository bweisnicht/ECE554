////////////////////////////////////////////////////////////////////////////////
// File:      assembler554.cpp
//
// Course:     ECE 554: Digital Engineering Laboratory
// Semester:   Spring 2013
// Project:    Audio Player(main course project)
//
// Author:     John Stuessy
////////////////////////////////////////////////////////////////////////////////

/*******************************************************************************
 * RUN COMMAND FORMAT:
 *   <assembler554> <input_file> <output_file>
 * FILES:
 *   input_file      - all unformatted files are acceptable
 *   output_file     - format is:
 *         "memory_initialization_radix=16;"
 *         "memory_initialization_vector="
 *         "<hex_instruction>,"
 *         "<hex_instruction>,"
 *         ...
 *         "<last_hex_instruction>;"
 *   "outhexass.mem" - format is only hex_instructions (nothing else)
 *
 *
 * LABELS: must start at the leftmost, followed by colon
 *
 * WHITESPACE:
 *   all are considered spaces between registers, labels, ...
 *      ":"  "," "("  ")" "\t"
 *
 * REGISTERS:
 *   declared:
 *      ($0...$31) OR (r0...r31) OR
 *
 *      $zero   = 0     = constant 0
 *      $at     = 1     = scratch register
 *      $v0-$v1 = 2-3   = function return values
 *      $a0-$a3 = 4-7   = function arguments
 *      $t0-$t7 = 8-15  = temporary
 *      $s0-$s7 = 16-23 = saved temporary
 *      $t8-$t9 = 24-25 = temporary
 *      $k0-$k1 = 26-27 = reserved: interrupt handlers
 *      $gp     = 28    = global pointer
 *      $sp     = 29    = stack pointer
 *      $fp     = 30    = frame pointer
 *      $ra     = 31    = return address
 *
 * COMMENT STYLE:   // /* -- # ;
 *
 * COMPILE COMMAND:
 *   g++ -o assembler554  assembler554.cpp
 *
 * ASSEMBLY RESTRICTIONS:
 *    -instructions must be lowercase
 *    -must make sure that immediates don't exceed specified value
 *    -potential problem with large address labels
 *    -immediate can be in hex or decimal
 *    -don't use negative decimal numbers (i.e. "-1", use 0xffff instead)
 *
 * IMMEDIATE BOUNDS:
 *    instructions(jal, j):         0x40000(-262144) = most negative(19bits)
 *    instructions(jal, j):         0x6ffff(458751)  = most positive(19bits)
 *    opcodes(5,7,12,13,15):        0x2000(-8192)    = most negative(14bits)
 *    opcodes(5,7,12,13,15):        0x1fff(8191)     = most positive(14bits)
 *    instructions(lbi, slbi):      0x800(-2048)     = most negative(12bits)
 *    instruction(lbi, slbi):       0x7ff(2047)      = most positive(12bits)
 *    opcodes(8-11,16,17,19,23,25): 0x100(-256)      = most negative(9 bits)
 *    opcodes(8-11,16,17,19,23,25): 0xff(255)        = most positive(9 bits)
 *
 * POSSIBLE UPDATES:
 *    see "ASSEMBLY RESTRICTIONS"
 ******************************************************************************/

#include <fstream>                   // for file I/O
#include <sstream>                   // for strings, istrstream
#include <iostream>                  // for basic cout
#include <string>                    // for input buffer
#include <set>                       // for lookup tables
#include <cctype>                    // isdigit
using namespace std;                 // bring standard names into scope

//FUNCTIONS
static void tblbuild();                          // build regtab and optab
static void hexout(fstream &out_file, int &val); // print instruction
static int  get_addr(string &field);             // get instruction address
static void set_addr(string &lab, int loc);      // declare label address
static int debug=0;                              // for debugginf

class symloc{
//symtab and regtab
   public:
      symloc(string aname, int aloc){
         name = aname;
         loc = aloc;
      }//end symloc constructor
      bool operator< (const symloc &a) const{
         if(name<a.name) return true;
         return false;
      }
      bool operator== (const symloc &a) const{
         if(name==a.name) return true;
         return false;
      }
      void setloc(int aloc){
         loc = aloc;
      }//end setloc constructor
   public:
      string name;
      int    loc;
};//end class symloc

class optype{
//optab
   public:
      optype(string aname, int aopfmt, int amajor,
         int aminor, int afields, int afix){
            name = aname;
            opfmt = aopfmt;
            major = amajor;
            minor = aminor;
            fields = afields;
            fix = afix;
      }//end optype constructor
      bool operator< (const optype &a) const{
         if(name<a.name) return true;
         return false;
      }
      bool operator== (const optype &a) const{
         if(name==a.name) return true;
         return false;
      }
   public:
      string name;
      int    opfmt;    // type of instruction
      int    major;    // opcode
      int    minor;    // LSB 2 bits
      int    fields;   // registers + addresses
      int    fix;      // other
};//end class optype


set<symloc, less<symloc> > symtab;
set<symloc, less<symloc> > regtab;
set<symloc, less<symloc> >::iterator p_sym;
set<optype, less<optype> > optab;
set<optype, less<optype> >::const_iterator p_op;


int main(int argc, char* argv[]){
   fstream my_input;         // assembly language input file handle
   fstream my_output;        // hex absolute memory image output
   fstream outputfile;       //just hex values

   string  line;             // temporary line
   string  parse_line;       // for parsing
   char    basic_line[128];  // raw input
   char    tab = '\t';
   char    space = ' ';
   bool    do_blank;
   string  lab, op, field[3];// parsed input line
   int     regval[3];        // values of registers

   //instruction operation format
   int     opkind, opfields;
   int     opmajor, opminor;
   int     opfix;

   int     loc = 0;
   int     val = 0;
   int     i;
   int     pass;
   bool    start = 0;

   tblbuild();

   //FILE I/O VERIFICATION
   if(argc != 3){                              // incorrect number of parameters
      cout << "assembler554  input_file  output_file" << endl;
      return 1;
   }

   cout << "now assembling " << argv[1] << " to " << argv[2] << endl;

   my_input.open(argv[1], ios::in);            // open input file

   if(!my_input){                              // bad input file
     cout << "can not open " << argv[1] << " for reading" << endl;
     return 1;
   }

   my_output.open(argv[2], ios::out);          // creates output file

   if(!my_output){                             // bad output file
      cout << "can not open " << argv[2] << " for writing" << endl;
      return 1;
   }

   outputfile.open("outhexass.mem", ios::out); //open hex output file

   if(!outputfile){                            // bad hex output file
      cout << "cannot open outhexass.mem for writing" << endl;
      return 1;
   } 

   //OUTPUT INITIALIZATION
   my_output << "memory_initialization_radix=16;" << endl;
   my_output << "memory_initialization_vector=" << endl;


   for(pass = 1; pass <= 2; pass++){
   //two pass assembler
      if(pass == 2){
         my_input.close();
         my_input.open(argv[1], ios::in);
         loc = 0;// reset location counter
      }
      while(!my_input.eof()){// main loop over source code
         lab = "";
         op = "";
         field[0] = "";
         field[1] = "";
         field[2] = ""; // parsed input line

         my_input.getline(basic_line, 128, '\n');
         line = string(basic_line);      // save for output
         if(line.length() < 1) continue; // blank line
         parse_line = line;              // modify for C++ ">>" reading
         if(debug >= pass) cout << "input=" << line << endl;

         // blank comments
         do_blank = false;

         for(i = 0; i < parse_line.length(); i++){
            if(do_blank){
               parse_line[i] = space;
               continue;
            }
            if(parse_line[i] == '#'){
               parse_line[i] = space;
               do_blank = true;
            }
            if(parse_line[i] == ';'){
               parse_line[i] = space;
               do_blank = true;
            }
            if(i+1 >= parse_line.length()) continue;
            if(parse_line[i] == '/' &&
               (parse_line[i+1] == '/' || parse_line[i+1] == '*')){
                  parse_line[i] = space;
                  do_blank = true;
            }
            if(parse_line[i] == '-' && parse_line[i+1] == '-'){
               parse_line[i] = space;
               do_blank = true;
            }
         }//end for

         // eliminate punctuation
         for(i = 0; i < parse_line.length(); i++){
            if(parse_line[i] == ':' || parse_line[i] == ',' ||
               parse_line[i] == '(' || parse_line[i] == '/' ||
               parse_line[i] == '*' || parse_line[i] == ')' ||
               parse_line[i] == '+' || parse_line[i] == '-' ||
               parse_line[i] == ';' || parse_line[i] == tab){

               parse_line[i] = space;
            }
         }//end for

         if(debug >= pass) cout << "parse=" << parse_line << endl;

         istringstream parse(parse_line);

         // check for label (first column not space or tab)
         if(parse_line[0] != space){
            parse >> lab;
            set_addr(lab, loc);
         }

         parse >> op;
         if(op == "end") break;// out of while loop

	      if(pass == 2){
	         if(start && (op != "")){
               my_output << "," << endl;
               outputfile << endl;
            }
	         else if (op != "") start = 1;
	      }

         // look up opcode, determine format, fill in fields
         p_op = optab.find(optype(op,0,0,0,0,0));
         if(p_op==optab.end()) continue; // op not found, ignore line

         opkind   = p_op->opfmt;
         opfields = p_op->fields;
         opmajor  = p_op->major;
         opminor  = p_op->minor;
         opfix    = p_op->fix;
         regval[0]= 0;
         regval[1]= 0;
         regval[2]= 0;

         for(i = 0; i < opfields; i++){
            parse >> field[i];
            p_sym = regtab.find(symloc(field[i],0));
            if(p_sym == regtab.end()) regval[i] = 0;
            else regval[i] = p_sym->loc;
         }

         if(debug>=pass){
            cout << "lab=" << lab << "  op=" << op << "  f[0]=" <<
            field[0] << "  f[1]=" << field[1] << "  f[2]=" <<
            field[2] << endl;

            cout << "opkind=" << opkind << "  opmajor=" << opmajor <<
            "  opminor=" << opminor << "  opfields=" << opfields <<
            "  opfix=" << opfix << endl;

            cout << "regval[0]=" << regval[0] << "  regval[1]=" <<
            regval[1] << "  regval[2]=" << regval[2] <<
            "  loc=" << loc << endl;
         }
         switch(opkind){
            case 0://three registers: add rd, rs, rt
	            val = opmajor<<19;//5 bit opcode
               val = val | (regval[1]<<14);//source register
               val = val | (regval[2]<<9);
               val = val | (regval[0]<<4);
	            val = val | opminor;
               break;
            case 1://just opcode: HALT, NOP, RTI, RET, RETI
               val = opmajor<<19;
               break;
            case 2://immediates: JAL <immediate>
               val = opmajor<<19;
               if(!isdigit((field[0])[0])){
	               val = val | ((get_addr(field[0])-(loc + 1)))&0x7ffff;
	            }
               else val = val | get_addr(field[0]);//no label used
               break;
            case 3://two registers, one immediate: ADDI <rd>,<rs>,<immediate>
               val = opmajor<<19;
               val = val | (regval[1]<<14);
               val = val | (regval[0]<<9);
               val = val | get_addr(field[2]);
               break;
            case 4://one register, one immediate: BEQZ <rs>,<immediate>
               val = opmajor<<19;
               val = val | (regval[0]<<14);
               if(!isdigit((field[1])[0])){
                  val = val | ((get_addr(field[1])-(loc + 1)))&0x3fff;
	            }
               else val = val | get_addr(field[1]);//no label used
               break;
	         case 5://one register, one immediate (no labels allowed)
	            val = opmajor<<19;
               if(!isdigit((field[1])[0])){
	            //label used
                  if(((field[1])[0] == 'U')){//get upper address of label
                     val = val | (regval[0]<<14);
                     // val = val | get_addr(field[1]);
                     field[1] = field[1].substr(1,field[1].length());
                     val = val | ((get_addr(field[1])&0x00fff000) >> 12);
                  }
                  else if((field[1])[0] == 'L'){//get lower address of label
                     val = val | (regval[0]<<14);
                     // val = val | get_addr(field[1]);
                     field[1] = field[1].substr(1,field[1].length());
                     val = val | ((get_addr(field[1])&0x00000fff)); 
                  }
                  else{
                     val = val | (regval[0]<<14);
                     val = val | get_addr(field[1]);
                  }
               }
               else{//no label used
                  val = val | (regval[0]<<14);
                  val = val | get_addr(field[1]);
               }
               break;
            case 9: // debug 0=off, 1=pass1 and 2. 2=just pass2
               debug = get_addr(field[0]);
               if(debug>2 || debug<0) debug=2;
               continue;
               break;
            default:
               continue;
         }//end switch

         if(pass == 2){
	      //build output hex
	         // hexout(my_output, loc); //for debugging
            // my_output << " ";        //for debugging
	         hexout(my_output, val);
            hexout(outputfile, val);
	         // my_output << line << endl;  //for debugging
            if(debug >= pass){
               cout << hex << loc << "=loc, " << hex <<
               val << "=val" << endl << endl;
            }
         }//end pass 2

         loc = loc + 1;
         if(my_input.eof()) break;
      }//end while loop
      if(pass == 2){
         my_output << ";" << endl;
         outputfile << endl;
      }
   }//end pass loop

   my_output.flush();      // force file to disk.
   my_output.close();      // close the file
   outputfile.close();

   cout << argv[2] << " written" << endl;
   if(debug){
      cout << "Symbol table" << endl;
      for(p_sym = symtab.begin(); p_sym != symtab.end(); p_sym++)
         cout << p_sym->name << " " << p_sym->loc << endl;
   }
   return 0;
}//end main

static void set_addr(string &lab, int loc){
   p_sym = symtab.find(symloc(lab,0));
   if(p_sym == symtab.end()) symtab.insert(symloc(lab,loc));
   else{
      symtab.erase(p_sym);
      symtab.insert(symloc(lab,loc));
   }
   return;
}//end set_addr

static int get_addr(string &field){
   union both{
      int val; 
      float fval;
   } u;

   char junk;

   u.val = 0;
   if(isdigit(field[0])){
      if(field[0] == '0' && (field[1] == 'x' || field[1] == 'X')){
         istringstream buf(field);
         buf >> junk;
         buf >> junk;
         buf >> hex >> u.val;
      }
      else if(field[1] == '.'){
      // second character must be a period
         istringstream buf(field);
         buf >> u.fval;
      }
      else{
         istringstream buf(field);
         buf >> u.val;
      }
   }
   else{
      p_sym = symtab.find(symloc(field,0));
      if(p_sym==symtab.end()) u.val = 0;
      else u.val = p_sym->loc;
   }
   return u.val;
}//end get_addr

static void hexout(fstream &out_file, int &val){
   int bits;
   char chars[16] = {'0', '1', '2', '3', '4', '5', '6', '7', 
                     '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
   int i;

   for(i = 0; i < 6; i++){
      bits = val;
      bits = (bits>>(20-i*4))&0xf;
      out_file << chars[bits];
   }
   return;
}

static void tblbuild(){
                     // opname, typ, maj, min, #f, fix
//THREE REGISTERS
   optab.insert(optype("rol",    0,   26,   0,  3,  0));//FINISHED
   optab.insert(optype("sll",    0,   26,   1,  3,  0));//FINISHED
   optab.insert(optype("ror",    0,   26,   2,  3,  0));//FINISHED
   optab.insert(optype("sra",    0,   26,   3,  3,  0));//FINISHED
   optab.insert(optype("add",    0,   27,   0,  3,  0));//FINISHED
   optab.insert(optype("sub",    0,   27,   1,  3,  0));//FINISHED
   optab.insert(optype("or",     0,   27,   2,  3,  0));//FINISHED
   optab.insert(optype("and",    0,   27,   3,  3,  0));//FINISHED
   optab.insert(optype("seq",    0,   28,   0,  3,  0));//FINISHED
   optab.insert(optype("slt",    0,   29,   0,  3,  0));//FINISHED
   optab.insert(optype("sle",    0,   30,   0,  3,  0));//FINISHED
   optab.insert(optype("sco",    0,   31,   0,  3,  0));//FINISHED

//JUST OPCODE
   optab.insert(optype("halt",   1,    0,   0,  0,  0));//FINISHED
   optab.insert(optype("nop",    1,    1,   0,  0,  0));//FINISHED
   optab.insert(optype("reti",   1,    2,   0,  0,  0));//FINISHED
   optab.insert(optype("rti",    1,    3,   0,  0,  0));//FINISHED
   optab.insert(optype("ret",    1,   14,   0,  0,  0));//FINISHED

//IMMEDIATE
   optab.insert(optype("j",      2,    4,   0,  1,  0));//FINISHED
   optab.insert(optype("jal",    2,    6,   0,  1,  0));//FINISHED

//TWO REGISTERS AND IMMEDIATE
   optab.insert(optype("addi",   3,    8,   0,  3,  0));//FINISHED
   optab.insert(optype("subi",   3,    9,   0,  3,  0));//FINISHED
   optab.insert(optype("ori",    3,   10,   0,  3,  0));//FINISHED
   optab.insert(optype("andi",   3,   11,   0,  3,  0));//FINISHED
   optab.insert(optype("st",     3,   16,   0,  3,  0));//FINISHED
   optab.insert(optype("ld",     3,   17,   0,  3,  0));//FINISHED
   optab.insert(optype("stu",    3,   19,   0,  3,  0));//FINISHED
   optab.insert(optype("roli",   3,   20,   0,  3,  0));//FINISHED
   optab.insert(optype("slli",   3,   21,   0,  3,  0));//FINISHED
   optab.insert(optype("rori",   3,   22,   0,  3,  0));//FINISHED
   optab.insert(optype("srai",   3,   23,   0,  3,  0));//FINISHED
   optab.insert(optype("btr",    3,   25,   0,  3,  0));//FINISHED

//ONE REGISTER AND IMMEDIATE
   optab.insert(optype("beqz",   4,   12,   0,  2,  0));//FINISHED
   optab.insert(optype("bnez",   4,   13,   0,  2,  0));//FINISHED
   optab.insert(optype("jalr",   4,    7,   0,  2,  0));//FINISHED
   optab.insert(optype("jr",     4,    5,   0,  2,  0));//FINISHED
   optab.insert(optype("bltz",   4,   15,   0,  2,  0));//FINISHED

//ONE REGISTER AND IMMEDIATE, NO LABELS
   optab.insert(optype("slbi",   5,   18,   0,  2,  0));//FINISHED
   optab.insert(optype("lbi",    5,   24,   0,  2,  0));//FINISHED

//DEBUG
   optab.insert(optype("debug",  9,    0,   0,  1,  0));


   regtab.insert(symloc( "r0", 0));
   regtab.insert(symloc( "r1", 1));
   regtab.insert(symloc( "r2", 2));
   regtab.insert(symloc( "r3", 3));
   regtab.insert(symloc( "r4", 4));
   regtab.insert(symloc( "r5", 5));
   regtab.insert(symloc( "r6", 6));
   regtab.insert(symloc( "r7", 7));
   regtab.insert(symloc( "r8", 8));
   regtab.insert(symloc( "r9", 9));
   regtab.insert(symloc("r10",10));
   regtab.insert(symloc("r11",11));
   regtab.insert(symloc("r12",12));
   regtab.insert(symloc("r13",13));
   regtab.insert(symloc("r14",14));
   regtab.insert(symloc("r15",15));
   regtab.insert(symloc("r16",16));
   regtab.insert(symloc("r17",17));
   regtab.insert(symloc("r18",18));
   regtab.insert(symloc("r19",19));
   regtab.insert(symloc("r20",20));
   regtab.insert(symloc("r21",21));
   regtab.insert(symloc("r22",22));
   regtab.insert(symloc("r23",23));
   regtab.insert(symloc("r24",24));
   regtab.insert(symloc("r25",25));
   regtab.insert(symloc("r26",26));
   regtab.insert(symloc("r27",27));
   regtab.insert(symloc("r28",28));
   regtab.insert(symloc("r29",29));
   regtab.insert(symloc("r30",30));
   regtab.insert(symloc("r31",31));

   regtab.insert(symloc( "$0", 0));
   regtab.insert(symloc( "$1", 1));
   regtab.insert(symloc( "$2", 2));
   regtab.insert(symloc( "$3", 3));
   regtab.insert(symloc( "$4", 4));
   regtab.insert(symloc( "$5", 5));
   regtab.insert(symloc( "$6", 6));
   regtab.insert(symloc( "$7", 7));
   regtab.insert(symloc( "$8", 8));
   regtab.insert(symloc( "$9", 9));
   regtab.insert(symloc("$10",10));
   regtab.insert(symloc("$11",11));
   regtab.insert(symloc("$12",12));
   regtab.insert(symloc("$13",13));
   regtab.insert(symloc("$14",14));
   regtab.insert(symloc("$15",15));
   regtab.insert(symloc("$16",16));
   regtab.insert(symloc("$17",17));
   regtab.insert(symloc("$18",18));
   regtab.insert(symloc("$19",19));
   regtab.insert(symloc("$20",20));
   regtab.insert(symloc("$21",21));
   regtab.insert(symloc("$22",22));
   regtab.insert(symloc("$23",23));
   regtab.insert(symloc("$24",24));
   regtab.insert(symloc("$25",25));
   regtab.insert(symloc("$26",26));
   regtab.insert(symloc("$27",27));
   regtab.insert(symloc("$28",28));
   regtab.insert(symloc("$29",29));
   regtab.insert(symloc("$30",30));
   regtab.insert(symloc("$31",31));

   regtab.insert(symloc("$zero",0));
   regtab.insert(symloc("$at",1));
   regtab.insert(symloc("$v0",2));
   regtab.insert(symloc("$v1",3));
   regtab.insert(symloc("$a0",4));
   regtab.insert(symloc("$a1",5));
   regtab.insert(symloc("$a2",6));
   regtab.insert(symloc("$a3",7));
   regtab.insert(symloc("$t0",8));
   regtab.insert(symloc("$t1",9));
   regtab.insert(symloc("$t2",10));
   regtab.insert(symloc("$t3",11));
   regtab.insert(symloc("$t4",12));
   regtab.insert(symloc("$t5",13));
   regtab.insert(symloc("$t6",14));
   regtab.insert(symloc("$t7",15));
   regtab.insert(symloc("$s0",16));
   regtab.insert(symloc("$s1",17));
   regtab.insert(symloc("$s2",18));
   regtab.insert(symloc("$s3",19));
   regtab.insert(symloc("$s4",20));
   regtab.insert(symloc("$s5",21));
   regtab.insert(symloc("$s6",22));
   regtab.insert(symloc("$s7",23));
   regtab.insert(symloc("$t8",24));
   regtab.insert(symloc("$t9",25));
   regtab.insert(symloc("$k0",26));
   regtab.insert(symloc("$k1",27));
   regtab.insert(symloc("$gp",28));
   regtab.insert(symloc("$sp",29));
   regtab.insert(symloc("$fp",30));
   regtab.insert(symloc("$ra",31));
   return;
}//end tblbuild
