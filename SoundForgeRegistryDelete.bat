@echo off

for /f "usebackq tokens=*" %%i in (`whoami /USER`) do set RESULT=%%i
for /f "tokens=2*" %%i in ("%RESULT%") do set SID=%%i

reg delete "HKEY_USERS\%SID%_Classes\VirtualStore\MACHINE\SOFTWARE\WOW6432Node\Sony Creative Software\Sound Forge Pro\11.0" /f
