#!/bin/base
#mysqltest.sh

HOSTNAME="localhost"
PORT="3306"
USERNAME="root"
PASSWORD="123456"
DBNAME="zcgx"

#创建数据库
create_db_sql="create database IF NOT EXISTS ${DBNAME}"
mysql -h${HOSTNAME}  -P${PORT}  -u${USERNAME} -p${PASSWORD} -e "${create_db_sql}"

show_1="show databases"
mysql -h${HOSTNAME}  -P${PORT}  -u${USERNAME} -p${PASSWORD} -e "${show_1}"

outline_1="GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '123456' WITH GRANT OPTION"
mysql -h${HOSTNAME}  -P${PORT}  -u${USERNAME} -p${PASSWORD} -e "${outline_1}"

outline_2="FLUSH PRIVILEGES"
mysql -h${HOSTNAME}  -P${PORT}  -u${USERNAME} -p${PASSWORD} -e "${outline_2}"

#初始化数据
#从U盘拷贝sql到user目录的mysofeware目录下
#mount /dev/sdb1 /mnt/usb
#cp /mnt/usb/中材节能迭代更新/zcjn-20170313.sql /usr/mysoftware
#echo "--mysofeware下复制sql完成"
#umount /dev/sdb1
#echo "--关闭U盘完成"

#执行sql
#begindatas="SOURCE /usr/mysoftware/zcjn-20170313.sql"
#mysql -h${HOSTNAME}  -P${PORT}  -u${USERNAME} -p${PASSWORD} -e "${begindatas}"

