set BUILD=llvm-mingw
set FFMPEG=..\%BUILD%\i686\ffmpeg
if "%PROCESSOR_ARCHITECTURE%"=="ARM64" set FFMPEG=..\%BUILD%\aarch64\ffmpeg
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" set FFMPEG=..\%BUILD%\x86_64\ffmpeg

mkdir output

%FFMPEG% -i source.mp4 -c:v h264_mf -pix_fmt nv12 -hw_encoding 1 -rate_control quality -quality 10 -y -v verbose  output\ff_h264_quality10.mp4
%FFMPEG% -i source.mp4 -c:v h264_mf -pix_fmt nv12 -hw_encoding 1 -rate_control quality -quality 50 -y -v verbose output\ff_h264_quality50.mp4
%FFMPEG% -i source.mp4 -c:v h264_mf -pix_fmt nv12 -hw_encoding 1 -rate_control quality -quality 100 -y -v verbose output\ff_h264_quality100.mp4

%FFMPEG% -i source.mp4 -c:v h264_mf -pix_fmt nv12 -b:v 5000k -hw_encoding 1 -rate_control cbr -y output\ff_h264_cbr.mp4
%FFMPEG% -i source.mp4 -c:v h264_mf -pix_fmt nv12 -b:v 5000k -hw_encoding 1 -rate_control pc_vbr -y output\ff_h264_pcvbr.mp4
%FFMPEG% -i source.mp4 -c:v h264_mf -pix_fmt nv12 -b:v 5000k -hw_encoding 1 -rate_control u_vbr -y output\ff_h264_uvbr.mp4

%FFMPEG% -i source.mp4 -c:v hevc_mf -pix_fmt nv12 -hw_encoding 1 -rate_control quality -quality 10 -y -v verbose output\ff_hevc_quality10.mp4
%FFMPEG% -i source.mp4 -c:v hevc_mf -pix_fmt nv12 -hw_encoding 1 -rate_control quality -quality 50 -y -v verbose output\ff_hevc_quality50.mp4
%FFMPEG% -i source.mp4 -c:v hevc_mf -pix_fmt nv12 -hw_encoding 1 -rate_control quality -quality 100 -y -v verbose output\ff_hevc_quality100.mp4

%FFMPEG% -i source.mp4 -c:v hevc_mf -pix_fmt nv12 -b:v 5000k -hw_encoding 1 -rate_control cbr -y output\ff_hevc_cbr.mp4
%FFMPEG% -i source.mp4 -c:v hevc_mf -pix_fmt nv12 -b:v 5000k -hw_encoding 1 -rate_control pc_vbr -y output\ff_hevc_pcvbr.mp4
%FFMPEG% -i source.mp4 -c:v hevc_mf -pix_fmt nv12 -b:v 5000k -hw_encoding 1 -rate_control u_vbr -y output\ff_hevc_uvbr.mp4
