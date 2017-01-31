:: Name:     clipalias.bat
:: Purpose:  create a script copying a string (variable 1) to the clipboard
:: Author:   darky.ben@mail.com

@echo off
:: allows special characters
Chcp 65001 > NUL 

:: variables
set arg1=%1
set arg2=%2

:: create a %arg2%.bat file in the userprofile folder
type NUL 				 > %USERPROFILE%\%arg2%.bat
ECHO Chcp 65001 		>> %USERPROFILE%\%arg2%.bat
ECHO echo %arg1%^| clip >> %USERPROFILE%\%arg2%.bat