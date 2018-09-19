#!/bin/bash
#setupmysql.sh

#卸载已存在的mysql
yum remove mysql mysql-server mysql-libs compat-mysql51
rm -rf /var/lib/mysql
rm /etc/my.cnf
chkconfig --list | grep -i mysql
chkconfig --del mysql
rm -rf /usr/lib/mysql
rm -rf /usr/share/mysql
rm -rf /usr/my.cnf
echo "--mysql已经清除干净"

#开启防火墙
sed -i '10i\-A INPUT -m state --state NEW -m tcp -p tcp --dport 3306 -j ACCEPT' /etc/sysconfig/iptables
service iptables restart
echo "--防火墙3306已打开"

#安装MySQL
yum install -y mysql-server mysql mysql-devel
service mysqld start
service mysqld restart
chkconfig mysqld on
mysqladmin -u root password '123456'
mysql -u root -p

