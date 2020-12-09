if %1.==. goto noname

dumpel -l application -f %1_app.txt 
dumpel -l security    -f %1_sec.txt 
dumpel -l system      -f %1_sys.txt 

cscript evt.vbs /Host:%1

:noname


