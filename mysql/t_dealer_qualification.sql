CREATE TABLE `t_dealer_qualification` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '���',
  `VERSON` int(11) NOT NULL DEFAULT '0' COMMENT '�汾��',
  `DEALERID` int(11) NOT NULL COMMENT '�����̱��',
  `QUALIFICATIONID` int(11) NOT NULL COMMENT '���������ʱ�� 1:24Сʱ��Ѿ�Ԯ  2:�������ȡ�ͳ�����  3: ά�ޱ����ṩ������  4:չ������22��   5:��������Լ�   6:�³��������ݽ���',
  `VALID` int(1) NOT NULL DEFAULT '1' COMMENT '��Ч��\r\n            0-��Ч\r\n            1-��Ч',
  `CDATE` datetime NOT NULL COMMENT '����ʱ��',
  `UDATE` datetime NOT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8 COMMENT='����������';

