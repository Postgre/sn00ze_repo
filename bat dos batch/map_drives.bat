net use m: /DELETE
net use p: /DELETE
net use u: /DELETE
net use m: \\10.3.0.9\bms samba123 /user:CSM\robd
net use p: \\10.3.0.9\cus\pcs samba123 /user:CSM\robd
net use u: \\10.3.0.9\cus samba123 /user:CSM\robd
pause
