-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmt1g73
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
-- Current Database: `ssmt1g73`
--

/*!40000 DROP DATABASE IF EXISTS `ssmt1g73`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmt1g73` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmt1g73`;

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
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guihaijilu`
--

DROP TABLE IF EXISTS `guihaijilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guihaijilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeitupian` varchar(200) DEFAULT NULL COMMENT '设备图片',
  `shebeishuliang` int(11) NOT NULL COMMENT '设备数量',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `guihaibeizhu` longtext COMMENT '归还备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='归还记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guihaijilu`
--

LOCK TABLES `guihaijilu` WRITE;
/*!40000 ALTER TABLE `guihaijilu` DISABLE KEYS */;
INSERT INTO `guihaijilu` VALUES (101,'2022-04-26 09:52:29','设备名称1','upload/guihaijilu_shebeitupian1.jpg',1,'2022-04-26','归还备注1'),(102,'2022-04-26 09:52:29','设备名称2','upload/guihaijilu_shebeitupian2.jpg',2,'2022-04-26','归还备注2'),(103,'2022-04-26 09:52:29','设备名称3','upload/guihaijilu_shebeitupian3.jpg',3,'2022-04-26','归还备注3'),(104,'2022-04-26 09:52:29','设备名称4','upload/guihaijilu_shebeitupian4.jpg',4,'2022-04-26','归还备注4'),(105,'2022-04-26 09:52:29','设备名称5','upload/guihaijilu_shebeitupian5.jpg',5,'2022-04-26','归还备注5'),(106,'2022-04-26 09:52:29','设备名称6','upload/guihaijilu_shebeitupian6.jpg',6,'2022-04-26','归还备注6');
/*!40000 ALTER TABLE `guihaijilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (11,'2022-04-26 09:52:29','教师工号1','123456','教师姓名1','男','upload/jiaoshi_zhaopian1.jpg','职称1','13823888881'),(12,'2022-04-26 09:52:29','教师工号2','123456','教师姓名2','男','upload/jiaoshi_zhaopian2.jpg','职称2','13823888882'),(13,'2022-04-26 09:52:29','教师工号3','123456','教师姓名3','男','upload/jiaoshi_zhaopian3.jpg','职称3','13823888883'),(14,'2022-04-26 09:52:29','教师工号4','123456','教师姓名4','男','upload/jiaoshi_zhaopian4.jpg','职称4','13823888884'),(15,'2022-04-26 09:52:29','教师工号5','123456','教师姓名5','男','upload/jiaoshi_zhaopian5.jpg','职称5','13823888885'),(16,'2022-04-26 09:52:29','教师工号6','123456','教师姓名6','男','upload/jiaoshi_zhaopian6.jpg','职称6','13823888886');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshikebiao`
--

DROP TABLE IF EXISTS `jiaoshikebiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshikebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kebiaomingcheng` varchar(200) NOT NULL COMMENT '课表名称',
  `kebiaotupian` varchar(200) DEFAULT NULL COMMENT '课表图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `kebiaoxiangqing` longtext COMMENT '课表详情',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='教师课表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshikebiao`
--

LOCK TABLES `jiaoshikebiao` WRITE;
/*!40000 ALTER TABLE `jiaoshikebiao` DISABLE KEYS */;
INSERT INTO `jiaoshikebiao` VALUES (31,'2022-04-26 09:52:29','课表名称1','upload/jiaoshikebiao_kebiaotupian1.jpg','2022-04-26','课表详情1','教师工号1','教师姓名1','联系电话1'),(32,'2022-04-26 09:52:29','课表名称2','upload/jiaoshikebiao_kebiaotupian2.jpg','2022-04-26','课表详情2','教师工号2','教师姓名2','联系电话2'),(33,'2022-04-26 09:52:29','课表名称3','upload/jiaoshikebiao_kebiaotupian3.jpg','2022-04-26','课表详情3','教师工号3','教师姓名3','联系电话3'),(34,'2022-04-26 09:52:29','课表名称4','upload/jiaoshikebiao_kebiaotupian4.jpg','2022-04-26','课表详情4','教师工号4','教师姓名4','联系电话4'),(35,'2022-04-26 09:52:29','课表名称5','upload/jiaoshikebiao_kebiaotupian5.jpg','2022-04-26','课表详情5','教师工号5','教师姓名5','联系电话5'),(36,'2022-04-26 09:52:29','课表名称6','upload/jiaoshikebiao_kebiaotupian6.jpg','2022-04-26','课表详情6','教师工号6','教师姓名6','联系电话6');
/*!40000 ALTER TABLE `jiaoshikebiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jieyongjilu`
--

DROP TABLE IF EXISTS `jieyongjilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jieyongjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeitupian` varchar(200) DEFAULT NULL COMMENT '设备图片',
  `shebeishuliang` int(11) NOT NULL COMMENT '设备数量',
  `caozuoriqi` date DEFAULT NULL COMMENT '操作日期',
  `xinxishuoming` longtext COMMENT '信息说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='借用记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jieyongjilu`
--

LOCK TABLES `jieyongjilu` WRITE;
/*!40000 ALTER TABLE `jieyongjilu` DISABLE KEYS */;
INSERT INTO `jieyongjilu` VALUES (91,'2022-04-26 09:52:29','设备名称1','upload/jieyongjilu_shebeitupian1.jpg',1,'2022-04-26','信息说明1'),(92,'2022-04-26 09:52:29','设备名称2','upload/jieyongjilu_shebeitupian2.jpg',2,'2022-04-26','信息说明2'),(93,'2022-04-26 09:52:29','设备名称3','upload/jieyongjilu_shebeitupian3.jpg',3,'2022-04-26','信息说明3'),(94,'2022-04-26 09:52:29','设备名称4','upload/jieyongjilu_shebeitupian4.jpg',4,'2022-04-26','信息说明4'),(95,'2022-04-26 09:52:29','设备名称5','upload/jieyongjilu_shebeitupian5.jpg',5,'2022-04-26','信息说明5'),(96,'2022-04-26 09:52:29','设备名称6','upload/jieyongjilu_shebeitupian6.jpg',6,'2022-04-26','信息说明6');
/*!40000 ALTER TABLE `jieyongjilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeishiwu`
--

DROP TABLE IF EXISTS `shebeishiwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeishiwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `shebeifenlei` varchar(200) DEFAULT NULL COMMENT '设备分类',
  `shebeishuliang` int(11) DEFAULT NULL COMMENT '设备数量',
  `shiwuleixing` varchar(200) NOT NULL COMMENT '事务类型',
  `shiwushuliang` int(11) DEFAULT NULL COMMENT '事务数量',
  `shiwuriqi` date DEFAULT NULL COMMENT '事务日期',
  `shiwuneirong` longtext COMMENT '事务内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='设备事务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeishiwu`
--

LOCK TABLES `shebeishiwu` WRITE;
/*!40000 ALTER TABLE `shebeishiwu` DISABLE KEYS */;
INSERT INTO `shebeishiwu` VALUES (111,'2022-04-26 09:52:29','设备名称1','设备分类1',1,'维修设备',1,'2022-04-26','事务内容1'),(112,'2022-04-26 09:52:29','设备名称2','设备分类2',2,'维修设备',2,'2022-04-26','事务内容2'),(113,'2022-04-26 09:52:29','设备名称3','设备分类3',3,'维修设备',3,'2022-04-26','事务内容3'),(114,'2022-04-26 09:52:29','设备名称4','设备分类4',4,'维修设备',4,'2022-04-26','事务内容4'),(115,'2022-04-26 09:52:29','设备名称5','设备分类5',5,'维修设备',5,'2022-04-26','事务内容5'),(116,'2022-04-26 09:52:29','设备名称6','设备分类6',6,'维修设备',6,'2022-04-26','事务内容6');
/*!40000 ALTER TABLE `shebeishiwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeixinxi`
--

DROP TABLE IF EXISTS `shebeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeifenlei` varchar(200) NOT NULL COMMENT '设备分类',
  `shebeitupian` varchar(200) DEFAULT NULL COMMENT '设备图片',
  `shebeiweizhi` varchar(200) DEFAULT NULL COMMENT '设备位置',
  `guigexinghao` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `shebeishuliang` int(11) NOT NULL COMMENT '设备数量',
  `shebeijieshao` longtext COMMENT '设备介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='设备信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeixinxi`
--

LOCK TABLES `shebeixinxi` WRITE;
/*!40000 ALTER TABLE `shebeixinxi` DISABLE KEYS */;
INSERT INTO `shebeixinxi` VALUES (81,'2022-04-26 09:52:29','1111111111','设备名称1','设备分类1','upload/shebeixinxi_shebeitupian1.jpg','设备位置1','规格型号1','注意事项1',1,'设备介绍1'),(82,'2022-04-26 09:52:29','2222222222','设备名称2','设备分类2','upload/shebeixinxi_shebeitupian2.jpg','设备位置2','规格型号2','注意事项2',2,'设备介绍2'),(83,'2022-04-26 09:52:29','3333333333','设备名称3','设备分类3','upload/shebeixinxi_shebeitupian3.jpg','设备位置3','规格型号3','注意事项3',3,'设备介绍3'),(84,'2022-04-26 09:52:29','4444444444','设备名称4','设备分类4','upload/shebeixinxi_shebeitupian4.jpg','设备位置4','规格型号4','注意事项4',4,'设备介绍4'),(85,'2022-04-26 09:52:29','5555555555','设备名称5','设备分类5','upload/shebeixinxi_shebeitupian5.jpg','设备位置5','规格型号5','注意事项5',5,'设备介绍5'),(86,'2022-04-26 09:52:29','6666666666','设备名称6','设备分类6','upload/shebeixinxi_shebeitupian6.jpg','设备位置6','规格型号6','注意事项6',6,'设备介绍6');
/*!40000 ALTER TABLE `shebeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiyanchengji`
--

DROP TABLE IF EXISTS `shiyanchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiyanchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `weiguiqingkuang` varchar(200) DEFAULT NULL COMMENT '违规情况',
  `shiyanchengji` int(11) NOT NULL COMMENT '实验成绩',
  `chengjipingyu` longtext COMMENT '成绩评语',
  `tianjiariqi` date DEFAULT NULL COMMENT '添加日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='实验成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiyanchengji`
--

LOCK TABLES `shiyanchengji` WRITE;
/*!40000 ALTER TABLE `shiyanchengji` DISABLE KEYS */;
INSERT INTO `shiyanchengji` VALUES (71,'2022-04-26 09:52:29','课程名称1','无',1,'成绩评语1','2022-04-26','教师工号1','学号1','姓名1',1,1),(72,'2022-04-26 09:52:29','课程名称2','无',2,'成绩评语2','2022-04-26','教师工号2','学号2','姓名2',2,2),(73,'2022-04-26 09:52:29','课程名称3','无',3,'成绩评语3','2022-04-26','教师工号3','学号3','姓名3',3,3),(74,'2022-04-26 09:52:29','课程名称4','无',4,'成绩评语4','2022-04-26','教师工号4','学号4','姓名4',4,4),(75,'2022-04-26 09:52:29','课程名称5','无',5,'成绩评语5','2022-04-26','教师工号5','学号5','姓名5',5,5),(76,'2022-04-26 09:52:29','课程名称6','无',6,'成绩评语6','2022-04-26','教师工号6','学号6','姓名6',6,6);
/*!40000 ALTER TABLE `shiyanchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiyankecheng`
--

DROP TABLE IF EXISTS `shiyankecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiyankecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshimingcheng` varchar(200) DEFAULT NULL COMMENT '实验室名称',
  `shiyanshileixing` varchar(200) DEFAULT NULL COMMENT '实验室类型',
  `shiyanshiweizhi` varchar(200) DEFAULT NULL COMMENT '实验室位置',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `xiangmubianpai` longtext COMMENT '项目编排',
  `shiyanziliao` varchar(200) DEFAULT NULL COMMENT '实验资料',
  `kechengshijian` datetime DEFAULT NULL COMMENT '课程时间',
  `shiyanshitupian` varchar(200) DEFAULT NULL COMMENT '实验室图片',
  `kechengneirong` longtext COMMENT '课程内容',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='实验课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiyankecheng`
--

LOCK TABLES `shiyankecheng` WRITE;
/*!40000 ALTER TABLE `shiyankecheng` DISABLE KEYS */;
INSERT INTO `shiyankecheng` VALUES (51,'2022-04-26 09:52:29','实验室名称1','实验室类型1','实验室位置1','课程名称1','项目编排1','','2022-04-26 17:52:29','upload/shiyankecheng_shiyanshitupian1.jpg','课程内容1','教师工号1','教师姓名1'),(52,'2022-04-26 09:52:29','实验室名称2','实验室类型2','实验室位置2','课程名称2','项目编排2','','2022-04-26 17:52:29','upload/shiyankecheng_shiyanshitupian2.jpg','课程内容2','教师工号2','教师姓名2'),(53,'2022-04-26 09:52:29','实验室名称3','实验室类型3','实验室位置3','课程名称3','项目编排3','','2022-04-26 17:52:29','upload/shiyankecheng_shiyanshitupian3.jpg','课程内容3','教师工号3','教师姓名3'),(54,'2022-04-26 09:52:29','实验室名称4','实验室类型4','实验室位置4','课程名称4','项目编排4','','2022-04-26 17:52:29','upload/shiyankecheng_shiyanshitupian4.jpg','课程内容4','教师工号4','教师姓名4'),(55,'2022-04-26 09:52:29','实验室名称5','实验室类型5','实验室位置5','课程名称5','项目编排5','','2022-04-26 17:52:29','upload/shiyankecheng_shiyanshitupian5.jpg','课程内容5','教师工号5','教师姓名5'),(56,'2022-04-26 09:52:29','实验室名称6','实验室类型6','实验室位置6','课程名称6','项目编排6','','2022-04-26 17:52:29','upload/shiyankecheng_shiyanshitupian6.jpg','课程内容6','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `shiyankecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiyanshixinxi`
--

DROP TABLE IF EXISTS `shiyanshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiyanshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshimingcheng` varchar(200) NOT NULL COMMENT '实验室名称',
  `shiyanshileixing` varchar(200) NOT NULL COMMENT '实验室类型',
  `shiyanshitupian` varchar(200) DEFAULT NULL COMMENT '实验室图片',
  `shiyanshiweizhi` varchar(200) DEFAULT NULL COMMENT '实验室位置',
  `shiyanshizhuangtai` varchar(200) NOT NULL COMMENT '实验室状态',
  `keyueshijian` varchar(200) DEFAULT NULL COMMENT '可约时间',
  `shiyongshuoming` longtext COMMENT '使用说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='实验室信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiyanshixinxi`
--

LOCK TABLES `shiyanshixinxi` WRITE;
/*!40000 ALTER TABLE `shiyanshixinxi` DISABLE KEYS */;
INSERT INTO `shiyanshixinxi` VALUES (41,'2022-04-26 09:52:29','实验室名称1','实验室类型1','upload/shiyanshixinxi_shiyanshitupian1.jpg','实验室位置1','已安排','可约时间1','使用说明1'),(42,'2022-04-26 09:52:29','实验室名称2','实验室类型2','upload/shiyanshixinxi_shiyanshitupian2.jpg','实验室位置2','已安排','可约时间2','使用说明2'),(43,'2022-04-26 09:52:29','实验室名称3','实验室类型3','upload/shiyanshixinxi_shiyanshitupian3.jpg','实验室位置3','已安排','可约时间3','使用说明3'),(44,'2022-04-26 09:52:29','实验室名称4','实验室类型4','upload/shiyanshixinxi_shiyanshitupian4.jpg','实验室位置4','已安排','可约时间4','使用说明4'),(45,'2022-04-26 09:52:29','实验室名称5','实验室类型5','upload/shiyanshixinxi_shiyanshitupian5.jpg','实验室位置5','已安排','可约时间5','使用说明5'),(46,'2022-04-26 09:52:29','实验室名称6','实验室类型6','upload/shiyanshixinxi_shiyanshitupian6.jpg','实验室位置6','已安排','可约时间6','使用说明6');
/*!40000 ALTER TABLE `shiyanshixinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-26 09:52:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (21,'2022-04-26 09:52:29','学号1','123456','姓名1','男','upload/xuesheng_touxiang1.jpg','13823888881'),(22,'2022-04-26 09:52:29','学号2','123456','姓名2','男','upload/xuesheng_touxiang2.jpg','13823888882'),(23,'2022-04-26 09:52:29','学号3','123456','姓名3','男','upload/xuesheng_touxiang3.jpg','13823888883'),(24,'2022-04-26 09:52:29','学号4','123456','姓名4','男','upload/xuesheng_touxiang4.jpg','13823888884'),(25,'2022-04-26 09:52:29','学号5','123456','姓名5','男','upload/xuesheng_touxiang5.jpg','13823888885'),(26,'2022-04-26 09:52:29','学号6','123456','姓名6','男','upload/xuesheng_touxiang6.jpg','13823888886');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuejilu`
--

DROP TABLE IF EXISTS `yuyuejilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuejilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `shiyanjilu` longtext COMMENT '实验记录',
  `wenjianziliao` varchar(200) DEFAULT NULL COMMENT '文件资料',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `tianjiariqi` date DEFAULT NULL COMMENT '添加日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='预约记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuejilu`
--

LOCK TABLES `yuyuejilu` WRITE;
/*!40000 ALTER TABLE `yuyuejilu` DISABLE KEYS */;
INSERT INTO `yuyuejilu` VALUES (61,'2022-04-26 09:52:29','课程名称1','实验记录1','','教师工号1','2022-04-26','学号1','姓名1',1,1,'是',''),(62,'2022-04-26 09:52:29','课程名称2','实验记录2','','教师工号2','2022-04-26','学号2','姓名2',2,2,'是',''),(63,'2022-04-26 09:52:29','课程名称3','实验记录3','','教师工号3','2022-04-26','学号3','姓名3',3,3,'是',''),(64,'2022-04-26 09:52:29','课程名称4','实验记录4','','教师工号4','2022-04-26','学号4','姓名4',4,4,'是',''),(65,'2022-04-26 09:52:29','课程名称5','实验记录5','','教师工号5','2022-04-26','学号5','姓名5',5,5,'是',''),(66,'2022-04-26 09:52:29','课程名称6','实验记录6','','教师工号6','2022-04-26','学号6','姓名6',6,6,'是','');
/*!40000 ALTER TABLE `yuyuejilu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 20:27:53
