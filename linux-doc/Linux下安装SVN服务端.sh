yum install subversion
mkdir /data
mkdir /data/svn
cd /data/
svnadmin create /data/svn

#/data/svn/conf
#authz ��Ȩ�޿����ļ�
#passwd ���ʺ������ļ�
#svnserve.conf ��SVN���������ļ�
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


������ֹͣ
svnserve -d -r /data/svn   ��������
killall svnserve��ֹͣ��
�������������У�-d��ʾ�ػ����̣� -r ��ʾ�ں�ִ̨�С�ֹͣ�����Բ���ɱ�����̵ķ�ʽ��
[root@localhost conf]# ps -ef|grep svnserve
root      4908     1  0 21:32 ?        00:00:00 svnserve -d -r /home/svn
root      4949  4822  0 22:05 pts/0    00:00:00 grep svnserve





