-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kila_kila_blog
-- ------------------------------------------------------
-- Server version	8.0.28
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE
/*!32312 IF NOT EXISTS*/
`online_news`;
USE `online_news`;
--
-- Table structure for table `access`
--
DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `access_name` varchar(64) NOT NULL COMMENT '权限名',
  `permission` varchar(100) NOT NULL COMMENT '权限标识',
  `status` char(1) DEFAULT '0' COMMENT '权限状态（0正常 1停用）',
  `create_by` bigint DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int DEFAULT '0' COMMENT '是否删除（0未删除 1已删除）',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '权限表';
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `access`
--
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO
  `access`
VALUES
  (
    1,
    '发表博客',
    'article:add',
    '0',
    NULL,
    NULL,
    NULL,
    NULL,
    0,
    'NULL'
  ),(
    2,
    '删除博客',
    'article:delete',
    '0',
    NULL,
    NULL,
    NULL,
    NULL,
    0,
    'NULL'
  ),(
    3,
    '编辑博客',
    'article:edit',
    '0',
    NULL,
    NULL,
    NULL,
    NULL,
    0,
    'NULL'
  ),(
    4,
    '查看博客',
    'article:view',
    '0',
    NULL,
    NULL,
    NULL,
    NULL,
    0,
    'NULL'
  );
  /*!40000 ALTER TABLE `access` ENABLE KEYS */;
--
  -- Table structure for table `article`
  --
  DROP TABLE IF EXISTS `article`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `title` varchar(256) DEFAULT NULL COMMENT '标题',
    `content` longtext COMMENT '文章内容',
    `summary` varchar(1024) DEFAULT NULL COMMENT '文章摘要',
    `category_id` bigint DEFAULT NULL COMMENT '所属分类id',
    `thumbnail` varchar(256) DEFAULT NULL COMMENT '缩略图',
    `is_top` char(1) DEFAULT '0' COMMENT '是否置顶（0否，1是）',
    `status` char(1) DEFAULT '1' COMMENT '状态（0已发布，1草稿）',
    `view_count` bigint DEFAULT '0' COMMENT '访问量',
    `is_comment` char(1) DEFAULT '1' COMMENT '是否允许评论 1是，0否',
    `create_by` bigint DEFAULT NULL,
    `create_time` datetime DEFAULT NULL,
    `update_by` bigint DEFAULT NULL,
    `update_time` datetime DEFAULT NULL,
    `del_flag` int DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 26 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文章表';
  /*!40101 SET character_set_client = @saved_cs_client */;
