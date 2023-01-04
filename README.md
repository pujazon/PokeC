# PokeC
This project aims to modify a Pokemon rom using reverse engineering.

First steps are:
* Get a Pokemon rom in gba format (pe: ruby.gba)
* install luvdis tool which will be used to disassembly the binary into the .s (check https://pypi.org/project/Luvdis/)
* Once you get it disassembled (pe: ruby.s spends 3 minutes) you can split the big file using git command (pe: split ruby.s -b 4m from Git Bash)
* For compiling from *.s, we can use arm-none-eabi-gcc (https://devkitpro.org/viewtopic.php?t=9284)

# GBA architechture 
The GBA files are launch on ARM7TDMI processor running at 16.78 MHz. (https://www.copetti.org/writings/consoles/game-boy-advance/)
In order to emulate and debug, we can use RustBoy (https://github.com/michelhe/rustboyadvance-ng)
