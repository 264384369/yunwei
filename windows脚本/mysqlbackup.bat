@echo off

set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%"
E:\MySQL\"MySQL Server 5.5"\bin\mysqldump --opt --master-data=2 --flush-logs -u root --password=Wzwh179698 obd > E:\db_backup\obd_%Ymd%.sql >>E:\db_backup\backobd.txt
E:\MySQL\"MySQL Server 5.5"\bin\mysqldump --opt --master-data=2 --flush-logs -u root --password=Wzwh179698 obdzs > E:\db_backup\obdzs_%Ymd%.sql >>E:\db_backup\backobdzs.txt
@echo on 