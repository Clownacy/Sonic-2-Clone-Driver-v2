Clownacy's Sonic 2 Clone Driver v2 (v2.7+ prototype)

This is a heavily-modified version of Sonic 1's SMPS sound driver (which itself is a modified SMPS 68k Type 1b),
designed to work as a replacement for Sonic 2's SMPS sound driver (which is an improved Z80 port of Sonic 1's driver).
This driver retains the SMPS 68k Type 1b base, and so it operates on the 68k.

This driver is outfitted with many of the features found in Sonic 2's driver, along with some features from other
drivers, including the ones from Sonic 3, Sonic & Knuckles, Sonic 3D Blast, and Knuckles' Chaotix (all modified
SMPS Z80 Type 2 DAC).

While designed for Sonic 2, this driver can be installed in a Sonic 1 disassembly. Files and instructions for this are
provided in the driver's threads on Sonic Retro and SSRG (Sonic Stuff Research Group). Links are available at the bottom
of this file.

The following games and disassemblies are officially supported:
- Sonic 1 Git disassembly
- Sonic 2 Xenowhirl 2007 disassembly (users must update their copy of AS to that of the Git disasm)
- Sonic 2 Git disassembly

This driver is intended to have its sound/music files in SMPS2ASM v0.2 (.asm) format: assembled (.bin) files are not supported.

This driver is designed for use with 'The Macroassembler AS', found here:
http://john.ccac.rwth-aachen.de:8000/as/


= Credits =

Valley Bell
- General help
- Fixes for some bugs
- SMPS Research Pack
- His Sonic 2 Recreation driver was the inspiration for this driver

Shobiz
- Ported Spin Dash rev code

MarkeyJester
- DAC fade-in fix, along with pointing out several other bugs in S1's driver

Cinossu
- S1SMPS2ASM, the basis of SMPS2ASM

Flamewing
- SMPS2ASM core
- Pointing out S3K's additional PSG frequencies

Vladikcomper
- A fix involving 68k interrupts

Gardeguey
- SH2 code used as the basis of the 'Stub SH2' program


More information at:
http://forums.sonicretro.org/index.php?showtopic=32801
http://sonicresearch.org/community/index.php?threads/sonic-2-clone-driver-v2.4621/
