////////////////////////////////////////////////////////////////////////////////
// File:      simulator.cpp
//
// Course:    ECE 554: Digital Design Laboratory
// Semester:  Spring 2013
// Project:   Audio Player(main course project)
//
// Author:    John Stuessy
////////////////////////////////////////////////////////////////////////////////

/*******************************************************************************
 * Description: 
 * 
 * 
 ******************************************************************************/
#include <iostream>
#include <fstream>
#include <string>
#include <cstring>
#include <cstdlib>
using namespace std;

#define REG_SIZE  32
typedef struct node{
  int data;
  int address;
  node *next;
}node;

static void memPrint(node * tmp);             //prints int contents of memory
static void regPrint(int regs[]);             //prints int contents of registers
static node* eval(string &line, bool runstat, int *regs, node * mem, int &pc); //evaluate instruction
static string toBinary(string line);          //convert hex to binary
static int toInt(string bin);                 //convert unsigned binary to int
static void printBin(int num);                //prints register & memory in binary
static bool GETBIT(int var, int pos);         //tells the pos'th bit of a number
static void printOpcode(int num, fstream outputfile);
static void outHex(int num, fstream & outputfile);
int normalize (int num);
bool jumped;
bool haltquit;
int regChange;
int regVal;
int pcprev;
int memaddr;
int memdata;

