#!/bin/bash
#setuptomcat7.sh

#从U盘拷贝tomcat7包到user目录的mysofeware目录下
#cd /usr
#mkdir mysofeware
#echo "---已创建/usr/mysoftware文件夹成功"
#cd /mnt
#mkdir usb
#echo "---已创建/mnt/usb文件夹成功"
#mount /dev/sdb1 /mnt/usb
#cp /mnt/usb/中材节能迭代更新/apache-tomcat-7.0.75.tar.gz /usr/mysoftware/
#echo "--mysofeware下复制tomcat完成"
#umount /dev/sdb1
#echo "--关闭U盘完成"

#解压
#cd /usr/mysoftware
#tar -zxvf /usr/mysoftware/apache-tomcat-7.0.75.tar.gz
cp -R /usr/mysoftware/tomcat7 tomcat7.1
#echo "--tomcat 解压完成!"

#打开防火墙
sed -i '10i\-A INPUT -m state --state NEW -m tcp -p tcp --dport 8081 -j ACCEPT' /etc/sysconfig/iptables
service iptables restart
echo "--防火墙8081已打开"

#启动tomcat
#cd /usr/mysoftware/tomcat7/bin
#./startup.sh
#nc -z -w 1 192.168.2.66 8080
#echo "--tomcat启动完成！"
