-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2020-01-01 18:51:05
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_water`
--

-- --------------------------------------------------------

--
-- 表的结构 `company_type`
--

CREATE TABLE `company_type` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `company_type`
--

INSERT INTO `company_type` (`id`, `name`) VALUES
(1, '政府/事业单位'),
(2, '基金会'),
(3, 'NGO'),
(4, '企业CSR');

-- --------------------------------------------------------

--
-- 表的结构 `director`
--

CREATE TABLE `director` (
  `did` int(11) NOT NULL,
  `director_class` tinyint(4) NOT NULL COMMENT '导演类别',
  `dname` varchar(8) NOT NULL COMMENT '导演名称',
  `avatar` varchar(256) NOT NULL COMMENT '导演照片',
  `goodAt` varchar(128) NOT NULL COMMENT '擅长领域,逗号分隔',
  `cooperation` varchar(128) NOT NULL COMMENT '合作机构,逗号分隔',
  `worksCount` smallint(6) NOT NULL COMMENT '作品数量',
  `experience` smallint(6) NOT NULL COMMENT '拍摄经验',
  `intr` varchar(1024) NOT NULL COMMENT '简介',
  `repWorks` varchar(256) NOT NULL COMMENT '代表作品,逗号分隔',
  `isRec` tinyint(1) NOT NULL COMMENT '是否为首页推荐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `director`
--

INSERT INTO `director` (`did`, `director_class`, `dname`, `avatar`, `goodAt`, `cooperation`, `worksCount`, `experience`, `intr`, `repWorks`, `isRec`) VALUES
(1, 1, '陈博文', 'images/director/director_home_5ddc9d193f76f.jpg', '助学/教育,其他', '歌路营,比亚迪,中国海洋石油', 15, 7, '暨南大学导演系科班出身，曾操盘大型科普纪录片，主导项目的团队管理、策划方案、剧本大纲、分镜头脚本、拍摄统筹、剪辑脚本，以及对接制片组进行商务合作和发行推广工作。带队前往印度南部、云南香格里拉、洱源、广西南宁、内蒙古阿拉善、沈阳、通辽等地进行长期拍摄。', '1', 1),
(2, 2, '梁俊荣', 'images/director/director_home_58a6b26d60d71.jpg', '儿童', '中国扶贫基金会,恭明中心,广州金丝带,广州团市委等', 15, 2, '在一年半的从业时间里，参与涉及到多个领域的影片摄制，其中更擅长于制作青年、儿童类理念宣传片或记录片，更是凭借短片《记忆盒子》荣获2016中国公益映像节最佳公益影像奖（民办非企业类）。秉承着让每个镜头都有感情的理念的他，始终坚持唯有充满感情的影片才是真正能打动人的东西。', '1', 1),
(3, 2, '陆智恒', 'images/director/director_home_58a6b08f576be.jpg', '助残,其他', '中国发展简报,李嘉诚基金会,广州团市委等', 30, 2, '进入颗粒两年多以来，创作出不同形式的多个公益领域作品高达30余部，其中涵盖了理念宣传，机构宣传，项目宣传，活动宣传等等多种类别。效能与品质并重的他，一直坚持创作出受众与公众都为之共情的作品。', '2,3', 1),
(4, 2, '李朝辉', 'images/director/director_home_58bf7ee9c645c.jpg', '助学/教育', '桂馨慈善基金会、新途社区健康促进社、北达博雅社会工作资源中心等', 40, 3, '自从2013年开始工作就进入了影视公司，到16年进入颗粒公益，希望能从公益这个角度做出更多能打动人的片子。在阅读、教育、社工等领域有着更为深刻的理解，总能挖掘出更深入的内容，擅长用纪实风格去还原故事和表达主题，创造了桂馨慈善基金会机构宣传片、新途社区融合倡导片等优秀公益影像。', '4', 0),
(5, 2, '曾康愉', 'images/director/director_home_58a6b2a6b1c04.jpg', '助学/教育,环保,行业支持', '李嘉诚基金会', 40, 2, '在助学、环保、公益行业支持方面有丰富的视频制作经验，擅长手绘和MG动画，擅长加入热门时兴的话题热点，将平淡的公益话题描述得趣味横生，以专业高超的后期技术和灵活新颖的创意想法受到客户的一致认可。', '5', 0),
(6, 3, '曾康愉', 'images/director/director_home_58a6b2a6b1c04.jpg', '助学/教育,环保,行业支持', '李嘉诚基金会', 40, 2, '在助学、环保、公益行业支持方面有丰富的视频制作经验，擅长手绘和MG动画，擅长加入热门时兴的话题热点，将平淡的公益话题描述得趣味横生，以专业高超的后期技术和灵活新颖的创意想法受到客户的一致认可。', '6', 0);

-- --------------------------------------------------------

--
-- 表的结构 `director_class`
--

CREATE TABLE `director_class` (
  `dc_id` int(11) NOT NULL,
  `dc_name` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `director_class`
--

INSERT INTO `director_class` (`dc_id`, `dc_name`) VALUES
(1, '导演总监'),
(2, '资深导演'),
(3, '新锐导演');

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `purpose` varchar(32) NOT NULL COMMENT '视频用途',
  `type` varchar(32) NOT NULL COMMENT '视频形式',
  `duration` varchar(32) NOT NULL COMMENT '视频时长',
  `cycle_start` bigint(20) NOT NULL COMMENT '制作周期-开始日期',
  `cycle_end` bigint(20) NOT NULL COMMENT '制作周期-结束日期',
  `company_id` int(11) NOT NULL COMMENT '机构id',
  `status` tinyint(4) NOT NULL COMMENT '订单状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`oid`, `purpose`, `type`, `duration`, `cycle_start`, `cycle_end`, `company_id`, `status`) VALUES
(1, '宣传', '动画', '3分钟', 1577896814899, 1580313600000, 1001, 5);

-- --------------------------------------------------------

--
-- 表的结构 `order_company`
--

CREATE TABLE `order_company` (
  `oc_id` int(11) NOT NULL,
  `oc_number` int(11) NOT NULL COMMENT '机构编号',
  `oc_name` varchar(128) NOT NULL COMMENT '机构名称',
  `oc_type` varchar(8) NOT NULL COMMENT '机构性质',
  `oc_liaison` varchar(32) NOT NULL COMMENT '联系人',
  `oc_phone` varchar(32) NOT NULL COMMENT '联系电话',
  `oc_email` varchar(128) NOT NULL COMMENT '联系邮箱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `order_company`
--

INSERT INTO `order_company` (`oc_id`, `oc_number`, `oc_name`, `oc_type`, `oc_liaison`, `oc_phone`, `oc_email`) VALUES
(1, 1001, '水滴公益', '基金会', '程方远', '17602250724', 'q664625200@163.com');

-- --------------------------------------------------------

--
-- 表的结构 `points`
--

CREATE TABLE `points` (
  `point_id` int(11) NOT NULL,
  `pc_number` smallint(6) NOT NULL COMMENT '文章专栏编号',
  `psc_number` smallint(6) NOT NULL COMMENT '文章主题编号',
  `point_pic` varchar(128) NOT NULL COMMENT '文章图片',
  `point_title` varchar(128) NOT NULL COMMENT '文章标题',
  `point_intr` varchar(256) NOT NULL COMMENT '文章简介',
  `point_watchCount` mediumint(9) NOT NULL COMMENT '文章观看人数',
  `point_goodCount` mediumint(9) NOT NULL COMMENT '文章点赞人数',
  `point_sendTime` bigint(20) NOT NULL COMMENT '文章发表时间',
  `point_content` text NOT NULL COMMENT '文章内容',
  `isRec` tinyint(1) NOT NULL COMMENT '是否为首页推荐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `points`
--

INSERT INTO `points` (`point_id`, `pc_number`, `psc_number`, `point_pic`, `point_title`, `point_intr`, `point_watchCount`, `point_goodCount`, `point_sendTime`, `point_content`, `isRec`) VALUES
(1, 1001, 2001, 'images/point/spread_58b91eecdef3a.jpg', '三个广告公司不为人知的大坑，避开它们，视频质量有保证！', '为了让我们公益人的声音传播得更加响亮、更加久远，不少公益同行选择与广告公司合作，用公益广告号召公众加入我们。但据一些公益人反映，本来美好的想法却遭遇了广告公司的超级大坑。', 270, 25, 1577722050, '<p>“充电5分钟，通话两小时”、“今年过节不收礼，收礼只收×××”……这些广告的流传度绝对不亚于每晚7点准时与大家见面的《新闻联播》，广告的威力也由此可见一斑。</p><br><p>为了让我们公益人的声音传播得更加响亮、更加久远，不少公益同行选择与广告公司合作，用公益广告号召公众加入我们。但据一些公益人反映，本来美好的想法却遭遇了广告公司的超级大坑。</p><br><p> 1.报价“坑”——艺术无价人有情，便宜一点行不行？ 本着“花好钱买好货”的原则，我们一般希望与稍大一些的广告公司合作。但实际与大公司接洽时才发现，“优质的”报价远远不是我们这些公益人能承担的。无可奈何之下，只能心有芥蒂地去跟相对较小的公司合作。但是，小公司的业务人员罗列的一项又一项费用也让人大跌眼镜。所谓的成本又是如何计算的，相加起来怎么就成天文数字了？ </p><br><p> 2.时间“坑”——视频制作完成的日期都不确定？ 经过千辛万苦的谈判，付了定金，签了合同，我们满心欢喜地做着项目，只等着合同约定的时期。 </p><br><p> 然而，当我们怀着激动的心情拨通广告公司电话时，对方却淡淡地告诉我们：“不好意思啊先生，本着为视频质量负责的态度，我们前期做了大量调研、策划、准备工作，一次次自我推翻、否定，中间经历了………所以，我们希望您能多给我们几天时间，我们保证最后呈现给您的作品使我们最棒的。” 当拖延症成为全行业的通病，难道就没有什么方法可以监督进程吗？ </p><br><p> 3.视频质量“坑”——千辛万苦，等来的却是“杀马特”风？ 即使价格略高、时间拖延，可为了让更多人看到我们的公益广告，一些公益人咬咬牙也忍了。但是，看视频样片时才发现，要么是一本”动感影集“，要么是一部夹杂少许漫画的PPT轮播。更有甚者，一些公司打着“简洁美”的旗号，制作出的却是八竿子打不着的作品。 </p><br><p>你以为最终的作品会是这样的：</p><p><img src=\"images/point_content/1488526949270380.png\"/></p><br><p>活泼的动画风、时尚的电视台风格、精致的画面，处处合我口味！</p><br><p>或是这样的：</p><p><img src=\"images/point_content/1488526961254793.png\"/></p><br><p>纪实性照片直击观众内心。</p><br><p>反正，绝对不是那些“妖艳贱货”。然而，实际上却是这样的：</p><p><img src=\"images/point_content/1488526973862703.png\"><img src=\"images/point_content/1488526985905118.jpg\"></p><p>“早知道是这样，就用这些钱去做一些有意义的项目，服务更多人。”</p><br><p>其实，如果能在与广告公司的合作中避开前面的3个大坑，一般就不会收到“残废品”。为了避免各种大坑，小编这里给大家介绍的，是一个叫“看得见”的平台。</p><br><p>【“看得见”是什么？】<br>“看得见”团队成员大部分都有公益组织从业经历，大家遇到的这些坑，“看得见”何尝不是深恶痛绝？幸运的是“看得见”有感于这些乱象，决心为公益人搭建一个行业领先的公益视频制作平台。</p><br><p>【“看得见”的填坑大法】<br>1、报价透明看得见<br>针对客户的需求方案，我们仅需3分钟即为您定制专属报价单，价格构成一清二楚，与“大约✘✘万”说再见。</p><br><p>2、进度流程看得见<br>签订合同后，您可以根据订单号在网站后台查询视频制作实时进度。同时，这样也可以监督“看得见”准时完成任务。</p><br><p>3、视频质量看得见<br>“看得见”隶属“颗粒公益”旗下，专业服务公益行业，230+公益机构都是我们最亲密的小伙伴。所以，咱们公益人的需求，我们不仅“看得见”，而且看的更清晰。</p><br><p>好话说太多容易变成吹牛，实际情况如何，点击右上角的“开始报价”免费为您评估方案。</p>', 1),
(2, 1001, 2001, 'images/point/spread_58b91829083b1.jpg', '对你的项目宣传抓耳挠腮？不如讲个故事吧', '在公益影像这个领域上，顾源源积累了大量的专业经验，利用镜头，颗粒公益讲述了两百多个公益故事。创始人在现场利用视频为听众剖析在互联网时代，如何用视频这一传播利器，快速占据观众的注意力，将想要表达的信息，告诉你的目标受众。', 295, 27, 1577725153, '<p style=\"text-align: center;\">“怎样写一个吸引人的标题”</p><p style=\"text-align: center;\">“作为一个公益组织，如何利用更多的渠道来做一个推广”</p><p style=\"text-align: center;\">“如何组建一个组织的传播架构”</p><p style=\"text-align: center;\">“如何让千篇一律的活动的后记有新鲜感”</p><p style=\"text-align: center;\">“如何塑造一个好的画面感”</p><p style=\"text-align: center;\">......</p><br><br><p style=\"text-align: center;\">这些问题，或许是每一个公益传播者，最为关心。</p style=\"text-align: center;\"><br><p>在第六届志愿服务广州交流会展馆的尽头，颗粒分馆进行最后一期，依旧是围绕公益传播，为每一位听众解疑答惑。</p><p><img src=\"images/point_content/p2/1488524958988469.jpg\"></p><p><img src=\"images/point_content/p2/1488525105945871.jpg\"></p><p><img src=\"images/point_content/p2/1488524993741636.jpg\"></p><br><p style=\"text-align: center;\">嘉宾分享</p><p style=\"text-align: center;\">Ⅰ颗粒公益创始人顾源源分享：如何讲故事</p><br><p><img src=\"images/point_content/p2/1488525057984596.jpg\"></p><br><p>在公益影像这个领域上，顾源源积累了大量的专业经验，利用镜头，颗粒公益讲述了两百多个公益故事。创始人在现场利用视频为听众剖析在互联网时代，如何用视频这一传播利器，快速占据观众的注意力，将想要表达的信息，告诉你的目标受众。</p><br><p><iframe src=\"https://v.qq.com/iframe/player.html?vid=i0352a7jgw4&tiny=0&auto=0\"frameborder=\"0\"width=\"100%\"height=\"498\"></iframe></p><br><br><p>颗粒宣传片作为讲故事的第一等级，做到了3个点：<br>1.让观众记住了一些关键词，至少知道了颗粒公益是拍视频的 。<br>2.颗粒公益拍过很多大牌公益组织，是有实力的。<br>3.传递出了颗粒公益是一个走心的组织。<br>通过一些我们熟悉的词汇来营造一些画面感，比一味地堆砌专业术语更容易让人记住。</p><br><br><p><iframe src=\"https://v.qq.com/iframe/player.html?vid=e03305cu7z0&tiny=0&auto=0\"frameborder=\"0\"width=\"100%\"height=\"498\"></iframe></p><br><br><p>为什么说某些流行音乐很洗脑，因为他在不断地重复。而颗粒公益为今年慈展会打造的快闪视频可谓历年慈展会宣传片的一股泥石流。不断重复近似魔性的背景音乐搭配飞速掠过的关键词，让人看完一遍再看一遍，根本停不下来。而慈展会宣传片的成功也有力地证明了我们在传播过程中两个重要的元素：</p><p>1.我们在传递信息时最重要的是让别人听懂<br>2.形式感的创新更容易吸引大众的眼球，以及烘托整个活动的创新主旋律。</p><br><br><p><iframe src=\"https://v.qq.com/iframe/player.html?vid=i01830ru5il&tiny=0&auto=0\"frameborder=\"0\"width=\"100%\"height=\"498\"></iframe></p><p>很多时候我们已经成功地吸引了大众来看，但更重要的是，让这些人看完视频能够行动起来。这才是公益传播的目标。通过爱德基金会进城务工人员支持计划公益广告以及善行100活动宣传片的示例，阐述了打动人和共鸣是驱动力。我们在传播的时候往往会陷入向公众传达我们做了很多的怪圈，但其实传递出“我们做的还不够，我们还需要更努力”这样的信息更能打动人。</p><br><br><p>Ⅱ“别样”新媒体公众号主编、摄影师方瘦兽分享：如何利用图片讲一个好故事</p><p><img src=\"images/point_content/p2/1488525278435156.jpg\"></p><br><br><p>在每一个新媒体运营者的心里，可能都有一个10万+的梦。方瘦兽教你如何用好图片编辑来敲开10万+的大门。一个好的题图会让人有打开链接的欲望，一个好的头图是让人继续读下去的推动力，而一个出色的图片结尾决定会不会想要转发。方瘦兽分享了利用好图片的5大元素：<br>1.图片编辑：挑选合适的图片<br>2.氛围：通过照片的辅助可以让你减去一些文字的形容。<br>3.信息：一张图片所传达出来的信息是挑选图片的重要指标，让文字故事事半功倍。<br>4.时间：插入图片的时间或者说顺序直接影响故事的节奏感。<br>5.现场感：挑选合适氛围的照片，传达恰当的信息，把握合适的节奏，这些都是为了营造出一种现场感，让人觉得真实。<br></p><br><br><p><img src=\"images/point_content/p2/1488525283861271.jpg\"></p><br><br><p>羊城公益咖啡馆－颗粒公益传播分馆到这已经结束了，但公益传播还在继续。在这个碎片化的时代，人们越来越不愿意花时间在文字信息的汲取上，或许影像和图片这样快速获取信息的方式会渐渐成为主流。但无论传播方式和传播渠道是什么，内容才是最主要的东西，而传播只是活动情景的再现。</p><br><br><p>我们很庆幸，在这个还不太完美的世界里，有这么多可爱的人们在用自己的点滴力量去感化身边的不美好，去努力传播善良正直的价值观。在每一期活动中，我们都聚拢了一大批公益传播者，他们不断用自己力量来传达公益理念，坚持着自己的初心。</p>', 1),
(3, 1001, 2002, 'images/point/spread_58bd30e8810ed.jpg', '拍摄手记 | 好久不见，小时候家门口小摊的豆浆和油条', '我怀念小时候弄堂里那个送牛奶的小推车，仿佛送来的不只是牛奶，更是温暖。我喜欢门口小卖部的盐水棒冰，炎炎夏日里咬上一口，就冰冻了整个燥热。我习惯出门前喝一碗小摊的咸豆浆，配一根炸酥的油条，每个桌前都升腾起一股热腾腾的水蒸气，车水马龙的吵闹就在这股热气里静谧了。', 118, 2, 1577725153, '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"https://v.qq.com/iframe/player.html?vid=l03372n1stm&amp;tiny=0&amp;auto=0\" allowfullscreen=\"\"></iframe></span><br></p><p style=\"text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">社区融合倡导片</span></p><p style=\"text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">合作方：上海新途健康促进社</span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">我怀念小时候弄堂里那个送牛奶的小推车，仿佛送来的不只是牛奶，更是温暖。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">我喜欢门口小卖部的盐水棒冰，炎炎夏日里咬上一口，就冰冻了整个燥热。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">我习惯出门前喝一碗小摊的咸豆浆，配一根炸酥的油条，每个桌前都升腾起一股热腾腾的水蒸气，车水马龙的吵闹就在这股热气里静谧了。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p3/1488793440796093.jpg\" ></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">后来呀，弄堂变成了高层小区，砖瓦变成混凝土，楼房越建越漂亮越变越多姿，但是社区的故事却仿佛被混凝土染成了灰色，高高的楼宇阻隔了人们之间的交流，社区的故事变得单调无味甚至冷漠。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">社区，是孕育了小家的大家，它不该是这个样子。它理应充满欢笑，温馨与酸甜苦辣，理应充满浓浓的烟火气。我有一部很喜欢的韩剧叫做《请回答1988》，它讲述了我心中最美好的社区的样子。有夫妻吵架，其他人会去劝架。哪家吵了一锅菜，家家都会尝到味道。如果下了雪，大家都会出来打雪仗。如今我们似乎拥有了现代化的一切，却遗失了最美好的人情味。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p3/1488793449177378.jpg\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在这个不大不小的四方天地里，每个小小的灯光下都在上演着不一样的故事。社区在某种程度上是社会的缩影。随着都市化进程的加速，社区的功能和作用也正在不断演化。如何更好地促进社区融合，是众多公益组织一直努力的方向。这样的倡导视频，能帮助机构更好地阐释“社区融合”的理念，以生活出发，让“融合”的理念，抵达每一位居民的内心。</span></p><p><br></p><h1><span style=\"color: rgb(0, 0, 0);\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">拍摄手记：</span></strong></span></h1><h1><span style=\"color: rgb(0, 0, 0);\"><strong><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">李朝晖 颗粒公益导演</span></strong></span></h1><blockquote><p><span style=\"color: rgb(0, 0, 0);\"><strong><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><br></span></strong></span></p></blockquote><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在我们的拍摄想法里，我们觉得社区是一个每个人都融入其中的东西，于是我们选择一些平时生活中比较常见的画面来体现社区的美好，也比较容易引起共鸣。<span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\"><strong>在我们拍摄过程中，发现了社区本身并未挖掘出来的价值，然后我们用镜头替它表现出来，这是比较可贵的一个地方。</strong></span></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">我们深入到社区里面去寻找素材的时候，也真的感受到那份温情，人与人互相鼓励，互相扶持的时候空气里浮动的层层暖流仿佛也流进了我们心里。这是这个视频的意义，我们希望通过这些日常小事，能唤起大家对于社区的记忆。只有大家对社区有了认同有了共鸣，融合才不会是一件难事。</span></p><blockquote><p><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\"><br></span></strong></p></blockquote><p><img src=\"images/point_content/p3/1488793470772113.jpg\" ></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">很多人担心社区正在消失，但值得庆幸的是，一直有这么一群人在努力地促进社区融合。社区里渐渐又响起了孩童们欢乐的笑声，老人们不再独守空房结识了棋友牌友，每逢佳节社区都热闹非凡。在这个世界上，往往最熟悉的才最容易遗忘，我们每天在匆匆的脚步里是不是丢失了什么更值得珍惜的东西呢。社区的温暖值得我们一起守护，无论你关注社区坏境、文化、经济、医疗、科技的哪个方面，只要你愿意踏出改变的第一步，社区就会因你而美好!</span></p>', 1),
(4, 1001, 2002, 'images/point/spread_58bfd6771adb2.png', '提前记录这些画面，再不怕拍摄缺素材', '碎片化时代，人们越来越难花费大块的时间在文字信息的汲取上，图片、表情包、视频等视觉形象渐成为主流。画面比文字包含更丰富的信息，往往能迅速唤起读者感情，直击人心。', 400, 30, 1577725153, '<h1 style=\"margin-top: auto; margin-bottom: auto; text-align: left; line-height: normal; break-after: auto;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">【</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">为何要及时保存画面资料？</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">】</span></h1><p style=\"margin: 10px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">碎片化时代，人们越来越难花</span><span style=\"font-size: 14px;\">费大块的时间在文字信息的汲取上，图片、表情包、视频等视觉形象渐成为主流。画面比文字包含更丰富的信息，往往能迅速唤起读者感情，直击人心。</span></p><p style=\"margin: 10px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">因此公益传播想要更上一台阶，公益机构在日常中应注意保存图片、视频等画面资料，一方面能随时随地图文并茂有效地传递品牌形象，另一方面能为专业影像团队（比如颗粒公益）提供影像素材，方便影像团队快速理解项目背景，甚至加速影像制作过程。</span></p><p style=\"margin-top:0;margin-right:24px;margin-bottom:0;margin-left: 0;margin-bottom:0;text-indent:40px;background:white\"><span style=\"font-size: 14px;\">&nbsp;</span></p><p style=\"margin-top:0;margin-right:24px;margin-bottom:0;margin-left: 0;margin-bottom:0;text-indent:40px;background:white\"><span style=\"font-size: 14px;\"><br></span></p><h1 style=\"margin: 0px 24px 0px 0px; background: white;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">【要保存哪些画面资料？】</span></h1><h5 style=\"margin: 10px 0px 0px; background: white;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1.按项目进展阶段记录</span></h5><p style=\"margin: 10px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">前期：记录活动的筹备，例如开会、彩排。活动开始前紧张、忙碌的氛围，特别的小故事和互动等等。当下的场景和心情是最真实，而且很难模拟或无法重现的，最能引起共鸣。</span></p><p style=\"margin: 10px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">中后期：记录活动情况、能够表现项目效果的画面、或在项目中参与的重要人物等等。</span></p><p style=\"margin: 10px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">如果在制作影像前就有表现的想法或方向，那么在项目进行的过程中应有选择性地记录和保存契合想法的画面资料。比如，某个特殊群体的特殊表现，活动进行中意想不到的难得场景等。</span></p><h5 style=\"margin: 10px 0px 0px; background: white;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2.注意记录机构日常</span></h5><p style=\"margin: 10px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">比如重要人物到访、会谈场景等场景，都值得记录保存。</span></p><p style=\"margin: 10px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">总而言之，难以重现的、有价值或意义的、能表现或体现精神内涵的、能引起共鸣的，能传达出信息的画面都属于我们需保存的画面资料。</span></p><p style=\"margin-top:10px;margin-right:0;margin-bottom:0;margin-left:0;margin-bottom:0;text-indent:40px;background:white\"><span style=\"font-size: 14px;\">&nbsp;</span></p><h1 style=\"margin: 0px 24px 0px 0px; background: white;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">【正确保存画面的姿势】</span></h1><p style=\"margin-top:0;margin-right:24px;margin-bottom:0;margin-left: 0;margin-bottom:0;background:white\"><span style=\"font-size: 14px;\">实际运营中，许多公益机构也明白保存影像资料的重要性，但总担心自己拍摄的照片或视频不专业。其实，日常素材记录没那么多要求，掌握以下两点，大胆去记录吧！</span></p><h5 style=\"margin: 10px 24px 0px 0px; background: white;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1.工具助你登天</span></h5><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">摄像机、相机、手机，无论使用什么工具，尽量避免视频画面抖动、模糊失焦等问题。不要嫌弃三脚架、手机支架麻烦，当翻看照片时你会无比感谢当初的“麻烦”。</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">在录制条件有限时可以拍照片作记录，但过多照片会使视频效果减弱，容易造成PPT即视感。</span></p><h5 style=\"margin: 10px 24px 0px 0px; background: white;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2.用三种景别讲述你的故事</span></h5><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">全景——为观众交代环境</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">全景是摄取人物全身的拍摄方式，能把看到人物的一举一动，人物体型、衣着打扮、身份交代清楚。同时，全景能把整个景色、背景都拍下来，环境物件清晰，并能够利用背景营造气氛。</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">适用：展示自然风景全貌、会议和活动现场全貌</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\">举个栗子：</p><p style=\"margin: 10px 24px 0px 0px; text-align: left; text-indent: 0em; background: white;\"><img src=\"images/point_content/p4/1488529984304771.png\" title=\"1488529984304771.png\" alt=\"1.png\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br></p><p style=\";margin-bottom:0;text-align:center;text-indent:13px;background:white\"><span style=\"font-size: 14px;\">告诉观众，我们的规模是相当……大的</span></p><p style=\";margin-bottom:0;text-align:center;text-indent:13px;background:white\"><span style=\"font-size: 14px;\">&nbsp;</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">中景——生动地说出你的故事</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">中景和全景相比，包含景物的范围有所缩小，环境处于次要地位，重点在于表现人物的上身动作。中景不仅能清楚捕捉人物表情，而且能显示人物的形体动作。如果在拍摄中做到以下几点，则会加分不少。</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">一、选取较高辨识度的背景，比如机构的标识系统，告诉观众故事发生的具体场景；</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">二、控制镜头中人物数量，一般以1~3人为宜；三、不要让人物的背景是单调的墙壁等，因为过于“简洁”的背景反而会使画面乏味。</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">适用：对话、互动以及深入交代故事时</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\">举个栗子：</p><p style=\"margin: 10px 24px 0px 0px; text-indent: 0em; background: white;\"><img src=\"images/point_content/p4/1488967936870835.png\" title=\"1488967936870835.png\" alt=\"2.png\" style=\"text-indent: 13px;\"></p><p style=\";margin-bottom:0;text-align:center;background:white\"><span style=\"font-size: 14px;\">中景讲述志愿者深入基层记录详细记录情况</span></p><p style=\"margin-top:10px;margin-right:24px;margin-bottom:0;margin-left: 0;margin-bottom:0;background:white\"><span style=\"font-size: 14px;\">&nbsp;</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">近景——心与心沟通的镜头</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\">近景是表现人物胸部以上或者景物局部面貌的画面，能清楚地看清人物的细微动作，着重表现人物的面部表情，传达人物的内心世界。</p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\">适用：可用于对话中人物情绪剧烈波动时以及表现人物的某种特质（如工作的全神贯注）</p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-size: 14px;\">举个栗子：</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 0em; background: white;\"><img src=\"images/point_content/p4/1488968137294704.png\" title=\"1488968137294704.png\" alt=\"3.png\"></p><p style=\";margin-bottom:0;text-align:center;background:white\"><span style=\"font-family: 微软雅黑, sans-serif; font-size: 14px;\">公益人与观众“面对面”的交流，才是最走心的</span></p><p style=\"margin: 10px 24px 0px 0px; text-indent: 2em; background: white;\"><span style=\"font-family: 微软雅黑, sans-serif; font-size: 14px;\">实际拍摄时，注意根据需求选择最合适的景别。好了，带上你的手机和相机，勇敢地去记录生活中打动你的细节吧！做年终回顾的时候，记得默默感谢一下小编就好了。<br></span></p><p style=\"text-align:center\"><span style=\"font-family: 微软雅黑, sans-serif; font-size: 14px;\">&nbsp;</span></p><p><br></p>', 1),
(5, 1001, 2002, 'images/point/spread_58bd1ddbc9e13.jpg', '对于他们，你可以质疑甚至诋毁，但唯独不能漠视', '你站在黑白分明的十字路口，前路却不像黑白二色这么简单清晰。身边总会有人对你发出这样的声音：你都这个年纪了，该好好找份朝九晚五的工作，定下来就该结婚生子了。于是你找了一份别人口中“光鲜”的工作，每天在地铁车厢里挤成沙丁鱼，在甲级写字楼的玻璃幕墙内开着冗长的会议，打着哈欠对着发光屏幕一遍又一遍地敲着键盘……', 270, 16, 1577725153, '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">你站在黑白分明的十字路口，前路却不像黑白二色这么简单清晰。身边总会有人对你发出这样的声音：你都这个年纪了，该好好找份朝九晚五的工作，定下来就该结婚生子了。于是你找了一份别人口中“光鲜”的工作，每天在地铁车厢里挤成沙丁鱼，在甲级写字楼的玻璃幕墙内开着冗长的会议，打着哈欠对着发光屏幕一遍又一遍地敲着键盘……<br></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">好生活的定义有千千万万种，我们也不否认以上的生活就是许多人梦寐以求的。可是我们认为人生的道路不应该只有世人既定的一条。颗粒公益一直鼓励当代青年，有梦想敢行动才能成为能生存的适者。在第三届广州市青年创业大赛中，我们就发现了与众不同的选择创业的他们。</span></p><p><br></p><p><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"https://v.qq.com/iframe/player.html?vid=x0172ksfcf3&amp;tiny=0&amp;auto=0\" allowfullscreen=\"\"></iframe></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">\"广州是中国最好创业的城市，未来5年，广州市政府决定拿出11亿奖励、鼓励年轻人创业。\"由团市委、市科创委、市人社局、市教育局、市工信委、市台办、市青联等单位联合主办，市青年就业创业服务中心等单位共同承办的第三届广州青年创业大赛在11月5日正式启动。<br></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">第三届广州青创大赛组委会针对青年创业的热点领域和行业发展趋势，共设立了包括互联网、电子商务、高新技术(生物医药)、文化创意、涉农创业类(花都区分赛场)、广州青年创业公益帮扶行动（青霖计划）选拔赛、教育及其他类、广东自由贸易区南沙片区分赛场、主题艺术设计、从化区分赛场等在内的10个专项赛及分赛场，使青年创业项目更具针对性和精准性。</span></p><p><br></p><p><img src=\"images/point_content/p5/1488788999597352.jpg\" title=\"1488788999597352.jpg\" alt=\"1.jpg\"></p><p><br></p><p><img src=\"images/point_content/p5/1488789010825781.jpg\" title=\"1488789010825781.jpg\" alt=\"2.jpg\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">呈现在你眼前的视频是一个3分钟的短片，快速展示各领域创业青年群体的工作状态和积极观点，传达出创业青年们充满理想主义又不失实干态度、敢想敢试的形象，从而达到吸引有相似性格特质的创业青年，一同参与青年创业大赛的效果。</span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">富有动感的背景音乐加上小扁平的图标，一个个有创意肯实干的创业青年形象是不是瞬间魅力满分啦！</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">这短短的视频里面细看每一处都有颗粒公益团队成员巧妙的用心哦！</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">想知道吗？</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">就是……</span></p><p><br></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别急嘛，就让帅气的颗粒公益影像总监来揭秘吧！</span></p><p><br></p><p style=\"text-align: center;\"><img src=\"images/point_content/p5/1488789034933471.png\" title=\"1488789034933471.png\" alt=\"3.png\"></p><p><br></p><p style=\"text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">颗粒公益影像中心总监</span></p><p style=\"text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">陈奕腾</span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">视频用小扁平图标来呈现增加了影片的视觉传达力。小扁平图标的视觉表达运用，在近几年因为智能手机的快速发展，已逐渐渗透到我们的日常生活当中。其实除了二维动画，以实景拍摄为主的视频，也可以利用这种工具丰富影片的视觉表达效果。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">我们可以看以下两组镜头的运用：</span></p><p style=\"text-align: center;\"><img src=\"images/point_content/p5/1488796399117584.gif\" title=\"1488796399117584.gif\" alt=\"1.gif\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在表达“创业发生在每个角落”这个意思时，我们使用了跟踪特效，将各类象征不同领域的图标跟踪放在航拍俯拍城市的各个街道中。</span><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p style=\"text-align: center;\"><img src=\"images/point_content/p5/1488796412964610.gif\" title=\"1488796412964610.gif\" alt=\"2.gif\"></p><p>对于不同领域的创业内容，我们使用了“灯泡”这一意象，并在里面放置了对应领域的扁平图标，以表达拍摄对象在各领域的“创业灵感”<br></p><p><br></p><p>在视频创作这个过程中，实景拍摄和动画这两种类别的手法，可以符合主题的表达上，多尝试交互实用，相信会给你带来不一样的乐趣。<br></p><p><br></p><p><br></p>', 0),
(6, 1001, 2002, 'images/point/spread_58bd3246122f1.jpg', '每天早上朋友圈的“不忘初心”真的唤回了我们的初心吗？', '你站在黑白分明的十字路口，前路却不像黑白二色这么简单清晰。身边总会有人对你发出这样的声音：你都这个年纪了，该好好找份朝九晚五的工作，定下来就该结婚生子了。于是你找了一份别人口中“光鲜”的工作，每天在地铁车厢里挤成沙丁鱼，在甲级写字楼的玻璃幕墙内开着冗长的会议，打着哈欠对着发光屏幕一遍又一遍地敲着键盘……', 270, 26, 1577725153, '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">我们整天忙忙碌碌，像一群群没有灵魂的苍蝇，喧闹着，躁动着，听不到灵魂深处的声音。时光流逝，童年远去，我们渐渐长大，岁月带走了许许多多的回忆，也消蚀了心底曾经拥有的那份童稚的纯真，我们不顾心灵桎梏，沉溺于人世浮华，专注于利益法则，我们把自己弄丢了。</span></p><p style=\"text-align: right;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">——《小王子》</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">每天我们打开手机，都能看到不忘初心的鸡汤文，告诉你生活应该不忘初心，不忘梦想。我们惯性地分享，配上打鸡血的文字，新的一天又开始了。久而久之，初心就成了你每天的心灵早餐，在现实的种种利益法则面前，我们的懦弱和不敢行动，使得初心变成那个熟悉的路人甲。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">颗粒公益一直鼓励当代青年，有梦想敢行动才是能成为能生存的适者。我们一直关注当代年轻人的发展和思维变化。以下三分钟，让你认识那些紧握“初心”的年轻新势力。</span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"https://v.qq.com/iframe/player.html?vid=q0169cv2dkx&amp;tiny=0&amp;auto=0\" allowfullscreen=\"\"></iframe></span></p><p><br></p><h1><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">【</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">拍摄项目介绍</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">】</span></h1><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">总有一群青年，他们认为，与其纠结思索，不如先行行动。他们独立自主，有清晰的自我认识、深切的社会关怀和责任担当。他们相信，小小的行动也可以创造巨大的改变，他们，是创变者。 而“黑苹果青年”正是这些创变者的”幕后推手“，秉承着推动青年社会参与这一新公益理念，“黑苹果青年”通过青年公益扶持、为有志青年提供启动资金、培训、指导、评估、资源链接和社会传播等多方面支持，让更多青年人在自我行动中成为社会有用的人。</span></p><p><img src=\"images/point_content/p6/1488794285727191.jpg\" title=\"1488794285727191.jpg\" alt=\"1.jpg\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;<img src=\"images/point_content/p6/1488794295340010.jpg\" title=\"1488794295340010.jpg\" alt=\"2.jpg\"></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">呈现你面前的是一个三分钟短片，你觉得完成整个摄制到出片需要多少天？</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">十天？七天？五天？</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">颗粒的行动派告诉你：只需两天！</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">怎么做到？有何秘诀？</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别急，颗粒公益史上最帅的影像总监来告诉你。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p style=\"text-align: center;\"><img src=\"images/point_content/p6/1488794303891861.png\" title=\"1488794303891861.png\" alt=\"3.png\"></p><p><br></p><p style=\"text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">陈奕腾&nbsp;</span></p><p style=\"text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">颗粒公益影像中心总监</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p6/1488794313480752.jpg\" title=\"1488794313480752.jpg\" alt=\"4.jpg\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">这是一个需要在现场即日完成的——青年机构介绍片</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">这个项目最大的难点是制作周期短，两天要完成全部动画的设计和制作，而整个视频包括活动记录和任人物采访的拍摄要在活动当日全部完成。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">如何最快理解，并从一个导演的角度再解读“黑苹果青年”这个组织的精神和理念，然后将这些解读转换成视听语言，这是个费神但极有意思的过程。而在如此短的执行周期里，远距离的拍摄这种费时的执行方式，自然不如 MG动画那么值得选择。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">我觉得从这个项目中学到很重要的一点，就是视频不是“拍出来”或者“剪出来”的。视频，应该是创造出来的。这个“创造”，是指有效运用一切可掌控的试听语言（文案？拍摄？剪辑？特效？动画？balabala……）去完成一次以视频为形式的表达。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">视频，是创造出来的。不要被形式所局限。</span></p><p><br></p>', 0),
(7, 1001, 2002, 'images/point/spread_58be85b5e34f5.png', '没钱也能家家拍个宣传片之秘籍', '你站在黑白分明的十字路口，前路却不像黑白二色这么简单清晰。身边总会有人对你发出这样的声音：你都这个年纪了，该好好找份朝九晚五的工作，定下来就该结婚生子了。于是你找了一份别人口中“光鲜”的工作，每天在地铁车厢里挤成沙丁鱼，在甲级写字楼的玻璃幕墙内开着冗长的会议，打着哈欠对着发光屏幕一遍又一遍地敲着键盘……', 198, 16, 1577725153, '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">我们整天忙忙碌碌，像一群群没有灵魂的苍蝇，喧闹着，躁动着，听不到灵魂深处的声音。时光流逝，童年远去，我们渐渐长大，岁月带走了许许多多的回忆，也消蚀了心底曾经拥有的那份童稚的纯真，我们不顾心灵桎梏，沉溺于人世浮华，专注于利益法则，我们把自己弄丢了。</span></p><p style=\"text-align: right;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">——《小王子》</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">每天我们打开手机，都能看到不忘初心的鸡汤文，告诉你生活应该不忘初心，不忘梦想。我们惯性地分享，配上打鸡血的文字，新的一天又开始了。久而久之，初心就成了你每天的心灵早餐，在现实的种种利益法则面前，我们的懦弱和不敢行动，使得初心变成那个熟悉的路人甲。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">颗粒公益一直鼓励当代青年，有梦想敢行动才是能成为能生存的适者。我们一直关注当代年轻人的发展和思维变化。以下三分钟，让你认识那些紧握“初心”的年轻新势力。</span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"https://v.qq.com/iframe/player.html?vid=q0169cv2dkx&amp;tiny=0&amp;auto=0\" allowfullscreen=\"\"></iframe></span></p><p><br></p><h1><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">【</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">拍摄项目介绍</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">】</span></h1><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">总有一群青年，他们认为，与其纠结思索，不如先行行动。他们独立自主，有清晰的自我认识、深切的社会关怀和责任担当。他们相信，小小的行动也可以创造巨大的改变，他们，是创变者。 而“黑苹果青年”正是这些创变者的”幕后推手“，秉承着推动青年社会参与这一新公益理念，“黑苹果青年”通过青年公益扶持、为有志青年提供启动资金、培训、指导、评估、资源链接和社会传播等多方面支持，让更多青年人在自我行动中成为社会有用的人。</span></p><p><img src=\"images/point_content/p6/1488794285727191.jpg\" title=\"1488794285727191.jpg\" alt=\"1.jpg\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;<img src=\"images/point_content/p6/1488794295340010.jpg\" title=\"1488794295340010.jpg\" alt=\"2.jpg\"></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">呈现你面前的是一个三分钟短片，你觉得完成整个摄制到出片需要多少天？</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">十天？七天？五天？</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">颗粒的行动派告诉你：只需两天！</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">怎么做到？有何秘诀？</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别急，颗粒公益史上最帅的影像总监来告诉你。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p style=\"text-align: center;\"><img src=\"images/point_content/p6/1488794303891861.png\" title=\"1488794303891861.png\" alt=\"3.png\"></p><p><br></p><p style=\"text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">陈奕腾&nbsp;</span></p><p style=\"text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">颗粒公益影像中心总监</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p6/1488794313480752.jpg\" title=\"1488794313480752.jpg\" alt=\"4.jpg\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">这是一个需要在现场即日完成的——青年机构介绍片</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">这个项目最大的难点是制作周期短，两天要完成全部动画的设计和制作，而整个视频包括活动记录和任人物采访的拍摄要在活动当日全部完成。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">如何最快理解，并从一个导演的角度再解读“黑苹果青年”这个组织的精神和理念，然后将这些解读转换成视听语言，这是个费神但极有意思的过程。而在如此短的执行周期里，远距离的拍摄这种费时的执行方式，自然不如 MG动画那么值得选择。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">我觉得从这个项目中学到很重要的一点，就是视频不是“拍出来”或者“剪出来”的。视频，应该是创造出来的。这个“创造”，是指有效运用一切可掌控的试听语言（文案？拍摄？剪辑？特效？动画？balabala……）去完成一次以视频为形式的表达。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">视频，是创造出来的。不要被形式所局限。</span></p><p><br></p>', 0),
(8, 1001, 2003, 'images/point/spread_58be25771b1bf.jpg', '虽然都是卫生巾广告，为啥中国女生像小公举，外国女生却像女战士？', '网络上流传着一个段子：不要招惹女人，因为她们是世界上唯一每个月流血却不死的生物。这句半带嘲讽的玩笑居然真的成了英国卫生巾品牌Bodyform的创意：真的勇士敢于正视淋漓的鲜血，无论是受伤还是大姨妈，都不能阻挡。', 218, 11, 1577725153, ' <p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: center; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"color: rgb(62, 62, 62); text-align: center; background-color: rgb(255, 255, 255); margin: 0px; padding: 0px; max-width: 100%; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box !important; word-wrap: break-word !important;\">本文转载自：公益慈善论坛&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\">网络上流传着一个段子：不要招惹女人，因为她们是世界上唯一每个月流血却不死的生物。这句半带嘲讽的玩笑居然真的成了英国卫生巾品牌Bodyform的创意：真的勇士敢于正视淋漓的鲜血，无论是受伤还是大姨妈，都不能阻挡。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\">Bodyform的广告展现了各种在鲜血中奋战的女性：一群女橄榄球运动员在激烈对抗、女拳击运动员即使脸上带伤也在坚持训练、在户外长跑的女运动员擦干腿上的血继续上路、女芭蕾舞者身姿优雅，脚下却早已鲜血淋漓。</span></p><p><img src=\"images/point_content/p8/1488772730778219.png\" title=\"1488772730778219.png\" alt=\"1.png\"></p><p style=\"text-align: right;\"><span style=\"color: rgb(181, 181, 182); text-align: right; background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">一群女橄榄球运动员在激烈对抗</span></p><p><img src=\"images/point_content/p8/1488772724896732.png\" title=\"1488772724896732.png\" alt=\"2.png\"></p><p style=\"text-align: right;\"><span style=\"color: rgb(181, 181, 182); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 15px; text-align: right; background-color: rgb(255, 255, 255);\">女拳击手：流血也要打</span></p><p><span style=\"color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><br></span></p><p><span style=\"color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\">来欣赏一下这支充满“血性”的女性励志广告片。如果不特意说明的话，很难把它和大姨妈联系起来。</span></p><p><span style=\"color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"https://v.qq.com/iframe/player.html?vid=x034449avu5&amp;tiny=0&amp;auto=0\" allowfullscreen=\"\"></iframe></span></p><p><br></p><p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\">除了这只血性的广告片，Bodyform与创意机构AMV BBDO还推出了一系列关于“流血”和运动的宣传，这个系列主题叫Red.Fit。和名字一样，Red.Ft没有告诉你在姨妈期只能喝热水，而是鼓励你继续保持健身运动。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\">为了认真讨论大姨妈对于女性身体和体育训练的影响，Red.Fit还和圣玛丽大学、英国伦敦大学学院合作起了科研项目。同时，这个品牌建起了一个名为Red.Fit的网络实验室，女性消费者可以参与讨论关于不同生理期训练的话题。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\">根据女性体内激素水平的变化情况，Bodyform把一个月的训练时间分成了四个阶段：姨妈期、训练巅峰期、燃烧期和加油期。针对不同时期的身心变化，可以制定相应的训练和饮食计划。总之一个字：动起来！</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; box-sizing: border-box !important; word-wrap: break-word !important;\"><img src=\"images/point_content/p8/1488772713456559.png\" title=\"1488772713456559.png\" alt=\"3.png\"></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"></span></p><figure class=\"\" style=\"margin: 0px; padding: 0px; max-width: 100%; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); box-sizing: border-box !important; word-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0.5em 0px 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(181, 181, 182); font-size: 12px; text-align: right; line-height: 1.75em; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\">28天的周期分成了4个阶段：姨妈期、训练巅峰期、燃烧期和加油期</span></p><p><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\">对于卫生巾这种女性用品，营销自然是要出自女性视角。不过这种充满女性主义的价值观营销，Bodyform并不是唯一的品牌。宝洁旗下的卫生巾品牌Always也喜欢拿女性主义来说事，比如帮助青春期的女孩找回跟多的身份认同，鼓励他们打破外界关于女性的种种偏见；抗议emoji关于女性的刻板印象，呼吁更多女性的职业身份认同等等。</span><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\">然而在国内，我们看到更多卫生巾广告中的女性形象，依然是年轻漂亮的、需要被呵护关爱的小公举。无论是Angelababy、张韶涵还是周冬雨，即使是某品牌找来了男明星汪东城，传达出的信息都是相似的：女性在特殊时期需要被照顾。</span></p><p><img src=\"images/point_content/p8/1488772695692016.png\" title=\"1488772695692016.png\" alt=\"4.png\"></p><p style=\"text-align: right;\"><span style=\"color: rgb(181, 181, 182); text-align: right; background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">张韶涵</span></p><p style=\"text-align: right;\"><span style=\"color: rgb(181, 181, 182); text-align: right; background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><br></span></p></figure><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; box-sizing: border-box !important; word-wrap: break-word !important;\"><img src=\"images/point_content/p8/1488772702121485.png\" title=\"1488772702121485.png\" alt=\"5.png\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; box-sizing: border-box !important; word-wrap: break-word !important; text-align: right;\"><span style=\"color: rgb(181, 181, 182); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 15px; text-align: right; background-color: rgb(255, 255, 255);\">Angelababy</span></p><p><img src=\"images/point_content/p8/1488772685225064.png\" title=\"1488772685225064.png\" alt=\"6.png\"></p><p style=\"text-align: right;\"><span style=\"color: rgb(181, 181, 182); text-align: right; background-color: rgb(255, 255, 255); font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">周冬雨</span></p><p style=\"text-align: right;\"><span style=\"color: rgb(181, 181, 182); text-align: right; background-color: rgb(255, 255, 255); font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p style=\"text-align: left;\"><img src=\"images/point_content/p8/1488772674962600.png\" title=\"1488772674962600.png\" alt=\"7.png\"></p><p style=\"text-align: right; text-indent: 0em;\"><span style=\"color: rgb(181, 181, 182); text-align: right; background-color: rgb(255, 255, 255); font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">汪东城</span></p><p style=\"text-align: left; text-indent: 0em;\"><span style=\"margin: 0px; padding: 0px; max-width: 100%; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box !important; word-wrap: break-word !important;\">国内只有卫生巾品牌的营销缺少创意吗？其实这只是我们社会塑造女性形象的一个缩影。在无数的广告片、影视剧中，女性的形象一直很单一：任劳任怨的好妈妈、包办家务的家庭主妇、跋扈任性的女友、需要被保护的小公举、渴望爱情和婚姻的“剩女”……连女性自身都不能正确看待自己职业身份的大环境下，又有多少品牌形象广告敢于展示“女性力”呢？</span></p><p style=\"text-align: right;\"><span style=\"color: rgb(181, 181, 182); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; text-align: right; background-color: rgb(255, 255, 255); font-size: 14px;\"><br></span></p><p style=\"text-align: right;\"><span style=\"color: rgb(181, 181, 182); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; text-align: right; background-color: rgb(255, 255, 255); font-size: 14px;\"><br></span></p>', 0),
(9, 1001, 2003, 'images/point/spread_58bcf77a57ef5.png', '超大脑洞交通安全公益短片《街舞街灯》', '在国内，每年因为行人闯红灯造成的交通事故数千起，“组团儿过马路”已经成为了中国特色，大家都忙着赚钱呢，哪有时间停下来干等，所以红灯对于行人来说警示意义不大。不只是在中国，没车就过马路的外国人也有的是，很明显单纯的“警示”已经不管用了，那该怎么办呢？', 156, 8, 1577725153, '<p style=\"text-align: center;\"><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">本文转载自：V电影（vmovier.com）</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"http://player.youku.com/embed/XOTEzOTg2Njc2\" allowfullscreen=\"\"></iframe></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在国内，每年因为行人闯红灯造成的交通事故数千起，“组团儿过马路”已经成为了中国特色，大家都忙着赚钱呢，哪有时间停下来干等，所以红灯对于行人来说警示意义不大。不只是在中国，没车就过马路的外国人也有的是，很明显单纯的“警示”已经不管用了，那该怎么办呢</span>？</p><p><br></p><p><img src=\"images/point_content/p9/1488778820184069.png\" title=\"1488778820184069.png\" alt=\"11.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在葡萄牙里斯本，有人就想出了这样的办法，在路口设置一个跳舞机，路过行人在这里跳舞，动作就会被同步到红灯上的小人儿，欧洲这些能歌善舞的民族，这群热爱凑热闹的人民们，就这样欢乐的high起来，不跳舞也会停下来看。结论是，效果非常明显，经过路口的人有81%停下来等红灯！果然脑洞打开之后，一切难题迎刃而解。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779029525554.png\" title=\"1488779029525554.png\" alt=\"22.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">你说我崇洋媚外，我说是歪果仁脑洞太开，过个马路都过的如此开心，相比较于我们经常出问题的交通指示灯，我们来看看人家的红绿灯是这样婶儿滴。</span><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779041101718.png\" title=\"1488779041101718.png\" alt=\"33.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别说我崇洋媚外，我是说外国人脑洞太开，来看看那不勒斯的地铁站，是这样婶儿滴。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779052586248.png\" title=\"1488779052586248.png\" alt=\"44.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">还有什么斯德哥尔摩、汉堡的地铁站是这样婶儿。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779069952734.png\" title=\"1488779069952734.png\" alt=\"55.png\"><img src=\"images/point_content/p9/1488779080368168.png\" title=\"1488779080368168.png\" alt=\"66.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">再来个公交车站，站在这儿苦逼等车看起来都像是时尚街拍吧。</span><br></p><p><br></p><p><img src=\"images/point_content/p9/1488779119868293.png\" title=\"1488779119868293.png\" alt=\"77.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">最后再说一句，珍爱生命，减少“组团儿过马路”。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span><br></p>', 0),
(10, 1002, 2002, 'images/point/spread_58bfd2a292bbf.jpg', '面对客户爸爸，我们给出最专业的引导', '作为一个小小的公益视频服务商，我们常常面对客户各式各样出乎意料的需求而哭笑不得。但是作为一家在公益视频领域摸爬打滚了三年的机构来说，给出专业的引导才是我们的“正经事”。', 156, 8, 1577725153, '<p style=\"text-align: center;\"><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">本文转载自：V电影（vmovier.com）</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"http://player.youku.com/embed/XOTEzOTg2Njc2\" allowfullscreen=\"\"></iframe></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在国内，每年因为行人闯红灯造成的交通事故数千起，“组团儿过马路”已经成为了中国特色，大家都忙着赚钱呢，哪有时间停下来干等，所以红灯对于行人来说警示意义不大。不只是在中国，没车就过马路的外国人也有的是，很明显单纯的“警示”已经不管用了，那该怎么办呢</span>？</p><p><br></p><p><img src=\"images/point_content/p9/1488778820184069.png\" title=\"1488778820184069.png\" alt=\"11.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在葡萄牙里斯本，有人就想出了这样的办法，在路口设置一个跳舞机，路过行人在这里跳舞，动作就会被同步到红灯上的小人儿，欧洲这些能歌善舞的民族，这群热爱凑热闹的人民们，就这样欢乐的high起来，不跳舞也会停下来看。结论是，效果非常明显，经过路口的人有81%停下来等红灯！果然脑洞打开之后，一切难题迎刃而解。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779029525554.png\" title=\"1488779029525554.png\" alt=\"22.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">你说我崇洋媚外，我说是歪果仁脑洞太开，过个马路都过的如此开心，相比较于我们经常出问题的交通指示灯，我们来看看人家的红绿灯是这样婶儿滴。</span><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779041101718.png\" title=\"1488779041101718.png\" alt=\"33.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别说我崇洋媚外，我是说外国人脑洞太开，来看看那不勒斯的地铁站，是这样婶儿滴。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779052586248.png\" title=\"1488779052586248.png\" alt=\"44.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">还有什么斯德哥尔摩、汉堡的地铁站是这样婶儿。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779069952734.png\" title=\"1488779069952734.png\" alt=\"55.png\"><img src=\"images/point_content/p9/1488779080368168.png\" title=\"1488779080368168.png\" alt=\"66.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">再来个公交车站，站在这儿苦逼等车看起来都像是时尚街拍吧。</span><br></p><p><br></p><p><img src=\"images/point_content/p9/1488779119868293.png\" title=\"1488779119868293.png\" alt=\"77.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">最后再说一句，珍爱生命，减少“组团儿过马路”。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span><br></p>', 0);
INSERT INTO `points` (`point_id`, `pc_number`, `psc_number`, `point_pic`, `point_title`, `point_intr`, `point_watchCount`, `point_goodCount`, `point_sendTime`, `point_content`, `isRec`) VALUES
(11, 1002, 2002, 'images/point/spread_58be76ce1a8c3.jpg', '从大山到都市，愿每条支流都能汇聚到江河湖海', '从涓涓细流到大江大河，我们之中的多数，穷尽一生都在以不同的生命形态去追问意义。有的人愿意紧盯着脚下走好每一步，有的人喜欢仰望星空享受纯净与静谧。', 156, 8, 1577725153, '<p style=\"text-align: center;\"><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">本文转载自：V电影（vmovier.com）</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"http://player.youku.com/embed/XOTEzOTg2Njc2\" allowfullscreen=\"\"></iframe></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在国内，每年因为行人闯红灯造成的交通事故数千起，“组团儿过马路”已经成为了中国特色，大家都忙着赚钱呢，哪有时间停下来干等，所以红灯对于行人来说警示意义不大。不只是在中国，没车就过马路的外国人也有的是，很明显单纯的“警示”已经不管用了，那该怎么办呢</span>？</p><p><br></p><p><img src=\"images/point_content/p9/1488778820184069.png\" title=\"1488778820184069.png\" alt=\"11.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在葡萄牙里斯本，有人就想出了这样的办法，在路口设置一个跳舞机，路过行人在这里跳舞，动作就会被同步到红灯上的小人儿，欧洲这些能歌善舞的民族，这群热爱凑热闹的人民们，就这样欢乐的high起来，不跳舞也会停下来看。结论是，效果非常明显，经过路口的人有81%停下来等红灯！果然脑洞打开之后，一切难题迎刃而解。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779029525554.png\" title=\"1488779029525554.png\" alt=\"22.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">你说我崇洋媚外，我说是歪果仁脑洞太开，过个马路都过的如此开心，相比较于我们经常出问题的交通指示灯，我们来看看人家的红绿灯是这样婶儿滴。</span><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779041101718.png\" title=\"1488779041101718.png\" alt=\"33.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别说我崇洋媚外，我是说外国人脑洞太开，来看看那不勒斯的地铁站，是这样婶儿滴。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779052586248.png\" title=\"1488779052586248.png\" alt=\"44.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">还有什么斯德哥尔摩、汉堡的地铁站是这样婶儿。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779069952734.png\" title=\"1488779069952734.png\" alt=\"55.png\"><img src=\"images/point_content/p9/1488779080368168.png\" title=\"1488779080368168.png\" alt=\"66.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">再来个公交车站，站在这儿苦逼等车看起来都像是时尚街拍吧。</span><br></p><p><br></p><p><img src=\"images/point_content/p9/1488779119868293.png\" title=\"1488779119868293.png\" alt=\"77.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">最后再说一句，珍爱生命，减少“组团儿过马路”。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span><br></p>', 0),
(12, 1002, 2002, 'images/point/spread_58bd30e8810ed (1).jpg', '拍摄手记 | 好久不见，小时候家门口小摊的豆浆和油条', '我怀念小时候弄堂里那个送牛奶的小推车，仿佛送来的不只是牛奶，更是温暖。\r\n\r\n我喜欢门口小卖部的盐水棒冰，炎炎夏日里咬上一口，就冰冻了整个燥热。\r\n\r\n我习惯出门前喝一碗小摊的咸豆浆，配一根炸酥的油条，每个桌前都升腾起一股热腾腾的水蒸气，车水马龙的吵闹就在这股热气里静谧了。', 156, 8, 1577725153, '<p style=\"text-align: center;\"><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">本文转载自：V电影（vmovier.com）</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"http://player.youku.com/embed/XOTEzOTg2Njc2\" allowfullscreen=\"\"></iframe></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在国内，每年因为行人闯红灯造成的交通事故数千起，“组团儿过马路”已经成为了中国特色，大家都忙着赚钱呢，哪有时间停下来干等，所以红灯对于行人来说警示意义不大。不只是在中国，没车就过马路的外国人也有的是，很明显单纯的“警示”已经不管用了，那该怎么办呢</span>？</p><p><br></p><p><img src=\"images/point_content/p9/1488778820184069.png\" title=\"1488778820184069.png\" alt=\"11.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在葡萄牙里斯本，有人就想出了这样的办法，在路口设置一个跳舞机，路过行人在这里跳舞，动作就会被同步到红灯上的小人儿，欧洲这些能歌善舞的民族，这群热爱凑热闹的人民们，就这样欢乐的high起来，不跳舞也会停下来看。结论是，效果非常明显，经过路口的人有81%停下来等红灯！果然脑洞打开之后，一切难题迎刃而解。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779029525554.png\" title=\"1488779029525554.png\" alt=\"22.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">你说我崇洋媚外，我说是歪果仁脑洞太开，过个马路都过的如此开心，相比较于我们经常出问题的交通指示灯，我们来看看人家的红绿灯是这样婶儿滴。</span><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779041101718.png\" title=\"1488779041101718.png\" alt=\"33.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别说我崇洋媚外，我是说外国人脑洞太开，来看看那不勒斯的地铁站，是这样婶儿滴。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779052586248.png\" title=\"1488779052586248.png\" alt=\"44.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">还有什么斯德哥尔摩、汉堡的地铁站是这样婶儿。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779069952734.png\" title=\"1488779069952734.png\" alt=\"55.png\"><img src=\"images/point_content/p9/1488779080368168.png\" title=\"1488779080368168.png\" alt=\"66.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">再来个公交车站，站在这儿苦逼等车看起来都像是时尚街拍吧。</span><br></p><p><br></p><p><img src=\"images/point_content/p9/1488779119868293.png\" title=\"1488779119868293.png\" alt=\"77.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">最后再说一句，珍爱生命，减少“组团儿过马路”。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span><br></p>', 0),
(13, 1002, 2002, 'images/point/spread_58bcd3f396aa2.jpg', '成为乡村教师是他们的选择，但……丨乡村教师生存现状实录', '“他以前来到学校，只做三件事：上课、改卷、骂孩子。”这是多年前一位贫困地区学校的校长对自己下属教师的评价，它很扎眼，但很真实。\r\n\r\n任何工作，时间一久，委屈一多，都会有倦怠的时候，也会找到合理化自己消极行为的理由。对于这个现象，我没有资格质疑和问责，而是好奇。', 156, 8, 1577725153, '<p style=\"text-align: center;\"><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">本文转载自：V电影（vmovier.com）</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"http://player.youku.com/embed/XOTEzOTg2Njc2\" allowfullscreen=\"\"></iframe></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在国内，每年因为行人闯红灯造成的交通事故数千起，“组团儿过马路”已经成为了中国特色，大家都忙着赚钱呢，哪有时间停下来干等，所以红灯对于行人来说警示意义不大。不只是在中国，没车就过马路的外国人也有的是，很明显单纯的“警示”已经不管用了，那该怎么办呢</span>？</p><p><br></p><p><img src=\"images/point_content/p9/1488778820184069.png\" title=\"1488778820184069.png\" alt=\"11.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在葡萄牙里斯本，有人就想出了这样的办法，在路口设置一个跳舞机，路过行人在这里跳舞，动作就会被同步到红灯上的小人儿，欧洲这些能歌善舞的民族，这群热爱凑热闹的人民们，就这样欢乐的high起来，不跳舞也会停下来看。结论是，效果非常明显，经过路口的人有81%停下来等红灯！果然脑洞打开之后，一切难题迎刃而解。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779029525554.png\" title=\"1488779029525554.png\" alt=\"22.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">你说我崇洋媚外，我说是歪果仁脑洞太开，过个马路都过的如此开心，相比较于我们经常出问题的交通指示灯，我们来看看人家的红绿灯是这样婶儿滴。</span><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779041101718.png\" title=\"1488779041101718.png\" alt=\"33.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别说我崇洋媚外，我是说外国人脑洞太开，来看看那不勒斯的地铁站，是这样婶儿滴。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779052586248.png\" title=\"1488779052586248.png\" alt=\"44.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">还有什么斯德哥尔摩、汉堡的地铁站是这样婶儿。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779069952734.png\" title=\"1488779069952734.png\" alt=\"55.png\"><img src=\"images/point_content/p9/1488779080368168.png\" title=\"1488779080368168.png\" alt=\"66.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">再来个公交车站，站在这儿苦逼等车看起来都像是时尚街拍吧。</span><br></p><p><br></p><p><img src=\"images/point_content/p9/1488779119868293.png\" title=\"1488779119868293.png\" alt=\"77.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">最后再说一句，珍爱生命，减少“组团儿过马路”。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span><br></p>', 0),
(14, 1002, 2002, 'images/point/spread_58bd1ddbc9e13 (1).jpg', '对于他们，你可以质疑甚至诋毁，但唯独不能漠视', '你站在黑白分明的十字路口，前路却不像黑白二色这么简单清晰。身边总会有人对你发出这样的声音：你都这个年纪了，该好好找份朝九晚五的工作，定下来就该结婚生子了。于是你找了一份别人口中“光鲜”的工作，每天在地铁车厢里挤成沙丁鱼，在甲级写字楼的玻璃幕墙内开着冗长的会议，打着哈欠对着发光屏幕一遍又一遍地敲着键盘……', 156, 8, 1577725153, '<p style=\"text-align: center;\"><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">本文转载自：V电影（vmovier.com）</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"http://player.youku.com/embed/XOTEzOTg2Njc2\" allowfullscreen=\"\"></iframe></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在国内，每年因为行人闯红灯造成的交通事故数千起，“组团儿过马路”已经成为了中国特色，大家都忙着赚钱呢，哪有时间停下来干等，所以红灯对于行人来说警示意义不大。不只是在中国，没车就过马路的外国人也有的是，很明显单纯的“警示”已经不管用了，那该怎么办呢</span>？</p><p><br></p><p><img src=\"images/point_content/p9/1488778820184069.png\" title=\"1488778820184069.png\" alt=\"11.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在葡萄牙里斯本，有人就想出了这样的办法，在路口设置一个跳舞机，路过行人在这里跳舞，动作就会被同步到红灯上的小人儿，欧洲这些能歌善舞的民族，这群热爱凑热闹的人民们，就这样欢乐的high起来，不跳舞也会停下来看。结论是，效果非常明显，经过路口的人有81%停下来等红灯！果然脑洞打开之后，一切难题迎刃而解。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779029525554.png\" title=\"1488779029525554.png\" alt=\"22.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">你说我崇洋媚外，我说是歪果仁脑洞太开，过个马路都过的如此开心，相比较于我们经常出问题的交通指示灯，我们来看看人家的红绿灯是这样婶儿滴。</span><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779041101718.png\" title=\"1488779041101718.png\" alt=\"33.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别说我崇洋媚外，我是说外国人脑洞太开，来看看那不勒斯的地铁站，是这样婶儿滴。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779052586248.png\" title=\"1488779052586248.png\" alt=\"44.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">还有什么斯德哥尔摩、汉堡的地铁站是这样婶儿。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779069952734.png\" title=\"1488779069952734.png\" alt=\"55.png\"><img src=\"images/point_content/p9/1488779080368168.png\" title=\"1488779080368168.png\" alt=\"66.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">再来个公交车站，站在这儿苦逼等车看起来都像是时尚街拍吧。</span><br></p><p><br></p><p><img src=\"images/point_content/p9/1488779119868293.png\" title=\"1488779119868293.png\" alt=\"77.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">最后再说一句，珍爱生命，减少“组团儿过马路”。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span><br></p>', 0),
(16, 1002, 2002, 'images/point/spread_58bd3246122f1 (1).jpg', '每天早上朋友圈的“不忘初心”真的唤回了我们的初心吗？', '我们整天忙忙碌碌，像一群群没有灵魂的苍蝇，喧闹着，躁动着，听不到灵魂深处的声音。时光流逝，童年远去，我们渐渐长大，岁月带走了许许多多的回忆，也消蚀了心底曾经拥有的那份童稚的纯真，我们不顾心灵桎梏，沉溺于人世浮华，专注于利益法则，我们把自己弄丢了。', 156, 8, 1577725153, '<p style=\"text-align: center;\"><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">本文转载自：V电影（vmovier.com）</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"http://player.youku.com/embed/XOTEzOTg2Njc2\" allowfullscreen=\"\"></iframe></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在国内，每年因为行人闯红灯造成的交通事故数千起，“组团儿过马路”已经成为了中国特色，大家都忙着赚钱呢，哪有时间停下来干等，所以红灯对于行人来说警示意义不大。不只是在中国，没车就过马路的外国人也有的是，很明显单纯的“警示”已经不管用了，那该怎么办呢</span>？</p><p><br></p><p><img src=\"images/point_content/p9/1488778820184069.png\" title=\"1488778820184069.png\" alt=\"11.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在葡萄牙里斯本，有人就想出了这样的办法，在路口设置一个跳舞机，路过行人在这里跳舞，动作就会被同步到红灯上的小人儿，欧洲这些能歌善舞的民族，这群热爱凑热闹的人民们，就这样欢乐的high起来，不跳舞也会停下来看。结论是，效果非常明显，经过路口的人有81%停下来等红灯！果然脑洞打开之后，一切难题迎刃而解。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779029525554.png\" title=\"1488779029525554.png\" alt=\"22.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">你说我崇洋媚外，我说是歪果仁脑洞太开，过个马路都过的如此开心，相比较于我们经常出问题的交通指示灯，我们来看看人家的红绿灯是这样婶儿滴。</span><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779041101718.png\" title=\"1488779041101718.png\" alt=\"33.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别说我崇洋媚外，我是说外国人脑洞太开，来看看那不勒斯的地铁站，是这样婶儿滴。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779052586248.png\" title=\"1488779052586248.png\" alt=\"44.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">还有什么斯德哥尔摩、汉堡的地铁站是这样婶儿。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779069952734.png\" title=\"1488779069952734.png\" alt=\"55.png\"><img src=\"images/point_content/p9/1488779080368168.png\" title=\"1488779080368168.png\" alt=\"66.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">再来个公交车站，站在这儿苦逼等车看起来都像是时尚街拍吧。</span><br></p><p><br></p><p><img src=\"images/point_content/p9/1488779119868293.png\" title=\"1488779119868293.png\" alt=\"77.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">最后再说一句，珍爱生命，减少“组团儿过马路”。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span><br></p>', 0),
(17, 1002, 2002, 'images/point/spread_58be7cc19e322.jpg', '我对公益的希望之火，从未熄灭', '公益这个词，这几年一直走在浪尖，经历过郭美美事件，很多人对公益失望，围观了陈光标的高调公益，很多人开始思考公益的形式，而现在，公益在互联网+的推动下也有了越来越多的可能。', 156, 8, 1577725153, '<p style=\"text-align: center;\"><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">本文转载自：V电影（vmovier.com）</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"http://player.youku.com/embed/XOTEzOTg2Njc2\" allowfullscreen=\"\"></iframe></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在国内，每年因为行人闯红灯造成的交通事故数千起，“组团儿过马路”已经成为了中国特色，大家都忙着赚钱呢，哪有时间停下来干等，所以红灯对于行人来说警示意义不大。不只是在中国，没车就过马路的外国人也有的是，很明显单纯的“警示”已经不管用了，那该怎么办呢</span>？</p><p><br></p><p><img src=\"images/point_content/p9/1488778820184069.png\" title=\"1488778820184069.png\" alt=\"11.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在葡萄牙里斯本，有人就想出了这样的办法，在路口设置一个跳舞机，路过行人在这里跳舞，动作就会被同步到红灯上的小人儿，欧洲这些能歌善舞的民族，这群热爱凑热闹的人民们，就这样欢乐的high起来，不跳舞也会停下来看。结论是，效果非常明显，经过路口的人有81%停下来等红灯！果然脑洞打开之后，一切难题迎刃而解。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779029525554.png\" title=\"1488779029525554.png\" alt=\"22.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">你说我崇洋媚外，我说是歪果仁脑洞太开，过个马路都过的如此开心，相比较于我们经常出问题的交通指示灯，我们来看看人家的红绿灯是这样婶儿滴。</span><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779041101718.png\" title=\"1488779041101718.png\" alt=\"33.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别说我崇洋媚外，我是说外国人脑洞太开，来看看那不勒斯的地铁站，是这样婶儿滴。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779052586248.png\" title=\"1488779052586248.png\" alt=\"44.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">还有什么斯德哥尔摩、汉堡的地铁站是这样婶儿。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779069952734.png\" title=\"1488779069952734.png\" alt=\"55.png\"><img src=\"images/point_content/p9/1488779080368168.png\" title=\"1488779080368168.png\" alt=\"66.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">再来个公交车站，站在这儿苦逼等车看起来都像是时尚街拍吧。</span><br></p><p><br></p><p><img src=\"images/point_content/p9/1488779119868293.png\" title=\"1488779119868293.png\" alt=\"77.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">最后再说一句，珍爱生命，减少“组团儿过马路”。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span><br></p>', 0),
(18, 1002, 2002, 'images/point/spread_58be7ede7f602.jpg', '我不知道公益之路有多长，那就用脚步一点点丈量吧', '为爱行走是由中国灵山公益慈善促进会和灵山慈善基金会联合发起主办的大型徒步公益活动，活动旨在倡导公众通过行走的方式参与公益，并通过团队的努力为民间公益项目筹款。', 156, 8, 1577725153, '<p style=\"text-align: center;\"><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">本文转载自：V电影（vmovier.com）</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"http://player.youku.com/embed/XOTEzOTg2Njc2\" allowfullscreen=\"\"></iframe></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在国内，每年因为行人闯红灯造成的交通事故数千起，“组团儿过马路”已经成为了中国特色，大家都忙着赚钱呢，哪有时间停下来干等，所以红灯对于行人来说警示意义不大。不只是在中国，没车就过马路的外国人也有的是，很明显单纯的“警示”已经不管用了，那该怎么办呢</span>？</p><p><br></p><p><img src=\"images/point_content/p9/1488778820184069.png\" title=\"1488778820184069.png\" alt=\"11.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在葡萄牙里斯本，有人就想出了这样的办法，在路口设置一个跳舞机，路过行人在这里跳舞，动作就会被同步到红灯上的小人儿，欧洲这些能歌善舞的民族，这群热爱凑热闹的人民们，就这样欢乐的high起来，不跳舞也会停下来看。结论是，效果非常明显，经过路口的人有81%停下来等红灯！果然脑洞打开之后，一切难题迎刃而解。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779029525554.png\" title=\"1488779029525554.png\" alt=\"22.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">你说我崇洋媚外，我说是歪果仁脑洞太开，过个马路都过的如此开心，相比较于我们经常出问题的交通指示灯，我们来看看人家的红绿灯是这样婶儿滴。</span><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779041101718.png\" title=\"1488779041101718.png\" alt=\"33.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别说我崇洋媚外，我是说外国人脑洞太开，来看看那不勒斯的地铁站，是这样婶儿滴。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779052586248.png\" title=\"1488779052586248.png\" alt=\"44.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">还有什么斯德哥尔摩、汉堡的地铁站是这样婶儿。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779069952734.png\" title=\"1488779069952734.png\" alt=\"55.png\"><img src=\"images/point_content/p9/1488779080368168.png\" title=\"1488779080368168.png\" alt=\"66.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">再来个公交车站，站在这儿苦逼等车看起来都像是时尚街拍吧。</span><br></p><p><br></p><p><img src=\"images/point_content/p9/1488779119868293.png\" title=\"1488779119868293.png\" alt=\"77.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">最后再说一句，珍爱生命，减少“组团儿过马路”。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span><br></p>', 0),
(19, 1002, 2003, 'images/point/spread_58b934564fe75.jpg', '遗憾没来慈展会？我们用震撼视频带你全景体验', '慈展会原来还能这么玩!五湖四海的公益人都来啦！全领域公益大咖云集,神秘嘉宾空降展会现场.', 156, 8, 1577725153, '<p style=\"text-align: center;\"><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">本文转载自：V电影（vmovier.com）</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"http://player.youku.com/embed/XOTEzOTg2Njc2\" allowfullscreen=\"\"></iframe></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在国内，每年因为行人闯红灯造成的交通事故数千起，“组团儿过马路”已经成为了中国特色，大家都忙着赚钱呢，哪有时间停下来干等，所以红灯对于行人来说警示意义不大。不只是在中国，没车就过马路的外国人也有的是，很明显单纯的“警示”已经不管用了，那该怎么办呢</span>？</p><p><br></p><p><img src=\"images/point_content/p9/1488778820184069.png\" title=\"1488778820184069.png\" alt=\"11.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在葡萄牙里斯本，有人就想出了这样的办法，在路口设置一个跳舞机，路过行人在这里跳舞，动作就会被同步到红灯上的小人儿，欧洲这些能歌善舞的民族，这群热爱凑热闹的人民们，就这样欢乐的high起来，不跳舞也会停下来看。结论是，效果非常明显，经过路口的人有81%停下来等红灯！果然脑洞打开之后，一切难题迎刃而解。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779029525554.png\" title=\"1488779029525554.png\" alt=\"22.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">你说我崇洋媚外，我说是歪果仁脑洞太开，过个马路都过的如此开心，相比较于我们经常出问题的交通指示灯，我们来看看人家的红绿灯是这样婶儿滴。</span><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779041101718.png\" title=\"1488779041101718.png\" alt=\"33.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别说我崇洋媚外，我是说外国人脑洞太开，来看看那不勒斯的地铁站，是这样婶儿滴。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779052586248.png\" title=\"1488779052586248.png\" alt=\"44.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">还有什么斯德哥尔摩、汉堡的地铁站是这样婶儿。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779069952734.png\" title=\"1488779069952734.png\" alt=\"55.png\"><img src=\"images/point_content/p9/1488779080368168.png\" title=\"1488779080368168.png\" alt=\"66.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">再来个公交车站，站在这儿苦逼等车看起来都像是时尚街拍吧。</span><br></p><p><br></p><p><img src=\"images/point_content/p9/1488779119868293.png\" title=\"1488779119868293.png\" alt=\"77.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">最后再说一句，珍爱生命，减少“组团儿过马路”。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span><br></p>', 0),
(20, 1002, 2003, 'images/point/spread_58b93fe6ed4de.jpg', '在没有影像的时代，公益如何被看见', '如今是泛化公益的时代，你盘腿坐在沙发上，为电视中路灯下相互依偎的环卫工热泪盈眶。你匆匆刷过朋友圈，满屏的公益众筹，仿佛暗示自己对弱者心怀善意。\r\n\r\n似乎公益理念已经普及，人人可讨论，人人能参与。在捐献爱心与消费道德之间，界限不断被淡化，似乎公益就等于捐赠。', 156, 8, 1577725153, '<p style=\"text-align: center;\"><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">本文转载自：V电影（vmovier.com）</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><iframe frameborder=\"0\" width=\"100%\" height=\"498\" src=\"http://player.youku.com/embed/XOTEzOTg2Njc2\" allowfullscreen=\"\"></iframe></span></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在国内，每年因为行人闯红灯造成的交通事故数千起，“组团儿过马路”已经成为了中国特色，大家都忙着赚钱呢，哪有时间停下来干等，所以红灯对于行人来说警示意义不大。不只是在中国，没车就过马路的外国人也有的是，很明显单纯的“警示”已经不管用了，那该怎么办呢</span>？</p><p><br></p><p><img src=\"images/point_content/p9/1488778820184069.png\" title=\"1488778820184069.png\" alt=\"11.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在葡萄牙里斯本，有人就想出了这样的办法，在路口设置一个跳舞机，路过行人在这里跳舞，动作就会被同步到红灯上的小人儿，欧洲这些能歌善舞的民族，这群热爱凑热闹的人民们，就这样欢乐的high起来，不跳舞也会停下来看。结论是，效果非常明显，经过路口的人有81%停下来等红灯！果然脑洞打开之后，一切难题迎刃而解。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779029525554.png\" title=\"1488779029525554.png\" alt=\"22.png\"></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">你说我崇洋媚外，我说是歪果仁脑洞太开，过个马路都过的如此开心，相比较于我们经常出问题的交通指示灯，我们来看看人家的红绿灯是这样婶儿滴。</span><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span></p><p><img src=\"images/point_content/p9/1488779041101718.png\" title=\"1488779041101718.png\" alt=\"33.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">别说我崇洋媚外，我是说外国人脑洞太开，来看看那不勒斯的地铁站，是这样婶儿滴。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779052586248.png\" title=\"1488779052586248.png\" alt=\"44.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">还有什么斯德哥尔摩、汉堡的地铁站是这样婶儿。</span></p><p><br></p><p><img src=\"images/point_content/p9/1488779069952734.png\" title=\"1488779069952734.png\" alt=\"55.png\"><img src=\"images/point_content/p9/1488779080368168.png\" title=\"1488779080368168.png\" alt=\"66.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">再来个公交车站，站在这儿苦逼等车看起来都像是时尚街拍吧。</span><br></p><p><br></p><p><img src=\"images/point_content/p9/1488779119868293.png\" title=\"1488779119868293.png\" alt=\"77.png\"></p><p><br></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">最后再说一句，珍爱生命，减少“组团儿过马路”。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br></span><br></p>', 0);

-- --------------------------------------------------------

--
-- 表的结构 `points_class`
--

CREATE TABLE `points_class` (
  `pc_id` int(11) NOT NULL,
  `pc_number` smallint(4) NOT NULL COMMENT '传播官之家文章类别编号',
  `pc_name` varchar(16) NOT NULL COMMENT '传播官之家文章类别名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `points_class`
--

INSERT INTO `points_class` (`pc_id`, `pc_number`, `pc_name`) VALUES
(1, 1001, '干货'),
(2, 1002, '故事');

-- --------------------------------------------------------

--
-- 表的结构 `points_subclass`
--

CREATE TABLE `points_subclass` (
  `psc_id` int(11) NOT NULL,
  `psc_number` smallint(4) NOT NULL COMMENT '传播官之家文章主题编号',
  `psc_name` varchar(16) NOT NULL COMMENT '传播官之家文章主题名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `points_subclass`
--

INSERT INTO `points_subclass` (`psc_id`, `psc_number`, `psc_name`) VALUES
(1, 2001, '品牌资讯'),
(2, 2002, '拍片那些事'),
(3, 2003, '影像创造改变');

-- --------------------------------------------------------

--
-- 表的结构 `process`
--

CREATE TABLE `process` (
  `pro_id` int(11) NOT NULL,
  `pro_url` varchar(256) NOT NULL COMMENT '流程链接'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `process`
--

INSERT INTO `process` (`pro_id`, `pro_url`) VALUES
(1, 'https://v.qq.com/iframe/player.html?vid=e0382ubp1at&tiny=0&auto=0'),
(2, 'https://v.qq.com/iframe/player.html?vid=v03825rzu03&tiny=0&auto=0'),
(3, 'images/process/58c10a2324304.jpg'),
(4, 'images/process/58c10a32814a4.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `slides`
--

CREATE TABLE `slides` (
  `slides_id` int(11) NOT NULL,
  `slides_pic` varchar(128) NOT NULL COMMENT '轮播图图片地址',
  `slides_href` varchar(256) NOT NULL COMMENT '轮播图图片链接'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `slides`
--

INSERT INTO `slides` (`slides_id`, `slides_pic`, `slides_href`) VALUES
(1, 'images/index/slides-1.jpg', 'video.html?video_id=1'),
(2, 'images/index/slides-2.jpg', 'video.html?video_id=2'),
(3, 'images/index/slides-3.jpg', 'video.html?video_id=3');

-- --------------------------------------------------------

--
-- 表的结构 `video_purpose`
--

CREATE TABLE `video_purpose` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL COMMENT '视频用途名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `video_purpose`
--

INSERT INTO `video_purpose` (`id`, `name`) VALUES
(1, '筹款'),
(2, '项目宣传'),
(3, '公众教育'),
(4, '机构形象宣传'),
(5, '活动花絮');

-- --------------------------------------------------------

--
-- 表的结构 `video_region`
--

CREATE TABLE `video_region` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `video_region`
--

INSERT INTO `video_region` (`id`, `name`) VALUES
(1, '儿童'),
(2, '助学/教育'),
(3, '助残'),
(4, '环保'),
(5, '其他'),
(6, '扶贫'),
(7, '行业支持'),
(8, '社区服务');

-- --------------------------------------------------------

--
-- 表的结构 `video_type`
--

CREATE TABLE `video_type` (
  `id` int(11) NOT NULL,
  `name` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `video_type`
--

INSERT INTO `video_type` (`id`, `name`) VALUES
(1, '动画'),
(2, '纪实片'),
(3, '剧情片'),
(4, '社会实验');

-- --------------------------------------------------------

--
-- 表的结构 `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL COMMENT '作品名称',
  `url` varchar(256) NOT NULL COMMENT '作品链接',
  `intr` varchar(1024) NOT NULL COMMENT '作品介绍',
  `video_purpose` varchar(32) NOT NULL COMMENT '视频用途,逗号分隔',
  `video_type` int(11) NOT NULL COMMENT '视频形式',
  `company_type` int(11) NOT NULL COMMENT '视频主体',
  `video_region` varchar(32) NOT NULL COMMENT '视频领域',
  `director_class` int(11) NOT NULL COMMENT '导演类别',
  `likes` int(11) NOT NULL COMMENT '喜欢人数',
  `watchs` int(11) NOT NULL COMMENT '观看人数',
  `pic` varchar(128) NOT NULL COMMENT '作品图片',
  `director_id` int(11) NOT NULL COMMENT '导演id',
  `narrate` varchar(1024) NOT NULL COMMENT '创意解说',
  `comment` varchar(1024) NOT NULL COMMENT '客户评论'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `works`