--
  -- Dumping data for table `article`
  --
  /*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO
  `article`
VALUES
  (
    1,
    '11月银行结售汇顺差157亿美元 跨境资金流动和外汇市场预期平稳',
    '12月19日，国家外汇管理局统计数据显示，2025年11月，银行结汇14840亿元人民币，售汇13732亿元人民币。结售汇继续保持顺差，差额有所收敛。按美元计值，2025年11月，银行结汇2095亿美元，售汇1938亿美元。国家外汇管理局副局长、新闻发言人李斌在答记者问中指出，当前我国外贸外资保持韧性，跨境资金流动和外汇市场预期平稳，外汇交易稳健有序。国家外汇管理局最新披露，2025年1~11月，银行累计结汇162781亿元人民币，累计售汇155932亿元人民币。按美元计值，1~11月，银行累计结汇22769亿美元，累计售汇21804亿美元。数据显示，11月，银行代客涉外收入46372亿元，对外付款45112亿元。1~11月，银行累计代客涉外收入511208亿元人民币，累计对外付款497719亿元人民币。李斌在答记者问中表示，11月，跨境收支保持活跃。11月，企业、个人等非银行部门跨境收入和支出合计为1.3万亿美元，环比增长8%，跨境收支顺差178亿美元，低于9至10月平均240亿美元的水平。分项目看，服务贸易、投资收益、直接投资项下资金流动保持稳定，近期证券投资项下资金流动更趋平稳。',
    '从中长期趋势看，该专家就跨境投资方面分析称，由于金融市场进一步开放，双向波动特征更加突出，多重因素将对代客结售汇差额产生较复杂的影响。',
    2,
    'https://img95.699pic.com/photo/50046/7381.jpg_wh860.jpg',
    '0',
    '0',
    13,
    '1',
    1,
    '2025-12-24 00:27:57',
    1,
    '2025-12-24 00:27:57',
    0
  ),(
    2,
    '浙商银行、北京银行拟取消监事会，信泰人寿会失去“重大影响”身份吗?',
    '12月15日，浙商银行（601916.SH）发布公告称，2025年第二次临时股东大会将于12月31日举行，会上将审议关于不再设置监事会的议案。据不完全统计，今年以来，已有超20家银行宣布不再设立监事会或披露相关计划。浙商银行12月31日临时股东大会审议通过不再设立监事会或是大概率事件。此外，12月10日，北京银行（601169.SH）发布公告称，公司将不再设立监事会。值得注意的是，根据浙商银行半年报，信泰人寿持有浙商银行A股3.63%股份，H股1.36%股份，合计持股4.99%正好在举牌线以下。同时，北京银行三季报显示，信泰人寿持有该行4.7%股份。此前，信泰人寿在北京银行与浙商银行均派驻了监事，因此对二者均构成重大影响。在信泰人寿2025年三季度偿付能力报告“子公司、合营企业和联营企业”中，浙商银行与北京银行均在列。但监事会取消后，信泰人寿对浙商银行与北京银行的重大影响身份是否会受影响？在新会计准则下如何影响报表？',
    '在具体实施过程中，计入长期股权投资的前提条件是要对被投资单位实施控制和重大影响。',
    4,
    'https://img-s.msn.cn/tenant/amp/entityid/AA1SnTEB.img?w=534&h=356&m=6',
    '0',
    '0',
    12,
    '1',
    1,
    '2025-12-23 23:59:15',
    1,
    '2025-12-23 23:59:15',
    0
  ),(
    3,
    '界面新闻发布2025年度金融行业CEO榜单：25位CEO入选，银行业占比近半',
    '界面新闻连续第九年推出超级CEO系列榜单。除「年度超级CEO」主榜单外，今年的系列子榜单将覆盖年度金融行业CEO、年度时尚生活CEO、年度食品行业CEO、年度新能源行业CEO、年度汽车行业CEO、年度医疗健康行业CEO、年度工业CEO、年度科技行业CEO、年度女性CEO、年度跨国公司中国区CEO，并紧跟时代，首次新增年度低空经济行业CEO、年度具身智能行业CEO，全面映射中国经济发展多元动能。界面新闻「年度超级CEO」系列榜单，关注各行业中带领企业稳步向强，不断取得财务成长，为长短期股东带来回报，并兼顾个人声誉的优秀管理者。界面新闻2025年度超级CEO系列榜单未来将陆续揭榜，网络报名通道现已开通，欢迎优秀企业参与评选。在界面新闻2025年度金融行业CEO榜单上，最终有25位CEO上榜。其中CEO是对CEO、总裁、总经理、行长等同等职位的统称。金融本意为货币资金的融通，是经济活动中最重要的一种表现形式。界面新闻定义的金融行业包括银行、券商、保险、信托、租赁等细分行业。主要行业方面，银行作为传统金融行业，是我国经济的支柱产业之一，为实现国民经济的稳定起到重要作用。随着经济的逐渐恢复，金融行业在稳健增长。据中国人民银行数据显示，2024年末我国金融行业总资产为495.59万亿元，同比增长7.5%，其中，银行业机构总资产为444.57万亿元，同比增长6.5%；证券业机构总资产为15.11万亿元，同比增长9.1%；保险业机构总资产为35.91万亿元，同比增长19.9%。整个金融领域在“改革深化+科技赋能+ESG融合”三重主线驱动下，逐步从规模扩张转向高质量发展。市场开放与数字化浪潮带来机遇的同时，监管复杂性、跨境风险及技术伦理挑战亦对行业提出更高要求。证券行业在复杂多变的市场环境中迎来重要发展机遇，同时也面临诸多挑战。从积极因素来看，利率下行和政策宽松或推动资金流向权益市场，叠加金融体制改革深化（如投资端建设、退市制度完善等），长期资金入市有望为市场注入活力；然而，挑战亦不容忽视，美联储政策不确定性、汇率波动及经济转型压力加剧市场波动。从市场运行情况来看，2024年A股IPO市场呈现明显收缩态势。Wind数据显示，全年仅有100只新股成功上市，合计募集资金673.53亿元，无论是上市数量还是融资规模较2023年均显著下滑。这一变化主要源于监管部门持续优化发行上市制度，通过提高财务指标、强化板块定位、压实中介责任等多重举措严把入口关，推动资本市场从"重数量"向"重质量"转变，促进上市公司整体质量提升。',
    '保险行业在宏观经济转型与政策引导下持续深化结构调整，呈现稳健发展与创新变革并行的态势。',
    2,
    'https://ts3.tc.mm.bing.net/th/id/OIP-C.CYLjsGTO6vInCltH2yUzwwHaEo?cb=ucfimg2&ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3',
    '0',
    '0',
    37,
    '1',
    1,
    '2025-12-22 22:32:45',
    1,
    '2025-12-22 22:32:45',
    0
  ),(
    4,
    '金价高悬之际，这家银行将停止品牌金销售业务',
    '金价高悬，但仍然呈现牛市特征。然而，却有银行选择放弃品牌金销售业务。12月11日，恒丰银行发布关于停办品牌金出售的公告。对于其中原因，业内指向不久前实施的黄金税收新规。业内专家认为，具体原因还要看恒丰银行品牌金的合作方情况如何。12月16日上午，《每日经济新闻》记者采访恒丰银行询问原因，但截至发稿，记者未收到对方的明确回复。同时，记者也观察到，黄金税收新规实施后，多数银行品牌金条的价格并未受到明显影响。12月11日，恒丰银行发布关于停办品牌金出售的公告。该行表示，为顺应市场趋势，贴合客户需求，其将于2025年12月22日起停办品牌金出售，并有序完成存量业务退出。后期，该行将持续丰富贵金属类产品，满足客户多元化投资需求。银行的品牌金一般是指商业银行自主设计、冠名并销售的实物黄金产品（如金条、金币等），通常以银行自有品牌命名，如工商银行的“如意金”、建设银行的“建行金”、邮储银行的“邮储金”等。这类产品的实物属性较强，客户购买后可选择暂存于银行金库，也可以提取实物黄金，工商银行的“如意金积存”业务就是其中一例。恒丰银行官网显示，其品牌金条主要包括“恒裕金”投资金条、恒丰金钱等。以“恒裕金”投资金条为例，其材质是Au99.99，采用浇铸工艺，包括20g、50g、100g、200g等规格。据官网介绍，“恒裕金”投资金条是由恒丰银行自主设计，按照国家有关规定定制，并委托国家有关机构指定的黄金加工企业加工制作的黄金产品。“恒裕金”投资金条根据上海黄金交易所实时交易价格作为参考价，可实时交易。恒丰银行可为客户提供实时行情发布、黄金交易价格查询、承诺回购及业务咨询等服务。',
    '12月16日，记者在恒丰银行手机银行App上已找不到“恒裕金”投资金条等恒丰银行品牌金。“投资金品”窗口仅展示了两款山东黄金的金条，均为代销产品。',
    1,
    'https://img-s.msn.cn/tenant/amp/entityid/AA1Ssccw.img?w=534&h=400&m=6',
    '1',
    '0',
    79,
    '1',
    1,
    '2025-12-12 21:16:07',
    1,
    '2025-12-12 21:16:07',
    0
  ),(
    5,
    '谁在运作深圳“食物银行”',
    '12月18日上午9时，福田区少年宫地铁站外，环卫工人陈师傅熟练地在一台黑色智能柜前扫码、开柜，取走一份早餐与蔬菜。这一幕，是近期广受关注的“食物银行”日常。蓝鲸科技记者调查发现，该项目在深圳福田已持续运行超过三年。项目采用“先特惠、后普惠”的运营机制：经街道审核的困难群体与环卫工人可优先领取；每日20点后，剩余物资向全体市民开放。但在此机制下，供需缺口依然存在。蓝鲸科技记者近日多个时间点连续走访部分站点发现，柜内物资往往午前便已领空，后来者常只能面对空柜。福田“食物银行”是一项以回收商超、酒店等来源的余量或临期安全食品为核心的公益项目。通过设置24小时智能柜，向特定群体免费发放食品，该项目在实现精准帮扶的同时，也有效减少了食品浪费与碳排放。上述项目相关运营人士告诉蓝鲸科技记者，“‘食物银行’自成立之初便确立了‘先特惠、后普惠’的服务原则。初期主要面向低保户、残疾人、困境儿童等困难群体，随后将环卫工人也纳入关爱范围。不过，这些群体需经对应街道审核通过后，方可进入‘白名单’管理体系。”而被列入“白名单”的帮扶对象，可优先通过“i深圳”App中的“食物驿站”板块完成线上预约，之后到就近的智能柜机扫码领取物资。为最大限度降低食物损耗，项目还制定了灵活的余量处理规则——每晚20点后，当日剩余物资将向全体市民开放预约，以此引导公众积极参与“光盘行动”。',
    '事实上，福田“食物银行”的落地并非一蹴而就，其前期筹备经历了一段不短的时间。',
    3,
    'https://img-s.msn.cn/tenant/amp/entityid/AA1SADO7.img?w=534&h=401&m=6',
    '0',
    '0',
    11,
    '1',
    1,
    '2025-12-13 13:24:53',
    1,
    '2025-12-13 13:24:53',
    0
  ),(
    6,
    '国城矿业156%溢价关联收购背后：标的估值几年间翻倍但业绩却下滑，向银行举债19亿元“输血”控股股东?',
    '日前，国城矿业（SZ000688，股价24.87元，市值291.15亿元）发布重大资产购买暨关联交易报告书（草案）（修订稿），公司拟通过支付现金（自有资金+银行并购贷款）方式购买大股东——国城控股集团有限公司（以下简称“国城集团”）持有的内蒙古国城实业有限公司（以下简称“国城实业”）60%股权，交易对价31.68亿元。本次交易完成后，国城实业将成为上市公司的控股子公司。同日晚间，国城矿业在回复深交所关于本次关联交易的问询函中表示，本次交易完成后，上市公司将在现有以锌精矿、铅精矿、铜精矿等为主要产品的有色金属布局基础上，增加钼精矿采选业务，有利于实现资源多元化，增强抗风险能力；同时，标的资产优质且盈利能力强，公司营收和归母净利润均将大幅提高，盈利能力得到显著提升，经营状况将得到明显改善，有利于上市公司长期健康稳定发展。不过，《每日经济新闻》记者（以下简称“每经记者”）注意到，国城矿业聘请的评估公司采用了激进的假设，其基于标的“从2027年3月31日起生产规模为800万吨/年”进行估值，而目前国城实业的证载产能仅为500万吨/年，扩能手续尚未完成。最终，国城实业100%股权评估结果为56.7亿元，估值增值率达156.40%。此外，国城矿业自身的资金并不宽裕，还需向银行举债超19亿元用于收购。而31.68亿元的收购价，则可以大幅缓解国城集团偿债压力。据悉，国城实业拥有的大苏计钼矿是国内大型钼金属矿山，资源品质、产能位于全国前列。根据《内蒙古自治区卓资县大苏计矿区钼矿资源储量核实报告》，截至2023年8月31日，标的公司采矿权（含深部）、探矿权范围之内（面积合计3.2196km²），评审备案保有资源储量合计：矿石量12372.80万吨，钼金属量144836.00吨，平均品位0.117%。',
    '每经记者注意到，本次交易中，标的资产评估基准日为2025年6月30日，立信评估采用资产基础法和收益法对标的公司股东全部权益价值进行评估，国城实业100%股权评估结果为56.70亿元，估值增值率达156.40%。',
    2,
    'https://img-s.msn.cn/tenant/amp/entityid/AA1SvbTj.img?w=534&h=146&m=6',
    '0',
    '0',
    3,
    '1',
    1,
    '2025-12-09 00:30:14',
    1,
    '2025-12-09 00:30:14',
    0
  );
  /*!40000 ALTER TABLE `article` ENABLE KEYS */;
