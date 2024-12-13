-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmll6vz
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmll6vz/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmll6vz/upload/1623118698912.jpg'),(3,'picture3','http://localhost:8080/ssmll6vz/upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqichexinxi`
--

DROP TABLE IF EXISTS `discussqichexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1623118889875 DEFAULT CHARSET=utf8 COMMENT='汽车信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqichexinxi`
--

LOCK TABLES `discussqichexinxi` WRITE;
/*!40000 ALTER TABLE `discussqichexinxi` DISABLE KEYS */;
INSERT INTO `discussqichexinxi` VALUES (81,'2021-06-08 02:11:55',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-06-08 02:11:55',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-06-08 02:11:55',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-06-08 02:11:55',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-06-08 02:11:55',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-06-08 02:11:55',6,6,'用户名6','评论内容6','回复内容6'),(1623118827944,'2021-06-08 02:20:27',41,1623118812045,'111','21212',''),(1623118889874,'2021-06-08 02:21:28',1623118657349,1623118812045,'111','121212','');
/*!40000 ALTER TABLE `discussqichexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1623118687286 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (71,'2021-06-08 02:11:55','标题1','简介1','http://localhost:8080/ssmll6vz/upload/news_picture1.jpg','内容1'),(72,'2021-06-08 02:11:55','标题2','简介2','http://localhost:8080/ssmll6vz/upload/news_picture2.jpg','内容2'),(73,'2021-06-08 02:11:55','标题3','简介3','http://localhost:8080/ssmll6vz/upload/news_picture3.jpg','内容3'),(74,'2021-06-08 02:11:55','标题4','简介4','http://localhost:8080/ssmll6vz/upload/news_picture4.jpg','内容4'),(75,'2021-06-08 02:11:55','标题5','简介5','http://localhost:8080/ssmll6vz/upload/news_picture5.jpg','内容5'),(76,'2021-06-08 02:11:55','标题6','简介6','http://localhost:8080/ssmll6vz/upload/news_picture6.jpg','内容6'),(1623118687285,'2021-06-08 02:18:07','公告信息','车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序','http://localhost:8080/ssmll6vz/upload/1623118675647.jpg','<p><strong style=\"background-color: rgb(244, 238, 238);\">车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序</strong><img src=\"http://localhost:8080/ssmll6vz/upload/1623118672828.jpg\"><strong style=\"background-color: rgb(244, 238, 238);\">车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序</strong></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qichedingdan`
--

DROP TABLE IF EXISTS `qichedingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qichedingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qichexinghao` varchar(200) NOT NULL COMMENT '汽车型号',
  `qicheleixing` varchar(200) NOT NULL COMMENT '汽车类型',
  `qichepinpai` varchar(200) NOT NULL COMMENT '汽车品牌',
  `qicheyanse` varchar(200) NOT NULL COMMENT '汽车颜色',
  `qichetupian` varchar(200) DEFAULT NULL COMMENT '汽车图片',
  `tianchuang` varchar(200) DEFAULT NULL COMMENT '天窗',
  `huandangfangshi` varchar(200) DEFAULT NULL COMMENT '换挡方式',
  `zuowei` varchar(200) DEFAULT NULL COMMENT '座位',
  `qichepailiang` varchar(200) DEFAULT NULL COMMENT '汽车排量',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1623118897550 DEFAULT CHARSET=utf8 COMMENT='汽车订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qichedingdan`
--

LOCK TABLES `qichedingdan` WRITE;
/*!40000 ALTER TABLE `qichedingdan` DISABLE KEYS */;
INSERT INTO `qichedingdan` VALUES (51,'2021-06-08 02:11:55','订单编号1','汽车型号1','微型车','汽车品牌1','汽车颜色1','http://localhost:8080/ssmll6vz/upload/qichedingdan_qichetupian1.jpg','有天窗','手动挡','2座','汽车排量1','价格1','账号1','姓名1','电话1','2021-06-08 10:11:55','未支付',1),(52,'2021-06-08 02:11:55','订单编号2','汽车型号2','微型车','汽车品牌2','汽车颜色2','http://localhost:8080/ssmll6vz/upload/qichedingdan_qichetupian2.jpg','有天窗','手动挡','2座','汽车排量2','价格2','账号2','姓名2','电话2','2021-06-08 10:11:55','未支付',2),(53,'2021-06-08 02:11:55','订单编号3','汽车型号3','微型车','汽车品牌3','汽车颜色3','http://localhost:8080/ssmll6vz/upload/qichedingdan_qichetupian3.jpg','有天窗','手动挡','2座','汽车排量3','价格3','账号3','姓名3','电话3','2021-06-08 10:11:55','未支付',3),(54,'2021-06-08 02:11:55','订单编号4','汽车型号4','微型车','汽车品牌4','汽车颜色4','http://localhost:8080/ssmll6vz/upload/qichedingdan_qichetupian4.jpg','有天窗','手动挡','2座','汽车排量4','价格4','账号4','姓名4','电话4','2021-06-08 10:11:55','未支付',4),(55,'2021-06-08 02:11:55','订单编号5','汽车型号5','微型车','汽车品牌5','汽车颜色5','http://localhost:8080/ssmll6vz/upload/qichedingdan_qichetupian5.jpg','有天窗','手动挡','2座','汽车排量5','价格5','账号5','姓名5','电话5','2021-06-08 10:11:55','未支付',5),(56,'2021-06-08 02:11:55','订单编号6','汽车型号6','微型车','汽车品牌6','汽车颜色6','http://localhost:8080/ssmll6vz/upload/qichedingdan_qichetupian6.jpg','有天窗','手动挡','2座','汽车排量6','价格6','账号6','姓名6','电话6','2021-06-08 10:11:55','未支付',6),(1623118897549,'2021-06-08 02:21:37','1623118895934','本田x1266','小型车','本田','蓝色','http://localhost:8080/ssmll6vz/upload/1623118618530.jpg','有天窗','手动挡','5座','1.8','250000','111','杨月','13513512522','2021-06-08 10:21:35','已支付',1623118812045);
/*!40000 ALTER TABLE `qichedingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qichepinpai`
--

DROP TABLE IF EXISTS `qichepinpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qichepinpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichepinpai` varchar(200) NOT NULL COMMENT '汽车品牌',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qichepinpai` (`qichepinpai`)
) ENGINE=InnoDB AUTO_INCREMENT=1623118546268 DEFAULT CHARSET=utf8 COMMENT='汽车品牌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qichepinpai`
--

LOCK TABLES `qichepinpai` WRITE;
/*!40000 ALTER TABLE `qichepinpai` DISABLE KEYS */;
INSERT INTO `qichepinpai` VALUES (11,'2021-06-08 02:11:54','汽车品牌1'),(12,'2021-06-08 02:11:54','汽车品牌2'),(13,'2021-06-08 02:11:54','汽车品牌3'),(14,'2021-06-08 02:11:54','汽车品牌4'),(15,'2021-06-08 02:11:54','汽车品牌5'),(16,'2021-06-08 02:11:54','汽车品牌6'),(1623118530927,'2021-06-08 02:15:30','本田'),(1623118546267,'2021-06-08 02:15:45','马自达');
/*!40000 ALTER TABLE `qichepinpai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qichexinxi`
--

DROP TABLE IF EXISTS `qichexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichexinghao` varchar(200) NOT NULL COMMENT '汽车型号',
  `qicheleixing` varchar(200) NOT NULL COMMENT '汽车类型',
  `qichepinpai` varchar(200) NOT NULL COMMENT '汽车品牌',
  `qicheyanse` varchar(200) NOT NULL COMMENT '汽车颜色',
  `qichetupian` varchar(200) DEFAULT NULL COMMENT '汽车图片',
  `tianchuang` varchar(200) DEFAULT NULL COMMENT '天窗',
  `huandangfangshi` varchar(200) DEFAULT NULL COMMENT '换挡方式',
  `zuowei` varchar(200) DEFAULT NULL COMMENT '座位',
  `qichepailiang` varchar(200) DEFAULT NULL COMMENT '汽车排量',
  `shangshinianfen` varchar(200) DEFAULT NULL COMMENT '上市年份',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `qichexiangqing` longtext COMMENT '汽车详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1623118657350 DEFAULT CHARSET=utf8 COMMENT='汽车信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qichexinxi`
--

LOCK TABLES `qichexinxi` WRITE;
/*!40000 ALTER TABLE `qichexinxi` DISABLE KEYS */;
INSERT INTO `qichexinxi` VALUES (41,'2021-06-08 02:11:54','汽车型号1','微型车','汽车品牌1','汽车颜色1','http://localhost:8080/ssmll6vz/upload/qichexinxi_qichetupian1.jpg','有天窗','手动挡','2座','汽车排量1','上市年份1','价格1','汽车详情1','2021-06-08 10:22:12',4),(42,'2021-06-08 02:11:54','汽车型号2','微型车','汽车品牌2','汽车颜色2','http://localhost:8080/ssmll6vz/upload/qichexinxi_qichetupian2.jpg','有天窗','手动挡','2座','汽车排量2','上市年份2','价格2','汽车详情2','2021-06-08 10:11:54',2),(43,'2021-06-08 02:11:54','汽车型号3','微型车','汽车品牌3','汽车颜色3','http://localhost:8080/ssmll6vz/upload/qichexinxi_qichetupian3.jpg','有天窗','手动挡','2座','汽车排量3','上市年份3','价格3','汽车详情3','2021-06-08 10:11:54',3),(44,'2021-06-08 02:11:54','汽车型号4','微型车','汽车品牌4','汽车颜色4','http://localhost:8080/ssmll6vz/upload/qichexinxi_qichetupian4.jpg','有天窗','手动挡','2座','汽车排量4','上市年份4','价格4','汽车详情4','2021-06-08 10:11:54',4),(45,'2021-06-08 02:11:54','汽车型号5','微型车','汽车品牌5','汽车颜色5','http://localhost:8080/ssmll6vz/upload/qichexinxi_qichetupian5.jpg','有天窗','手动挡','2座','汽车排量5','上市年份5','价格5','汽车详情5','2021-06-08 10:20:34',6),(46,'2021-06-08 02:11:54','汽车型号6','微型车','汽车品牌6','汽车颜色6','http://localhost:8080/ssmll6vz/upload/qichexinxi_qichetupian6.jpg','有天窗','手动挡','2座','汽车排量6','上市年份6','价格6','汽车详情6','2021-06-08 10:11:54',6),(1623118657349,'2021-06-08 02:17:36','本田x1266','小型车','本田','蓝色','http://localhost:8080/ssmll6vz/upload/1623118618530.jpg','有天窗','手动挡','5座','1.8','2021','250000','<p><strong style=\"background-color: rgb(244, 238, 238);\">车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序</strong><img src=\"http://localhost:8080/ssmll6vz/upload/1623118653386.jpg\"><strong style=\"background-color: rgb(244, 238, 238);\">车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序车视界小程序</strong></p>','2021-06-08 10:22:29',4);
/*!40000 ALTER TABLE `qichexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qicheyanse`
--

DROP TABLE IF EXISTS `qicheyanse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qicheyanse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicheyanse` varchar(200) NOT NULL COMMENT '汽车颜色',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qicheyanse` (`qicheyanse`)
) ENGINE=InnoDB AUTO_INCREMENT=1623118558437 DEFAULT CHARSET=utf8 COMMENT='汽车颜色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qicheyanse`
--

LOCK TABLES `qicheyanse` WRITE;
/*!40000 ALTER TABLE `qicheyanse` DISABLE KEYS */;
INSERT INTO `qicheyanse` VALUES (21,'2021-06-08 02:11:54','汽车颜色1'),(22,'2021-06-08 02:11:54','汽车颜色2'),(23,'2021-06-08 02:11:54','汽车颜色3'),(24,'2021-06-08 02:11:54','汽车颜色4'),(25,'2021-06-08 02:11:54','汽车颜色5'),(26,'2021-06-08 02:11:54','汽车颜色6'),(1623118553577,'2021-06-08 02:15:52','白色'),(1623118558436,'2021-06-08 02:15:57','蓝色');
/*!40000 ALTER TABLE `qicheyanse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1623118883184 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1623118825083,'2021-06-08 02:20:24',1623118812045,41,'qichexinxi','汽车型号1','http://localhost:8080/ssmll6vz/upload/qichexinxi_qichetupian1.jpg','1'),(1623118883183,'2021-06-08 02:21:22',1623118812045,1623118657349,'qichexinxi','本田x1266','http://localhost:8080/ssmll6vz/upload/1623118618530.jpg','1');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','wujywmcewpyulq1ndxbi0urknqhw2k4m','2021-06-08 02:15:22','2021-06-08 03:15:22'),(2,1623118812045,'111','yonghu','用户','yrt0rztkjvns0aswbe1mbjrajcuxnkz2','2021-06-08 02:20:20','2021-06-08 03:20:21');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-06-08 02:11:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1623118812046 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2021-06-08 02:11:54','用户1','姓名1','123456','男',1,'773890001@qq.com','13823888881','http://localhost:8080/ssmll6vz/upload/1623118717558.jpg'),(1623118812045,'2021-06-08 02:20:12','111','杨月','111','女',23,'323232@qq.com','13513512522','http://localhost:8080/ssmll6vz/upload/1623118911379.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-08 11:54:19
