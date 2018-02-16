@echo off
echo  ____  _  _  _  _  ____  ____  __  _  _  ____  ____ 
echo (    \/ )( \( \/ )(  _ \(    \(  )/ )( \(  __)(  _ \
echo  ) D () \/ (/ \/ \ ) __/ ) D ( )( \ \/ / ) _)  )   /
echo (____/\____/\_)(_/(__)  (____/(__) \__/ (____)(__\_)
:: this smol batch-file shall process crashdumps and extract the most important into a one-liner as output"
:: if you miss the cdb, then install from https://developer.microsoft.com/en-us/windows/downloads/sdk-archive - first option "debugging tools" is sufficient

:: TODO
:: make the path to cdb dynamic
:: process the output, so that only FOLLOWUP_IP: and WATSON_BKT_MODULE: are presented
:: DONE
:: make it work xD
:: make the output to file at the current dmp-file-location

:: ## print current dir ##
:: echo "current callpath: " %~dp0

:: ## assign the dump ##
set arg1=%1
shift

:: ## print currently processed input ##
echo.
echo processing "%arg1%" now .. please wait patiently :)

:: ## execute the cdb ##
"C:\Program Files (x86)\Windows Kits\10\Debuggers\x86\cdb.exe" -z %arg1% -c "!analyze -v; q" > %arg1%.txt

:: echo "*** end ***"

:: ## wait at the end ##
:: pause