--

INSERT INTO `works` (`id`, `name`, `url`, `intr`, `video_purpose`, `video_type`, `company_type`, `video_region`, `director_class`, `likes`, `watchs`, `pic`, `director_id`, `narrate`, `comment`) VALUES
(1, '灵山基金会为爱行走宣传片', 'https://v.qq.com/iframe/player.html?vid=n0344snkp00&tiny=0&auto=1', '为爱行走是由中国灵山公益慈善促进会和灵山慈善基金会联合发起主办的大型徒步公益活动，旨在倡导公众通过行走的方式参与公益，并通过团队的努力为民间公益项目筹款。 2013、2014年，为爱行走已经在无锡、成都成功举办，共计6457人组队参与，带动21431人进行捐款，总计为118个公益项目筹集3941837.88元筹款。2015年，为爱行走将在无锡、成都、广州、南京、张家港五个城市举办。', '2,3', 3, 2, '6', 1, 42, 2690, 'images/works/case_58abe6850cbc9.png', 1, '本片通过一镜到底的特殊拍摄手法，将人们从小到大对于公益理解的变化阐述得一气呵成、生动形象；采用第一人称的角度，有助于公众更好地代入自身对公益的理解，被影片中“为爱行走”的倡议所感染，在行走的过程中找寻过去忽视的风景，汗水为贫困山区儿童搭建起知识的桥梁、用笑容为流浪者送去爱的关怀、用行动为需要帮助的人筹集爱心，从而帮助机构引导公众用徒步的方式参与到为爱行走的大型徒步公益活动中。', '很久没有看到这么趣味盎然的项目宣传视频了，一镜到底的拍摄技术非常赞，一气呵成，思路流畅，通过主角在成长道路上的行走，对公益的理解也逐渐在成长，将为爱行走的主题讲述得淋漓尽致，帮助我们徒步公益项目的宣传和筹款，让更多人参与到我们的慈善活动中来，总体来说非常满意。'),
(2, '中国慈善联合会第五届慈展会快闪宣传片', 'https://v.qq.com/iframe/player.html?vid=e03305cu7z0&tiny=0&auto=1', '中国公益慈善项目交流展示会（简称“慈展会”），由中华人民共和国民政部、国务院国有资产监督管理委员会、中华全国工商联合会、广东省人民政府、深圳市人民政府、中国慈善联合会共同主办。', '2', 1, 1, '6', 1, 37, 1211, 'images/works/case_58abfcf2c1c02.png', 1, '为什么说某些流行音乐很洗脑，因为他在不断地重复。而颗粒公益为今年慈展会打造的快闪视频可谓历年慈展会宣传片的一股泥石流。不断重复近似魔性的背景音乐搭配飞速掠过的关键词，让人看完一遍再看一遍，根本停不下来。而慈展会宣传片的成功也有力地证明了我们在传播过程中两个重要的元素：1.我们在传递信息时最重要的是让别人听懂。2.形式感的创新更容易吸引大众的眼球，以及烘托整个活动的创新主旋律。', '这个片子的风格十分独特，它是慈展会前几届都没有尝试过的一种风格。它很魔性，我们自己也忍不住看了很多遍，所以它的播放量很高，达到了很好的宣传效果，同时有很多很突出的关键词也引发了公益人的思考。这种创新的形式也非常匹配我们今年慈展会“创新”的主题。'),
(3, '熟悉的眼神——深圳宝安妇联反家暴宣传片', 'https://v.qq.com/iframe/player.html?vid=n0509r55ynv&tiny=0&auto=0', '', '3', 3, 1, '7', 1, 32, 1509, 'images/works/case_5a33eb5e2f1bc.png', 2, '', '本次拍片任务重，但颗粒公益的小伙伴本着专业和负责的工作态度，相互配合完成了这次合作，成片得到肯定，非常感谢～          '),
(4, '绿芽基金会儿童性教育动画片', 'https://v.qq.com/iframe/player.html?vid=c05092kthpt&tiny=0&auto=0', '', '2,3,4', 2, 2, '1,6', 1, 41, 2545, 'images/works/case_5a33f08fcb943.png', 2, '', '效率高。\r\n\r\n需要改进的地方是：有段时间不太清楚进度和流程，中途线上沟通脚本。后来剩下一周的时间见面了，沟通后知道说我们要定下来脚本，才能继续下面的绘画制作。\r\n\r\n嗯如果能够有一个大致的时间和流程安排，会更好。            '),
(5, '北京农禾之家咨询服务中心宣传片', 'https://v.qq.com/iframe/player.html?vid=g0515dmz5y8&tiny=0&auto=0', '北京农禾之家咨询服务中心意在倡导和指导农民合作组织走向集金融、供销、推广、教育、社会服务于一体的综合发展方向。并致力于为农民合作组织与社会各界进行资源链接，同时协同地方政府进行综合农协的政策试点探索。', '4', 1, 5, '8', 1, 17, 935, 'images/works/case_5aefcc2c897d6.jpg', 3, '以一个农禾之家的项目专员为主角，通过镜头讲述他长期驻扎，并且带动村民形成自发管理，帮助村民探索生态可持续状态下实现在地农民就地现代化的可行道路。宣传片以项目专员为线索贯穿，通过日常的活动徐徐展开农禾之家农民共富、集体发声、城乡平等、互补共荣、社会和谐的愿景和使命。', '时间紧，任务重的情况下，团队高效，专业的完成了拍摄和剪辑，并且宣传片效果非常符合项目的愿景和内容，资方也非常满意！'),
(6, '桂馨慈善基金会宣传片', 'https://v.qq.com/iframe/player.html?vid=p0339ke27px&tiny=0&auto=0', '桂馨基金会是一家关注中国乡村教育的慈善机构。基金会致力于改善中国乡村基础教育环境，遵循平等、互助原则，帮助在经济、社会地位或身体条件处于不利地位的乡村教师和学生。积极扶持有合作伙伴参与、公众支持和志愿者服务的、可持续发展的公益项目，促进教育公平和社会发展。', '4', 1, 2, '2', 1, 33, 1736, 'images/works/case_5aefd28d0af50.jpg', 4, '', '导演对基金会工作的理解很深入，撰写的旁白也很精彩到位。');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_type`
--
ALTER TABLE `company_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `director_class`
--
ALTER TABLE `director_class`
  ADD PRIMARY KEY (`dc_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `order_company`
--
ALTER TABLE `order_company`
  ADD PRIMARY KEY (`oc_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`point_id`);

--
-- Indexes for table `points_class`
--
ALTER TABLE `points_class`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `points_subclass`
--
ALTER TABLE `points_subclass`
  ADD PRIMARY KEY (`psc_id`);

--
-- Indexes for table `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slides_id`);

--
-- Indexes for table `video_purpose`
--
ALTER TABLE `video_purpose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_region`
--
ALTER TABLE `video_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_type`
--
ALTER TABLE `video_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `company_type`
--
ALTER TABLE `company_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `director`
--
ALTER TABLE `director`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `director_class`
--
ALTER TABLE `director_class`
  MODIFY `dc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `order_company`
--
ALTER TABLE `order_company`
  MODIFY `oc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `points`
--
ALTER TABLE `points`
  MODIFY `point_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `points_class`
--
ALTER TABLE `points_class`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `points_subclass`
--
ALTER TABLE `points_subclass`
  MODIFY `psc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `process`
--
ALTER TABLE `process`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `slides`
--
ALTER TABLE `slides`
  MODIFY `slides_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `video_purpose`
--
ALTER TABLE `video_purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `video_region`
--
ALTER TABLE `video_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `video_type`
--
ALTER TABLE `video_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
