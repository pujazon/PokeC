# PokeC
This project aims to modify a Pokemon rom using reverse engineering.

First steps are:
* Get a Pokemon rom in gba format (pe: ruby.gba)
* install luvdis tool which will be used to disassembly the binary into the .s (check https://pypi.org/project/Luvdis/)
* Once you get it disassembled (pe: ruby.s spends 3 minutes) you can split the big file using git command (pe: split ruby.s -b 4m from Git Bash)

# GBA architechture (https://www.copetti.org/writings/consoles/game-boy-advance/)
The GBA files are launch on ARM7TDMI processor running at 16.78 MHz.
In order to emulate and debug, we can use RustBoy (https://github.com/michelhe/rustboyadvance-ng)