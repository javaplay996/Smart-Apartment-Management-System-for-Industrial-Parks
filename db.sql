/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhihuigongyuguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhihuigongyuguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhihuigongyuguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'fangwu_types','房屋类型',1,'房屋类型1',NULL,NULL,'2023-05-15 11:02:21'),(2,'fangwu_types','房屋类型',2,'房屋类型2',NULL,NULL,'2023-05-15 11:02:21'),(3,'fangwu_types','房屋类型',3,'房屋类型3',NULL,NULL,'2023-05-15 11:02:21'),(4,'fangwu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-15 11:02:21'),(5,'fangwu_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-15 11:02:21'),(6,'fangwu_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-15 11:02:21'),(7,'fangwu_order_types','订单类型',101,'已支付',NULL,NULL,'2023-05-15 11:02:21'),(8,'fangwu_order_types','订单类型',102,'已退房',NULL,NULL,'2023-05-15 11:02:21'),(9,'fangwu_order_types','订单类型',103,'已完成',NULL,NULL,'2023-05-15 11:02:21'),(11,'fangwu_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-05-15 11:02:21'),(12,'sheshiyuyue_types','设施类型',1,'设施类型1',NULL,NULL,'2023-05-15 11:02:21'),(13,'sheshiyuyue_types','设施类型',2,'设施类型2',NULL,NULL,'2023-05-15 11:02:21'),(14,'sheshiyuyue_types','设施类型',3,'设施类型3',NULL,NULL,'2023-05-15 11:02:21'),(15,'sheshiyuyue_yesno_types','预约状态',1,'待审核',NULL,NULL,'2023-05-15 11:02:21'),(16,'sheshiyuyue_yesno_types','预约状态',2,'同意',NULL,NULL,'2023-05-15 11:02:21'),(17,'sheshiyuyue_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2023-05-15 11:02:21'),(18,'weixiubaobei_types','报备类型',1,'报备类型1',NULL,NULL,'2023-05-15 11:02:21'),(19,'weixiubaobei_types','报备类型',2,'报备类型2',NULL,NULL,'2023-05-15 11:02:21'),(20,'weixiubaobei_yesno_types','申请状态',1,'待处理',NULL,NULL,'2023-05-15 11:02:21'),(21,'weixiubaobei_yesno_types','申请状态',2,'已处理',NULL,NULL,'2023-05-15 11:02:21'),(22,'weixiubaobei_yesno_types','申请状态',3,'拒绝处理',NULL,NULL,'2023-05-15 11:02:21'),(23,'jiaofei_types','缴费类型',1,'缴费类型1',NULL,NULL,'2023-05-15 11:02:22'),(24,'jiaofei_types','缴费类型',2,'缴费类型2',NULL,NULL,'2023-05-15 11:02:22'),(25,'jiaofei_types','缴费类型',3,'缴费类型3',NULL,NULL,'2023-05-15 11:02:22'),(26,'zhuangtai_types','缴费状态',1,'未缴费',NULL,NULL,'2023-05-15 11:02:22'),(27,'zhuangtai_types','缴费状态',2,'已缴费',NULL,NULL,'2023-05-15 11:02:22'),(28,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-15 11:02:22'),(29,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-15 11:02:22'),(30,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-05-15 11:02:22'),(31,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-15 11:02:22'),(32,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-15 11:02:22'),(33,'qiye_types','企业类型',1,'企业类型1',NULL,NULL,'2023-05-15 11:02:22'),(34,'qiye_types','企业类型',2,'企业类型2',NULL,NULL,'2023-05-15 11:02:22'),(35,'qiye_types','企业类型',3,'企业类型3',NULL,NULL,'2023-05-15 11:02:22'),(36,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-05-15 11:02:22'),(37,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-05-15 11:02:22');

/*Table structure for table `fangwu` */

DROP TABLE IF EXISTS `fangwu`;

CREATE TABLE `fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiyeyonghu_id` int(11) DEFAULT NULL COMMENT '企业用户',
  `fangwu_name` varchar(200) DEFAULT NULL COMMENT '房屋名称  Search111 ',
  `fangwu_photo` varchar(200) DEFAULT NULL COMMENT '房屋照片',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `fangwu_types` int(11) DEFAULT NULL COMMENT '房屋类型 Search111',
  `fangwu_clicknum` int(11) DEFAULT NULL COMMENT '房屋热度',
  `fangwu_new_money` decimal(10,2) DEFAULT NULL COMMENT '租金/月',
  `fangwu_content` longtext COMMENT '房屋介绍 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='房屋信息';

/*Data for the table `fangwu` */

insert  into `fangwu`(`id`,`qiyeyonghu_id`,`fangwu_name`,`fangwu_photo`,`zan_number`,`cai_number`,`fangwu_types`,`fangwu_clicknum`,`fangwu_new_money`,`fangwu_content`,`data_delete`,`insert_time`,`create_time`) values (1,1,'房屋名称1','upload/fangwu1.jpg',216,72,1,20,'144.04','房屋介绍1',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(2,1,'房屋名称2','upload/fangwu2.jpg',416,111,3,327,'398.38','房屋介绍2',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(3,2,'房屋名称3','upload/fangwu3.jpg',324,481,1,57,'174.97','房屋介绍3',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(4,2,'房屋名称4','upload/fangwu4.jpg',6,132,3,334,'248.52','房屋介绍4',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(5,2,'房屋名称5','upload/fangwu5.jpg',247,362,2,202,'231.33','房屋介绍5',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(6,2,'房屋名称6','upload/fangwu6.jpg',424,339,3,70,'20.09','房屋介绍6',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(7,2,'房屋名称7','upload/fangwu7.jpg',488,367,1,497,'273.85','房屋介绍7',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(8,2,'房屋名称8','upload/fangwu8.jpg',232,485,1,96,'311.49','房屋介绍8',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(9,1,'房屋名称9','upload/fangwu9.jpg',395,3,3,48,'27.72','房屋介绍9',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(10,3,'房屋名称10','upload/fangwu10.jpg',191,446,1,7,'267.22','房屋介绍10',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(11,1,'房屋名称11','upload/fangwu11.jpg',134,140,1,88,'15.24','房屋介绍11',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(12,1,'房屋名称12','upload/fangwu12.jpg',413,38,3,445,'433.84','房屋介绍12',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(13,3,'房屋名称13','upload/fangwu13.jpg',331,107,1,266,'43.72','房屋介绍13',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(14,3,'房屋名称14','upload/fangwu14.jpg',404,92,2,309,'274.11','房屋介绍14',1,'2023-05-15 11:02:59','2023-05-15 11:02:59');

/*Table structure for table `fangwu_collection` */

DROP TABLE IF EXISTS `fangwu_collection`;

CREATE TABLE `fangwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='房屋收藏';

/*Data for the table `fangwu_collection` */

insert  into `fangwu_collection`(`id`,`fangwu_id`,`yonghu_id`,`fangwu_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(2,2,2,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(3,3,2,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(4,4,3,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(5,5,3,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(6,6,3,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(7,7,3,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(8,8,1,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(9,9,2,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(10,10,3,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(11,11,2,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(12,12,2,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(13,13,2,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(14,14,2,1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(17,7,1,1,'2023-05-15 14:43:53','2023-05-15 14:43:53');

/*Table structure for table `fangwu_liuyan` */

DROP TABLE IF EXISTS `fangwu_liuyan`;

CREATE TABLE `fangwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='房屋留言';

/*Data for the table `fangwu_liuyan` */

insert  into `fangwu_liuyan`(`id`,`fangwu_id`,`yonghu_id`,`fangwu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-05-15 11:02:59','回复信息1','2023-05-15 11:02:59','2023-05-15 11:02:59'),(2,2,1,'留言内容2','2023-05-15 11:02:59','回复信息2','2023-05-15 11:02:59','2023-05-15 11:02:59'),(3,3,3,'留言内容3','2023-05-15 11:02:59','回复信息3','2023-05-15 11:02:59','2023-05-15 11:02:59'),(4,4,3,'留言内容4','2023-05-15 11:02:59','回复信息4','2023-05-15 11:02:59','2023-05-15 11:02:59'),(5,5,1,'留言内容5','2023-05-15 11:02:59','回复信息5','2023-05-15 11:02:59','2023-05-15 11:02:59'),(6,6,1,'留言内容6','2023-05-15 11:02:59','回复信息6','2023-05-15 11:02:59','2023-05-15 11:02:59'),(7,7,2,'留言内容7','2023-05-15 11:02:59','回复信息7','2023-05-15 11:02:59','2023-05-15 11:02:59'),(8,8,3,'留言内容8','2023-05-15 11:02:59','回复信息8','2023-05-15 11:02:59','2023-05-15 11:02:59'),(9,9,1,'留言内容9','2023-05-15 11:02:59','回复信息9','2023-05-15 11:02:59','2023-05-15 11:02:59'),(10,10,1,'留言内容10','2023-05-15 11:02:59','回复信息10','2023-05-15 11:02:59','2023-05-15 11:02:59'),(11,11,3,'留言内容11','2023-05-15 11:02:59','回复信息11','2023-05-15 11:02:59','2023-05-15 11:02:59'),(12,12,3,'留言内容12','2023-05-15 11:02:59','回复信息12123','2023-05-15 14:49:00','2023-05-15 11:02:59'),(13,13,2,'留言内容13','2023-05-15 11:02:59','回复信息13','2023-05-15 11:02:59','2023-05-15 11:02:59'),(14,14,2,'留言内容14','2023-05-15 11:02:59','回复信息14','2023-05-15 11:02:59','2023-05-15 11:02:59'),(16,7,1,'1111','2023-05-15 14:42:03',NULL,NULL,'2023-05-15 14:42:03'),(17,7,1,'123','2023-05-15 14:44:03',NULL,NULL,'2023-05-15 14:44:03');

/*Table structure for table `fangwu_order` */

DROP TABLE IF EXISTS `fangwu_order`;

CREATE TABLE `fangwu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_order_time` timestamp NULL DEFAULT NULL COMMENT '预约日期',
  `fangwu_order_numb` int(11) DEFAULT NULL COMMENT '租期/月',
  `fangwu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `fangwu_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `fangwu_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='房屋租赁订单';

/*Data for the table `fangwu_order` */

insert  into `fangwu_order`(`id`,`fangwu_order_uuid_number`,`fangwu_id`,`yonghu_id`,`fangwu_order_time`,`fangwu_order_numb`,`fangwu_order_true_price`,`fangwu_order_types`,`fangwu_order_payment_types`,`insert_time`,`create_time`) values (1,'1684121117881',2,1,'2023-05-15 11:24:20',1,'398.38',103,1,'2023-05-15 11:25:18','2023-05-15 11:25:18'),(2,'1684133221964',7,1,'2023-05-15 14:46:59',1,'273.85',102,1,'2023-05-15 14:47:02','2023-05-15 14:47:02');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `qiyeyonghu_id` int(11) DEFAULT NULL COMMENT '企业用户',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`qiyeyonghu_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,2,NULL,'发布内容1',219,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(2,'帖子标题2',NULL,2,NULL,'发布内容2',338,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(3,'帖子标题3',NULL,1,NULL,'发布内容3',394,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(4,'帖子标题4',NULL,2,NULL,'发布内容4',47,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(5,'帖子标题5',NULL,3,NULL,'发布内容5',299,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(6,'帖子标题6',NULL,2,NULL,'发布内容6',421,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(7,'帖子标题7',NULL,2,NULL,'发布内容7',114,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(8,'帖子标题8',NULL,1,NULL,'发布内容8',410,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(9,'帖子标题9',NULL,1,NULL,'发布内容9',67,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(10,'帖子标题10',NULL,3,NULL,'发布内容10',435,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(11,'帖子标题11',NULL,3,NULL,'发布内容11',117,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(12,'帖子标题12',NULL,2,NULL,'发布内容12',396,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(13,'帖子标题13',NULL,1,NULL,'发布内容13',64,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(14,'帖子标题14',NULL,2,NULL,'发布内容14',333,1,'2023-05-15 11:02:59','2023-05-15 11:02:59','2023-05-15 11:02:59'),(18,NULL,NULL,1,NULL,'111111111111111',14,2,'2023-05-15 14:41:15',NULL,'2023-05-15 14:41:15'),(20,NULL,1,NULL,NULL,'22222222222222',14,2,'2023-05-15 14:49:54',NULL,'2023-05-15 14:49:54'),(21,NULL,NULL,NULL,1,'33333333',14,2,'2023-05-15 14:51:04',NULL,'2023-05-15 14:51:04');

/*Table structure for table `jiaofei` */

DROP TABLE IF EXISTS `jiaofei`;

CREATE TABLE `jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaofei_uuid_number` varchar(200) DEFAULT NULL COMMENT '缴费编号',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaofei_name` varchar(200) DEFAULT NULL COMMENT '缴费标题  Search111 ',
  `jiaofei_types` int(11) DEFAULT NULL COMMENT '缴费类型 Search111',
  `jiaofei_new_money` decimal(10,2) DEFAULT NULL COMMENT '缴费金额',
  `zhuangtai_types` int(11) DEFAULT NULL COMMENT '缴费状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='缴费';

/*Data for the table `jiaofei` */

insert  into `jiaofei`(`id`,`jiaofei_uuid_number`,`yonghu_id`,`jiaofei_name`,`jiaofei_types`,`jiaofei_new_money`,`zhuangtai_types`,`insert_time`,`create_time`) values (1,'1684119779684',2,'缴费标题1',3,'295.59',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(2,'1684119779689',2,'缴费标题2',1,'350.32',2,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(3,'1684119779653',2,'缴费标题3',3,'263.87',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(4,'1684119779691',3,'缴费标题4',2,'161.29',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(5,'1684119779626',3,'缴费标题5',1,'153.12',2,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(6,'1684119779661',3,'缴费标题6',2,'85.80',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(7,'1684119779636',3,'缴费标题7',2,'26.71',2,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(8,'1684119779641',1,'缴费标题8',2,'223.00',2,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(9,'1684119779695',2,'缴费标题9',1,'413.19',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(10,'1684119779694',3,'缴费标题10',1,'465.68',2,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(11,'1684119779690',2,'缴费标题11',1,'389.51',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(12,'1684119779613',2,'缴费标题12',1,'183.77',2,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(13,'1684119779696',2,'缴费标题13',1,'489.33',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(14,'1684119779619',2,'缴费标题14',3,'234.17',1,'2023-05-15 11:02:59','2023-05-15 11:02:59');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告通知';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-05-15 11:02:59','公告详情1','2023-05-15 11:02:59'),(2,'公告标题2',3,'upload/news2.jpg','2023-05-15 11:02:59','公告详情2','2023-05-15 11:02:59'),(3,'公告标题3',3,'upload/news3.jpg','2023-05-15 11:02:59','公告详情3','2023-05-15 11:02:59'),(4,'公告标题4',1,'upload/news4.jpg','2023-05-15 11:02:59','公告详情4','2023-05-15 11:02:59'),(5,'公告标题5',2,'upload/news5.jpg','2023-05-15 11:02:59','公告详情5','2023-05-15 11:02:59'),(6,'公告标题6',3,'upload/news6.jpg','2023-05-15 11:02:59','公告详情6','2023-05-15 11:02:59'),(7,'公告标题7',3,'upload/news7.jpg','2023-05-15 11:02:59','公告详情7','2023-05-15 11:02:59'),(8,'公告标题8',2,'upload/news8.jpg','2023-05-15 11:02:59','公告详情8','2023-05-15 11:02:59'),(9,'公告标题9',3,'upload/news9.jpg','2023-05-15 11:02:59','公告详情9','2023-05-15 11:02:59'),(10,'公告标题10',3,'upload/news10.jpg','2023-05-15 11:02:59','公告详情10','2023-05-15 11:02:59'),(11,'公告标题11',1,'upload/news11.jpg','2023-05-15 11:02:59','公告详情11','2023-05-15 11:02:59'),(12,'公告标题12',3,'upload/news12.jpg','2023-05-15 11:02:59','公告详情12','2023-05-15 11:02:59'),(13,'公告标题13',2,'upload/news13.jpg','2023-05-15 11:02:59','公告详情13','2023-05-15 11:02:59'),(14,'公告标题14',2,'upload/news14.jpg','2023-05-15 11:02:59','公告详情14','2023-05-15 11:02:59');

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiyeyonghu_id` int(11) DEFAULT NULL COMMENT '企业用户',
  `qiye_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111 ',
  `qiye_types` int(11) DEFAULT NULL COMMENT '企业类型',
  `qiye_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiye_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `qiye_photo` varchar(200) DEFAULT NULL COMMENT '企业封面',
  `qiye_content` longtext COMMENT '企业简介 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`qiyeyonghu_id`,`qiye_name`,`qiye_types`,`qiye_phone`,`qiye_email`,`qiye_photo`,`qiye_content`,`data_delete`,`create_time`) values (1,2,'企业名称1',3,'17703786901','1@qq.com','upload/qiye1.jpg','企业简介1',1,'2023-05-15 11:02:59'),(2,3,'企业名称2',1,'17703786902','2@qq.com','upload/qiye2.jpg','企业简介2',1,'2023-05-15 11:02:59'),(3,3,'企业名称3',3,'17703786903','3@qq.com','upload/qiye3.jpg','企业简介3',1,'2023-05-15 11:02:59'),(4,2,'企业名称4',2,'17703786904','4@qq.com','upload/qiye4.jpg','企业简介4',1,'2023-05-15 11:02:59'),(5,1,'企业名称5',1,'17703786905','5@qq.com','upload/qiye5.jpg','企业简介5',1,'2023-05-15 11:02:59'),(6,3,'企业名称6',3,'17703786906','6@qq.com','upload/qiye6.jpg','企业简介6',1,'2023-05-15 11:02:59'),(7,1,'企业名称7',1,'17703786907','7@qq.com','upload/qiye7.jpg','企业简介7',1,'2023-05-15 11:02:59'),(8,1,'企业名称8',3,'17703786908','8@qq.com','upload/qiye8.jpg','企业简介8',1,'2023-05-15 11:02:59'),(9,3,'企业名称9',3,'17703786909','9@qq.com','upload/qiye9.jpg','企业简介9',1,'2023-05-15 11:02:59'),(10,3,'企业名称10',1,'17703786910','10@qq.com','upload/qiye10.jpg','企业简介10',1,'2023-05-15 11:02:59'),(11,3,'企业名称11',1,'17703786911','11@qq.com','upload/qiye11.jpg','企业简介11',1,'2023-05-15 11:02:59'),(12,2,'企业名称12',2,'17703786912','12@qq.com','upload/qiye12.jpg','企业简介12',1,'2023-05-15 11:02:59'),(13,2,'企业名称13',1,'17703786913','13@qq.com','upload/qiye13.jpg','企业简介13',1,'2023-05-15 11:02:59'),(14,2,'企业名称14',1,'17703786914','14@qq.com','upload/qiye14.jpg','企业简介14',1,'2023-05-15 11:02:59');

/*Table structure for table `qiyeyonghu` */

DROP TABLE IF EXISTS `qiyeyonghu`;

CREATE TABLE `qiyeyonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `qiyeyonghu_name` varchar(200) DEFAULT NULL COMMENT '企业用户名称 Search111 ',
  `qiyeyonghu_phone` varchar(200) DEFAULT NULL COMMENT '企业用户手机号',
  `qiyeyonghu_photo` varchar(200) DEFAULT NULL COMMENT '企业用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `qiyeyonghu_email` varchar(200) DEFAULT NULL COMMENT '企业用户邮箱',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='企业用户';

/*Data for the table `qiyeyonghu` */

insert  into `qiyeyonghu`(`id`,`username`,`password`,`qiyeyonghu_name`,`qiyeyonghu_phone`,`qiyeyonghu_photo`,`sex_types`,`qiyeyonghu_email`,`data_delete`,`insert_time`,`create_time`) values (1,'a1','123456','企业用户名称1','17703786901','upload/qiyeyonghu1.jpg',1,'1@qq.com',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(2,'a2','123456','企业用户名称2','17703786902','upload/qiyeyonghu2.jpg',1,'2@qq.com',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(3,'a3','123456','企业用户名称3','17703786903','upload/qiyeyonghu3.jpg',2,'3@qq.com',1,'2023-05-15 11:02:59','2023-05-15 11:02:59');

/*Table structure for table `sheshiyuyue` */

DROP TABLE IF EXISTS `sheshiyuyue`;

CREATE TABLE `sheshiyuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sheshiyuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约编号 Search111 ',
  `sheshiyuyue_name` varchar(200) DEFAULT NULL COMMENT '预约标题  Search111 ',
  `sheshiyuyue_sheshi` varchar(200) DEFAULT NULL COMMENT '设施名称  Search111 ',
  `sheshiyuyue_types` int(11) DEFAULT NULL COMMENT '设施类型  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `sheshiyuyue_text` longtext COMMENT '预约理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '房屋预约时间',
  `sheshiyuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `sheshiyuyue_yesno_text` longtext COMMENT '审核回复',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='设施预约';

/*Data for the table `sheshiyuyue` */

insert  into `sheshiyuyue`(`id`,`sheshiyuyue_uuid_number`,`sheshiyuyue_name`,`sheshiyuyue_sheshi`,`sheshiyuyue_types`,`yonghu_id`,`sheshiyuyue_text`,`insert_time`,`sheshiyuyue_yesno_types`,`sheshiyuyue_yesno_text`,`create_time`) values (1,'1684119779654','预约标题1','设施名称1',3,3,'预约理由1','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(2,'1684119779618','预约标题2','设施名称2',3,2,'预约理由2','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(3,'1684119779625','预约标题3','设施名称3',1,1,'预约理由3','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(4,'1684119779644','预约标题4','设施名称4',2,1,'预约理由4','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(5,'1684119779643','预约标题5','设施名称5',2,1,'预约理由5','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(6,'1684119779626','预约标题6','设施名称6',1,1,'预约理由6','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(7,'1684119779651','预约标题7','设施名称7',2,3,'预约理由7','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(8,'1684119779655','预约标题8','设施名称8',2,1,'预约理由8','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(9,'1684119779688','预约标题9','设施名称9',3,3,'预约理由9','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(10,'1684119779621','预约标题10','设施名称10',3,3,'预约理由10','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(11,'1684119779686','预约标题11','设施名称11',1,1,'预约理由11','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(12,'1684119779639','预约标题12','设施名称12',2,1,'预约理由12','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(13,'1684119779641','预约标题13','设施名称13',2,2,'预约理由13','2023-05-15 11:02:59',1,NULL,'2023-05-15 11:02:59'),(14,'1684119779624','预约标题14','设施名称14',2,3,'预约理由14','2023-05-15 11:02:59',2,'1','2023-05-15 11:02:59'),(16,'1684133234069','123','123',2,1,'123','2023-05-15 14:47:18',2,'1','2023-05-15 14:47:18');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','9ipq3v46kara8uzkq4loqub5kfqyh4j8','2023-05-15 11:20:39','2023-05-15 15:41:01'),(2,1,'admin','users','管理员','iatyn1284kx9h309rwftv74pisvdv7ur','2023-05-15 13:42:08','2023-05-15 15:51:19'),(3,1,'a1','qiyeyonghu','企业用户','4hlkkjtkb0byw03rmlxe2bbvuh4ehqqa','2023-05-15 14:48:45','2023-05-15 15:48:46');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-15 11:02:21');

/*Table structure for table `weixiubaobei` */

DROP TABLE IF EXISTS `weixiubaobei`;

CREATE TABLE `weixiubaobei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `weixiubaobei_name` varchar(200) DEFAULT NULL COMMENT '报备标题 Search111 ',
  `weixiubaobei_text` longtext COMMENT '报备缘由',
  `weixiubaobei_types` int(11) DEFAULT NULL COMMENT '报备类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `weixiubaobei_time` timestamp NULL DEFAULT NULL COMMENT '报备时间',
  `weixiubaobei_yesno_types` int(11) DEFAULT NULL COMMENT '报备状态 Search111 ',
  `weixiubaobei_yesno_text` longtext COMMENT '处理结果',
  `weixiubaobei_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='维修报备';

/*Data for the table `weixiubaobei` */

insert  into `weixiubaobei`(`id`,`yonghu_id`,`weixiubaobei_name`,`weixiubaobei_text`,`weixiubaobei_types`,`insert_time`,`weixiubaobei_time`,`weixiubaobei_yesno_types`,`weixiubaobei_yesno_text`,`weixiubaobei_shenhe_time`,`create_time`) values (1,2,'报备标题1','报备缘由1',2,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(2,2,'报备标题2','报备缘由2',2,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(3,3,'报备标题3','报备缘由3',2,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(4,2,'报备标题4','报备缘由4',2,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(5,3,'报备标题5','报备缘由5',2,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(6,2,'报备标题6','报备缘由6',1,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(7,3,'报备标题7','报备缘由7',2,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(8,1,'报备标题8','报备缘由8',2,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(9,3,'报备标题9','报备缘由9',2,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(10,2,'报备标题10','报备缘由10',1,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(11,3,'报备标题11','报备缘由11',1,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(12,1,'报备标题12','报备缘由12',1,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(13,1,'报备标题13','报备缘由13',1,'2023-05-15 11:02:59','2023-05-15 11:02:59',1,NULL,NULL,'2023-05-15 11:02:59'),(14,3,'报备标题14','报备缘由14',1,'2023-05-15 11:02:59','2023-05-15 11:02:59',2,'123','2023-05-15 14:49:19','2023-05-15 11:02:59'),(15,1,'123','123',1,'2023-05-15 14:49:30','2023-05-15 00:00:00',3,'1111111','2023-05-15 14:49:46','2023-05-15 14:49:30');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`data_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户名称1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','1398.78',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(2,'a2','123456','用户名称2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','536.38',1,'2023-05-15 11:02:59','2023-05-15 11:02:59'),(3,'a3','123456','用户名称3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','44.39',1,'2023-05-15 11:02:59','2023-05-15 11:02:59');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
