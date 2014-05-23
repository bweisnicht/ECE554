import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.StringTokenizer;

public class assemblyConv {

	public static void main(String[] args) {

		final int IMM_ARITH = 9;
		final int IMM_LBI = 12;
		final int IMM_BRANCH = 14;
		final int IMM_JUMP = 19;

		FileReader fr;
		BufferedReader in;
		FileWriter fw;
		String lineIn, tempLineIn, hexString, tempString;
		BufferedWriter output;
		if (args.length != 2) {
			System.out
					.println("incorrect arguments, expected: inputfile outputfile "
							+ args.length);
			System.exit(-1);
		}

		try {
			// input file stuff
			fr = new FileReader(args[0]);
			in = new BufferedReader(fr);

			// output file stuff
			File phile = new File(args[1]);
			fw = new FileWriter(phile);
			output = new BufferedWriter(fw);

			lineIn = in.readLine();
			// instruction
			String instruction, immediateString;

			// number arguments
			short numArguments;
			short immediateLength;
			int immediateVal, stringLen, numHex, numHexRem, numHexPrint;

			boolean hasImmediate;

			while (lineIn != null) {

				// tokenize the next line
				StringTokenizer tok = new StringTokenizer(lineIn, ", ");
				//System.out.println(lineIn);
				if (tok.hasMoreTokens()) {
					// get the instruction
					instruction = tok.nextToken();
					hasImmediate = true;
					tempLineIn = "";
					numArguments = 0;
					numHex = 0;

					
					// check to see if it is a load immediate
					if (instruction.equalsIgnoreCase("slbi")
							|| instruction.equalsIgnoreCase("lbi")) {
						immediateLength = IMM_LBI;
						numArguments = 3;
					} else
					// check to see if its an arithmetic immediate
					// look at instruction, thens ee if the last letter is 'i'
					if (instruction.toCharArray()[instruction.length() - 1] == 'I'
							|| instruction.toCharArray()[instruction.length() - 1] == 'i') {
						immediateLength = IMM_ARITH;
						numArguments = 4;
						numHex = immediateLength / 4;
					} else
					// check to see if it is a load or store
					if (instruction.equalsIgnoreCase("st")
							|| instruction.equalsIgnoreCase("ld")
							|| instruction.equalsIgnoreCase("stu")) {
						immediateLength = IMM_ARITH;
						numArguments = 4;
					} else
					// check to see if it is a branch or jump register
					if (instruction.equalsIgnoreCase("beqz")
							|| instruction.equalsIgnoreCase("bnez")
							|| instruction.equalsIgnoreCase("bltz")
							|| instruction.equalsIgnoreCase("jr")
							|| instruction.equalsIgnoreCase("jalr")) {
						immediateLength = IMM_BRANCH;
						numArguments = 3;
					} else
					// check to see if it is a jump immediate of sorts
					if ((instruction.equalsIgnoreCase("j") || instruction
							.equalsIgnoreCase("jr"))) {
						immediateLength = IMM_JUMP;
						numArguments = 2;
					} else
					// we will not process this line if it doesn't have an
					// immediate
					{
						hasImmediate = false;
						immediateLength = 0;
					}
					if (hasImmediate){
						//System.out.println("|"+lineIn+"|"+ numArguments);
					}
					numHex = immediateLength / 4;
					numHexRem = immediateLength % 4;
					// the number we need to print for the msb is the remainder
					// of dividing the immediate length by 4
					// and then taking that power of 2 then minusing 1
					numHexPrint = ((int) Math.pow(((double) 2),
							((double) numHexRem)) - 1);

					// then start work on parsing data
					if (hasImmediate) {
						tempLineIn = instruction+" ";
						// we already read the first argument, and we will need
						// to parse the immediate, so just input and read back
						// the non-immediate data
						for (int i = 0; i < numArguments - 2; i++) {
							tempString = tok.nextToken();
							if (tempString.equalsIgnoreCase("r7") |
								tempString.equalsIgnoreCase("$7"))
									tempString = "r31";
							tempLineIn = tempLineIn + tempString + ", ";

						}
						immediateString = tok.nextToken();
						


						// if the value is positive, or hex, we're fine
						if (immediateString.charAt(0) != '-') {
							tempLineIn = tempLineIn + immediateString;
						} else {
							// analyze the immediate
							immediateVal = Integer.parseInt(immediateString);
							hexString = Integer.toHexString(immediateVal);

							stringLen = hexString.length();
							/*for (int j = 0; j < stringLen; j++){
								System.out.println (j + " " +hexString.charAt(j));
							}*/
							// concatenate appropriately
							hexString = hexString.substring(stringLen-numHex, stringLen);
							//System.out.println(hexString+"!");
							
							if (numHexPrint > 0){
							tempLineIn = tempLineIn + "0x" + numHexPrint
									+ hexString + " ";
							} else {
								tempLineIn = tempLineIn + "0x" 
								+ hexString + " ";
							}

							// finish off any tokens we haven't read
							while (tok.hasMoreTokens()) {
								tempLineIn = tempLineIn + tok.nextToken();
							}

						}
						lineIn = tempLineIn;
					}

					// make sure the first character is a space
					if ((lineIn.toCharArray()[0] != ' ') & (lineIn.toCharArray()[0] != '.')) {
						// if not, then we will put one in
						lineIn = " " + lineIn;
					}
				}
				// write the line
				output.write(lineIn + "\n");

				// increment the reader
				lineIn = in.readLine();
			}
			output.flush();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
