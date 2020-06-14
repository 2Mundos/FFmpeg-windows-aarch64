# FFMPEG Compiling with MingW and MSVC

Original instructions for compiling FFmpeg with MSVC can be found at:
[https://trac.ffmpeg.org/wiki/CompilationGuide/MSVC]

It is necessary to setup the environment correctly for the platform you are targeting, according to the instructions above. MSVC 2017 already supports ARM64 as a target and is the minimal version we recommend for building current FFmpeg master.

Clone FFmpeg from the default GitHub repository. Then, launch the native tools prompt for your desired target and launch msys2_shell. Then configure for the appropriate target platform:

## For aarch64 (ARM64):

./configure --target-os=win64 --arch=aarch64 --toolchain=msvc --enable-cross-compile --disable-indev=vfwcap
make

## For x86_64 target:

./configure --target-os=win64 --arch=x86_64 --toolchain=msvc --enable-cross-compile
make

## For i686 target:

./configure --target-os=win32 --arch=i686 --toolchain=msvc --enable-cross-compile --disable-indev=vfwcap
make

As a convenience we have precompiled binaries built from FFmpeg master (Jun 13th 2020) included in this repository, compiled using VS 2017 tools on a Win10 machine (x64).