--
  -- Table structure for table `article_tag`
  --
  DROP TABLE IF EXISTS `article_tag`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_tag` (
    `article_id` bigint NOT NULL COMMENT '文章 ID',
    `tag_id` bigint NOT NULL COMMENT '标签 ID',
    PRIMARY KEY (`article_id`, `tag_id`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文章-标签表';
  /*!40101 SET character_set_client = @saved_cs_client */;
--
  -- Dumping data for table `article_tag`
  --
  /*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
INSERT INTO
  `article_tag`
VALUES
  (1, 2),(1, 8),(2, 6),(2, 7),(3, 2),(3, 3),(3, 4),(4, 1),(4, 7),(5, 5),(6, 2),(6, 9),(6, 10);
  /*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;
--
  -- Table structure for table `category`
  --
  DROP TABLE IF EXISTS `category`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(128) DEFAULT NULL COMMENT '分类名',
    `pid` bigint DEFAULT '-1' COMMENT '父分类id，如果没有父分类为-1',
    `description` varchar(512) DEFAULT NULL COMMENT '描述',
    `status` char(1) DEFAULT '0' COMMENT '状态0:正常,1禁用',
    `create_by` bigint DEFAULT NULL,
    `create_time` datetime DEFAULT NULL,
    `update_by` bigint DEFAULT NULL,
    `update_time` datetime DEFAULT NULL,
    `del_flag` int DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 19 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '分类表';
  /*!40101 SET character_set_client = @saved_cs_client */;
--
  -- Dumping data for table `category`
  --
  /*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO
  `category`
VALUES
  (
    1,
    '银行',
    -1,
    '银行是存钱的地方。',
    '0',
    1,
    '2022-03-12 14:51:53',
    NULL,
    '2022-01-12 14:51:53',
    0
  ),(
    2,
    '黄金',
    -1,
    '黄金是令人着迷的。',
    '0',
    1,
    '2022-03-12 22:32:45',
    NULL,
    '2022-02-12 14:51:53',
    0
  ),(
    3,
    '科技',
    -1,
    '科技是第一生产力。',
    '0',
    1,
    '2022-03-12 22:56:36',
    NULL,
    '2022-03-12 22:56:36',
    0
  ),(
    4,
    '货币',
    -1,
    NULL,
    '0',
    1,
    '2022-03-13 23:59:15',
    1,
    '2022-03-13 23:59:15',
    0
  );
  /*!40000 ALTER TABLE `category` ENABLE KEYS */;
--
  -- Table structure for table `comment`
  --
  DROP TABLE IF EXISTS `comment`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `article_id` bigint DEFAULT NULL COMMENT '文章id',
    `content` varchar(512) DEFAULT NULL COMMENT '评论内容',
    `create_by` bigint DEFAULT NULL,
    `create_time` datetime DEFAULT NULL,
    `update_by` bigint DEFAULT NULL,
    `update_time` datetime DEFAULT NULL,
    `del_flag` int DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 31 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '评论表';
  /*!40101 SET character_set_client = @saved_cs_client */;
--
  -- Dumping data for table `comment`
  --
  /*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment`
