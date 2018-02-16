# dumpDiver</br>
batch to process crashdumps from Windows without Visual Studio and get first impression of the crash-location</br>

# how to use</br>
either: call "$ analyzeCrashdump.bat crash.dmp"</br>
or: drag&drop the file onto the batch</br>

# output to expect </br> 
a textfile with the same name plus suffix ".txt" for the used input</br>
</br>
Somewhere at line 100 you find the crashed call after</br>
"FOLLOWUP_IP:"</br>
</br>
Some lines later you find</br>
"WATSON_BKT_MODULE:"</br>
which describes the file, which contains the call.</br>

# what if no 'cdb' is installed?</br>
install "cdb" as part of:</br>
https://developer.microsoft.com/en-us/windows/downloads/sdk-archive</br>

# why is the text-output not processed with something like "grep -A x -B y"?
The default FINDSTR is not able to present without much magic the following lines.</br>
And I don't want to involve more tools, like the GNU-package or MinGW.</br>

# feedback/hints/error reports
mail@marcelpetrick.it
