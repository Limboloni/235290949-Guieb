@echo off
:: Simple script to run basic Windows utilities

:menu
echo Choose a Windows utility to run:
echo 1. ipconfig (Network Information)
echo 2. tasklist (List Running Tasks)
echo 3. taskkill (End a Task)
echo 4. chkdsk (Check Disk)
echo 5. format (Format Disk)
echo 6. defrag (Defragment Disk)
echo 7. find (Search for Text in a File)
echo 8. attrib (Change File Attributes)
set /p choice="Enter your choice (1-8): "

if %choice%==1 goto ipconfig
if %choice%==2 goto tasklist
if %choice%==3 goto taskkill
if %choice%==4 goto chkdsk
if %choice%==5 goto format
if %choice%==6 goto defrag
if %choice%==7 goto find
if %choice%==8 goto attrib
echo Invalid choice. Please enter a number between 1 and 8.
goto menu

:ipconfig
ipconfig
goto end

:tasklist
tasklist
goto end

:taskkill
set /p pid="Enter the PID of the task to kill: "
taskkill /PID %pid%
goto end

:chkdsk
set /p drive="Enter the drive letter to check (e.g., C:): "
chkdsk %drive%
goto end

:format
set /p drive="Enter the drive letter to format (e.g., D:): "
echo WARNING: Formatting will erase all data on %drive%
set /p confirm="Type 'yes' to confirm: "
if /i %confirm%==yes (
    format %drive%
) else (
    echo Format cancelled.
)
goto end

:defrag
set /p drive="Enter the drive letter to defrag (e.g., C:): "
defrag %drive%
goto end

:find
set /p text="Enter the text to find: "
set /p file="Enter the file to search in: "
find "%text%" %file%
goto end

:attrib
set /p file="Enter the file or directory to change attributes: "
attrib %file%
goto end

:end
pause
