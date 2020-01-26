:loop

rem if EXIST f•¡‘fŠÖ”“ü–å.log (copy f•¡‘fŠÖ”“ü–å.log.* f•¡‘fŠÖ”“ü–å.log.*.old)

platex f•¡‘fŠÖ”“ü–å



if %errorlevel%  geq	1 goto delaux
if %errorlevel%  geq	0 goto copydvi

:delaux
rem del *.aux
goto stop

:copydvi
copy f•¡‘fŠÖ”“ü–å.dvi kensaku.dvi
goto stop

:stop
rem if EXIST f•¡‘fŠÖ”“ü–å.log.old (c:\bin\diff f•¡‘fŠÖ”“ü–å.log.old f•¡‘fŠÖ”“ü–å.log)

rem hidemaru .\f•¡‘fŠÖ”“ü–å.log

pause

goto loop