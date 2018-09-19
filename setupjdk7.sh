#!/bin/bash
#setupjdk7.sh

#从U盘拷贝jdk包到user目录的mysofeware目录下
#mkdir /usr/mysoftware
#echo "---已创建/usr/mysofeware文件夹成功"
#mkdir /mnt/usb
#echo "---已创建/mnt/usb文件夹成功"
#mount /dev/sdb1 /mnt/usb
#cp /mnt/usb/中材节能迭代更新/jdk-7u79-linux-x64.gz /usr/mysoftware
#echo "--mysofeware下复制jdk完成"
#umount /dev/sdb1
#echo "--关闭U盘完成"

#解压和安装jdk
cd /usr/mysoftware
tar -zxvf /usr/mysoftware/jdk-7u79-linux-x64.gz
mv /usr/mysoftware/jdk1.7.0_79 jdk7
echo "-jdk7解压完成"
echo >> /etc/profile
echo "export JAVA_HOME=/usr/mysoftware/jdk7" >> /etc/profile
echo "export JRE_HOME=/usr/mysoftware/jdk7/jre" >> /etc/profile
echo "export CLASSPATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar:\$JRE_HOME/lib:\$CLASSPATH" >> /etc/profile
echo "PATH=\$JAVA_HOME/bin:\$PATH" >> /etc/profile
source /etc/profile
echo "--环境变量配置完成"
java -version
javac -version
echo "--jdk安装完成！"



