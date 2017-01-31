:: Name:     diralias.bat
:: Purpose:  create a shortcut (variable 1) to a desired path (variable 2) in the userprofile folder
:: Author:   darky.ben@mail.com

@echo off

:: variables
set arg1=%1
set arg2=%2

:: temp vbs script
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

:: write in the vbs script
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\%arg1%.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%arg2%" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

:: run & kill the vbs script
cscript /nologo %SCRIPT%
del %SCRIPT%