# dumpDiver</br>
Smol batch to process Windows-crashdumps without firing up Visual Studio.</br>
Helpful to grab a first impression of the crash-location.</br>

# How to use</br>
either: call "$ analyzeCrashdump.bat crash.dmp"</br>
or: drag&drop the file onto the batch</br>

# Output to expect </br> 
A textfile with the same name plus suffix ".txt" for the used input</br>
</br>
Somewhere at line 100 you find the crashed call after</br>
"FOLLOWUP_IP:"</br>
</br>
Some lines later you find</br>
"WATSON_BKT_MODULE:"</br>
which describes the file, which contains the call.</br>
</br>
Another really interesting part is *drum roll* the stack trace ;)</br>
"STACK_TEXT:"</br>

# What if no 'cdb' is installed?</br>
install "cdb" as part of:</br>
https://developer.microsoft.com/en-us/windows/downloads/sdk-archive</br>

# Why is the text-output not processed with something like "grep -A x -B y"?
The default FINDSTR is not able to present without much magic the following lines.</br>
And I don't want to involve more tools, like the GNU-package or MinGW.</br>

# Feedback/hints/error reports
mail@marcelpetrick.it
