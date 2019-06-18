
文件：
链接：https://pan.baidu.com/s/1nBYMjuPim9thotkLGGUZJQ  提取码：9vcc  

[root@localhost data]#  rpm -qa|grep -i mysql
[root@localhost data]# 
[root@localhost data]# rpm -qa|grep -i maria
mariadb-libs-5.5.60-1.el7_5.x86_64

# rpm -e --nodeps mariadb-libs-5.5.50-1.el7_2.x86_64
# rpm -e --nodeps mariadb-5.5.50-1.el7_2.x86_64
# rpm -e --nodeps mariadb-server-5.5.50-1.el7_2.x86_64 
 

[root@localhost data]# yum -y remove mariadb-libs-5.5.60-1.el7_5.x86_64
[root@localhost data]# ll
total 66632
-rwxrw-rw-. 1 crsc crsc 17855952 Nov 12  2017 MySQL-client-5.5.48-1.linux2.6.x86_64.rpm
-rwxrw-rw-. 1 crsc crsc 50372369 Jan 16  2016 MySQL-server-5.5.48-1.linux2.6.x86_64.rpm
[root@localhost data]# 
[root@localhost data]# rpm -ivh --nodeps MySQL-server-5.5.48-1.linux2.6.x86_64.rpm 
warning: MySQL-server-5.5.48-1.linux2.6.x86_64.rpm: Header V3 DSA/SHA1 Signature, key ID 5072e1f5: NOKEY
Preparing...                          ################################# [100%]
Updating / installing...
   1:MySQL-server-5.5.48-1.linux2.6   ################################# [100%]
190618  2:34:44 [Note] /usr/sbin/mysqld (mysqld 5.5.48) starting as process 58515 ...
190618  2:34:45 [Note] /usr/sbin/mysqld (mysqld 5.5.48) starting as process 58522 ...

PLEASE REMEMBER TO SET A PASSWORD FOR THE MySQL root USER !
To do so, start the server, then issue the following commands:

/usr/bin/mysqladmin -u root password 'new-password'
/usr/bin/mysqladmin -u root -h localhost password 'new-password'

Alternatively you can run:
/usr/bin/mysql_secure_installation

which will also give you the option of removing the test
databases and anonymous user created by default.  This is
strongly recommended for production servers.

See the manual for more instructions.

Please report any problems at http://bugs.mysql.com/

[root@localhost data]# rpm -ivh --nodeps MySQL-client-5.5.48-1.linux2.6.x86_64.rpm 
warning: MySQL-client-5.5.48-1.linux2.6.x86_64.rpm: Header V3 DSA/SHA1 Signature, key ID 5072e1f5: NOKEY
Preparing...                          ################################# [100%]
Updating / installing...
   1:MySQL-client-5.5.48-1.linux2.6   ################################# [100%]
   
[root@localhost data]# rpm -aq|grep -i mysql
MySQL-server-5.5.48-1.linux2.6.x86_64
MySQL-client-5.5.48-1.linux2.6.x86_64




[root@localhost data]# cat /etc/passwd|grep mysql
mysql:x:987:981:MySQL server:/var/lib/mysql:/bin/bash
[root@localhost data]# cat /etc/group|grep  mysql
mysql:x:981:

[root@localhost data]# mysqladmin --version
mysqladmin  Ver 8.42 Distrib 5.5.48, for Linux on x86_64

启动mysql：
[root@localhost data]# service mysql start
Starting MySQL.. SUCCESS! 
关闭mysql：
[root@localhost data]# service mysql stop
Shutting down MySQL. SUCCESS! 


error
[root@localhost data]# /usr/bin/mysqladmin  -u root password root
/usr/bin/mysqladmin: connect to server at 'localhost' failed
error: 'Can't connect to local MySQL server through socket '/var/lib/mysql/mysql.sock' (2)'
Check that mysqld is running and that the socket: '/var/lib/mysql/mysql.sock' exists!

[root@localhost data]# service mysql start
Starting MySQL.. SUCCESS! 
[root@localhost data]# /usr/bin/mysqladmin  -u root password root
开机启动 
# chkconfig mysql on
[root@localhost mysql]# chkconfig mysql on
[root@localhost mysql]# chkconfig --list |grep mysql

Note: This output shows SysV services only and does not include native
      systemd services. SysV configuration data might be overridden by native
      systemd configuration.

      If you want to list systemd services use 'systemctl list-unit-files'.
      To see services enabled on particular target use
      'systemctl list-dependencies [target]'.

mysql          	0:off	1:off	2:on	3:on	4:on	5:on	6:off

