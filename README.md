# VHDL
>VHDL (VHSIC-HDL, Very High Speed Integrated Circuit Hardware Description Language) is a hardware description language used in electronic design automation to describe digital and mixed-signal systems such as field-programmable gate arrays and integrated circuits. VHDL can also be used as a general-purpose parallel programming language.
https://en.wikipedia.org/wiki/VHDL

# GHDL
> GHDL is an open-source simulator for the VHDL language. GHDL allows you to compile and execute your VHDL code directly in your PC.
http://ghdl.free.fr/

In those little projects, i'm using **GHDL** to create simulations of circuits behaviours. My main goal is to learn the basics of the language: how it's structured and how it works, I wanted to do it without using any real hardware. The final goal obviously is to use the language on real projects involving some hardware. The Compiler can output VCD files.

## Installation
### Linux installation
```$ sudo apt-get install ghdl```

```$ sudo dnf install ghdl```

### Windows installation
Download the last version at https://github.com/ghdl/ghdl/releases and add the bin folder to the path.

# Gtkwave
The compiler generates vcd files that can be read by any sign wave analyser, i decided to use *[Gtkwave](https://github.com/gtkwave/gtkwave)*. It can be used to see and analyse the evolution of signals through time.

![interface of gtkWave](/IMAGES/gtkwaveInterface.png)
