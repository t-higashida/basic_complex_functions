:loop

rem if EXIST f複素関数入門.log (copy f複素関数入門.log.* f複素関数入門.log.*.old)

platex f複素関数入門



if %errorlevel%  geq	1 goto delaux
if %errorlevel%  geq	0 goto copydvi

:delaux
rem del *.aux
goto stop

:copydvi
copy f複素関数入門.dvi kensaku.dvi
goto stop

:stop
rem if EXIST f複素関数入門.log.old (c:\bin\diff f複素関数入門.log.old f複素関数入門.log)

rem hidemaru .\f複素関数入門.log

pause

goto loop