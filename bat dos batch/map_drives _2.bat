net use m: /DELETE
net use p: /DELETE
net use u: /DELETE
net use m: \\sm-pronto\bms samba123 /user:CSM\robd
net use p: \\sm-pronto\cus\pcs samba123 /user:CSM\robd
net use u: \\sm-pronto\cus samba123 /user:CSM\robd
pause
rem -- map T: drive to snooze repo repository github vcs svn subversion :
subst T: C:\Users\mladenb\Documents\GitHub\sn00ze
pause
rem -- prospl pvi-snz/so/x5swmexport 115 7-apr-2014 7-apr-2014
rem -- prospl pvi-snz/so/x5soexport 390 4-mar-2013 10-mar-2013 //-- dataset 390 (Shepparton)
rem -- /pro/pronto/lbin/superbatch.pl -excelr8 -start=4-mar-2013 -end=10-mar-2013

rem -- root : Sn))z32o13
rem --
rem -- pronto on .71 .72 : 9830pronto
rem -- pronto on .09 : v-aa:^t(
