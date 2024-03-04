/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmhkrf8
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmhkrf8` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmhkrf8`;

/*Table structure for table `bowenleixing` */

DROP TABLE IF EXISTS `bowenleixing`;

CREATE TABLE `bowenleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bowenleixing` varchar(200) DEFAULT NULL COMMENT '博文类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='博文类型';

/*Data for the table `bowenleixing` */

insert  into `bowenleixing`(`id`,`addtime`,`bowenleixing`) values (31,'2021-04-04 18:02:02','博文类型1'),(32,'2021-04-04 18:02:02','博文类型2'),(33,'2021-04-04 18:02:02','博文类型3'),(34,'2021-04-04 18:02:02','博文类型4'),(35,'2021-04-04 18:02:02','博文类型5'),(36,'2021-04-04 18:02:02','博文类型6');

/*Table structure for table `bowenxinxi` */

DROP TABLE IF EXISTS `bowenxinxi`;

CREATE TABLE `bowenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bowenbiaoti` varchar(200) NOT NULL COMMENT '博文标题',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `bowenleixing` varchar(200) DEFAULT NULL COMMENT '博文类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='博文信息';

/*Data for the table `bowenxinxi` */

insert  into `bowenxinxi`(`id`,`addtime`,`bowenbiaoti`,`biaoqian`,`bowenleixing`,`tupian`,`neirong`,`faburiqi`,`yonghuming`,`youxiang`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-04-04 18:02:02','博文标题1','标签1','博文类型1','http://localhost:8080/ssmhkrf8/upload/bowenxinxi_tupian1.jpg','内容1','2021-04-04','用户名1','邮箱1',1,1,'2021-04-04 18:02:02',1),(22,'2021-04-04 18:02:02','博文标题2','标签2','博文类型2','http://localhost:8080/ssmhkrf8/upload/bowenxinxi_tupian2.jpg','内容2','2021-04-04','用户名2','邮箱2',2,2,'2021-04-04 18:02:02',2),(23,'2021-04-04 18:02:02','博文标题3','标签3','博文类型3','http://localhost:8080/ssmhkrf8/upload/bowenxinxi_tupian3.jpg','内容3','2021-04-04','用户名3','邮箱3',3,3,'2021-04-04 18:02:02',3),(24,'2021-04-04 18:02:02','博文标题4','标签4','博文类型4','http://localhost:8080/ssmhkrf8/upload/bowenxinxi_tupian4.jpg','内容4','2021-04-04','用户名4','邮箱4',4,4,'2021-04-04 18:02:02',4),(25,'2021-04-04 18:02:02','博文标题5','标签5','博文类型5','http://localhost:8080/ssmhkrf8/upload/bowenxinxi_tupian5.jpg','内容5','2021-04-04','用户名5','邮箱5',5,5,'2021-04-04 18:02:02',5),(26,'2021-04-04 18:02:02','博文标题6','标签6','博文类型6','http://localhost:8080/ssmhkrf8/upload/bowenxinxi_tupian6.jpg','内容6','2021-04-04','用户名6','邮箱6',6,6,'2021-04-04 18:02:02',6);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='联系客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (71,'2021-04-04 18:02:02',1,1,'提问1','回复1',1),(72,'2021-04-04 18:02:02',2,2,'提问2','回复2',2),(73,'2021-04-04 18:02:02',3,3,'提问3','回复3',3),(74,'2021-04-04 18:02:02',4,4,'提问4','回复4',4),(75,'2021-04-04 18:02:02',5,5,'提问5','回复5',5),(76,'2021-04-04 18:02:02',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmhkrf8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmhkrf8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmhkrf8/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussbowenxinxi` */

DROP TABLE IF EXISTS `discussbowenxinxi`;

CREATE TABLE `discussbowenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='博文信息评论表';

/*Data for the table `discussbowenxinxi` */

insert  into `discussbowenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-04-04 18:02:02',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-04-04 18:02:02',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-04-04 18:02:02',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-04-04 18:02:02',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-04-04 18:02:02',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-04-04 18:02:02',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusswodebowen` */

DROP TABLE IF EXISTS `discusswodebowen`;

CREATE TABLE `discusswodebowen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='我的博文评论表';

/*Data for the table `discusswodebowen` */

insert  into `discusswodebowen`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-04 18:02:02',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-04 18:02:02',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-04 18:02:02',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-04 18:02:02',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-04 18:02:02',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-04 18:02:02',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `gerenmingpianfenxiang` */

DROP TABLE IF EXISTS `gerenmingpianfenxiang`;

CREATE TABLE `gerenmingpianfenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `gerenaihao` varchar(200) DEFAULT NULL COMMENT '个人爱好',
  `gerenjianjie` longtext COMMENT '个人简介',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='个人名片分享';

/*Data for the table `gerenmingpianfenxiang` */

insert  into `gerenmingpianfenxiang`(`id`,`addtime`,`yonghuming`,`shouji`,`xingming`,`zhaopian`,`suozaichengshi`,`gerenaihao`,`gerenjianjie`,`clicknum`) values (51,'2021-04-04 18:02:02','用户名1','13823888881','姓名1','http://localhost:8080/ssmhkrf8/upload/gerenmingpianfenxiang_zhaopian1.jpg','所在城市1','个人爱好1','个人简介1',1),(52,'2021-04-04 18:02:02','用户名2','13823888882','姓名2','http://localhost:8080/ssmhkrf8/upload/gerenmingpianfenxiang_zhaopian2.jpg','所在城市2','个人爱好2','个人简介2',2),(53,'2021-04-04 18:02:02','用户名3','13823888883','姓名3','http://localhost:8080/ssmhkrf8/upload/gerenmingpianfenxiang_zhaopian3.jpg','所在城市3','个人爱好3','个人简介3',3),(54,'2021-04-04 18:02:02','用户名4','13823888884','姓名4','http://localhost:8080/ssmhkrf8/upload/gerenmingpianfenxiang_zhaopian4.jpg','所在城市4','个人爱好4','个人简介4',4),(55,'2021-04-04 18:02:02','用户名5','13823888885','姓名5','http://localhost:8080/ssmhkrf8/upload/gerenmingpianfenxiang_zhaopian5.jpg','所在城市5','个人爱好5','个人简介5',5),(56,'2021-04-04 18:02:02','用户名6','13823888886','姓名6','http://localhost:8080/ssmhkrf8/upload/gerenmingpianfenxiang_zhaopian6.jpg','所在城市6','个人爱好6','个人简介6',6);

/*Table structure for table `qiandao` */

DROP TABLE IF EXISTS `qiandao`;

CREATE TABLE `qiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `suozaididian` varchar(200) DEFAULT NULL COMMENT '所在地点',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  `beizhu` longtext COMMENT '备注',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='签到';

/*Data for the table `qiandao` */

insert  into `qiandao`(`id`,`addtime`,`yonghuming`,`xingming`,`zhaopian`,`suozaididian`,`qiandaoshijian`,`beizhu`,`clicknum`) values (61,'2021-04-04 18:02:02','用户名1','姓名1','http://localhost:8080/ssmhkrf8/upload/qiandao_zhaopian1.jpg','所在地点1','2021-04-04 18:02:02','备注1',1),(62,'2021-04-04 18:02:02','用户名2','姓名2','http://localhost:8080/ssmhkrf8/upload/qiandao_zhaopian2.jpg','所在地点2','2021-04-04 18:02:02','备注2',2),(63,'2021-04-04 18:02:02','用户名3','姓名3','http://localhost:8080/ssmhkrf8/upload/qiandao_zhaopian3.jpg','所在地点3','2021-04-04 18:02:02','备注3',3),(64,'2021-04-04 18:02:02','用户名4','姓名4','http://localhost:8080/ssmhkrf8/upload/qiandao_zhaopian4.jpg','所在地点4','2021-04-04 18:02:02','备注4',4),(65,'2021-04-04 18:02:02','用户名5','姓名5','http://localhost:8080/ssmhkrf8/upload/qiandao_zhaopian5.jpg','所在地点5','2021-04-04 18:02:02','备注5',5),(66,'2021-04-04 18:02:02','用户名6','姓名6','http://localhost:8080/ssmhkrf8/upload/qiandao_zhaopian6.jpg','所在地点6','2021-04-04 18:02:02','备注6',6);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-04 18:02:02');

/*Table structure for table `wodebowen` */

DROP TABLE IF EXISTS `wodebowen`;

CREATE TABLE `wodebowen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bowenbiaoti` varchar(200) NOT NULL COMMENT '博文标题',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `bowenleixing` varchar(200) DEFAULT NULL COMMENT '博文类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='我的博文';

/*Data for the table `wodebowen` */

insert  into `wodebowen`(`id`,`addtime`,`bowenbiaoti`,`biaoqian`,`bowenleixing`,`tupian`,`neirong`,`faburiqi`,`yonghuming`,`youxiang`,`clicknum`,`userid`) values (41,'2021-04-04 18:02:02','博文标题1','标签1','博文类型1','http://localhost:8080/ssmhkrf8/upload/wodebowen_tupian1.jpg','内容1','2021-04-04','用户名1','邮箱1',1,1),(42,'2021-04-04 18:02:02','博文标题2','标签2','博文类型2','http://localhost:8080/ssmhkrf8/upload/wodebowen_tupian2.jpg','内容2','2021-04-04','用户名2','邮箱2',2,2),(43,'2021-04-04 18:02:02','博文标题3','标签3','博文类型3','http://localhost:8080/ssmhkrf8/upload/wodebowen_tupian3.jpg','内容3','2021-04-04','用户名3','邮箱3',3,3),(44,'2021-04-04 18:02:02','博文标题4','标签4','博文类型4','http://localhost:8080/ssmhkrf8/upload/wodebowen_tupian4.jpg','内容4','2021-04-04','用户名4','邮箱4',4,4),(45,'2021-04-04 18:02:02','博文标题5','标签5','博文类型5','http://localhost:8080/ssmhkrf8/upload/wodebowen_tupian5.jpg','内容5','2021-04-04','用户名5','邮箱5',5,5),(46,'2021-04-04 18:02:02','博文标题6','标签6','博文类型6','http://localhost:8080/ssmhkrf8/upload/wodebowen_tupian6.jpg','内容6','2021-04-04','用户名6','邮箱6',6,6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`) values (11,'2021-04-04 18:02:02','用户1','123456','姓名1','男',1,'13823888881','440300199101010001','773890001@qq.com','http://localhost:8080/ssmhkrf8/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-04 18:02:02','用户2','123456','姓名2','男',2,'13823888882','440300199202020002','773890002@qq.com','http://localhost:8080/ssmhkrf8/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-04 18:02:02','用户3','123456','姓名3','男',3,'13823888883','440300199303030003','773890003@qq.com','http://localhost:8080/ssmhkrf8/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-04 18:02:02','用户4','123456','姓名4','男',4,'13823888884','440300199404040004','773890004@qq.com','http://localhost:8080/ssmhkrf8/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-04 18:02:02','用户5','123456','姓名5','男',5,'13823888885','440300199505050005','773890005@qq.com','http://localhost:8080/ssmhkrf8/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-04 18:02:02','用户6','123456','姓名6','男',6,'13823888886','440300199606060006','773890006@qq.com','http://localhost:8080/ssmhkrf8/upload/yonghu_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
