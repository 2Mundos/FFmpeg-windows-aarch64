# FFMpeg tests using Windows Media Foundation Hardware Encoders

Run the .bat file on this directory to encode the source.mp4 video using different profiles for H264 and HEVC.
FFmpeg will use hardware acceleration via Media Foundation drivers for both decoding the source and encoding the final file. 
MF Encoding support is a new additon to FFmpeg master branch, commited on May 19th, 2020 [http://git.videolan.org/?p=ffmpeg.git;a=commitdiff;h=050b72ab5ef318605b305aa6cb920e8b52f1002e]
These test batch files show how to configure the hardware encodings and set different encoding parameters like quality, CBR, VBR and PVBR modes.

ARM64 Windows 10 systems running Qualcomm Snapdragon chips specifically will offload both video encoding and decoding to the GPU and built-in hardware encoders. Systems running Intel and AMD chips will also benefit from hardware encoding via GPU if a hardware-accelerated Media Foundation encoder is available.

Source.mp4 is a small clip from Big Bucks Bunny [https://test-videos.co.uk/bigbuckbunny/mp4-h264]. It can be replaced by other source files.
