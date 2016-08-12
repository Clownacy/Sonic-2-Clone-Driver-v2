Clownacy's Sonic 2 Clone Driver v2 (v2.7)

SMPS2ASM and Mega PCM belong to Flamewing and Vladikcomper, respectively.

This is a heavily modified version of Sonic 1's SMPS sound driver (modified SMPS 68k Type 1b), designed to work as a replacement for Sonic 2's SMPS sound driver (improved Z80 port of Sonic 1's driver). This driver retains the SMPS 68k Type 1b base, and so it operates on the 68k.
It is outfitted with many of the features found in Sonic 2's driver, along with some features from Sonic 3 & Knuckles' sound driver (modified SMPS Z80 Type 2).  While designed for Sonic 2, this driver can be installed in a Sonic 1 disassembly. Files and instructions for this are provided in the driver's topic.

The following games and disassemblies are supported:
    Sonic 2 (Git and Xenowhirl's 2007 disassemblies)
    Sonic 1 (Git disassembly)

This driver is intended to have its sound files in SMPS2ASM v0.2 (.asm) format; assembled (.bin) files are unsupported

This driver is designed for use with the Macro Assembler AS

Users of Xenowhirl's 2007 S2 disassembly will need to update their copy of AS to get the driver to build properly. Just use the copy in the Git disasm. Anything newer is broken beyond belief.



Credits:
Contributors to the sound driver disassemblies
Valley Bell - General help, fixes for some bugs, SMPS Research Pack, inspiration
Shobiz - Ported Spin Dash rev code
Puto - Original 68k Sega chant playback code
MarkeyJester - DAC fade-in fix, along with pointing several other bugs in S1's driver
Cinossu - S1SMPS2ASM, the basis of SMPS2ASM
Flamewing - SMPS2ASM core; pointing out S3K's additional PSG frequencies; his perfect-compression koscmp, used to compress Mega PCM
Vladikcomper - Mega PCM, a fix involving interupts
Gardeguey - SH2 code used as the basis of the 'Stub SH2' program
Clownacy - Go read the changelog =P

More information at
http://forums.sonicretro.org/index.php?showtopic=32801