链接：https://pan.baidu.com/s/1Wgrz9qgApAOjmdUTQupgKA  提取码：owsy 
/home/crsc/Desktop/data


[crsc@localhost data]$ rpm -qa|grep libevent  
libevent-2.0.21-4.el7.x86_64
[crsc@localhost data]$  rpm -e --nodeps libevent-2.0.21-4.el7.x86_64

[crsc@localhost data]$ wget http://www.monkey.org/~provos/libevent-1.4.12-stable.tar.gz 
[crsc@localhost data]$ tar -zxvf libevent-1.4.12-stable.tar.gz 
[crsc@localhost data]$ cd libevent-1.4.12-stable/
[crsc@localhost libevent-1.4.12-stable]$  ./configure -prefix=/home/crsc/Desktop/data/libevent


