@echo off
:: Script to archive old text files and manage large files

:: Define source and archive paths
set src_path=C:\*.txt
set archive_path=Z:\archive

:: Create archive directory if it doesn't exist
if not exist %archive_path% mkdir %archive_path%

:: Move files older than 30 days to archive
echo Moving files older than 30 days to the archive...
forfiles /p C:\ /m *.txt /d -30 /c "cmd /c move @file %archive_path%"

:: Sort archived files by size and list them
echo Sorting archived files by size...
(for %%F in (%archive_path%\*.txt) do (
    for /f "tokens=1,5" %%a in ('dir /o-s /-c %%F') do (
        echo %%b %%a
    )
)) > %archive_path%\sorted_files.txt

:: Show sorted files and prompt user for deletion
echo The following files are large and old:
type %archive_path%\sorted_files.txt
set /p delete="Do you want to delete these files? (yes/no): "
if /i %delete%==yes (
    del /f /q %archive_path%\*.txt
    echo Files deleted.
) else (
    echo Deletion cancelled.
)
goto end

:end
pause