@ECHO OFF
C:
CD\
CLS

:MENU
CLS

ECHO =========QUANTUM ENTANGLEMENT========
ECHO -------------------------------------
ECHO 1.  Check FireWall Status
ECHO 2.  Enable The FireWall
ECHO 3.  Disable The FireWall
ECHO -------------------------------------
ECHO ==========PRESS 'Q' TO QUIT==========
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO Selection1
IF /I '%INPUT%'=='2' GOTO Selection2
IF /I '%INPUT%'=='3' GOTO Selection3
IF /I '%INPUT%'=='Q' GOTO Quit

CLS

ECHO ============INVALID INPUT============
ECHO -------------------------------------
ECHO Please select a number from the Main
echo Menu [1-3] or select 'Q' to quit.
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE > NUL
GOTO MENU

:Selection1

ECHO Check FireWall
Netsh Advfirewall show allprofiles
PAUSE
GOTO Quit

:Selection2

ECHO Enable FireWall
NetSh Advfirewall set allrprofiles state on
PAUSE
GOTO Quit

:Selection3

ECHO Disable FireWall
NetSh Advfirewall set allrprofiles state off
PAUSE
GOTO Quit

:Quit
CLS

ECHO ==============GOODBYE================
ECHO -------------------------------------
ECHO =======PRESS ANY KEY TO CLOSE========

PAUSE>NUL
EXIT
