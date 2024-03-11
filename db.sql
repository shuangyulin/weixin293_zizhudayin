-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot65276
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
-- Current Database: `springboot65276`
--

/*!40000 DROP DATABASE IF EXISTS `springboot65276`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot65276` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot65276`;

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
INSERT INTO `config` VALUES (1,'picture1','upload/1650964894207.png'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dayindian`
--

DROP TABLE IF EXISTS `dayindian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dayindian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianzhangzhanghao` varchar(200) DEFAULT NULL COMMENT '店长账号',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `dianpudizhi` varchar(200) DEFAULT NULL COMMENT '店铺地址',
  `dianzhangxingming` varchar(200) DEFAULT NULL COMMENT '店长姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `dianputupian` varchar(200) DEFAULT NULL COMMENT '店铺图片',
  `zhuyingyewu` varchar(200) DEFAULT NULL COMMENT '主营业务',
  `yingyeshijian` varchar(200) DEFAULT NULL COMMENT '营业时间',
  `dianpujianjie` longtext COMMENT '店铺简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650964992026 DEFAULT CHARSET=utf8 COMMENT='打印店';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dayindian`
--

LOCK TABLES `dayindian` WRITE;
/*!40000 ALTER TABLE `dayindian` DISABLE KEYS */;
INSERT INTO `dayindian` VALUES (31,'2022-04-26 09:01:11','店长账号1','店铺名称1','店铺地址1','店长姓名1','联系手机1','upload/dayindian_dianputupian1.jpg','主营业务1','营业时间1','店铺简介1'),(32,'2022-04-26 09:01:11','店长账号2','店铺名称2','店铺地址2','店长姓名2','联系手机2','upload/dayindian_dianputupian2.jpg','主营业务2','营业时间2','店铺简介2'),(33,'2022-04-26 09:01:11','店长账号3','店铺名称3','店铺地址3','店长姓名3','联系手机3','upload/dayindian_dianputupian3.jpg','主营业务3','营业时间3','店铺简介3'),(34,'2022-04-26 09:01:11','店长账号4','店铺名称4','店铺地址4','店长姓名4','联系手机4','upload/dayindian_dianputupian4.jpg','主营业务4','营业时间4','店铺简介4'),(35,'2022-04-26 09:01:11','店长账号5','店铺名称5','店铺地址5','店长姓名5','联系手机5','upload/dayindian_dianputupian5.jpg','主营业务5','营业时间5','店铺简介5'),(36,'2022-04-26 09:01:11','店长账号6','店铺名称6','店铺地址6','店长姓名6','联系手机6','upload/dayindian_dianputupian6.jpg','主营业务6','营业时间6','店铺简介6'),(1650964992025,'2022-04-26 09:23:11','22','某某店铺','某某地址','李四','13333333333','upload/1650964962306.jpg','这里输入主营业务信息','早上9点至晚上10点','这里输入店铺的简介信息');
/*!40000 ALTER TABLE `dayindian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dayinfuwu`
--

DROP TABLE IF EXISTS `dayinfuwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dayinfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) NOT NULL COMMENT '服务名称',
  `fuwufengmian` varchar(200) DEFAULT NULL COMMENT '服务封面',
  `fuwuleixing` varchar(200) NOT NULL COMMENT '服务类型',
  `zhizhangleixing` varchar(200) NOT NULL COMMENT '纸张类型',
  `fuwujiage` varchar(200) DEFAULT NULL COMMENT '服务价格',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `fuwuxiangqing` longtext COMMENT '服务详情',
  `dianzhangzhanghao` varchar(200) DEFAULT NULL COMMENT '店长账号',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650965044874 DEFAULT CHARSET=utf8 COMMENT='打印服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dayinfuwu`
--

LOCK TABLES `dayinfuwu` WRITE;
/*!40000 ALTER TABLE `dayinfuwu` DISABLE KEYS */;
INSERT INTO `dayinfuwu` VALUES (41,'2022-04-26 09:01:11','服务名称1','upload/dayinfuwu_fuwufengmian1.jpg','服务类型1','A0','服务价格1','注意事项1','服务详情1','店长账号1','店铺名称1','联系手机1'),(42,'2022-04-26 09:01:11','服务名称2','upload/dayinfuwu_fuwufengmian2.jpg','服务类型2','A0','服务价格2','注意事项2','服务详情2','店长账号2','店铺名称2','联系手机2'),(43,'2022-04-26 09:01:11','服务名称3','upload/dayinfuwu_fuwufengmian3.jpg','服务类型3','A0','服务价格3','注意事项3','服务详情3','店长账号3','店铺名称3','联系手机3'),(44,'2022-04-26 09:01:11','服务名称4','upload/dayinfuwu_fuwufengmian4.jpg','服务类型4','A0','服务价格4','注意事项4','服务详情4','店长账号4','店铺名称4','联系手机4'),(45,'2022-04-26 09:01:11','服务名称5','upload/dayinfuwu_fuwufengmian5.jpg','服务类型5','A0','服务价格5','注意事项5','服务详情5','店长账号5','店铺名称5','联系手机5'),(46,'2022-04-26 09:01:11','服务名称6','upload/dayinfuwu_fuwufengmian6.jpg','服务类型6','A0','服务价格6','注意事项6','服务详情6','店长账号6','店铺名称6','联系手机6'),(1650965044873,'2022-04-26 09:24:04','某某服务','upload/1650965004696.jpg','电喷打印','A4','5元一张','注意纸张','<p>这里输入服务的具体详情</p><p><img src=\"http://localhost:8080/springboot65276/upload/1650965043807.jpg\"></p>','22','某某店铺','13333333333');
/*!40000 ALTER TABLE `dayinfuwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianzhang`
--

DROP TABLE IF EXISTS `dianzhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianzhangzhanghao` varchar(200) NOT NULL COMMENT '店长账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dianpumingcheng` varchar(200) NOT NULL COMMENT '店铺名称',
  `dianpudizhi` varchar(200) NOT NULL COMMENT '店铺地址',
  `dianzhangxingming` varchar(200) DEFAULT NULL COMMENT '店长姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianzhangzhanghao` (`dianzhangzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1650964842161 DEFAULT CHARSET=utf8 COMMENT='店长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianzhang`
--

LOCK TABLES `dianzhang` WRITE;
/*!40000 ALTER TABLE `dianzhang` DISABLE KEYS */;
INSERT INTO `dianzhang` VALUES (21,'2022-04-26 09:01:11','店长账号1','123456','店铺名称1','店铺地址1','店长姓名1','男','773890001@qq.com','13823888881','upload/dianzhang_xiangpian1.jpg'),(22,'2022-04-26 09:01:11','店长账号2','123456','店铺名称2','店铺地址2','店长姓名2','男','773890002@qq.com','13823888882','upload/dianzhang_xiangpian2.jpg'),(23,'2022-04-26 09:01:11','店长账号3','123456','店铺名称3','店铺地址3','店长姓名3','男','773890003@qq.com','13823888883','upload/dianzhang_xiangpian3.jpg'),(24,'2022-04-26 09:01:11','店长账号4','123456','店铺名称4','店铺地址4','店长姓名4','男','773890004@qq.com','13823888884','upload/dianzhang_xiangpian4.jpg'),(25,'2022-04-26 09:01:11','店长账号5','123456','店铺名称5','店铺地址5','店长姓名5','男','773890005@qq.com','13823888885','upload/dianzhang_xiangpian5.jpg'),(26,'2022-04-26 09:01:11','店长账号6','123456','店铺名称6','店铺地址6','店长姓名6','男','773890006@qq.com','13823888886','upload/dianzhang_xiangpian6.jpg'),(1650964842160,'2022-04-26 09:20:42','22','22','某某店铺','某某地址','李四','女','133@163.com','13333333333','upload/1650964946954.jpeg');
/*!40000 ALTER TABLE `dianzhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuleixing`
--

DROP TABLE IF EXISTS `fuwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuleixing` varchar(200) NOT NULL COMMENT '服务类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650964879617 DEFAULT CHARSET=utf8 COMMENT='服务类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuleixing`
--

LOCK TABLES `fuwuleixing` WRITE;
/*!40000 ALTER TABLE `fuwuleixing` DISABLE KEYS */;
INSERT INTO `fuwuleixing` VALUES (51,'2022-04-26 09:01:11','服务类型1'),(52,'2022-04-26 09:01:11','服务类型2'),(53,'2022-04-26 09:01:11','服务类型3'),(54,'2022-04-26 09:01:11','服务类型4'),(55,'2022-04-26 09:01:11','服务类型5'),(56,'2022-04-26 09:01:11','服务类型6'),(1650964879616,'2022-04-26 09:21:18','电喷打印');
/*!40000 ALTER TABLE `fuwuleixing` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1650964931809 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (83,'2022-04-26 09:01:11','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(84,'2022-04-26 09:01:11','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(85,'2022-04-26 09:01:11','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(86,'2022-04-26 09:01:11','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(1650964931808,'2022-04-26 09:22:10','这里是发布公告信息的地方','公告的简介','upload/1650964915561.jpg','<p>公告的内容</p><p>还可以适当的插入图片</p><p><img src=\"http://localhost:8080/springboot65276/upload/1650964930223.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650964764193 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1650964758538,'2022-04-26 09:19:17',1650964731505,32,'dayindian','店铺名称2','upload/dayindian_dianputupian2.jpg','1',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1650964731505,'11','yonghu','用户','vb3wdpon3v9ayizwhenvmjnqm8rf43io','2022-04-26 09:18:55','2022-04-26 10:18:56'),(2,1,'abo','users','管理员','4d7g33fvr39qhmgqdr4rcmoczpx9k9zv','2022-04-26 09:20:50','2022-04-26 10:20:50'),(3,1650964842160,'22','dianzhang','店长','b0v6f29t4qr4gb4pnksjssbig9odtl7y','2022-04-26 09:22:16','2022-04-26 10:22:17'),(4,22,'店长账号2','dianzhang','店长','4fxy18uw9p626ghgzvrnjmryj555ebm7','2022-04-26 09:24:18','2022-04-26 10:24:18');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-26 09:01:11');
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
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1650964731506 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-26 09:01:11','账号1','123456','姓名1','男','773890001@qq.com','13823888881','upload/yonghu_xiangpian1.jpg'),(12,'2022-04-26 09:01:11','账号2','123456','姓名2','男','773890002@qq.com','13823888882','upload/yonghu_xiangpian2.jpg'),(13,'2022-04-26 09:01:11','账号3','123456','姓名3','男','773890003@qq.com','13823888883','upload/yonghu_xiangpian3.jpg'),(14,'2022-04-26 09:01:11','账号4','123456','姓名4','男','773890004@qq.com','13823888884','upload/yonghu_xiangpian4.jpg'),(15,'2022-04-26 09:01:11','账号5','123456','姓名5','男','773890005@qq.com','13823888885','upload/yonghu_xiangpian5.jpg'),(16,'2022-04-26 09:01:11','账号6','123456','姓名6','男','773890006@qq.com','13823888886','upload/yonghu_xiangpian6.jpg'),(1650964731505,'2022-04-26 09:18:51','11','11','张三','男','131@163.com','13111111111','upload/1650964747454.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuedayin`
--

DROP TABLE IF EXISTS `yuyuedayin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuedayin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) NOT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) NOT NULL COMMENT '服务类型',
  `zhizhangleixing` varchar(200) NOT NULL COMMENT '纸张类型',
  `fuwujiage` varchar(200) DEFAULT NULL COMMENT '服务价格',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `dianzhangzhanghao` varchar(200) DEFAULT NULL COMMENT '店长账号',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `dayintupian` varchar(200) DEFAULT NULL COMMENT '打印图片',
  `dayinneirong` varchar(200) DEFAULT NULL COMMENT '打印内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650964788259 DEFAULT CHARSET=utf8 COMMENT='预约打印';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuedayin`
--

LOCK TABLES `yuyuedayin` WRITE;
/*!40000 ALTER TABLE `yuyuedayin` DISABLE KEYS */;
INSERT INTO `yuyuedayin` VALUES (61,'2022-04-26 09:01:11','服务名称1','服务类型1','纸张类型1','服务价格1','注意事项1','店长账号1','店铺名称1','联系手机1','upload/yuyuedayin_dayintupian1.jpg','打印内容1','账号1','姓名1','2022-04-26 17:01:11','是','','未支付',1),(62,'2022-04-26 09:01:11','服务名称2','服务类型2','纸张类型2','服务价格2','注意事项2','店长账号2','店铺名称2','联系手机2','upload/yuyuedayin_dayintupian2.jpg','打印内容2','账号2','姓名2','2022-04-26 17:01:11','是','','未支付',2),(63,'2022-04-26 09:01:11','服务名称3','服务类型3','纸张类型3','服务价格3','注意事项3','店长账号3','店铺名称3','联系手机3','upload/yuyuedayin_dayintupian3.jpg','打印内容3','账号3','姓名3','2022-04-26 17:01:11','是','','未支付',3),(64,'2022-04-26 09:01:11','服务名称4','服务类型4','纸张类型4','服务价格4','注意事项4','店长账号4','店铺名称4','联系手机4','upload/yuyuedayin_dayintupian4.jpg','打印内容4','账号4','姓名4','2022-04-26 17:01:11','是','','未支付',4),(65,'2022-04-26 09:01:11','服务名称5','服务类型5','纸张类型5','服务价格5','注意事项5','店长账号5','店铺名称5','联系手机5','upload/yuyuedayin_dayintupian5.jpg','打印内容5','账号5','姓名5','2022-04-26 17:01:11','是','','未支付',5),(66,'2022-04-26 09:01:11','服务名称6','服务类型6','纸张类型6','服务价格6','注意事项6','店长账号6','店铺名称6','联系手机6','upload/yuyuedayin_dayintupian6.jpg','打印内容6','账号6','姓名6','2022-04-26 17:01:11','是','','未支付',6),(1650964788258,'2022-04-26 09:19:47','服务名称2','服务类型2','A0','服务价格2','注意事项2','店长账号2','店铺名称2','联系手机2','upload/1650964775310.jpg','这里是用户预约打印服务的地方','11','张三','2022-04-26 17:19:42','是','这里是审核用户的打印预约的地方','已支付',1650964731505);
/*!40000 ALTER TABLE `yuyuedayin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30 22:36:30
