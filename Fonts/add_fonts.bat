@ECHO OFF
TITLE Adding Fonts..
REM Filename: add_fonts.bat
REM Script to ADD TrueType and OpenType Fonts for Windows

REM How to use:
REM Place the batch file inside the folder of the font files

IF NOT "%*"=="" SET SRC=%*
REM ECHO.
REM ECHO Adding Fonts..
REM ECHO.
FOR /F %%i in ('dir /b "%SRC%*.*tf"') DO CALL :FONT %%i
REM OPTIONAL REBOOT
REM shutdown -r -f -t 10 -c "Reboot required for Fonts installation"
REM ECHO.
REM ECHO Done!
REM PAUSE
REM EXIT

:FONT
ECHO.
REM ECHO FILE=%~f1
SET FFILE=%~n1%~x1
SET FNAME=%~n1
SET FNAME=%FNAME:-= %
IF "%~x1"==".otf" SET FTYPE=(OpenType)
IF "%~x1"==".ttf" SET FTYPE=(TrueType)

ECHO FILE=%FFILE%
ECHO NAME=%FNAME%
ECHO TYPE=%FTYPE%

COPY /Y "%SRC%%~n1%~x1" "%SystemRoot%\Fonts\"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "%FNAME% %FTYPE%" /t REG_SZ /d "%FFILE%" /f
GOTO :EOF