VALUES (
        1,
        4,
        '吃到了一颗好吃的糖，想跟你的嘴巴分享',
        3,
        '2022-01-29 07:59:22',
        3,
        '2022-01-29 07:59:22',
        0
    ),(
        2,
        4,
        '抱歉不如抱我',
        1,
        '2022-01-29 08:01:24',
        1,
        '2022-01-29 08:01:24',
        0
    ),(
        3,
        1,
        '躲得过初一躲不过你',
        4,
        '2022-01-29 16:07:24',
        4,
        '2022-01-29 16:07:24',
        0
    ),(
        4,
        4,
        '打算搬家，搬到你心里',
        1,
        '2022-01-29 16:12:09',
        1,
        '2022-01-29 16:12:09',
        0
    ),(
        5,
        1,
        '黑虎掠过秃鹰',
        2,
        '2022-01-29 18:19:56',
        2,
        '2022-01-29 18:19:56',
        0
    ),(
        6,
        1,
        '龙卷风摧毁停车场',
        3,
        '2022-01-29 22:13:52',
        3,
        '2022-01-29 22:13:52',
        0
    ),(
        7,
        1,
        '马尾甩苍蝇',
        1,
        '2022-01-29 22:18:40',
        1,
        '2022-01-29 22:18:40',
        0
    ),(
        8,
        1,
        '哈哈哈哈',
        1,
        '2022-01-29 22:29:15',
        1,
        '2022-01-29 22:29:15',
        0
    ),(
        9,
        2,
        '不愧是你',
        3,
        '2022-01-29 22:29:55',
        1,
        '2022-01-29 22:29:55',
        0
    ),(
        10,
        1,
        '停靠两侧实现 Windows 半屏应该是下面这些代码起的作用：\n```python\nclass WindowsTitleBar(TitleBarBase):\n    \"\"\" Title bar for Windows system \"\"\"\n\n    def mousePressEvent(self, event):\n        \"\"\" Move the window \"\"\"\n        if not self._isDragRegion(event.pos()):\n            return\n\n        ReleaseCapture()\n        SendMessage(self.window().winId(), win32con.WM_SYSCOMMAND, win32con.SC_MOVE + win32con.HTCAPTION, 0)\n        event.ignore()\n\n```',
        1,
        '2022-12-15 09:51:12',
        1,
        '2022-12-15 09:51:12',
        0
    ), (
        11,
        1,
        '$i^2$',
        1,
        '2022-12-15 09:56:10',
        1,
        '2022-12-15 09:56:10',
        0
    ),(
        12,
        1,
        '> 乌鸦坐飞机\n\n哈哈',
        1,
        '2022-12-15 10:40:21',
        1,
        '2022-12-15 10:40:21',
        0
    ),(
        13,
        1,
        '> 如下述代码所示\n> ```html\n><div class=\"wife-cover\">\n>    <div class=\"wife-cover-info\">\n>        <h1 class=\"wife-cover-title\">##title##</h1>\n>    </div>\n></div>\n>```\n\n测试引用代码块',
        1,
        '2022-12-15 10:46:09',
        1,
        '2022-12-15 10:46:09',
        0
    ),(
        35,
        4,
        '再来测试一波\n```html\n<div class=\"wife-cover\">\n    <div class=\"wife-cover-info\">\n        <h1 class=\"wife-cover-title\">##title##</h1>\n    </div>\n</div>\n```\n这是一张图\n![硝子](https://img.tujidu.com/images/2022/12/15/639a9ecb83bf8.png)\n这是一个超链接 [Groove](https://github.com/zhiyiYo/Groove) ~~',
        1,
        '2022-12-15 11:08:45',
        1,
        '2022-12-15 11:08:45',
        0
    ),(
        36,
        4,
        '这是一条**评论**，带了一些 ==文字特效==，一个行内代码 `print(\"hello\")`，下面是一些代码：\n```python\nclass Animal:\n    \"\"\" 动物类 \"\"\"\n\n    def __init__(self, age: int, name: str):\n        self.age = age\n        self.name = name\n\n    def getInfo(self) -> str:\n        \"\"\" 返回信息 \"\"\"\n        return f\'age: {self.age}; name: {self.name}\'\n```',
        1,
        '2022-12-15 11:20:50',
        1,
        '2022-12-15 11:20:50',
        0
    ),(
        39,
        1,
        '这是一条评论',
        1,
        '2022-12-15 11:32:34',
        1,
        '2022-12-15 11:32:34',
        0
    );
  /*!40000 ALTER TABLE `comment` ENABLE KEYS */;
