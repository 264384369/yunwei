#1/bin/bash
###
###
#
user=root
passwd=1qazxsw@
NewFile="$BackupPath"db$(date +%y%m%d)
mysqldump -u$user -p$passwd --single-transaction --master-data=2  --quick wapjxt|gzip >/usr/mysqldata/$NewFile.zip

