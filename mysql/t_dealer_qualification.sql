CREATE TABLE `t_dealer_qualification` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `VERSON` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `DEALERID` int(11) NOT NULL COMMENT '经销商编号',
  `QUALIFICATIONID` int(11) NOT NULL COMMENT '经销商资质编号 1:24小时免费救援  2:免费上门取送车服务  3: 维修保养提供代步车  4:展厅晚场到22点   5:免费上门试驾   6:新车主免费陪驾教练',
  `VALID` int(1) NOT NULL DEFAULT '1' COMMENT '有效性\r\n            0-无效\r\n            1-有效',
  `CDATE` datetime NOT NULL COMMENT '创建时间',
  `UDATE` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8 COMMENT='经销商资质';

