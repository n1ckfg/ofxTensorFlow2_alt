@echo off

set TYPE=cpu
set OS=windows
set ARCH=x86_64
set VER=2.7.0
set EXT=zip
set FILENAME=libtensorflow-%TYPE%-%OS%-%ARCH%-%VER%.%EXT%
set URL=https://storage.googleapis.com/tensorflow/libtensorflow/%FILENAME%
set NEW_FILENAME=tensorflow.%EXT%

cd %~dp0
powershell -Command "Invoke-WebRequest %URL% -OutFile %NEW_FILENAME%"
powershell Expand-Archive %NEW_FILENAME% -DestinationPath .
del %NEW_FILENAME%

@pause
