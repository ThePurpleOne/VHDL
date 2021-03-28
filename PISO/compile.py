import os 
from colorama import Fore, Back

#CTRL F2 to replace all
#PISO.vhdl
#PISO_TB.vhdl
#piso_tb <Take the space>
#piso.vcd


def clearFiles():
	#DELETE OBJECT FILES
	directory = "."

	files_in_directory = os.listdir(directory)
	filtered_files = [file for file in files_in_directory if file.endswith(".o")]

	for file in filtered_files:
		path_to_file = os.path.join(directory, file)
		os.remove(path_to_file)

#Compile:
print(Fore.GREEN + "Compiling PISO.vhdl" + Fore.RED)
os.system("ghdl -a PISO.vhdl")

print(Fore.GREEN + "Compiling PISO_TB.vhdl" + Fore.RED)
os.system("ghdl -a PISO_TB.vhdl")

#Elaborate entity:
print(Fore.GREEN + "Elaborate piso_tb " + Fore.RED)
os.system("ghdl -e piso_tb ")

#Run entity and generate simulation file:
print(Fore.GREEN + "Run the simulation and generate piso.vcd" + Fore.YELLOW)
os.system("ghdl -r piso_tb --vcd=piso.vcd")

clearFiles()



