@echo off
echo ----------------------------------------------------
echo Press any key to delete all files with extensions:
echo  *.obj, *.pdb
echo Visual C++/.Net junk files in C:\ThienDieuOnline
echo ----------------------------------------------------
pause

cd /d "C:\ThienDieuOnline"
del /F /Q /S *.obj, *.pdb
echo Cleanup complete.
pause
