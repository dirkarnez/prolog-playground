REM run as Administrator
@echo off
cd /d %~dp0
set PATH=^
D:\Softwares\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\mingw64;^
D:\Softwares\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\mingw64\bin;^
D:\Softwares\GNU-Prolog\bin;

mingw32-make.exe
pause