int main(int argc, char* argv[]) {
  /** VARIABLE DECLARATIONS **/
  fstream inputfile;        //input file
  fstream outputfile;       //register output file
  fstream outputfile2;      //memory output file

  string  user;             //user command
  string  line;             //current file line
  string  parseline;        //line for parsing
  char    basicline[128];   //raw input
  int     pc;               //program counter
  bool    endstat    = 0;   //end of program status
  bool    runstat    = 0;   //user run command status
  bool    stepstat   = 0;   //user step command status
  bool    startstat  = 0;   //start user query process
  bool    quitstat   = 0;   //user quit command status
  int     jmpcnt     = 0;   //jump counter for address

  jumped    = 0;            //recently jumped status
  regChange = -1;           //register that has recently changed
  regVal    = 0x7fffffff;   //recently changed register value
  pcprev    = -1;           //pc value for instruction that changes mem or reg
  memaddr   = -1;           //address of memory that recently changed
  memdata   = 0x7fffffff;   //data of memory that recently changed
  haltquit  = 0;            //halt instruction ends simulation

  //static variables
  string  badFileError = "ERROR: Improper input file";
  string RUN  = "run";
  string QUIT = "quit";
  string STEP = "s";//TODO: RECENTLY CHANGED 3/31/2013 @ 10:08PM
  string REG  = "reg";
  string MEM  = "mem";

  if(argc != 2){//check arguments
    cout << "format: <simulator> <input_file>" << endl;
    return 1;
  }

  //open input file for reading
  cout << "opening file: " << argv[1] << endl;
  inputfile.open(argv[1], ios::in);

  if(!inputfile){
    cout << "cannot open " << argv[1] << endl;
    return 1;
  }

  //open output files for writing
  cout << "attempting to open simoutputfile" << endl;
  outputfile.open("simoutputfile", ios::out);
  if(!outputfile){
    cout << "cannot open simoutputfile for writing" << endl;
  }

  cout << "attempting to open memoutput" << endl;
  outputfile2.open("memoutput", ios::out);
  if(!outputfile2){
    cout << "cannot open memoutput for writing" << endl;
  }

  //user instructions info
  cout << "====================" << endl;
  cout << "Simulator Commands: " << endl;
  cout << "  run  - run complete program" << endl;
  cout << "  quit - quit/end simulation" << endl;
  cout << "  s    - step one instruction" << endl;//TODO: RECENTLY CHANGED 3/31/2013 @ 10:08PM
  cout << "  reg  - see all register contents" << endl;
  cout << "  mem  - see contents of memory address" << endl;
  cout << "====================" << endl;
  user = "";

  //read first two lines of file
  for(int i = 0; i < 2; i++){
    if(inputfile.eof()){
      cout << badFileError << endl;
      return 1;
    }
    inputfile.getline(basicline, 128, '\n');
  }

  //INITIALIZATION PROCESS
  pc = 0;                             //set program counter
  int regs[REG_SIZE] = {0};           //create 32 registers
  node *mem = NULL;                   //=========
  node *tmp;                          // create
  tmp = (node*)malloc(sizeof(node));  // memory
  tmp->data = 0;                      // nodes
  tmp->address = 0;                   // for
  tmp->next = mem;                    // simulation
  mem = tmp;                          //=========

  //start of instruction reading
  do{
    if(inputfile.eof() || haltquit){
      cout << "END OF PROGRAM(not end of simulator)" << endl;
      cout << "====================" << endl;
      cout << "Possible End Commands: " << endl;
      cout << "  quit - quit/end simulation" << endl;
      cout << "  reg  - see all register contents" << endl;
      cout << "  mem  - see contents of memory address" << endl;
      cout << "====================" << endl;
      do{//allow user to make multiple queries between instructions
        cin >> user;

        if(user ==  QUIT){    //quit status is set
          quitstat = 1;
        }//end quit
        else if(user == MEM){ //print contents of memory
          memPrint(mem);
        }//end mem
        else if(user == REG){ //print contents of all registers
          regPrint(regs);
        }//end reg
        else{//invalid entry
          cout << "Incorrect command: try again" << endl;	   
        }//end invalid


      }while(!quitstat);
    }//end END OF FILE

    else{//read instruction
      if(!jumped){//previous instruction was not a jump
        //read instruction
        inputfile.getline(basicline, 128, '\n');

        if(strlen(basicline) <= 6){//not instruction
          if(strlen(basicline) != 0){//no instruction on line
            cout << endl << badFileError << endl;
            return 1;
          }
          else{//last line of input file
            endstat = 1;
            break;
          }
        }
        //proper instruction
        else if(runstat){//Run mode selected
          line = string(basicline);
          line = line.substr(0,6);//get only instruction (not comma)
          node *test = mem;
          mem = eval(line, runstat, regs, test, pc);//run instruction
          
          if(regChange != -1){//register has been modified
            //print to register output file
            outputfile << "0x";
            outHex(pcprev, outputfile);
            outputfile << " r" << dec << regChange << " [0x";
            outHex(regVal, outputfile);
            outputfile << "] ";

            //print opcode
            int oc = toInt(line);
            for(int i = 0; i < 5; i++){
              outputfile << GETBIT(oc, i+8);
            }
            outputfile << endl;

            //reset dynamic register variables
            regChange = -1;
            regVal = -1;
          }//end regChange

          if(memaddr != -1){//memory has been modified
            //print to memory output file
            outputfile2 << "pc=[0x";
            outHex(pcprev, outputfile2);
            outputfile2 << "] addr=[0x";
            outHex(memaddr, outputfile2);
            outputfile2 << "] data=[0x";
            outHex(memdata, outputfile2);
            outputfile2 << "] ";

            //print opcode
            int bc = toInt(line);
            for(int i = 0; i < 5; i++){
              outputfile2 << GETBIT(bc, i+8);
            }
            outputfile2 << endl;

            //reset dynamic memory variables
            memaddr = -1;
            memdata = -1;
          }//end memory changed
          
          pcprev = -1;//reset dynamic variable
          pc = pc + 1;//increment program counter
        }//end runstat

        else{//step mode selected
          //print standard status
          line = string(basicline);
          line = line.substr(0,6);//get only instruction (not comma)
          cout << "###################" << endl;
          cout << "PC: " << pc;
          cout << "\t" << line << endl;
          node *test = mem;
          mem = eval(line, runstat, regs, mem, pc);//run instruction

          if(regChange != -1){//register has been modified
            //print to register output file
            outputfile << "0x";
            outHex(pcprev, outputfile);
            outputfile << " r" << dec << regChange << " [0x";
            outHex(regVal, outputfile);
            outputfile << "] ";

            //print opcode
            int oc = toInt(line);
            for(int i = 0; i < 5; i++){
              outputfile << GETBIT(oc, i+8);
            }
            outputfile << endl;

            //reset dynamic register variables
            regChange = -1;
            regVal = -1;
          }//end regChange

          if(memaddr != -1){//memory has been modified
            //print to memory output file
            outputfile2 << "pc=[0x";
            outHex(pcprev, outputfile2);
            outputfile2 << "] addr=[0x";
            outHex(memaddr, outputfile2);
            outputfile2 << "] data=[0x";
            outHex(memdata, outputfile2);
            outputfile2 << "] ";

            //print opcode
            int bc = toInt(line);
            for(int i = 0; i < 5; i++){
              outputfile2 << GETBIT(bc, i+8);
            }
            outputfile2 << endl;

            //reset dynamic memory variables
            memaddr = -1;
            memdata = -1;
          }//end memory changed

          pcprev = -1;//reset dynamic variable
          cout << "BINARY REPRESENTATION: \t" << line << endl;
          cout << "====================" << endl;
          pc = pc + 1;//increment program counter
        }//end step mode
      }//end not jumped


      else{//jumped recently
        //reopen input file for instruction evaluation
        inputfile.close();
        inputfile.open(argv[1], ios::in);

        //skip non-instruction lines
        inputfile.getline(basicline, 128, '\n');
        inputfile.getline(basicline, 128, '\n');
        inputfile.getline(basicline, 128, '\n');//first instruction
        jmpcnt = 0;                             //initialize jump location counter
        
        while(pc != jmpcnt){//not at correct instruction yet
          inputfile.getline(basicline, 128, '\n');
          jmpcnt++;
        }

        //reset dynamic jump variables
        jumped = 0;
        jmpcnt = 0;

        if(strlen(basicline) <= 6){//non-instruction
          if(strlen(basicline) != 0){//no instruction on line
            cout << endl << badFileError << endl;
            return 1;
          }
          else{//last line of input file
            endstat = 1;
            break;
          }
        }//end non-instruction

        //proper instruction
        else if(runstat){//run mode selected
          line = string(basicline);
          line = line.substr(0,6);//get only instruction (not comma)
          node *test = mem;        
          mem = eval(line, runstat, regs, test, pc);//run instruction

          if(regChange != -1){//register has been modified
            //print to register output file
            outputfile << "0x";
            outHex(pcprev, outputfile);
            outputfile << " r" << dec << regChange << " [0x";
            outHex(regVal, outputfile);
            outputfile << "] ";

            //print opcode
            int oc = toInt(line);
            for(int i = 0; i < 5; i++){
              outputfile << GETBIT(oc, i+8);
            }
            outputfile << endl;

            //reset dynamic register variables
            regChange = -1;
            regVal = -1;
          }//end regChange

          if(memaddr != -1){//memory has been modified
            //print to memory output file
            outputfile2 << "pc=[0x";
            outHex(pcprev, outputfile2);
            outputfile2 << "] addr=[0x";
            outHex(memaddr, outputfile2);
            outputfile2 << "] data=[0x";
            outHex(memdata, outputfile2);
            outputfile2 << "] ";

            //print opcode
            int bc = toInt(line);
            for(int i = 0; i < 5; i++){
              outputfile2 << GETBIT(bc, i+8);
            }
            outputfile2 << endl;

            //reset dynamic memory variables
            memaddr = -1;
            memdata = -1;
          }//end memory changed

          pcprev = -1;//reset dynamic variable
          pc = pc + 1;//increment program counter
        }//end run mode

        else{//step mode selected
          //print standard status
          line = string(basicline);
          line = line.substr(0,6);//get only instruction (not comma)
          cout << "###################" << endl;
          cout << "PC: " << pc;
          cout << "\t" << line << endl;
          node *test = mem;
          mem = eval(line, runstat, regs, mem, pc);//run instruction

          if(regChange != -1){//register has been modified
            //print to register output file
            outputfile << "0x";
            outHex(pcprev, outputfile);
            outputfile << " r" << dec << regChange << " [0x";
            outHex(regVal, outputfile);
            outputfile << "] ";

            //print opcode
            int oc = toInt(line);
            for(int i = 0; i < 5; i++){
              outputfile << GETBIT(oc, i+8);
            }
            outputfile << endl;

            //reset dynamic register variables
            regChange = -1;
            regVal = -1;
          }//end regChagnge

          if(memaddr != -1){//memory has been modified
            //print to memory output file
            outputfile2 << "pc=[0x";
            outHex(pcprev, outputfile2);
            outputfile2 << "] addr=[0x";
            outHex(memaddr, outputfile2);
            outputfile2 << "] data=[0x";
            outHex(memdata, outputfile2);
            outputfile2 << "] ";

            //print opcode
            int bc = toInt(line);
            for(int i = 0; i < 5; i++){
              outputfile2 << GETBIT(bc, i+8);
            }
            outputfile2 << endl;

            //reset dynamic memory variables
            memaddr = -1;
            memdata = -1;
          }//end memory changed

          pcprev = -1;//reset dynamic variable
          cout << "BINARY REPRESENTATION: \t" << line << endl;
          cout << "====================" << endl;
          pc = pc + 1;//increment program counter
        }//end step mode
      }//end jumped
    }//end read instruction



    if(!runstat){//not in full run mode
      do{//allow user to make multiple queries between instructions
        startstat = 1;
        stepstat = 0;
        cin >> user;

        if(user == RUN){//run status is set
          runstat = 1;
        }//end run
        else if(user ==  QUIT){//quit status is set
          quitstat = 1;
        }//end quit
        else if(user == STEP){//step status is set
          stepstat = 1;
        }//end step
        else if(user == MEM){//print contents of all memory
          memPrint(mem);
        }//end mem
        else if(user == REG){//print contents of all registers
          regPrint(regs);
        }//end reg
        else{//invalid entry
          cout << "Incorrect command: try again" << endl;	   
        }//end invalid
      }while(!stepstat && !runstat && !quitstat);
    }//end runstat

  }while(user != "quit");


  cout << "closing file: " << argv[1] << endl;
  inputfile.close();  //close input file
  cout << "closing simoutputfile" << endl;
  outputfile.close(); //close register output file
  cout << "closing memoutfile " << endl;
  outputfile2.close();//close memory output file


  if(endstat){//stepped through the whole program, user can check status, then quit
    cout << "END OF PROGRAM(not end of simulator)" << endl;
    cout << "====================" << endl;
    cout << "Possible End Commands: " << endl;
    cout << "  quit - quit/end simulation" << endl;
    cout << "  reg  - see all register contents" << endl;
    cout << "  mem  - see contents of memory address" << endl;
    cout << "====================" << endl;
    do{//allow user to make multiple queries between instructions
      cin >> user;
      if(user ==  QUIT){//quit status is set
        quitstat = 1;
      }//end quit
      else if(user == MEM){//print contents of all memory
        memPrint(mem);
      }//end mem
      else if(user == REG){//print contents of all registers
        regPrint(regs);
      }//end reg
      else{//invalid entry
        cout << "Incorrect command: try again" << endl;	   
      }//end invalid

    }while(!quitstat);
  }//end endstat

  //free up memory allocations
  node * finish = mem;
  while(mem->next != NULL){
    finish = mem->next;
    free(mem);
    mem = finish;
  }//end mem->next
  free(finish);

  return 0;
}//end main


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////FUNCTIONS///////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


