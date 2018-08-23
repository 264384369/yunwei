@echo off

E:\MySQL\"MySQL Server 5.5"\bin\mysqladmin -u root --password=Wzwh179698 flush-logs
xcopy E:\MySQL\"MySQL Server 5.5"\data\mysql-bin.* E:\db_backup\daily /Y /d:%date:~5,2%-%date:~8,2%-%date:~0,4% >>E:\db_backup\binlog.txt

@echo on