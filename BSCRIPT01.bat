@echo off
:: Simple script to open websites, launch applications, and shut down the computer

:: Open websites
echo Opening websites...
start "" "https://www.google.com"
start "" "https://www.bing.com"
start "" "https://www.yahoo.com"
start "" "https://www.duckduckgo.com"
start "" "https://www.wikipedia.org"

:: Launch Calculator
echo Starting Calculator...
start calc

:: Launch Notepad
echo Starting Notepad...
start notepad

:: Initiate shutdown after 1 minute (60 seconds)
echo The system will shut down in 60 seconds. Save your work!
shutdown /s /t 60

pause