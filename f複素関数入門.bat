:loop

rem if EXIST f���f�֐�����.log (copy f���f�֐�����.log.* f���f�֐�����.log.*.old)

platex f���f�֐�����



if %errorlevel%  geq	1 goto delaux
if %errorlevel%  geq	0 goto copydvi

:delaux
rem del *.aux
goto stop

:copydvi
copy f���f�֐�����.dvi kensaku.dvi
goto stop

:stop
rem if EXIST f���f�֐�����.log.old (c:\bin\diff f���f�֐�����.log.old f���f�֐�����.log)

rem hidemaru .\f���f�֐�����.log

pause

goto loop