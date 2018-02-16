@echo off
::echo "fooo ... this small batch-file shall prodcess crashdumps and extract the most important into a one-liner as output"

echo  ____  _  _  _  _  ____  ____  __  _  _  ____  ____ 
echo (    \/ )( \( \/ )(  _ \(    \(  )/ )( \(  __)(  _ \
echo  ) D () \/ (/ \/ \ ) __/ ) D ( )( \ \/ / ) _)  )   /
echo (____/\____/\_)(_/(__)  (____/(__) \__/ (____)(__\_)

:: TODOs
:: make it work xD
:: todo make the path to cdb dynamic
:: make the output to file at the current dmp-file-location

:: print current dir
echo "current callpath: " %~dp0

set arg1=%1
shift

:: execute the cdb
"C:\Program Files (x86)\Windows Kits\10\Debuggers\x86\cdb.exe" -z %arg1% -c "!analyze -v; q" > %arg1%.txt

:: echo "*** end ***"

pause
