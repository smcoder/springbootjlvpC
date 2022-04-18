# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.28)
# Database: springbootjlvpC
# Generation Time: 2022-04-08 10:16:10 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;

INSERT INTO `config` (`id`, `name`, `value`)
VALUES
	(1,'picture1','http://localhost:8080/springbootjlvpC/upload/1596202765029.jpg'),
	(2,'picture2','http://localhost:8080/springbootjlvpC/upload/1596202778459.jpg'),
	(3,'picture3','http://localhost:8080/springbootjlvpC/upload/1596202789362.jpg'),
	(4,'picture4','http://localhost:8080/springbootjlvpC/upload/1596202801460.jpg'),
	(5,'picture5','http://localhost:8080/springbootjlvpC/upload/1596202812156.jpg'),
	(6,'homepage','http://localhost:8080/springbootjlvpC/upload/1596202819339.jpg');

/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table discussqiuzhizhexinxi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `discussqiuzhizhexinxi`;

CREATE TABLE `discussqiuzhizhexinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='求职者信息评论表';



# Dump of table discusszhaopinxinxi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `discusszhaopinxinxi`;

CREATE TABLE `discusszhaopinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='招聘信息评论表';



# Dump of table gangweifenlei
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gangweifenlei`;

CREATE TABLE `gangweifenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gangweileibie` varchar(200) DEFAULT NULL COMMENT '岗位类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='岗位分类';

LOCK TABLES `gangweifenlei` WRITE;
/*!40000 ALTER TABLE `gangweifenlei` DISABLE KEYS */;

INSERT INTO `gangweifenlei` (`id`, `addtime`, `gangweileibie`)
VALUES
	(1596203279032,'2020-07-31 21:47:58','管理岗位'),
	(1596203306345,'2020-07-31 21:48:25','专技岗位'),
	(1596203316886,'2020-07-31 21:48:35','工勤岗位');

/*!40000 ALTER TABLE `gangweifenlei` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext NOT NULL COMMENT '内容',
  `userid` bigint NOT NULL COMMENT '留言人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;

INSERT INTO `messages` (`id`, `addtime`, `content`, `userid`)
VALUES
	(1596712023223,'2020-08-06 19:07:02','很好很强大。',1596200777877);

/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='新闻资讯';

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO `news` (`id`, `addtime`, `title`, `picture`, `content`)
VALUES
	(1596204167471,'2020-07-31 22:02:46','京东1/4管理层为90后，互联网巨头都爱年轻人','http://localhost:8080/springbootjlvpC/upload/1596204129522.jpeg','<p class=\"ql-align-justify\">2020年第一批90后已迈入30岁，成为互联网公司的主力。同样，这一讯号也激励着正在打拼的年轻人。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">近日，京东招聘负责人在脉脉组织的《把脉》访谈中透露了一组数据：目前京东近90%的管理者都是内部培养的，1/4以上的管理者都是90后。并且在2020年年初的晋升中，57.5%都是90后，首次晋升的95后，占比达到11.7%。据悉，更有技术类员工，在毕业3年便晋升为T8专家。</p><p class=\"ql-align-justify\">在瞬息万变的互联网公司中，曾经的90后多数是给70后、80后做下属。但如今，互联网大厂更青睐于选择有想法的年轻人。</p><p><img src=\"http://localhost:8080/springbootjlvpC/upload/1596204165238.jpeg\"></p><p class=\"ql-align-justify\">其实不止京东，互联网大厂皆是如此。张勇也曾经谈到管理95后员工：“我不懂，但放手让他们做。”并且早在2018年，阿里便拥有了95后的科学家。</p><p class=\"ql-align-justify\">百度也将高管年轻化作为最新战略之一，李彦宏曾在内部信中表示，“公司将加速干部年轻化的进程，选拔更多的80、90后年轻同事进入管理层。”</p><p class=\"ql-align-justify\">据悉，在2020年新一届的招聘中，多数企业都面向应届生开展培养计划，力求为公司补进新生力量。前述京东招聘负责人透露，京东2020年校园招聘共收到简历近13万份。在全部简历中，技术人才占比70%，在发放的offer中技术岗位占比也达到七成。</p><p><br></p>');

/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table qiuzhizhexinxi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qiuzhizhexinxi`;

