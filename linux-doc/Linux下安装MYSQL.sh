[root@localhost data]#  rpm -qa|grep -i mysql
[root@localhost data]# 
[root@localhost data]# rpm -qa|grep -i maria
mariadb-libs-5.5.60-1.el7_5.x86_64
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


