import os 
from colorama import Fore, Back

#CTRL F2 to replace all
#HALF_ADDER.vhdl
#HALF_ADDER_TB.vhdl
#half_adder_tb <Take the space>
#half_adder.vcd


def clearFiles():
	#DELETE OBJECT FILES
	directory = "."

	files_in_directory = os.listdir(directory)
	filtered_files = [file for file in files_in_directory if file.endswith(".o")]

	for file in filtered_files:
		path_to_file = os.path.join(directory, file)
		os.remove(path_to_file)

#Compile:
print(Fore.GREEN + "Compiling HALF_ADDER.vhdl" + Fore.RED)
os.system("ghdl -a HALF_ADDER.vhdl")

print(Fore.GREEN + "Compiling HALF_ADDER_TB.vhdl" + Fore.RED)
os.system("ghdl -a HALF_ADDER_TB.vhdl")

#Elaborate entity:
print(Fore.GREEN + "Elaborate half_adder_tb " + Fore.RED)
os.system("ghdl -e half_adder_tb ")

#Run entity and generate simulation file:
print(Fore.GREEN + "Run the simulation and generate half_adder.vcd" + Fore.YELLOW)
os.system("ghdl -r half_adder_tb --vcd=half_adder.vcd")

clearFiles()

