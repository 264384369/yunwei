@echo off

set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%"
E:\MySQL\"MySQL Server 5.5"\bin\mysqldump --opt -u root --password=Wzwh179698 --all-databases > E:\db_backup\allbak_%Ymd%.sql
@echo on