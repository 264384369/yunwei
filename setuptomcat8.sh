#!/bin/bash
#setuptomcat7.sh

#��U�̿���tomcat7����userĿ¼��mysofewareĿ¼��
#cd /usr
#mkdir mysofeware
#echo "---�Ѵ���/usr/mysoftware�ļ��гɹ�"
#cd /mnt
#mkdir usb
#echo "---�Ѵ���/mnt/usb�ļ��гɹ�"
#mount /dev/sdb1 /mnt/usb
#cp /mnt/usb/�вĽ��ܵ�������/apache-tomcat-7.0.75.tar.gz /usr/mysoftware/
#echo "--mysofeware�¸���tomcat���"
#umount /dev/sdb1
#echo "--�ر�U�����"

#��ѹ
#cd /usr/mysoftware
#tar -zxvf /usr/mysoftware/apache-tomcat-7.0.75.tar.gz
cp -R /usr/mysoftware/tomcat7 tomcat7.1
#echo "--tomcat ��ѹ���!"

#�򿪷���ǽ
sed -i '10i\-A INPUT -m state --state NEW -m tcp -p tcp --dport 8081 -j ACCEPT' /etc/sysconfig/iptables
service iptables restart
echo "--����ǽ8081�Ѵ�"

#����tomcat
#cd /usr/mysoftware/tomcat7/bin
#./startup.sh
#nc -z -w 1 192.168.2.66 8080
#echo "--tomcat������ɣ�"
