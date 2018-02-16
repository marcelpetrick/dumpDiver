# dumpDiver  </br>
batch to process crashdumps from Windows without Visual Studio and get first impression of the crash-location  </br>


# how to use  </br>
either call: $ analyzeCrashdump.bat crash.dmp
or drag&drop the file onto the batch

# output to expect </br> 
a textfile with the same name plus suffix ".txt" for the used input

# what if no 'cdb' is installed?  </br>
install "cdb" as part of:  </br>
https://developer.microsoft.com/en-us/windows/downloads/sdk-archive  </br>
