# Description
The full adder is a more comprehensive implementation of the half adder, It has one more input: The carry in, that third input allows the chainability of those adders to make a multiple bits adder.

# Bloc Diagram
![interface of gtkWave](/IMAGES/FullAdder.png)

# Truth table
|        A         |        B         |       Cin        |        Q         |       Cout       |
| :--------------: | :--------------: | :--------------: | :--------------: | :--------------: |
|        0         |        0         |        0         |        0         |        0         |
|        0         |        0         |        1         |        1         |        0         |
|        0         |        1         |        0         |        1         |        0         |
|        0         |        1         |        1         |        1         |        0         |
|        1         |        0         |        0         |        1         |        0         |
|        1         |        0         |        1         |        0         |        1         |
|        1         |        1         |        0         |        0         |        1         |
|        1         |        1         |        1         |        1         |        1         |
| <img width=100/> | <img width=100/> | <img width=100/> | <img width=100/> | <img width=100/> |

# Signal Output

![interface of gtkWave](/IMAGES/FullAdder_GTKWAVE.png)
