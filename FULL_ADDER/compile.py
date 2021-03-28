import os 
from colorama import Fore, Back

#CTRL F2 to replace all
#FULL_ADDER.vhdl
#FULL_ADDER_TB.vhdl
#full_adder_tb <Take the space>
#full_adder.vcd


def clearFiles():
	#DELETE OBJECT FILES
	directory = "."

	files_in_directory = os.listdir(directory)
	filtered_files = [file for file in files_in_directory if file.endswith(".o")]

	for file in filtered_files:
		path_to_file = os.path.join(directory, file)
		os.remove(path_to_file)

#Compile:
print(Fore.GREEN + "Compiling FULL_ADDER.vhdl" + Fore.RED)
os.system("ghdl -a FULL_ADDER.vhdl")

print(Fore.GREEN + "Compiling FULL_ADDER_TB.vhdl" + Fore.RED)
os.system("ghdl -a FULL_ADDER_TB.vhdl")

#Elaborate entity:
print(Fore.GREEN + "Elaborate full_adder_tb " + Fore.RED)
os.system("ghdl -e full_adder_tb ")

#Run entity and generate simulation file:
print(Fore.GREEN + "Run the simulation and generate full_adder.vcd" + Fore.YELLOW)
os.system("ghdl -r full_adder_tb --vcd=full_adder.vcd")

clearFiles()



