-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `email` (
  `email_no` varchar(30) NOT NULL,
  `email_password` varchar(45) NOT NULL,
  `pop3` varchar(45) NOT NULL,
  `smtp` varchar(45) NOT NULL,
  `account_email` varchar(16) NOT NULL,
  `pop3port` varchar(45) NOT NULL,
  `smtpport` varchar(45) NOT NULL,
  `authorized` varchar(45) NOT NULL,
  PRIMARY KEY (`email_no`),
  UNIQUE KEY `id_UNIQUE` (`email_no`),
  KEY `account_email_idx` (`account_email`),
  CONSTRAINT `account_email` FOREIGN KEY (`account_email`) REFERENCES `user` (`account`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES ('1299308435@qq.com','xgxtifliafveijae','pop.qq.com','smtp.qq.com','111','995','25','156156'),('154125960@qq.com','123456aa','pop.qq.cok','smtp.qq.com','111','110','25','165165'),('15662397181@163.com','liwudi123','pop.163.com','smtp.163.com','111','110','25','31564');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra`
--

DROP TABLE IF EXISTS `extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `extra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(1000) NOT NULL,
  `filesize` float DEFAULT NULL,
  `mailid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=559 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra`
--

LOCK TABLES `extra` WRITE;
/*!40000 ALTER TABLE `extra` DISABLE KEYS */;
INSERT INTO `extra` VALUES (300,'D:upload新建文本文档 (2).txt',NULL,1476),(301,'D:upload新建文本文档 (2).txt',NULL,1479),(302,'D:uploadcparser_tree.c',NULL,1480),(303,'D:uploadcparser_tree.h',NULL,1480),(304,'D:upload新建文本文档 (2).txt',NULL,1481),(305,'D:uploadase64.txt',NULL,1482),(306,'D:upload新建文本文档.txt',NULL,1483),(307,'D:uploadkaishi.txt',NULL,1486),(308,'D:upload测试.txt',NULL,1487),(309,'D:uploadcmd_help.c',NULL,1488),(310,'D:uploadcmd_setting.c',NULL,1489),(311,'D:uploadclinew.tar.gz',NULL,1491),(313,'asdas',NULL,12312),(314,'D:uploadkaishi.txt',NULL,1532),(315,'D:uploadcmd_setting.c',NULL,1533),(316,'D:upload132.txt',NULL,1564),(317,'D:upload132.txt',NULL,1565),(318,'D:upload132.txt',NULL,1593),(319,'D:upload132.txt',NULL,1594),(320,'D:upload132.txt',NULL,1620),(321,'D:upload132.txt',NULL,1621),(322,'D:upload132.txt',NULL,1647),(323,'D:upload132.txt',NULL,1648),(324,'D:upload132.txt',NULL,1674),(325,'D:upload132.txt',NULL,1675),(326,'D:upload132.txt',NULL,1701),(327,'D:upload132.txt',NULL,1702),(328,'D:upload132.txt',NULL,1729),(329,'D:upload132.txt',NULL,1730),(330,'D:upload132.txt',NULL,1757),(331,'D:upload132.txt',NULL,1758),(332,'D:upload132.txt',NULL,1785),(333,'D:upload132.txt',NULL,1786),(334,'D:upload132.txt',NULL,1813),(335,'D:upload132.txt',NULL,1814),(336,'D:upload132.txt',NULL,1841),(337,'D:upload132.txt',NULL,1842),(338,'D:upload132.txt',NULL,1869),(339,'D:upload132.txt',NULL,1870),(340,'D:upload132.txt',NULL,1897),(341,'D:upload132.txt',NULL,1898),(342,'D:upload新建文本文档 (2).txt',NULL,1912),(343,'D:upload新建文本文档 (2).txt',NULL,1915),(344,'D:uploadcparser_tree.c',NULL,1916),(345,'D:uploadcparser_tree.h',NULL,1916),(346,'D:upload新建文本文档 (2).txt',NULL,1917),(347,'D:uploadase64.txt',NULL,1918),(348,'D:upload新建文本文档.txt',NULL,1919),(349,'D:uploadkaishi.txt',NULL,1922),(350,'D:upload测试.txt',NULL,1923),(351,'D:uploadcmd_help.c',NULL,1924),(352,'D:uploadcmd_setting.c',NULL,1925),(353,'D:uploadclinew.tar.gz',NULL,1927),(354,'D:upload新建文本文档 (2).txt',NULL,1980),(355,'D:upload新建文本文档 (2).txt',NULL,1983),(356,'D:uploadcparser_tree.c',NULL,1984),(357,'D:uploadcparser_tree.h',NULL,1984),(358,'D:upload新建文本文档 (2).txt',NULL,1985),(359,'D:uploadase64.txt',NULL,1986),(360,'D:upload新建文本文档.txt',NULL,1987),(361,'D:uploadkaishi.txt',NULL,1990),(362,'D:upload测试.txt',NULL,1991),(363,'D:uploadcmd_help.c',NULL,1992),(364,'D:uploadcmd_setting.c',NULL,1993),(365,'D:uploadclinew.tar.gz',NULL,1995),(368,'kaishi.txt',NULL,2036),(369,'D:upload132.txt',NULL,2062),(370,'D:upload132.txt',NULL,2063),(371,'D:upload132.txt',NULL,2090),(372,'D:upload132.txt',NULL,2091),(373,'D:upload新建文本文档 (2).txt',NULL,2105),(374,'D:upload新建文本文档 (2).txt',NULL,2108),(375,'D:uploadcparser_tree.c',NULL,2109),(376,'D:uploadcparser_tree.h',NULL,2109),(377,'D:upload新建文本文档 (2).txt',NULL,2110),(378,'D:uploadase64.txt',NULL,2111),(379,'D:upload新建文本文档.txt',NULL,2112),(380,'D:uploadkaishi.txt',NULL,2115),(381,'D:upload测试.txt',NULL,2116),(382,'D:uploadcmd_help.c',NULL,2117),(383,'D:uploadcmd_setting.c',NULL,2118),(384,'D:uploadclinew.tar.gz',NULL,2120),(385,'D:upload新建文本文档 (2).txt',NULL,2173),(386,'D:upload新建文本文档 (2).txt',NULL,2176),(387,'D:uploadcparser_tree.c',NULL,2177),(388,'D:uploadcparser_tree.h',NULL,2177),(389,'D:upload新建文本文档 (2).txt',NULL,2178),(390,'D:uploadase64.txt',NULL,2179),(391,'D:upload新建文本文档.txt',NULL,2180),(392,'D:uploadkaishi.txt',NULL,2183),(393,'D:upload测试.txt',NULL,2184),(394,'D:uploadcmd_help.c',NULL,2185),(395,'D:uploadcmd_setting.c',NULL,2186),(396,'D:uploadclinew.tar.gz',NULL,2188),(397,'D:upload132.txt',NULL,2254),(398,'D:upload132.txt',NULL,2255),(399,'D:upload132.txt',NULL,2282),(400,'D:upload132.txt',NULL,2283),(401,'D:upload132.txt',NULL,2310),(402,'D:upload132.txt',NULL,2311),(403,'D:upload132.txt',NULL,2338),(404,'D:upload132.txt',NULL,2339),(405,'D:upload132.txt',NULL,2366),(406,'D:upload132.txt',NULL,2367),(407,'D:upload132.txt',NULL,2394),(408,'D:upload132.txt',NULL,2395),(409,'D:upload132.txt',NULL,2422),(410,'D:upload132.txt',NULL,2423),(411,'D:upload132.txt',NULL,2450),(412,'D:upload132.txt',NULL,2451),(413,'D:upload132.txt',NULL,2478),(414,'D:upload132.txt',NULL,2479),(415,'D:upload132.txt',NULL,2506),(416,'D:upload132.txt',NULL,2507),(417,'D:upload132.txt',NULL,2534),(418,'D:upload132.txt',NULL,2535),(419,'D:upload132.txt',NULL,2562),(420,'D:upload132.txt',NULL,2563),(421,'D:upload132.txt',NULL,2590),(422,'D:upload132.txt',NULL,2591),(423,'D:upload132.txt',NULL,2618),(424,'D:upload132.txt',NULL,2619),(425,'D:upload132.txt',NULL,2646),(426,'D:upload132.txt',NULL,2647),(427,'D:upload132.txt',NULL,2674),(428,'D:upload132.txt',NULL,2675),(429,'D:upload132.txt',NULL,2702),(430,'D:upload132.txt',NULL,2703),(431,'D:upload132.txt',NULL,2730),(432,'D:upload132.txt',NULL,2731),(433,'D:upload132.txt',NULL,2758),(434,'D:upload132.txt',NULL,2759),(435,'D:upload132.txt',NULL,2786),(436,'D:upload132.txt',NULL,2787),(437,'D:upload132.txt',NULL,2814),(438,'D:upload132.txt',NULL,2815),(439,'D:upload132.txt',NULL,2842),(440,'D:upload132.txt',NULL,2843),(441,'D:upload132.txt',NULL,2870),(442,'D:upload132.txt',NULL,2871),(443,'D:upload132.txt',NULL,2898),(444,'D:upload132.txt',NULL,2899),(445,'D:upload132.txt',NULL,2926),(446,'D:upload132.txt',NULL,2927),(447,'D:upload132.txt',NULL,2954),(448,'D:upload132.txt',NULL,2955),(449,'D:upload新建文本文档 (2).txt',NULL,2969),(450,'D:upload新建文本文档 (2).txt',NULL,2972),(451,'D:uploadcparser_tree.c',NULL,2973),(452,'D:uploadcparser_tree.h',NULL,2973),(453,'D:upload新建文本文档 (2).txt',NULL,2974),(454,'D:uploadase64.txt',NULL,2975),(455,'D:upload新建文本文档.txt',NULL,2976),(456,'D:uploadkaishi.txt',NULL,2979),(457,'D:upload测试.txt',NULL,2980),(458,'D:uploadcmd_help.c',NULL,2981),(459,'D:uploadcmd_setting.c',NULL,2982),(460,'D:uploadclinew.tar.gz',NULL,2984),(461,'D:upload新建文本文档 (2).txt',NULL,3037),(462,'D:upload新建文本文档 (2).txt',NULL,3040),(463,'D:uploadcparser_tree.c',NULL,3041),(464,'D:uploadcparser_tree.h',NULL,3041),(465,'D:upload新建文本文档 (2).txt',NULL,3042),(466,'D:uploadase64.txt',NULL,3043),(467,'D:upload新建文本文档.txt',NULL,3044),(468,'D:uploadkaishi.txt',NULL,3047),(469,'D:upload测试.txt',NULL,3048),(470,'D:uploadcmd_help.c',NULL,3049),(471,'D:uploadcmd_setting.c',NULL,3050),(472,'D:uploadclinew.tar.gz',NULL,3052),(473,'D:upload132.txt',NULL,3118),(474,'D:upload132.txt',NULL,3119),(475,'D:upload132.txt',NULL,3146),(476,'D:upload132.txt',NULL,3147),(477,'D:upload132.txt',NULL,3174),(478,'D:upload132.txt',NULL,3175),(479,'D:upload132.txt',NULL,3202),(480,'D:upload132.txt',NULL,3203),(481,'D:upload新建文本文档 (2).txt',NULL,3217),(482,'D:upload新建文本文档 (2).txt',NULL,3220),(483,'D:uploadcparser_tree.c',NULL,3221),(484,'D:uploadcparser_tree.h',NULL,3221),(485,'D:upload新建文本文档 (2).txt',NULL,3222),(486,'D:uploadase64.txt',NULL,3223),(487,'D:upload新建文本文档.txt',NULL,3224),(488,'D:uploadkaishi.txt',NULL,3227),(489,'D:upload测试.txt',NULL,3228),(490,'D:uploadcmd_help.c',NULL,3229),(491,'D:uploadcmd_setting.c',NULL,3230),(492,'D:upload132.txt',NULL,3297),(493,'D:upload132.txt',NULL,3298),(494,'D:upload132.txt',NULL,3325),(495,'D:upload132.txt',NULL,3326),(496,'D:upload新建文本文档 (2).txt',NULL,3340),(497,'D:upload新建文本文档 (2).txt',NULL,3343),(498,'D:uploadcparser_tree.c',NULL,3344),(499,'D:uploadcparser_tree.h',NULL,3344),(500,'D:upload新建文本文档 (2).txt',NULL,3345),(501,'D:uploadase64.txt',NULL,3346),(502,'D:upload新建文本文档.txt',NULL,3347),(503,'D:uploadkaishi.txt',NULL,3350),(504,'D:upload测试.txt',NULL,3351),(505,'D:uploadcmd_help.c',NULL,3352),(506,'D:uploadcmd_setting.c',NULL,3353),(507,'D:upload132.txt',NULL,3420),(508,'D:upload132.txt',NULL,3421),(509,'D:upload新建文本文档 (2).txt',NULL,3435),(510,'D:upload新建文本文档 (2).txt',NULL,3438),(511,'D:uploadcparser_tree.c',NULL,3439),(512,'D:uploadcparser_tree.h',NULL,3439),(513,'D:upload新建文本文档 (2).txt',NULL,3440),(514,'D:uploadase64.txt',NULL,3441),(515,'D:upload新建文本文档.txt',NULL,3442),(516,'D:uploadkaishi.txt',NULL,3445),(517,'D:upload测试.txt',NULL,3446),(518,'D:uploadcmd_help.c',NULL,3447),(519,'D:uploadcmd_setting.c',NULL,3448),(520,'D:upload132.txt',NULL,3515),(521,'D:upload132.txt',NULL,3516),(522,'D:upload新建文本文档 (2).txt',NULL,3530),(523,'D:upload新建文本文档 (2).txt',NULL,3533),(524,'D:uploadcparser_tree.c',NULL,3534),(525,'D:uploadcparser_tree.h',NULL,3534),(526,'D:upload新建文本文档 (2).txt',NULL,3535),(527,'D:uploadase64.txt',NULL,3536),(528,'D:upload新建文本文档.txt',NULL,3537),(529,'D:uploadkaishi.txt',NULL,3540),(530,'D:upload测试.txt',NULL,3541),(531,'D:uploadcmd_help.c',NULL,3542),(532,'D:uploadcmd_setting.c',NULL,3543),(533,'测试.txt',NULL,3586),(534,'kaishi.txt',NULL,3589),(535,'cparser_tree.c',NULL,3600),(536,'cparser_tree.h',NULL,3604),(537,'kaishi.txt',NULL,3609),(538,'kaishi.txt',NULL,3613),(539,'132.txt',NULL,3616),(540,'D:upload132.txt',NULL,3641),(541,'D:upload132.txt',NULL,3642),(542,'D:uploadcparser_tree.c',NULL,3648),(543,'D:uploadcparser_tree.h',NULL,3651),(544,'D:uploadkaishi.txt',NULL,3654),(545,'D:uploadkaishi.txt',NULL,3657),(546,'D:upload132.txt',NULL,3659),(547,'D:upload新建文本文档 (2).txt',NULL,3672),(548,'D:upload新建文本文档 (2).txt',NULL,3675),(549,'D:uploadcparser_tree.c',NULL,3676),(550,'D:uploadcparser_tree.h',NULL,3676),(551,'D:upload新建文本文档 (2).txt',NULL,3677),(552,'D:uploadase64.txt',NULL,3678),(553,'D:upload新建文本文档.txt',NULL,3679),(554,'D:uploadkaishi.txt',NULL,3682),(555,'D:upload测试.txt',NULL,3683),(556,'D:uploadcmd_help.c',NULL,3684),(557,'D:uploadcmd_setting.c',NULL,3685),(558,'测试.txt',NULL,3727);
/*!40000 ALTER TABLE `extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(100) DEFAULT NULL,
  `recipient` varchar(100) DEFAULT NULL,
  `mailstate` int(11) NOT NULL,
  `theme` varchar(1000) DEFAULT NULL,
  `readstate` int(11) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `extrastate` int(11) NOT NULL,
  `account_mail` varchar(16) NOT NULL,
  `time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `account_idx` (`account_mail`),
  CONSTRAINT `account_mail` FOREIGN KEY (`account_mail`) REFERENCES `user` (`account`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3735 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
INSERT INTO `mail` VALUES (3617,'10000@qq.com','[1299308435@qq.com]',0,'QQ邮箱管理：好友生日提醒服务',NULL,'null',0,'111','Thu Jun 20 09:16:38 GMT+08:00 2019'),(3618,'account-security-noreply@accountprotection.microsoft.com','[1299308435@qq.com]',0,'Microsoft 帐户密码重置',NULL,'请使用此代码为 Microsoft 帐户 12*****@qq.com 重置密码。\r\n\r\n你的代码如下: 3726616\r\n\r\n\r\n                如果你无法识别 Microsoft 帐户 12*****@qq.com，可以单击 https://account.live.com/dp?ft=DRFnVrzDJSHMJE*I74xaGYDktMYHnoK5ZqX7mrLCl5y7MaFaRgdHZmXI21BejDNX4BespsUPZlmJNbLwAHZNuLLrRuTW6zw4ITNVSmbbQ78SUyfzaxd*W3b!Jo6asKp0vf9xchvEGfBuLAnHtZYnwwaR2BmGjYT8*!1!qOcDfwY8zJWTuwd1IMi1UY5!8N7wdB8yDoTpJ4XcylS*IzD!MBHSAJKxM4vtdsvmjU4h9c1SF97*JTmfxgVfPbTzjmC2i9ijlmohSJtVa6RATgxvunpFAC0r9HTwa*sODtQ3G5qAStekpNxxdURDA0r!2De4NQ%24%24 从该帐户删除你的电子邮件地址。\r\n\r\n谢谢!\r\nMicrosoft 帐户团队 ',0,'111','Thu Jun 20 09:16:39 GMT+08:00 2019'),(3619,'account-security-noreply@accountprotection.microsoft.com','[1299308435@qq.com]',0,'Microsoft 帐户密码更改',NULL,'Microsoft 帐户 12*****@qq.com 的密码已于 2019/5/26 0:29 (GMT) 更改。\r\n\r\n使用的安全信息: 1299308435@qq.com\r\n国家/地区: China\r\n平台: Windows\r\n浏览器: Microsoft Edge\r\nIP 地址: 112.224.65.166\r\n\r\n\r\n如果是你本人，则你的帐户安全，可以忽略此电子邮件。\r\n\r\n如果不是本人，则你的帐户受到威胁。请按照以下步骤执行操作:\r\n1. 重置密码 https://account.live.com/pw。\r\n2. 审核安全信息 https://account.live.com/Proofs/Manage。\r\n3. 了解如何使帐户更为安全 http://go.microsoft.com/fwlink/?LinkID=324395。\r\n\r\n也可以选择退出或更改接收安全通知的位置 https://account.live.com/SecurityNotifications/Update。\r\n\r\n谢谢!\r\nMicrosoft 帐户团队 ',0,'111','Thu Jun 20 09:16:39 GMT+08:00 2019'),(3620,'weixinteam@qq.com','[1299308435@qq.com]',0,'\"=?UTF-8?B?6K+35r+A5rS75L2g55qE5b6u5L+h5bCP56iL5bqP=?=\"',NULL,'null',0,'111','Thu Jun 20 09:16:40 GMT+08:00 2019'),(3621,'noreply@github.com','[lvweiguang <1299308435@qq.com>]',0,'[GitHub] Please review this sign in',NULL,'Hey lvweiguang!\r\n\r\nYour GitHub account was successfully signed in to but we did not recognize the location of the sign in. You can review this sign in attempt by visiting https://github.com/settings/sessions/authentications/310044397.\r\n\r\nIf you recently signed in to your account, you do not need to take any further action.\r\n\r\nIf you did not sign in to your account, your password may be compromised. Visit https://github.com/settings/admin to create a new, strong password for your GitHub account.\r\n\r\nFor more information, see \"https://help.github.com/articles/keeping-your-account-and-data-secure/\" in the GitHub Help.\r\n\r\nTo see this and other security events for your account, visit https://github.com/settings/security\r\n\r\nIf you run into problems, please contact support by visiting https://github.com/contact\r\n\r\nThanks,\r\nYour friends at GitHub\r\n\r\n',0,'111','Thu Jun 20 09:16:40 GMT+08:00 2019'),(3622,'service@mail.uooconline.com','[]',0,'《嵌入式系统设计与实践(2019春季学期)》课程团队',NULL,'UOOC 优课在线亲爱的同学们：     \r\n 大家好！《嵌入式系统设计与实践》这门课程为2.0学分，将于6月21日开始进行期末线上考试，为提醒大家合理安排学习时间，故通知期末考试的相关事宜，希望各位同学能仔细查看本条通知的每一个点，以确保自己的利益不因自己的疏忽而造成损失，并且合理安排学习时间。 【考试时间安排】1﹜6月21日08:00—6月\r\n24日22:00线上考试 （答题时长120分钟）;2﹜6月19日17:00\r\n开启复习模式，代表着线上学习已经结束，所有学习将不再记入成绩，请大家务必在此之前完成任务点的学习，但可以看视频(不算作成绩)。 【注意事项】1﹜线上考试时间段为6月21日08：00开始，到6月24日22:00结束。由学生本人在规定时间内自选时间段参加考试，用谷歌浏览器在电脑上登陆自己的账号，点击考试栏即可答题，答题前须认真阅读考试须知，考试的时间限制为120分钟，即学生最晚参加考试的时间为6月24日20：00，否则，答题时间将被缩短，后果自负。一旦打开考试界面，考试将进入倒计时，答题时请注意时间并保持网络通畅。2﹜考试条件为完成任务点60%以上，才能参加线上考试。6月19日17：00开启复习模式后，所有学习将不再记入成绩，请大家务必在此之前完成任务点的学习。3﹜本课程发布的测验、作业等，请大家务必在规定的\r\n 截止时间前及时完成以免影响平时成绩，\r\n后面将不会再提醒，错过没有补交机会。4﹜\r\n再次提醒请大家务必仔细核实自己的注册信息如学校名、姓名、学号是否有误，并及时修改或联系本校教务处管理员老师修改，学校错误的请及时联系客服修改，否则将影响到各位同学的成绩和学分认定。5﹜涉及学分互认、选课安排、线下辅导、成绩公布、线下考试等平台以外的事务，请直接咨询贵校教务处MOOC相关老师或辅导员。\r\n  \r\n   \r\n 本通知很长，但很重要。请各位同学的细心查看，如有必要请重复多次查看！若有其它疑问的，可以留言，我会及时回复。祝同学们期末取得好的成绩！进入学习\r\n&nbsp;\r\n\r\n',0,'111','Thu Jun 20 09:16:42 GMT+08:00 2019'),(3623,'10000@qq.com','[1299308435@qq.com]',0,'QQ邮箱管理：好友生日提醒服务',NULL,'null',0,'111','Thu Jun 20 09:16:42 GMT+08:00 2019'),(3624,'csdnvip@tuanjianjian.com','[1299308435@qq.com]',0,'CSDN下载多次使用可能过期',NULL,'null',0,'111','Thu Jun 20 09:16:43 GMT+08:00 2019'),(3625,'promotion@icourse163.org','[1299308435@qq.com]',0,'中国大学MOOC《线性代数·强化课》课程即将开课',NULL,'null',0,'111','Thu Jun 20 09:16:44 GMT+08:00 2019'),(3626,'1299308435@qq.com','[=?ISO-8859-1?B?MTI5OTMwODQzNQ==?= <1299308435@qq.com>]',0,'',NULL,'asd',0,'111','Thu Jun 20 09:16:44 GMT+08:00 2019'),(3627,'1299308435@qq.com','[2 <1299308435@qq.com>]',0,'3',NULL,'null',0,'111','Thu Jun 20 09:16:45 GMT+08:00 2019'),(3628,'1299308435@qq.com','[=?gb18030?B?MTI5OTMwODQzNQ==?= <1299308435@qq.com>]',0,'关于商业讨论',NULL,'商业讨论是。。。。。',0,'111','Thu Jun 20 09:16:46 GMT+08:00 2019'),(3629,'1299308435@qq.com','[2 <1299308435@qq.com>]',0,'3',NULL,'null',0,'111','Thu Jun 20 09:16:46 GMT+08:00 2019'),(3630,'1299308435@qq.com','[1299308435@qq.com]',0,'1299308435@qq.com',NULL,'null',0,'111','Thu Jun 20 09:16:49 GMT+08:00 2019'),(3631,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:16:50 GMT+08:00 2019'),(3632,'2313929850@qq.com','[=?gb18030?B?MTI5OTMwODQzNQ==?= <1299308435@qq.com>]',0,'Re: 123',NULL,'cnm\r\n\r\n\r\n \r\n---Original---\r\nFrom: \"1299308435\"<1299308435@qq.com>\r\nDate: 2019/6/14 14:56:30\r\nTo: \"2313929850\"<2313929850@qq.com>;\r\nSubject: 123\r\n\r\n\r\nhttps://www.075hs.com/',0,'111','Thu Jun 20 09:16:50 GMT+08:00 2019'),(3633,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:16:51 GMT+08:00 2019'),(3634,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:16:52 GMT+08:00 2019'),(3635,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:16:52 GMT+08:00 2019'),(3636,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:16:53 GMT+08:00 2019'),(3637,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:16:54 GMT+08:00 2019'),(3638,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:16:55 GMT+08:00 2019'),(3639,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:16:55 GMT+08:00 2019'),(3640,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:16:56 GMT+08:00 2019'),(3641,'1299308435@qq.com','[=?UTF-8?B?WFjnlKjmiLc=?= <1299308435@qq.com>]',0,'打折钜惠',NULL,'XX用户你好, 今天全场5折, 快来抢购, 错过今天再等一年。。。',1,'111','Thu Jun 20 09:16:57 GMT+08:00 2019'),(3642,'1299308435@qq.com','[=?UTF-8?B?WFjnlKjmiLc=?= <1299308435@qq.com>]',0,'打折钜惠',NULL,'XX用户你好, 今天全场5折, 快来抢购, 错过今天再等一年。。。',1,'111','Thu Jun 20 09:16:58 GMT+08:00 2019'),(3643,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:16:59 GMT+08:00 2019'),(3644,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:17:01 GMT+08:00 2019'),(3645,'15662397181@163.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:17:02 GMT+08:00 2019'),(3646,'15662397181@163.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:17:02 GMT+08:00 2019'),(3647,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:17:05 GMT+08:00 2019'),(3648,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'486786',1,'111','Thu Jun 20 09:17:10 GMT+08:00 2019'),(3649,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:17:11 GMT+08:00 2019'),(3650,'15662397181@163.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:17:12 GMT+08:00 2019'),(3651,'15662397181@163.com','[1299308435@qq.com]',0,'123',NULL,'1',1,'111','Thu Jun 20 09:17:12 GMT+08:00 2019'),(3652,'15662397181@163.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:17:14 GMT+08:00 2019'),(3653,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:17:14 GMT+08:00 2019'),(3654,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'1',1,'111','Thu Jun 20 09:17:15 GMT+08:00 2019'),(3655,'1299308435@qq.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:17:16 GMT+08:00 2019'),(3656,'15662397181@163.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:17:18 GMT+08:00 2019'),(3657,'15662397181@163.com','[1299308435@qq.com]',0,'123',NULL,'1',1,'111','Thu Jun 20 09:17:19 GMT+08:00 2019'),(3658,'15662397181@163.com','[1299308435@qq.com]',0,'123',NULL,'null',0,'111','Thu Jun 20 09:17:20 GMT+08:00 2019'),(3659,'1299308435@qq.com','[1299308435@qq.com]',0,'阿森松岛撒多',NULL,'奥术大师',1,'111','Thu Jun 20 09:17:21 GMT+08:00 2019'),(3660,'phone@service.netease.com','[15662397181@163.com]',0,'您的网易手机号码邮箱激活成功',NULL,'null',0,'111','Thu Jun 20 09:17:21 GMT+08:00 2019'),(3661,'mail@service.netease.com','[m15662397181@163.com]',0,'全新体验，手机也能玩转网易邮箱',NULL,'null',0,'111','Thu Jun 20 09:17:22 GMT+08:00 2019'),(3662,'info@smschinese.cn','[\"=?GB2312?Q?15662397181@163=2Ecom?=\" <15662397181@163.com>]',0,'恭喜您成功注册中国网建SMS短信通会员',NULL,'null',0,'111','Thu Jun 20 09:17:22 GMT+08:00 2019'),(3663,'info@luosimao.com','[\"15662397181@163.com\" <15662397181@163.com>]',0,'账户激活-Luosimao.com',NULL,'恭喜您已注册成功\r\n                    \r\n                \r\n                \r\n                    \r\n                        \r\n                            \r\n                                \r\n                                    尊敬的  xiaobaiqiudai,\r\n                                \r\n                            \r\n                            \r\n                                \r\n                                    恭喜！您的 Luosimao 帐户“xiaobaiqiudai”已成功创建。 \r\n                                    现在，点击下面的按钮来激活您的账号！\r\n                                \r\n                            \r\n                            \r\n                                \r\n                                    \r\n                                        立即激活\r\n                                    \r\n                                \r\n                            \r\n                        \r\n                    \r\n                \r\n                \r\n                    \r\n                        \r\n                            \r\n                                \r\n                                    在线客服\r\n                                \r\n                            \r\n                            \r\n                                \r\n                                    QQ  1845808782   ( 售前咨询 )   QQ  1829923478  ( 技术支持 )\r\n                                \r\n                            \r\n                            \r\n                                \r\n                                    客服热线\r\n                                \r\n                            \r\n                            \r\n                                \r\n                                    021-31776435  转1  ( 售前咨询 )   转2  ( 技术支持 )\r\n                                \r\n                            \r\n                            \r\n                                \r\n                                    支持邮箱\r\n                                \r\n                            \r\n                            \r\n                                \r\n                                    support@luosimao.com\r\n                                \r\n                            \r\n                            \r\n                                \r\n                                    顺祝商祺!\r\n                                \r\n                            \r\n                            \r\n                                \r\n                                    Luosimao团队敬上\r\n                                \r\n                            \r\n                        \r\n                    \r\n                \r\n\r\n            \r\n        \r\n    \r\n    \r\n        \r\n            Luosimao.com © 2017 上海铁壳网络科技有限公司\r\n\r\n',0,'111','Thu Jun 20 09:17:22 GMT+08:00 2019'),(3664,'yanxuan@service.netease.com','[m15662397181 <m15662397181@163.com>]',0,'【网易严选】你有46元优惠券即将到期，请尽快使用>>',NULL,'null',0,'111','Thu Jun 20 09:17:22 GMT+08:00 2019'),(3665,'ztokefu@zto.cn','[m15662397181@163.com]',0,'中通快件新服务开启',NULL,'null',0,'111','Thu Jun 20 09:17:22 GMT+08:00 2019'),(3666,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已揽收，运单号474994700415',NULL,'null',0,'111','Thu Jun 20 09:17:22 GMT+08:00 2019'),(3667,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已开始派送，运单号474994700415',NULL,'null',0,'111','Thu Jun 20 09:17:23 GMT+08:00 2019'),(3668,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号474994700415',NULL,'null',0,'111','Thu Jun 20 09:17:23 GMT+08:00 2019'),(3669,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号474994700415',NULL,'null',0,'111','Thu Jun 20 09:17:23 GMT+08:00 2019'),(3670,'mail@service.netease.com','[m15662397181@163.com]',0,'安全问题，不能在亡羊补牢时才想起来',NULL,'null',0,'111','Thu Jun 20 09:17:23 GMT+08:00 2019'),(3671,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已揽收，运单号476960097101',NULL,'null',0,'111','Thu Jun 20 09:17:23 GMT+08:00 2019'),(3672,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'',1,'111','Thu Jun 20 09:17:23 GMT+08:00 2019'),(3673,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已开始派送，运单号476960097101',NULL,'null',0,'111','Thu Jun 20 09:17:24 GMT+08:00 2019'),(3674,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号476960097101',NULL,'null',0,'111','Thu Jun 20 09:17:24 GMT+08:00 2019'),(3675,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'',1,'111','Thu Jun 20 09:17:24 GMT+08:00 2019'),(3676,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'',1,'111','Thu Jun 20 09:17:27 GMT+08:00 2019'),(3677,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'',1,'111','Thu Jun 20 09:17:28 GMT+08:00 2019'),(3678,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'',1,'111','Thu Jun 20 09:17:28 GMT+08:00 2019'),(3679,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'',1,'111','Thu Jun 20 09:17:28 GMT+08:00 2019'),(3680,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'从QQ邮箱发来的超大附件\r\n\r\nshare.zip (21.32M, 2018年03月29日 20:30 到期)进入下载页面：https://mail.qq.com/cgi-bin/ftnExs_download?t=exs_ftn_download&k=0f373665d2ddcfc6a2e84728116657170201500702505d0f1c520354534b515e05001b5c0e565715070005070707000b01040100376f654b59564400191c0c48310a&code=176e7fe8',0,'111','Thu Jun 20 09:17:29 GMT+08:00 2019'),(3681,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'从QQ邮箱发来的超大附件\r\n\r\nshare.zip (21.32M, 2018年03月29日 22:33 到期)进入下载页面：https://mail.qq.com/cgi-bin/ftnExs_download?t=exs_ftn_download&k=0d6138655a8893c8a0be492812330b1902025a5c00050e001e58015d021e0d075554155d55565d1b57540c5550575a0752045b04343a39455b004a001a495046335c&code=3a8e4396',0,'111','Thu Jun 20 09:17:29 GMT+08:00 2019'),(3682,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'',1,'111','Thu Jun 20 09:17:29 GMT+08:00 2019'),(3683,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'',1,'111','Thu Jun 20 09:17:29 GMT+08:00 2019'),(3684,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'',1,'111','Thu Jun 20 09:17:30 GMT+08:00 2019'),(3685,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'',1,'111','Thu Jun 20 09:17:30 GMT+08:00 2019'),(3686,'1299308435@qq.com','[=?gb18030?B?MTU2NjIzOTcxODE=?= <15662397181@163.com>]',0,'新建文本文档 (2)',NULL,'',0,'111','Thu Jun 20 09:17:30 GMT+08:00 2019'),(3687,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已揽收，运单号481589387521',NULL,'null',0,'111','Thu Jun 20 09:17:30 GMT+08:00 2019'),(3688,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已开始派送，运单号481589387521',NULL,'null',0,'111','Thu Jun 20 09:17:30 GMT+08:00 2019'),(3689,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号481589387521',NULL,'null',0,'111','Thu Jun 20 09:17:31 GMT+08:00 2019'),(3690,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号481589387521',NULL,'null',0,'111','Thu Jun 20 09:17:31 GMT+08:00 2019'),(3691,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已揽收，运单号488859367341',NULL,'null',0,'111','Thu Jun 20 09:17:31 GMT+08:00 2019'),(3692,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号488859367341',NULL,'null',0,'111','Thu Jun 20 09:17:31 GMT+08:00 2019'),(3693,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已开始派送，运单号488859367341',NULL,'null',0,'111','Thu Jun 20 09:17:31 GMT+08:00 2019'),(3694,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号488859367341',NULL,'null',0,'111','Thu Jun 20 09:17:31 GMT+08:00 2019'),(3695,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已揽收，运单号495590114421',NULL,'null',0,'111','Thu Jun 20 09:17:32 GMT+08:00 2019'),(3696,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已揽收，运单号495991739311',NULL,'null',0,'111','Thu Jun 20 09:17:32 GMT+08:00 2019'),(3697,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已开始派送，运单号495590114421',NULL,'null',0,'111','Thu Jun 20 09:17:32 GMT+08:00 2019'),(3698,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号495590114421',NULL,'null',0,'111','Thu Jun 20 09:17:33 GMT+08:00 2019'),(3699,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号495590114421',NULL,'null',0,'111','Thu Jun 20 09:17:33 GMT+08:00 2019'),(3700,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已开始派送，运单号495991739311',NULL,'null',0,'111','Thu Jun 20 09:17:33 GMT+08:00 2019'),(3701,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号495991739311',NULL,'null',0,'111','Thu Jun 20 09:17:33 GMT+08:00 2019'),(3702,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号495991739311',NULL,'null',0,'111','Thu Jun 20 09:17:33 GMT+08:00 2019'),(3703,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已揽收，运单号217300904601',NULL,'null',0,'111','Thu Jun 20 09:17:33 GMT+08:00 2019'),(3704,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已开始派送，运单号217300904601',NULL,'null',0,'111','Thu Jun 20 09:17:33 GMT+08:00 2019'),(3705,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号217300904601',NULL,'null',0,'111','Thu Jun 20 09:17:34 GMT+08:00 2019'),(3706,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已开始派送，运单号217300904601',NULL,'null',0,'111','Thu Jun 20 09:17:34 GMT+08:00 2019'),(3707,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号217300904601',NULL,'null',0,'111','Thu Jun 20 09:17:34 GMT+08:00 2019'),(3708,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已揽收，运单号280304067891',NULL,'null',0,'111','Thu Jun 20 09:17:34 GMT+08:00 2019'),(3709,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已开始派送，运单号280304067891',NULL,'null',0,'111','Thu Jun 20 09:17:34 GMT+08:00 2019'),(3710,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号280304067891',NULL,'null',0,'111','Thu Jun 20 09:17:34 GMT+08:00 2019'),(3711,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号280304067891',NULL,'null',0,'111','Thu Jun 20 09:17:35 GMT+08:00 2019'),(3712,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已揽收，运单号281000692851',NULL,'null',0,'111','Thu Jun 20 09:17:35 GMT+08:00 2019'),(3713,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已开始派送，运单号281000692851',NULL,'null',0,'111','Thu Jun 20 09:17:35 GMT+08:00 2019'),(3714,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号281000692851',NULL,'null',0,'111','Thu Jun 20 09:17:35 GMT+08:00 2019'),(3715,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已揽收，运单号73105834153671',NULL,'null',0,'111','Thu Jun 20 09:17:35 GMT+08:00 2019'),(3716,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已开始派送，运单号73105834153671',NULL,'null',0,'111','Thu Jun 20 09:17:35 GMT+08:00 2019'),(3717,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号73105834153671',NULL,'null',0,'111','Thu Jun 20 09:17:35 GMT+08:00 2019'),(3718,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号73105834153671',NULL,'null',0,'111','Thu Jun 20 09:17:36 GMT+08:00 2019'),(3719,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已揽收，运单号75110592451291',NULL,'null',0,'111','Thu Jun 20 09:17:36 GMT+08:00 2019'),(3720,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已揽收，运单号75116412927621',NULL,'null',0,'111','Thu Jun 20 09:17:36 GMT+08:00 2019'),(3721,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已开始派送，运单号75116412927621',NULL,'null',0,'111','Thu Jun 20 09:17:36 GMT+08:00 2019'),(3722,'ztokefu@zto.cn','[m15662397181@163.com]',0,'你的快递已签收，运单号75116412927621',NULL,'null',0,'111','Thu Jun 20 09:17:36 GMT+08:00 2019'),(3723,'yanxuan@service.netease.com','[m15662397181 <m15662397181@163.com>]',0,'【网易严选】你有60元优惠券即将到期，请尽快使用>>',NULL,'null',0,'111','Thu Jun 20 09:17:36 GMT+08:00 2019'),(3724,'yanxuan2@service.netease.com','[=?gbk?b?zfjS19PKz+TTw7un?= <user@netease.com>]',0,'【520特惠】新客专享：5.20元红包限时放送，更有￥59插线板/午休眼罩0元领，速抢>',NULL,'这是一封HTML格式邮件，请切换到HTML视图',0,'111','Thu Jun 20 09:17:37 GMT+08:00 2019'),(3725,'yanxuan2@service.netease.com','[=?gbk?b?zfjS19PKz+TTw7un?= <user@netease.com>]',0,'你有一份618【回归大礼包】待领取',NULL,'这是一封HTML格式邮件，请切换到HTML视图',0,'111','Thu Jun 20 09:17:38 GMT+08:00 2019'),(3726,'passport@service.netease.com','[m15662397181@163.com]',0,'重置成功',NULL,'null',0,'111','Thu Jun 20 09:17:38 GMT+08:00 2019'),(3727,'1299308435@qq.com','2475921880@qq.com',1,'阿森松岛撒多',NULL,'',1,'111','Thu Jun 20 09:19:34 GMT+08:00 2019'),(3728,'1299308435@qq.com','1299308435@qq.com',2,'123',NULL,'1',0,'111','Thu Jun 20 09:23:21 GMT+08:00 2019'),(3729,'15662397181@163.com','1812756302@qq.com',2,'7117',NULL,'1414',0,'111','Thu Jun 20 09:23:33 GMT+08:00 2019'),(3730,'1299308435@qq.com','1299308435@qq.com',1,'123',NULL,'172727',0,'111','Thu Jun 20 09:24:00 GMT+08:00 2019'),(3731,'1299308435@qq.com','154125960@qq.com',1,'123',NULL,'172727',0,'111','Thu Jun 20 09:24:00 GMT+08:00 2019'),(3732,'1299308435@qq.com','1299308435@qq.com',1,'123',NULL,'nb',0,'111','Sun Jun 23 21:18:33 GMT+08:00 2019'),(3733,'1299308435@qq.com','1299308435@qq.com',1,'阿森松岛撒多',NULL,'这是一个测试邮件',0,'111','Tue Jun 25 17:39:06 GMT+08:00 2019'),(3734,'1299308435@qq.com','154125960@qq.com',1,'阿森松岛撒多',NULL,'这是一个测试邮件',0,'111','Tue Jun 25 17:39:06 GMT+08:00 2019');
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongxun`
--

DROP TABLE IF EXISTS `tongxun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tongxun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `account_tongxun` varchar(16) NOT NULL,
  `email` varchar(45) NOT NULL,
  `group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `account_idx` (`account_tongxun`),
  CONSTRAINT `account1` FOREIGN KEY (`account_tongxun`) REFERENCES `user` (`account`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongxun`
--

LOCK TABLES `tongxun` WRITE;
/*!40000 ALTER TABLE `tongxun` DISABLE KEYS */;
INSERT INTO `tongxun` VALUES (1,'吕伟光','111','1299308435@qq.com','wrqq'),(2,'李武第','111','154125960@qq.com','wrqq'),(5,'吕伟光','111','Acfold Drive','1213');
/*!40000 ALTER TABLE `tongxun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `account` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `telephone` varchar(16) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `qq` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`account`),
  UNIQUE KEY `account_UNIQUE` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('111','123456','李武第','5022301081','Acfold Drive',22,'男','1323131'),('123','123',NULL,NULL,NULL,NULL,NULL,NULL),('123456','123456','1','1',NULL,NULL,NULL,NULL),('1234567','12345678','1','1',NULL,NULL,NULL,NULL),('12345678','2134567','1','1',NULL,NULL,NULL,NULL),('123456789','123456','liwudi','5022301081','Acfold Drive',22,'男','1323131'),('1299308435','123321','lv','111',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-06  8:54:37