CREATE TABLE `qiuzhizhexinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `gangweileibie` varchar(200) DEFAULT NULL COMMENT '岗位类别',
  `jianli` varchar(200) DEFAULT NULL COMMENT '简历',
  `gongzuojingli` longtext COMMENT '工作经历',
  `gerenjibenqingkuang` longtext COMMENT '个人基本情况',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='求职者信息';

LOCK TABLES `qiuzhizhexinxi` WRITE;
/*!40000 ALTER TABLE `qiuzhizhexinxi` DISABLE KEYS */;

INSERT INTO `qiuzhizhexinxi` (`id`, `addtime`, `yonghuming`, `xingming`, `xingbie`, `dianhua`, `zhaopian`, `xueli`, `gangweileibie`, `jianli`, `gongzuojingli`, `gerenjibenqingkuang`, `thumbsupnum`, `crazilynum`)
VALUES
	(1596285238983,'2020-08-01 20:33:58','zhangsan','张三','男','13512345678','http://localhost:8080/springbootjlvpC/upload/1596284947334.jpg','硕士','专技岗位','http://localhost:8080/springbootjlvpC/upload/1596285115757.jpg','没有','<p>只会考试</p>',0,0),
	(1596372486541,'2020-08-02 20:48:05','lisi','李四','女','18866661234','http://localhost:8080/springbootjlvpC/upload/1596372445456.jpg','本科','管理岗位','http://localhost:8080/springbootjlvpC/upload/1596372470161.jpg','略','<p>略</p>',0,0);

/*!40000 ALTER TABLE `qiuzhizhexinxi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table qiyexinxi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qiyexinxi`;

CREATE TABLE `qiyexinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qiyebianhao` varchar(200) DEFAULT NULL COMMENT '企业编号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `qiyejieshao` longtext COMMENT '企业介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyebianhao` (`qiyebianhao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='企业信息';

LOCK TABLES `qiyexinxi` WRITE;
/*!40000 ALTER TABLE `qiyexinxi` DISABLE KEYS */;

INSERT INTO `qiyexinxi` (`id`, `addtime`, `qiyebianhao`, `mima`, `qiyemingcheng`, `fuzeren`, `lianxidianhua`, `qiyeyouxiang`, `qiyejieshao`)
VALUES
	(1596200834701,'2020-07-31 21:07:14','tengxun','1','腾讯','老马','13632146547','13632146547@qq.com','QQ微信都是我家的');

/*!40000 ALTER TABLE `qiyexinxi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table storeup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;

INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`)
VALUES
	(1596372529847,'2020-08-02 20:48:49',1596372388838,1596371998272,'zhaopinxinxi','Java工程师','http://localhost:8080/springbootjlvpC/upload/1596371914892.jpg');

/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='token表';

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;

INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`)
VALUES
	(2,1596200777877,'zhangsan','yonghu','用户','khblx1mjz1xmcafqove456vm8i55amdc','2020-07-31 21:07:23','2020-08-06 14:00:50'),
	(3,1596200834701,'tengxun','qiyexinxi','企业信息','jyvj8zxh9nohnvatlblhfxb8tjhpacsl','2020-08-02 20:37:15','2020-08-06 12:08:48'),
	(4,1596372388838,'lisi','yonghu','用户','7ukws5mujkht18r36jhrkhoqfjik8mhs','2020-08-02 20:46:37','2020-08-02 13:50:19'),
	(5,1,'abo','users','管理员','tm72a0ctp9bvxc5fmv2cuqjo7im5hkzc','2020-08-04 22:23:10','2020-08-06 12:09:07');

/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`)
VALUES
	(1,'abo','1','管理员','2020-07-26 11:10:39');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table xuelixinxi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `xuelixinxi`;

CREATE TABLE `xuelixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='学历信息';