--
  -- Table structure for table `role`
  --
  DROP TABLE IF EXISTS `role`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(128) DEFAULT NULL,
    `role_key` varchar(100) DEFAULT NULL COMMENT '角色权限字符串',
    `status` char(1) DEFAULT '0' COMMENT '角色状态（0正常 1停用）',
    `del_flag` int DEFAULT '0' COMMENT 'del_flag',
    `create_by` bigint DEFAULT NULL,
    `create_time` datetime DEFAULT NULL,
    `update_by` bigint DEFAULT NULL,
    `update_time` datetime DEFAULT NULL,
    `remark` varchar(500) DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表';
  /*!40101 SET character_set_client = @saved_cs_client */;
--
  -- Dumping data for table `role`
  --
  /*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO
  `role`
VALUES
  (
    1,
    '管理员',
    'admin',
    '0',
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  ),(
    2,
    '普通用户',
    'normal_user',
    '0',
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
  );
  /*!40000 ALTER TABLE `role` ENABLE KEYS */;
--
  -- Table structure for table `role_access`
  --
  DROP TABLE IF EXISTS `role_access`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_access` (
    `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
    `access_id` bigint NOT NULL DEFAULT '0' COMMENT '权限id',
    PRIMARY KEY (`role_id`, `access_id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;
--
  -- Dumping data for table `role_access`
  --
  /*!40000 ALTER TABLE `role_access` DISABLE KEYS */;
INSERT INTO
  `role_access`
VALUES
  (1, 1),(1, 2),(1, 3),(1, 4),(2, 4);
  /*!40000 ALTER TABLE `role_access` ENABLE KEYS */;
--
  -- Table structure for table `tag`
  --
  DROP TABLE IF EXISTS `tag`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(128) DEFAULT NULL COMMENT '标签名',
    `create_by` bigint DEFAULT NULL,
    `create_time` datetime DEFAULT NULL,
    `update_by` bigint DEFAULT NULL,
    `update_time` datetime DEFAULT NULL,
    `del_flag` int DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 32 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '标签表';
  /*!40101 SET character_set_client = @saved_cs_client */;
--
  -- Dumping data for table `tag`
  --
  /*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO
  `tag`
VALUES
  (
    1,
    'markdown',
    1,
    '2022-01-12 14:51:53',
    NULL,
    '2022-01-12 14:51:53',
    0
  ),(
    2,
    'python',
    1,
    '2022-02-12 22:32:45',
    NULL,
    '2022-02-12 22:32:45',
    0
  ),(
    3,
    '装饰器',
    1,
    '2022-02-12 22:32:45',
    NULL,
    '2022-02-12 22:32:45',
    0
  ),(
    4,
    '计算属性',
    1,
    '2022-02-12 22:32:45',
    NULL,
    '2022-02-12 22:32:45',
    0
  ),(
    5,
    'IDEA',
    1,
    '2022-03-12 22:56:36',
    NULL,
    '2022-03-12 22:56:36',
    0
  ),(
    6,
    'vue',
    1,
    '2022-03-13 23:59:15',
    1,
    '2022-03-13 23:59:15',
    0
  ),(
    7,
    '前端',
    1,
    '2022-03-13 23:59:15',
    1,
    '2022-03-13 23:59:15',
    0
  ),(
    8,
    'pyqt',
    1,
    '2022-03-14 00:27:57',
    1,
    '2022-03-14 00:27:57',
    0
  ),(
    9,
    'deep-learning',
    1,
    '2022-03-14 00:30:14',
    1,
    '2022-03-14 00:30:14',
    0
  ),(
    10,
    'SSD',
    1,
    '2022-03-14 00:30:14',
    1,
    '2022-03-14 00:30:14',
    0
  );
  /*!40000 ALTER TABLE `tag` ENABLE KEYS */;
--
  -- Table structure for table `user`
  --
  DROP TABLE IF EXISTS `user`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
    `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
    `user_name` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '用户名',
    `nick_name` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '昵称',
    `signature` varchar(64) DEFAULT '用一句话来介绍自己' COMMENT '个性签名',
    `password` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '密码',
    `type` char(1) DEFAULT '0' COMMENT '用户类型：0 代表普通用户，1 代表管理员(只能有一个)',
    `status` char(1) DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
    `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
    `phonenumber` varchar(32) DEFAULT NULL COMMENT '手机号',
    `sex` char(1) DEFAULT NULL COMMENT '用户性别（0男，1女，2未知）',
    `avatar` varchar(128) DEFAULT NULL COMMENT '头像',
    `create_by` bigint DEFAULT NULL COMMENT '创建人的用户id',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` bigint DEFAULT NULL COMMENT '更新人',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `del_flag` int DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 14787164048664 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表';
  /*!40101 SET character_set_client = @saved_cs_client */;
--
  -- Dumping data for table `user`
  --
  /*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO
  `user`
VALUES
  (
    1,
    'zkai',
    '张开铖',
    '何以至此，何以至远',
    '$2a$10$85O7itxkvpWpxevQstpDguKN4ZUivWhXQJKhtgg7w/vzyQ7nIGFv6',
    '1',
    '0',
    '1121320857@qq.com',
    '18888888888',
    '0',
    'https://pics2.baidu.com/feed/86d6277f9e2f07088cb55847e4779894a801f2a1.jpeg@f_auto?token=195c8649453654ea375ef2c84c72e433',
    NULL,
    '2025-12-22 09:01:56',
    1,
    '2025-12-22 15:37:03',
    0
  ),(
    2,
    'shoko',
    '西宫硝子',
    '我稀饭你',
    '$2a$10$85O7itxkvpWpxevQstpDguKN4ZUivWhXQJKhtgg7w/vzyQ7nIGFv6',
    '0',
    '0',
    'shoko@qq.com',
    NULL,
    '1',
    'https://img1.baidu.com/it/u=3257266420,40463730&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
    NULL,
    '2022-01-05 13:28:43',
    NULL,
    '2022-01-05 13:28:43',
    0
  ),(
    3,
    'aiko',
    '柳井爱子',
    '恋爱教主',
    '$2a$10$85O7itxkvpWpxevQstpDguKN4ZUivWhXQJKhtgg7w/vzyQ7nIGFv6',
    '0',
    '0',
    'aiko@qq.com',
    '19098790742',
    '1',
    'https://p2.music.126.net/mskP_5EAxxEuRlIL9u36UA==/109951165339187641.jpg?param=130y130',
    NULL,
    NULL,
    NULL,
    NULL,
    0
  ),(
    4,
    'sana',
    '鎖那',
    'シュガーナイフに聞いてみる',
    '$2a$10$85O7itxkvpWpxevQstpDguKN4ZUivWhXQJKhtgg7w/vzyQ7nIGFv6',
    '0',
    '0',
    'sana@qq.com',
    '18246845873',
    '1',
    'https://p1.music.126.net/Hj-D_3AO9XLIzhREgoGtFw==/109951166584238723.jpg?param=130y130',
    NULL,
    '2022-01-06 03:51:13',
    NULL,
    '2022-01-06 07:00:50',
    0
  ),(
    5,
    'RADWIMPS',
    'RADWIMPS',
    '君の前前前世から僕は君を探し始めたよ',
    '$2a$10$85O7itxkvpWpxevQstpDguKN4ZUivWhXQJKhtgg7w/vzyQ7nIGFv6',
    '0',
    '0',
    'RADWIMPS@qq.com',
    '17777777777',
    '0',
    'https://p1.music.126.net/LnBs-T-dIvDpQjTkLh1umw==/109951166202952894.jpg?param=130y130',
    NULL,
    '2022-01-16 06:54:26',
    NULL,
    '2022-01-16 07:06:34',
    0
  );
  /*!40000 ALTER TABLE `user` ENABLE KEYS */;
--
  -- Table structure for table `user_role`
  --
  DROP TABLE IF EXISTS `user_role`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
    `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
    `role_id` bigint NOT NULL DEFAULT '0' COMMENT '角色id',
    PRIMARY KEY (`user_id`, `role_id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;
--
  -- Dumping data for table `user_role`
  --
  /*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO
  `user_role`
VALUES
  (1, 1),(2, 2),(3, 2),(4, 2),(5, 2);
  /*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
  /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
  /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
  /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
  /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
  /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Dump completed on 2022-03-16 14:27:46