-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-12-30 18:01:17
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
  `point_content` varchar(4096) NOT NULL COMMENT '文章内容',
  `isRec` tinyint(1) NOT NULL COMMENT '是否为首页推荐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `points`
--

INSERT INTO `points` (`point_id`, `pc_number`, `psc_number`, `point_pic`, `point_title`, `point_intr`, `point_watchCount`, `point_goodCount`, `point_sendTime`, `point_content`, `isRec`) VALUES
(1, 1001, 2001, 'images/point/spread_58b91eecdef3a.jpg', '三个广告公司不为人知的大坑，避开它们，视频质量有保证！', '为了让我们公益人的声音传播得更加响亮、更加久远，不少公益同行选择与广告公司合作，用公益广告号召公众加入我们。但据一些公益人反映，本来美好的想法却遭遇了广告公司的超级大坑。', 270, 21, 1577722050, '<p>“充电5分钟，通话两小时”、“今年过节不收礼，收礼只收×××”……这些广告的流传度绝对不亚于每晚7点准时与大家见面的《新闻联播》，广告的威力也由此可见一斑。</p><br><p>为了让我们公益人的声音传播得更加响亮、更加久远，不少公益同行选择与广告公司合作，用公益广告号召公众加入我们。但据一些公益人反映，本来美好的想法却遭遇了广告公司的超级大坑。</p><br><p> 1.报价“坑”——艺术无价人有情，便宜一点行不行？ 本着“花好钱买好货”的原则，我们一般希望与稍大一些的广告公司合作。但实际与大公司接洽时才发现，“优质的”报价远远不是我们这些公益人能承担的。无可奈何之下，只能心有芥蒂地去跟相对较小的公司合作。但是，小公司的业务人员罗列的一项又一项费用也让人大跌眼镜。所谓的成本又是如何计算的，相加起来怎么就成天文数字了？ </p><br><p> 2.时间“坑”——视频制作完成的日期都不确定？ 经过千辛万苦的谈判，付了定金，签了合同，我们满心欢喜地做着项目，只等着合同约定的时期。 </p><br><p> 然而，当我们怀着激动的心情拨通广告公司电话时，对方却淡淡地告诉我们：“不好意思啊先生，本着为视频质量负责的态度，我们前期做了大量调研、策划、准备工作，一次次自我推翻、否定，中间经历了………所以，我们希望您能多给我们几天时间，我们保证最后呈现给您的作品使我们最棒的。” 当拖延症成为全行业的通病，难道就没有什么方法可以监督进程吗？ </p><br><p> 3.视频质量“坑”——千辛万苦，等来的却是“杀马特”风？ 即使价格略高、时间拖延，可为了让更多人看到我们的公益广告，一些公益人咬咬牙也忍了。但是，看视频样片时才发现，要么是一本”动感影集“，要么是一部夹杂少许漫画的PPT轮播。更有甚者，一些公司打着“简洁美”的旗号，制作出的却是八竿子打不着的作品。 </p><br><p>你以为最终的作品会是这样的：</p><p><img src=\"images/point_content/1488526949270380.png\"/></p><br><p>活泼的动画风、时尚的电视台风格、精致的画面，处处合我口味！</p><br><p>或是这样的：</p><p><img src=\"images/point_content/1488526961254793.png\"/></p><br><p>纪实性照片直击观众内心。</p><br><p>反正，绝对不是那些“妖艳贱货”。然而，实际上却是这样的：</p><p><img src=\"images/point_content/1488526973862703.png\"><img src=\"images/point_content/1488526985905118.jpg\"></p><p>“早知道是这样，就用这些钱去做一些有意义的项目，服务更多人。”</p><br><p>其实，如果能在与广告公司的合作中避开前面的3个大坑，一般就不会收到“残废品”。为了避免各种大坑，小编这里给大家介绍的，是一个叫“看得见”的平台。</p><br><p>【“看得见”是什么？】<br>“看得见”团队成员大部分都有公益组织从业经历，大家遇到的这些坑，“看得见”何尝不是深恶痛绝？幸运的是“看得见”有感于这些乱象，决心为公益人搭建一个行业领先的公益视频制作平台。</p><br><p>【“看得见”的填坑大法】<br>1、报价透明看得见<br>针对客户的需求方案，我们仅需3分钟即为您定制专属报价单，价格构成一清二楚，与“大约✘✘万”说再见。</p><br><p>2、进度流程看得见<br>签订合同后，您可以根据订单号在网站后台查询视频制作实时进度。同时，这样也可以监督“看得见”准时完成任务。</p><br><p>3、视频质量看得见<br>“看得见”隶属“颗粒公益”旗下，专业服务公益行业，230+公益机构都是我们最亲密的小伙伴。所以，咱们公益人的需求，我们不仅“看得见”，而且看的更清晰。</p><br><p>好话说太多容易变成吹牛，实际情况如何，点击右上角的“开始报价”免费为您评估方案。</p>', 1),
(2, 1001, 2001, 'images/point/spread_58b91829083b1.jpg', '对你的项目宣传抓耳挠腮？不如讲个故事吧', '在公益影像这个领域上，顾源源积累了大量的专业经验，利用镜头，颗粒公益讲述了两百多个公益故事。创始人在现场利用视频为听众剖析在互联网时代，如何用视频这一传播利器，快速占据观众的注意力，将想要表达的信息，告诉你的目标受众。', 295, 27, 1577725153, '<p style=\"text-align: center;\">“怎样写一个吸引人的标题”</p><p style=\"text-align: center;\">“作为一个公益组织，如何利用更多的渠道来做一个推广”</p><p style=\"text-align: center;\">“如何组建一个组织的传播架构”</p><p style=\"text-align: center;\">“如何让千篇一律的活动的后记有新鲜感”</p><p style=\"text-align: center;\">“如何塑造一个好的画面感”</p><p style=\"text-align: center;\">......</p><br><br><p style=\"text-align: center;\">这些问题，或许是每一个公益传播者，最为关心。</p style=\"text-align: center;\"><br><p>在第六届志愿服务广州交流会展馆的尽头，颗粒分馆进行最后一期，依旧是围绕公益传播，为每一位听众解疑答惑。</p><p><img src=\"http://127.0.0.1:5050/images/point_content/p2/1488524958988469.jpg\"></p><p><img src=\"http://127.0.0.1:5050/images/point_content/p2/1488525105945871.jpg\"></p><p><img src=\"http://127.0.0.1:5050/images/point_content/p2/1488524993741636.jpg\"></p><br><p style=\"text-align: center;\">嘉宾分享</p><p style=\"text-align: center;\">Ⅰ颗粒公益创始人顾源源分享：如何讲故事</p><br><p><img src=\"http://127.0.0.1:5050/images/point_content/p2/1488525057984596.jpg\"></p><br><p>在公益影像这个领域上，顾源源积累了大量的专业经验，利用镜头，颗粒公益讲述了两百多个公益故事。创始人在现场利用视频为听众剖析在互联网时代，如何用视频这一传播利器，快速占据观众的注意力，将想要表达的信息，告诉你的目标受众。</p><br><p><iframe src=\"https://v.qq.com/iframe/player.html?vid=i0352a7jgw4&tiny=0&auto=0\"frameborder=\"0\"width=\"100%\"height=\"498\"></iframe></p><br><br><p>颗粒宣传片作为讲故事的第一等级，做到了3个点：<br>1.让观众记住了一些关键词，至少知道了颗粒公益是拍视频的 。<br>2.颗粒公益拍过很多大牌公益组织，是有实力的。<br>3.传递出了颗粒公益是一个走心的组织。<br>通过一些我们熟悉的词汇来营造一些画面感，比一味地堆砌专业术语更容易让人记住。</p><br><br><p><iframe src=\"https://v.qq.com/iframe/player.html?vid=e03305cu7z0&tiny=0&auto=0\"frameborder=\"0\"width=\"100%\"height=\"498\"></iframe></p><br><br><p>为什么说某些流行音乐很洗脑，因为他在不断地重复。而颗粒公益为今年慈展会打造的快闪视频可谓历年慈展会宣传片的一股泥石流。不断重复近似魔性的背景音乐搭配飞速掠过的关键词，让人看完一遍再看一遍，根本停不下来。而慈展会宣传片的成功也有力地证明了我们在传播过程中两个重要的元素：</p><p>1.我们在传递信息时最重要的是让别人听懂<br>2.形式感的创新更容易吸引大众的眼球，以及烘托整个活动的创新主旋律。</p><br><br><p><iframe src=\"https://v.qq.com/iframe/player.html?vid=i01830ru5il&tiny=0&auto=0\"frameborder=\"0\"width=\"100%\"height=\"498\"></iframe></p><p>很多时候我们已经成功地吸引了大众来看，但更重要的是，让这些人看完视频能够行动起来。这才是公益传播的目标。通过爱德基金会进城务工人员支持计划公益广告以及善行100活动宣传片的示例，阐述了打动人和共鸣是驱动力。我们在传播的时候往往会陷入向公众传达我们做了很多的怪圈，但其实传递出“我们做的还不够，我们还需要更努力”这样的信息更能打动人。</p><br><br><p>Ⅱ“别样”新媒体公众号主编、摄影师方瘦兽分享：如何利用图片讲一个好故事</p><p><img src=\"http://127.0.0.1:5050/images/point_content/p2/1488525278435156.jpg\"></p><br><br><p>在每一个新媒体运营者的心里，可能都有一个10万+的梦。方瘦兽教你如何用好图片编辑来敲开10万+的大门。一个好的题图会让人有打开链接的欲望，一个好的头图是让人继续读下去的推动力，而一个出色的图片结尾决定会不会想要转发。方瘦兽分享了利用好图片的5大元素：<br>1.图片编辑：挑选合适的图片<br>2.氛围：通过照片的辅助可以让你减去一些文字的形容。<br>3.信息：一张图片所传达出来的信息是挑选图片的重要指标，让文字故事事半功倍。<br>4.时间：插入图片的时间或者说顺序直接影响故事的节奏感。<br>5.现场感：挑选合适氛围的照片，传达恰当的信息，把握合适的节奏，这些都是为了营造出一种现场感，让人觉得真实。<br></p><br><br><p><img src=\"http://127.0.0.1:5050/images/point_content/p2/1488525283861271.jpg\"></p><br><br><p>羊城公益咖啡馆－颗粒公益传播分馆到这已经结束了，但公益传播还在继续。在这个碎片化的时代，人们越来越不愿意花时间在文字信息的汲取上，或许影像和图片这样快速获取信息的方式会渐渐成为主流。但无论传播方式和传播渠道是什么，内容才是最主要的东西，而传播只是活动情景的再现。</p><br><br><p>我们很庆幸，在这个还不太完美的世界里，有这么多可爱的人们在用自己的点滴力量去感化身边的不美好，去努力传播善良正直的价值观。在每一期活动中，我们都聚拢了一大批公益传播者，他们不断用自己力量来传达公益理念，坚持着自己的初心。</p>', 1);

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

--
-- Indexes for dumped tables
--

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
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slides_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `points`
--
ALTER TABLE `points`
  MODIFY `point_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- 使用表AUTO_INCREMENT `slides`
--
ALTER TABLE `slides`
  MODIFY `slides_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