LOCK TABLES `xuelixinxi` WRITE;
/*!40000 ALTER TABLE `xuelixinxi` DISABLE KEYS */;

INSERT INTO `xuelixinxi` (`id`, `addtime`, `xueli`)
VALUES
	(1596203425441,'2020-07-31 21:50:24','博士'),
	(1596203441455,'2020-07-31 21:50:40','硕士'),
	(1596203466812,'2020-07-31 21:51:06','本科'),
	(1596203473681,'2020-07-31 21:51:13','专科');

/*!40000 ALTER TABLE `xuelixinxi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yingpinxinxi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yingpinxinxi`;

CREATE TABLE `yingpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qiyebianhao` varchar(200) DEFAULT NULL COMMENT '企业编号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `jianli` varchar(200) DEFAULT NULL COMMENT '简历',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `xueli` varchar(200) DEFAULT NULL,
  `zhuanye` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `yingjiesheng` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='应聘信息';



# Dump of table yonghu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用户';

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;

INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `xingming`, `mima`, `xingbie`, `dianhua`, `youxiang`)
VALUES
	(1596200777877,'2020-07-31 21:06:17','zhangsan','张三','1','男','13512345678','13512345678@qq.com'),
	(1596372388838,'2020-08-02 20:46:28','lisi','李四','1','女','18866661234','18866661234@qq.com');

/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table youqinglianjie
# ------------------------------------------------------------

DROP TABLE IF EXISTS `youqinglianjie`;

CREATE TABLE `youqinglianjie` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `wangzhanmingcheng` varchar(200) DEFAULT NULL COMMENT '网站名称',
  `logo` varchar(200) DEFAULT NULL COMMENT 'logo',
  `wangzhi` varchar(200) DEFAULT NULL COMMENT '网址',
  `wangzhanjieshao` longtext COMMENT '网站介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='友情链接';

LOCK TABLES `youqinglianjie` WRITE;
/*!40000 ALTER TABLE `youqinglianjie` DISABLE KEYS */;

INSERT INTO `youqinglianjie` (`id`, `addtime`, `wangzhanmingcheng`, `logo`, `wangzhi`, `wangzhanjieshao`)
VALUES
	(1596203976309,'2020-07-31 21:59:35','Java攀登网','http://localhost:8080/springbootjlvpC/upload/1596203897238.gif','http://www.javaclimb.com/','<p>提供大量原创视频教程</p>');

/*!40000 ALTER TABLE `youqinglianjie` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zhaopinxinxi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zhaopinxinxi`;

CREATE TABLE `zhaopinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qiyebianhao` varchar(200) DEFAULT NULL COMMENT '企业编号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `zhaopinrenshu` varchar(200) DEFAULT NULL COMMENT '招聘人数',
  `gangweileibie` varchar(200) DEFAULT NULL COMMENT '岗位类别',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gangweiyaoqiu` longtext COMMENT '岗位要求',
  `gongzuozhize` longtext COMMENT '工作职责',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `shengyurenshu` varchar(200) DEFAULT NULL,
  `endTime` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='招聘信息';

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;

INSERT INTO `zhaopinxinxi` (`id`, `addtime`, `qiyebianhao`, `qiyemingcheng`, `fuzeren`, `lianxidianhua`, `zhaopingangwei`, `zhaopinrenshu`, `gangweileibie`, `xueli`, `tupian`, `gangweiyaoqiu`, `gongzuozhize`, `thumbsupnum`, `crazilynum`, `shengyurenshu`, `endTime`, `address`, `status`)
VALUES
	(1596371998272,'2020-08-02 20:39:57','tengxun','腾讯','老马','13632146547','Java工程师','20','专技岗位','本科','http://localhost:8080/springbootjlvpC/upload/1596372817043.jpg','1、会SpringBoot。\n2、熟练掌握MySQL。\n3、精通算法。','<p>协助项目经理完成开发后台的工作。</p>',2,1,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
