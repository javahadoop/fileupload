yum install subversion
mkdir /data
mkdir /data/svn
cd /data/
svnadmin create /data/svn

#/data/svn/conf
#authz 是权限控制文件
#passwd 是帐号密码文件
#svnserve.conf 是SVN服务配置文件
# vim  passwd 
[users]
# harry = harryssecret
# sally = sallyssecret
wangqiankun=000000
wqk=000000

# vim  authz 
[/]
wangqiankun=rw
wqk=rw
*=


启动与停止
svnserve -d -r /data/svn   （启动）
killall svnserve（停止）
上述启动命令中，-d表示守护进程， -r 表示在后台执行。停止还可以采用杀死进程的方式：
[root@localhost conf]# ps -ef|grep svnserve
root      4908     1  0 21:32 ?        00:00:00 svnserve -d -r /home/svn
root      4949  4822  0 22:05 pts/0    00:00:00 grep svnserve





