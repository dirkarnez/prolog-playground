@REM run as Administrator
@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads

@REM set PREFIX=D:\Softwares
set PREFIX=%DOWNLOADS_DIR%

set PATH=^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64;^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin;^
%PREFIX%\GNU-Prolog\bin;

mingw32-make.exe
pause
