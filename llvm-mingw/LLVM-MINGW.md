# FFMPEG Cross-compiling with MingW and LLVM

Original instructions for cross-compiling FFmpeg with MingW can be found at:
[https://trac.ffmpeg.org/wiki/CompilationGuide/CrossCompilingForWindows]

However, the default MingW toolchain uses GCC as the compiler, and at this time it does not support ARM64 as a target on Win64. 

As we want to build for ARM64 we need a different approach. A toolchain based on MingW but using LLVM as the compiler can be found at
[https://github.com/mstorsjo/llvm-mingw]

It targets all 4 architectures (even arm7!) and convenient binaries with the complete toolchain can be found at
[https://github.com/mstorsjo/llvm-mingw/releases/tag/20200325]

Notice that you should download the toolchain for your host architecture (Linux 64 bits, Windows Intel, Windows ARM64). All binaries can cross-compile for all windows targets, follow the instructions at the LLVM-MINGW project page for installation.

Clone FFmpeg from the default GitHub repository. Then, configure for the appropriate target platform:

## For aarch64 (ARM64):

./configure --arch=aarch64 --target-os=mingw32 --cross-prefix=aarch64-w64-mingw32-
make

## For x86_64 target:

./configure --arch=x86_64 --target-os=mingw32 --cross-prefix=x86_64-w64-mingw32-
make

## For i686 target:

./configure --arch=i686 --target-os=mingw32 --cross-prefix=i686-w64-mingw32- --disable-indev=vfwcap --disable-decoder=hevc --disable-muxer=hevc
make

As a convenience we have precompiled binaries built from FFmpeg master (Jun 13th 2020) included in this repository, cross-compiled from a Linux host.
