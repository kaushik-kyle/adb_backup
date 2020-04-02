# adb_backup
Batch script to automate selective file backup for android phones
The script works for both root and user directories on rooted devices,If you are only going to take backup of user files then root is not needed (i think)
This script is for people who often change the OS or people who are in need to take occasional backups of selected files/directories in their phones

Sequence of operation:
1. Set master backup directory
2. get system date
3. checks if folder with same date exists on directory , if so prompts and exits
4. else creates new directory with system date as name
5. copies data using adb pull from device to path

internal storage files(user files)- directly use adb pull command
root directory and other directories- opens adb shell as superuser,copies file to user directory,copies using adb pull, deleted file from user directory

p.s. Add time to directory name or add additional checks to directory if you are gonna take backups more than once per day.
