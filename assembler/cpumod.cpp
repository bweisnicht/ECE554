
#include <iostream>
#include <fstream>
#include <string>
#include <cstring>
#include <cstdlib>
using namespace std;


int main(int argc, char* argv[]) {
  /** VARIABLE DECLARATIONS **/
  fstream inputfile;        //input file
  fstream outputfile;       //output file
  string line = "";
  string tmp = "";
  char basicline[128];
  //static variables
  string  badFileError = "ERROR: Improper input file";

  if(argc != 3){//check arguments
    cout << "format: <cpumod> <input_file> <output_file>" << endl;
    return 1;
  }

  //open file for reading
  cout << "opening file: " << argv[1] << endl;
  inputfile.open(argv[1], ios::in);

  if(!inputfile){
    cout << "cannot open " << argv[1] << endl;
    return 1;
  }

  outputfile.open(argv[2], ios::out);
  if(!outputfile){
    cout << "cannot open simoutputfile for writing" << endl;
  }

do{
  inputfile.getline(basicline, 128, '\n');
/*
  if(basicline[0] == "."){//label
    outputfile << basicline << endl;
  }
  else outputfile << " " << basicline << endl;
*/
  line = string(basicline);
  tmp = line.substr(0,1);
  if(tmp.compare(".") != 0){//not a label
  outputfile << " " << line << endl;
  }
  else{
   outputfile << line << endl;
  }

}while(!inputfile.eof());

inputfile.close();
outputfile.close();
return 0;
}//end main

