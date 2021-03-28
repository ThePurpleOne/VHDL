import os 
from colorama import Fore, Back

#CTRL F2 to replace all
#SIPO.vhdl
#SIPO_TB.vhdl
#sipo_tb <Take the space>
#sipo.vcd


def clearFiles():
	#DELETE OBJECT FILES
	directory = "."

	files_in_directory = os.listdir(directory)
	filtered_files = [file for file in files_in_directory if file.endswith(".o")]

	for file in filtered_files:
		path_to_file = os.path.join(directory, file)
		os.remove(path_to_file)

#Compile:
print(Fore.GREEN + "Compiling SIPO.vhdl" + Fore.RED)
os.system("ghdl -a SIPO.vhdl")

print(Fore.GREEN + "Compiling SIPO_TB.vhdl" + Fore.RED)
os.system("ghdl -a SIPO_TB.vhdl")

#Elaborate entity:
print(Fore.GREEN + "Elaborate sipo_tb " + Fore.RED)
os.system("ghdl -e sipo_tb ")

#Run entity and generate simulation file:
print(Fore.GREEN + "Run the simulation and generate sipo.vcd" + Fore.YELLOW)
os.system("ghdl -r sipo_tb --vcd=sipo.vcd")

#Run and visualize the simulation:
# print(Fore.GREEN + "Launch Visualizer GTKwave" + Fore.RED)
# os.system("gtkwave sipo.vcd")



