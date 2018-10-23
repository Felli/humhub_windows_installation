cls
@ echo off

REM  GO TO script folder
REM --------------------------------------------------------
CD /D %~dp0


REM echo %~dp0
REM PAUSE


REM  GO TO Yii2 folder
REM --------------------------------------------------------
CD ..
CD public\protected\


REM dir 
REM PAUSE


REM  RUN Yii2 command
REM --------------------------------------------------------
"C:\PHP\php-7.0.x-nts-VC14-x64\php-win.exe" yii cron/daily

REM PAUSE