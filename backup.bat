@ECHO OFF
::navigating to master destination directory
D: 
cd tester
::creating a folder with current system date
for /f "tokens=1* delims=" %%a in ('date /T') do set datestr=%%a
if exist %datestr% echo "Directory already exists - delete exisitng directory and try again" & goto exit
if not exist %datestr% mkdir %datestr%
cd %datestr%

::method for accessing files in root directories
adb root
adb shell su -c "cp /data/data/com.whatsapp/files/key /storage/emulated/0/key"
adb pull "/storage/emulated/0/key" "./WhatsApp/key"
adb shell "rm /storage/emulated/0/key" 

::method for backing up files in internal storage which are normally accessible
adb pull "/storage/emulated/0/Download"

:exit
set /p DUMMY=All Tasks completed. Press any key to close