/**
 * 
 */
node * eval(string &line, bool runstat, int* regs, node* mem, int &pc){
//input line is a 6 character hex number
   line              = toBinary(line);            //convert to binary value
   int opcode        = toInt(line.substr( 0, 5)); //opcode
   int immMed        = toInt(line.substr(10,14)); //LSB 14 bits 
   int immShort      = toInt(line.substr(15, 9)); //LSB 9 bits
   int immLong       = toInt(line.substr( 5,19)); //LSB 19 bits
   unsigned int sreg = toInt(line.substr( 5, 5)); //input 1 register bits
   unsigned int treg = toInt(line.substr(10, 5)); //input 2 register bits
   unsigned int dreg = toInt(line.substr(15, 5)); //destination register bits
   unsigned int two = (unsigned int) toInt(line.substr(22,2));

   int sign     = 0;  //sign of addition, used in SCO instruction
   int sum      = 0;  //sum of addition, used in SCO instruction
   int temp     = 0;  //temporary variable used in BTR instruction
   bool mempres = 0;  //flag for memory modification instructions
   node *  head = mem;//memory header pointer

   if(!runstat) cout << "OPCODE: " << opcode << endl;
   switch(opcode){
     case 0: //HALT
       if(!runstat) cout << "INSTRUCTION TYPE: halt" << endl;
       //halt operation and dump register contents into file
       haltquit = 1;
       break;
     case 1: //NOP
       if(!runstat) cout << "INSTRUCTION TYPE: nop" << endl;
       //does nothing
       break;
     case 2: //RETI
       if(!runstat) cout << "INSTRUCTION TYPE: reti" << endl;
       //do nothing
       break;
     case 3: //RTI
       if(!runstat) cout << "INSTRUCTION TYPE: rti" << endl;
       //pc = $ra
       pc = regs[31];
       
       jumped = 1;//jump instruction
       break;
     case 4: //J
       if(!runstat) cout << "INSTRUCTION TYPE: j" << endl;
       //pc = pc + immediate(sign extend)
       if(GETBIT(immLong, 13) == 1) immLong = immLong | 0xfff80000;
       pc = pc + immLong;
       jumped = 1;//jump instruction
       break;
     case 5: //JR
       if(!runstat) cout << "INSTRUCTION TYPE: jr" << endl;
       //pc = Rs + immediate(sign extend)
       if(GETBIT(immMed, 18) == 1) immMed = immMed | 0xffffc000;
       pc = regs[sreg] + immMed - 1;
       jumped = 1;//jump instruction
       break;
     case 6: //JAL
       if(!runstat) cout << "INSTRUCTION TYPE: jal" << endl;
       //$ra = pc; pc = pc + immediate(sign extend)
       regs[31] = pc + 1;
       if(GETBIT(immLong, 13) == 1) immLong = immLong | 0xfff80000;
/** OUTPUTFILE CHANGES **/
         regChange = 31;
         regVal = regs[31];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       pc = pc + immLong;
       jumped = 1;//jump instruction
       break;
     case 7: //JALR
       if(!runstat) cout << "INSTRUCTION TYPE: jalr" << endl;
       //$ra = pc; pc = Rs + immediate(sign extend)
       regs[31] = pc + 1;
       if(GETBIT(immMed, 18) == 1) immMed = immMed | 0xffffc000;
/** OUTPUTFILE CHANGES **/
         regChange = 31;
         regVal = regs[31];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       pc = regs[sreg] + immMed - 1;
       jumped = 1;//jump instruction
       break;
     case 8: //ADDI
       if(!runstat) cout << "INSTRUCTION TYPE: addi" << endl;
       //Rd = Rs + immediate(sign extend)
       if(GETBIT(immShort,23 ) == 1) immShort = immShort | 0xfffffe00;
       regs[treg] = regs[sreg] + immShort;
/** OUTPUTFILE CHANGES **/
         regChange = treg;
         regVal = regs[treg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break;
     case 9: //SUBI
       if(!runstat) cout << "INSTRUCTION TYPE: subi" << endl;
       //Rd = immediate(sign extend) - Rs
       if(GETBIT(immShort,23 ) == 1) immShort = immShort | 0xfffffe00;
       regs[treg] = immShort - regs[sreg];
/** OUTPUTFILE CHANGES **/
         regChange = treg;
         regVal = regs[treg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 10: //ORI
       if(!runstat) cout << "INSTRUCTION TYPE: ori" << endl;
       //Rd = Rs | immediate(zero extend)
       regs[treg] = regs[sreg]|immShort;
/** OUTPUTFILE CHANGES **/
         regChange = treg;
         regVal = regs[treg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break;
     case 11: //ANDI
       if(!runstat) cout << "INSTRUCTION TYPE: andi" << endl;
       //Rd = Rs & immediate(zero extend)
       regs[treg] = regs[sreg]&immShort;
/** OUTPUTFILE CHANGES **/
         regChange = treg;
         regVal = regs[treg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break;
     case 12: //BEQZ
       if(!runstat) cout << "INSTRUCTION TYPE: beqz" << endl;
       //if(Rs = 0) pc = pc + immediate(sign extend);
       if(GETBIT(immMed,18) == 1) immMed = immMed | 0xffffc000;
       if(regs[sreg] == 0){
         pc = pc + immMed;
         jumped = 1;//jump instruction
       }
       break; 
     case 13: //BNEZ
       if(!runstat) cout << "INSTRUCTION TYPE: bnez" << endl;
       //if(Rs != 0) pc = pc + immediate(sign extend);
       if(GETBIT(immMed,18) == 1) immMed = immMed | 0xffffc000;
       if(regs[sreg] != 0){
         pc = pc + immMed;
         jumped = 1;//jump instruction
       }
       break; 
     case 14: //RET
       if(!runstat) cout << "INSTRUCTION TYPE: ret" << endl;
       //pc = $ra
       pc = regs[31] - 1;
       jumped = 1;//jump instruction
       break;
     case 15: //BLTZ
       if(!runstat) cout << "INSTRUCTION TYPE: bltz" << endl;
       //if(Rs < 0) pc = pc + immediate(sign extend);
       if(GETBIT(immMed,18) == 1) immMed = immMed | 0xffffc000;
       if(regs[sreg] < 0){
         pc = pc + immMed;
         jumped = 1;//jump instruction
       } 
       break; 
     case 16: //ST
       if(!runstat) cout << "INSTRUCTION TYPE: st" << endl;
       //mem[Rs + immediate(sign extend)] = Rd
       if(GETBIT(immShort,23) == 1) immShort = immShort | 0xfffffe00;
       while(mem != NULL){
         if(mem->address == regs[sreg] + immShort){
           mem->data = regs[treg];
           mempres = 1;
         }
         mem = mem->next;
       }
       if(!mempres){
         node *tmp;
         tmp = (node *)malloc(sizeof(node));
         tmp->data = regs[treg];
         tmp->address = regs[sreg] + immShort;
         tmp->next = head;
         head = tmp;
       }
/** OUTPUTFILE CHANGES **/
         memdata = regs[treg];
         memaddr = regs[sreg] + immShort;
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 17: //LD
       if(!runstat) cout << "INSTRUCTION TYPE: ld" << endl;
       //Rd = mem[Rs + immediate(sign extend)]
       if(GETBIT(immShort,23) == 1) immShort = immShort | 0xfffffe00;
       while(mem != NULL){
         if(mem->address == regs[sreg] + immShort){
           regs[treg] = mem->data;
           mempres = 1;
           memdata = mem->data;
         }
         mem = mem->next;
       }
       if(!mempres){
         node *tmp;
         tmp = (node *)malloc(sizeof(node));
         tmp->data = 0;
         tmp->address = regs[sreg] + immShort;
         tmp->next = head;
         head = tmp;
         regs[treg] = head->data;
         memdata = 0;
       }
/** OUTPUTFILE CHANGES **/
         regChange = treg;
         regVal = regs[treg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
/** OUTPUTFILE CHANGES **/
         memaddr = regs[sreg] + immShort;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 18: //SLBI
       if(!runstat) cout << "INSTRUCTION TYPE: slbi" << endl;
       if(GETBIT(immMed,20) == 1) immMed = immMed | 0xfffff000;
       else immMed = immMed & 0x00000fff;
       //SPECIAL NOTE ON THIS: ONLY USE 12 BITS FOR IMMEDIATE
       //Rs = (Rs<<12) | immediate(zero extend)
       regs[sreg] = regs[sreg] << 12;
       immMed = immMed&0x00000fff;
       regs[sreg] = regs[sreg] | immMed;
/** OUTPUTFILE CHANGES **/
         regChange = sreg;
         regVal = regs[sreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 19: //STU
       if(!runstat) cout << "INSTRUCTION TYPE: stu" << endl;
       //mem[Rs + immediate(sign extend)] = Rd; Rs = Rs + immediate(sign extend);
       if(GETBIT(immShort,23) == 1) immShort = immShort | 0xfffffe00;
       regs[sreg] = regs[sreg] + immShort;
       while(mem != NULL){
         if(mem->address == regs[sreg]){
           mem->data = regs[treg] ;
           mempres = 1;
         }
         mem = mem->next;
       }
       if(!mempres){
         node *tmp;
         tmp = (node *)malloc(sizeof(node));
         tmp->data = regs[treg];
         tmp->address = regs[sreg];
         tmp->next = head;
         head = tmp;
       }
/** OUTPUTFILE CHANGES **/
         regChange = sreg;
         regVal = regs[sreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
/** OUTPUTFILE CHANGES **/
         memdata = regs[treg];
         memaddr = regs[sreg];
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 20: //ROLI
       if(!runstat) cout << "INSTRUCTION TYPE: roli" << endl;
       //Rd = Rs<<(rotate)(immediate)
//TODO: ACCOUNT FOR 24 BITS INSTEAD OF 32
         regs[treg] = regs[sreg];
         for(int i = 0; i < ((unsigned int) immShort); i++){
           if(GETBIT(regs[treg], 8)) regs[treg] = ((regs[treg] << 1) | 0x001);
           else regs[treg] = regs[treg] << 1;
         }
         //regs[treg] = ((regs[sreg] << (unsigned int) immShort) | (regs[sreg] >> (24-(unsigned int)immShort)));
/** OUTPUTFILE CHANGES **/
         regChange = treg;
         regVal = regs[treg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 21: //SLLI
       if(!runstat) cout << "INSTRUCTION TYPE: slli" << endl;
       //Rd = Rs <<immediate
       regs[treg] = regs[sreg] << immShort;
/** OUTPUTFILE CHANGES **/
         regChange = treg;
         regVal = regs[treg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 22: //RORI
       if(!runstat) cout << "INSTRUCTION TYPE: rori" << endl;
       //Rd = Rs>>(rotate)(immediate)
//TODO: ACCOUNT FOR 24 BITS INSTEAD OF 32
         regs[treg] = regs[sreg];
         for(int i = 0; i < ((unsigned int) (immShort)); i++){
           if(GETBIT(regs[treg], 31)) regs[treg] = ((regs[treg] >> 1) | 0xff800000);
           else regs[treg] = (regs[treg] << 1) & 0x007fffff;
         }  
         //regs[treg] = ((regs[sreg] >> (unsigned int) immShort) | (regs[sreg] << (24-(unsigned int)immShort)));
/** OUTPUTFILE CHANGES **/
         regChange = treg;
         regVal = regs[treg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 23: //SRAI
       if(!runstat) cout << "INSTRUCTION TYPE: srai" << endl;
       //Rd = Rs>>(arithmetic)(immediate)
       regs[treg] = (regs[sreg] >> ((unsigned int) immShort));
/** OUTPUTFILE CHANGES **/
         regChange = treg;
         regVal = regs[treg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 24: //LBI
       if(!runstat) cout << "INSTRUCTION TYPE: lbi" << endl;
       //Rs = immediate(sign extend)
       if(GETBIT(immMed,20) == 1) immMed = immMed | 0xfffff000;
       else immMed = immMed & 0x00000fff;
       regs[sreg] = immMed;
/** OUTPUTFILE CHANGES **/
         regChange = sreg;
         regVal = regs[sreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 25: //BTR
       if(!runstat) cout << "INSTRUCTION TYPE: btr" << endl;
       //Rd[i] = Rs[15-i] fpr i = 0 to 15
       for(int i = 0; i < 24; i++){
         temp = (temp + GETBIT(regs[sreg], 31-i)) << 1;
       }//end for
       temp = temp >> 1;
       regs[treg] = temp;
/** OUTPUTFILE CHANGES **/
         regChange = treg;
         regVal = regs[treg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 26: //COMPOSITE: ROL, SLL, ROR, SRA 

       //ROL: Rd = Rs <<(rotate)(Rt lowest 4)
       if(two == 0){
         if(!runstat) cout << "INSTRUCTION TYPE: rol" << endl;
//TODO: ACCOUNT FOR 24 BITS INSTEAD OF 32
         regs[dreg] = regs[sreg];
         for(int i = 0; i < ((unsigned int) (regs[treg]&0x0000001f)); i++){
           if(GETBIT(regs[dreg], 8)) regs[dreg] = ((regs[dreg] << 1) | 0x001);
           else regs[dreg] = regs[dreg] << 1;
         }
	       //regs[dreg] = ((regs[sreg] << (regs[treg]&0x0000000f)) | (regs[sreg] >> (24-(regs[treg]&0x0000000f))));
/** OUTPUTFILE CHANGES **/
         regChange = dreg;
         regVal = regs[dreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       }//end ROL

       //SLL: Rd = Rs << Rt(lowest 4)
       else if(two == 1){
         if(!runstat) cout << "INSTRUCTION TYPE: sll" << endl;
         regs[dreg] = regs[sreg] << (regs[treg]&0x0000001f);
/** OUTPUTFILE CHANGES **/
         regChange = dreg;
         regVal = regs[dreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       }//end SLL

       //ROR: Rd = Rs >>(rotate)(Rt lowest 4)
       else if(two == 2){
         if(!runstat) cout << "INSTRUCTION TYPE: ror" << endl;
//TODO: ACCOUNT FOR 24 BITS INSTEAD OF 32
         regs[dreg] = regs[sreg];
         for(int i = 0; i < ((unsigned int) (regs[treg]&0x0000001f)); i++){
           if(GETBIT(regs[dreg], 31)) regs[dreg] = ((regs[dreg] >> 1) | 0xff800000);
           else regs[dreg] = (regs[dreg] << 1) & 0x007fffff;
         }  
    	   //regs[dreg] = ((regs[sreg] >> (regs[treg]&0x0000000f)) | (regs[sreg] << (24-(regs[treg]&0x0000000f))));
/** OUTPUTFILE CHANGES **/
         regChange = dreg;
         regVal = regs[dreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       }//end ROR

       //SRA: Rd = Rs >>(arithmetic)(Rt lowest 4)
       else if(two == 3){
         if(!runstat) cout << "INSTRUCTION TYPE: sra" << endl;
         regs[dreg] = regs[sreg] >> (regs[treg]&0x0000001f);
/** OUTPUTFILE CHANGES **/
         regChange = dreg;
         regVal = regs[dreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       }//end SRA
       break; 
     case 27: //COMPOSITE: ADD, SUB, OR, AND
       //ADD: Rd = Rs + Rt
       if(two == 0){
         if(!runstat) cout << "INSTRUCTION TYPE: add" << endl;
         regs[dreg] = regs[sreg] + regs[treg];
/** OUTPUTFILE CHANGES **/
         regChange = dreg;
         regVal = regs[dreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       }//end ADD

       //SUB: Rd = Rt - Rs
       else if(two == 1){
         if(!runstat) cout << "INSTRUCTION TYPE: sub" << endl;
         regs[dreg] = regs[treg] - regs[sreg];
/** OUTPUTFILE CHANGES **/
         regChange = dreg;
         regVal = regs[dreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       }//end SUB
 
       //OR: Rd = Rs | Rt
       else if(two == 2){
         if(!runstat) cout << "INSTRUCTION TYPE: or" << endl;
         regs[dreg] = regs[sreg] | regs[treg];
/** OUTPUTFILE CHANGES **/
         regChange = dreg;
         regVal = regs[dreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       }//end OR

       //AND: Rd = Rs & Rt
       else if(two == 3){
         if(!runstat) cout << "INSTRUCTION TYPE: and" << endl;
         regs[dreg] = regs[sreg] & regs[treg];
/** OUTPUTFILE CHANGES **/
         regChange = dreg;
         regVal = regs[dreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       }//end AND
       break; 
     case 28: //SEQ
       if(!runstat) cout << "INSTRUCTION TYPE: seq" << endl;
       //if(Rs==Rt) Rd = 1
       //if(Rs!=Rt) Rd = 0;
       if(regs[sreg] == regs[treg]) regs[dreg] = 1;
       else regs[dreg] = 0;
/** OUTPUTFILE CHANGES **/
         regChange = dreg;
         regVal = regs[dreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 29: //SLT
       if(!runstat) cout << "INSTRUCTION TYPE: slt" << endl;
       //if(Rs < Rt) Rd = 1;
       //else Rd = 0;
       if(regs[sreg] < regs[treg]) regs[dreg] = 1;
       else regs[dreg] = 0;
/** OUTPUTFILE CHANGES **/
         regChange = dreg;
         regVal = regs[dreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 30: //SLE
       if(!runstat) cout << "INSTRUCTION TYPE: sle" << endl;
       //if(Rs <= Rt) Rd = 1;
       //else Rd = 0;
       if(regs[sreg] <= regs[treg]) regs[dreg] = 1;
       else regs[dreg] = 0;
/** OUTPUTFILE CHANGES **/
         regChange = dreg;
         regVal = regs[dreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break; 
     case 31: // SCO
       if(!runstat) cout << "INSTRUCTION TYPE: sco" << endl;
       //if(Rs + Rt) generates a carry out Rd = 1;
       //else Rd = 0;
       if((regs[sreg] > 0) && (regs[treg] > 0)) sign = 1;
       else if ((regs[treg] < 0) && (regs[sreg] < 0)) sign = -1;
       else sign = 0;

       if(sign == 0) regs[dreg] = 0;
       else{
         sum = regs[sreg] + regs[treg];
         if(((sign == 1) && (sum < 0)) || ((sign == -1) && (sum > 0))) regs[dreg] = 1;
         else regs[dreg] = 0;
       }
/** OUTPUTFILE CHANGES **/
         regChange = dreg;
         regVal = regs[dreg];
         pcprev = pc;
/** END OF OUTPUTFILE CHANGES **/
       break;
     default: //INVALID
       if(!runstat) cout << "INVALID INSTRUCTION" << endl;
       break;
   }//end switch

   // normalize all the registers
   for (int i = 0 ; i < REG_SIZE; i++){
     regs[i] = normalize(regs[i]); 
   }
   regVal = normalize(regVal);

   return head;
}//end eval


/**
 * 
 */
string toBinary(string hex){
  string ret = "";
  for(int i = 0; i < hex.length(); i++){
     switch(hex[i]){
        case '0': ret.append("0000"); break;
        case '1': ret.append("0001"); break;
        case '2': ret.append("0010"); break;
        case '3': ret.append("0011"); break;
        case '4': ret.append("0100"); break;
        case '5': ret.append("0101"); break;
        case '6': ret.append("0110"); break;
        case '7': ret.append("0111"); break;
        case '8': ret.append("1000"); break;
        case '9': ret.append("1001"); break;
        case 'A': ret.append("1010"); break;
        case 'B': ret.append("1011"); break;
        case 'C': ret.append("1100"); break;
        case 'D': ret.append("1101"); break;
        case 'E': ret.append("1110"); break;
        case 'F': ret.append("1111"); break;
        default: break;
     }//end switch
  } //end for
  return ret;
}//end toBinary


/**
 * 
 */
int toInt(string bin){
  int ret = 0;
  int shift = 1;
  for(int i = bin.length()-1; i >=0; i--){
     if(bin[i] == '1') ret = ret + shift;
     shift = shift + shift;
  }//end for
  return ret;
}//end toInt


/**
 * 
 */
void outHex(int num, fstream &outputfile){
  outputfile << hex << ((0x00f00000&num)>>20);
  outputfile << hex << ((0x000f0000&num)>>16);
  outputfile << hex << ((0x0000f000&num)>>12);
  outputfile << hex << ((0x00000f00&num)>>8);
  outputfile << hex << ((0x000000f0&num)>>4);
  outputfile << hex << ((0x0000000f&num));  
}//end outHex


/**
 * 
 */
void memPrint(node *tmp){
  while(tmp != NULL){
     cout << "MEM[" << tmp->address << "]: ";
     printBin(tmp->data);
     cout << endl;
     tmp = tmp->next;
  }//end while
}


/**
 * 
 */
void regPrint(int regs[]){
  for(int i = 0; i < REG_SIZE; i++){
     if(i < 10) cout << "Reg[" << i << " ]: ";
     else cout << "Reg[" << i << "]: ";
     printBin(regs[i]);
     cout << "(" << regs[i] << ")";
     cout << endl;
  }//end for
}//end regPrint


/**
 * 
 */
void printBin(int num){
  cout << "[";
  for(int i = 0; i < 32; i++){
  if(i%4 == 0) cout << " ";
     if(i == 8) cout << "] ";
     cout << GETBIT(num,i);
  }//end for
}//end printBin


/**
 * 
 */
bool GETBIT(int num, int N){
  int constant = 1 << (31-N);
  if(num & constant) return 1;
  else return 0;
}//end GETBIT

/**
 * 
 */
int normalize (int num){
// make sure we don't have any values that are over the 32 bit limit
  if (GETBIT(num,8)){
  // if it's less than zero, we want to append 1s to the msb
  //cout << "regVal before " << num << "|" << endl;
  num = 0xff000000 | num;
  // cout << "regVal after " << num << "|" << endl; 
  }
  else{
    // if it's greater than zero, then we want to eliminate the msb
    //cout << "regVal before " << num << "|" << endl;
    num = 0x00ffffff & num;
    //cout << "regVal after " << num << "|" << endl; 
  }
  return num;
}//end normalize




