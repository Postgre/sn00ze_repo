net use m: /DELETE
net use p: /DELETE
net use u: /DELETE
net use k: /DELETE
net use m: \\sm-pronto\bms samba123 /user:CSM\mladenb
net use p: \\sm-pronto\cus\pcs samba123 /user:CSM\mladenb
net use u: \\sm-pronto\cus samba123 /user:CSM\mladenb
net use k: \\10.3.0.72\cus72 samba123 /user:CSM\mladenb
pause
rem -- map T: drive to snooze repo repository github vcs svn subversion :
subst T: C:\Users\mladenb\Documents\GitHub\sn00ze
pause

rem -- U:\>findstr /s /i "dict-object" *.spl > xdict-object_.x

rem -- prospl pvi-snz/so/x5swmexport 115 7-apr-2014 7-apr-2014
rem -- prospl pvi-snz/so/x5soexport 390 4-mar-2013 10-mar-2013 //-- dataset 390 (Shepparton)
rem -- /pro/pronto/lbin/superbatch.pl -excelr8 -start=4-mar-2013 -end=10-mar-2013

rem -- root : Sn))z32o13
rem --
rem -- pronto on .71 .72 : 9830pronto
rem -- pronto on .09 : v-aa:^t(
