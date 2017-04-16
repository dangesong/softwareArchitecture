-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017-01-08 16:54:15
-- 服务器版本: 5.5.49-0ubuntu0.14.04.1
-- PHP 版本: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `pedia`
--

-- --------------------------------------------------------

--
-- 表的结构 `Action`
--

CREATE TABLE IF NOT EXISTS `Action` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `neweid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `Action`
--

INSERT INTO `Action` (`aid`, `eid`, `uid`, `neweid`, `status`, `actionTime`) VALUES
(1, 3, 3, 5, 3, '2017-01-07 13:13:58'),
(2, 1, 2, 15, 2, '2017-01-07 13:14:00'),
(3, 2, 3, 34, 2, '2017-01-07 13:15:02');

-- --------------------------------------------------------

--
-- 表的结构 `Comment`
--

CREATE TABLE IF NOT EXISTS `Comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `commentContent` varchar(64) NOT NULL,
  `commentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `Comment`
--

INSERT INTO `Comment` (`cid`, `eid`, `uid`, `commentContent`, `commentTime`) VALUES
(1, 1, 2, '这是一条评论', '2017-01-06 17:25:20'),
(2, 1, 2, '你在玩什么呢', '2017-01-06 18:09:27'),
(3, 2, 2, '这是一条评论', '2017-01-06 17:25:20'),
(4, 2, 2, '你在玩什么呢', '2017-01-06 18:09:27'),
(5, 34, 2, '是', '2017-01-07 14:30:04');

-- --------------------------------------------------------

--
-- 表的结构 `Entry`
--

CREATE TABLE IF NOT EXISTS `Entry` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `entryName` varchar(64) NOT NULL,
  `entryContent` varchar(1024) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `praiseTimes` int(11) NOT NULL DEFAULT '0',
  `badReviewTimes` int(11) NOT NULL DEFAULT '0',
  `reportTimes` int(11) NOT NULL DEFAULT '0',
  `pictureAddr` varchar(128) DEFAULT 'defaultEntryPic.jpg',
  `publishTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `refuseReason` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `Entry`
--

INSERT INTO `Entry` (`eid`, `uid`, `entryName`, `entryContent`, `status`, `praiseTimes`, `badReviewTimes`, `reportTimes`, `pictureAddr`, `publishTime`, `refuseReason`) VALUES
(1, 2, 'java', 'java啦啦啦啦黄色信息', 5, 3, 0, 3, 'defaultEntryPic.jpg', '2017-01-07 13:13:45', ''),
(2, 2, 'c++', 'C++是C语言的继承，它既可以进行C语言的过程化程序设计，又可以进行以抽象数据类型为特点的基于对象的程序设计，还可以进行以继承和多态为特点的面向对象的程序设计。C++擅长面向对象程序设计的同时，还可以进行基于过程的程序设计，因而C++就适应的问题规模而论，大小由之。[1] \nC++不仅拥有计算机高效运行的实用性特征，同时还致力于提高大规模程序的编程质量与程序设计语言的问题描述能力。', 4, 19, 0, 0, '611aba417cac4b0083d0a64d7b2a416e.jpeg', '2017-01-07 12:42:31', ''),
(3, 2, 'c', 'C语言是一门通用计算机编程语言，应用广泛。C语言的设计目标是提供一种能以简易的方式编译、处理低级存储器、产生少量的机器码以及不需要任何运行环境支持便能运行的编程语言。\n尽管C语言提供了许多低级处理的功能，但仍然保持着良好跨平台的特性，以一个标准规格写出的C语言程序可在许多电脑平台上进行编译，甚至包含一些嵌入式处理器（单片机或称MCU）以及超级电脑等作业平台。\n二十世纪八十年代，为了避免各开发厂商用的C语言语法产生差异，由美国国家标准局为C语言订定了一套完整的国际标准语法，称为ANSI C，作为C语言最初的标准。\nC语言之所以命名为C，是因为 C语言源自Ken Thompson发明的B语言，而 B语言则源自BCPL语言。\n1967年，剑桥大学的Martin Richards对CPL语言进行了简化，于是产生了BCPL（Basic Combined Programming Language）语言。\n\n20世纪60年代，美国AT&T公司贝尔实验室（AT&T Bell Laboratory）的研究员Ken Thompson闲来无事，手痒难耐，想玩一个他自己编的，模拟在太阳系航行的电子游戏——S\nC语言之所以命名为C，是因为 C语言源自Ken Thompson发明的B语言，而 B语言则源自BCPL语言。\n1967年，剑桥大学的Martin Richards对CPL语言进行了简化，于是产生了BCPL（Basic Combined Programming Language）语言。\nc语言宣传图\nc语言宣传图\n20世纪60年代，美国AT&T公司贝尔实验室（AT&T Bell Laboratory）的研究员Ken Thompson闲来无事，手痒难耐，想玩一个他自己编的，模拟在太阳系航行的电子游戏——Space Travel。他背着老板，找到了台空闲的机器——PDP-7。但这台机器没有操作系统，而游戏必须使用操作系统的一些功能，于是他着手为PDP-7开发操作系统。后来，这个操作系统被命名为——UNIX。', 2, 5, 3, 0, '06fc17c344f740efa00a8fc1ae0f7baa.png', '2017-01-08 05:11:23', ''),
(4, 2, '被举报测试词条', '快举报我啊', 5, 0, 0, 1, '', '2017-01-07 13:16:01', ''),
(5, 2, 'c', '啦啦啦啦啦第一次修改', 5, 0, 0, 0, '', '2017-01-07 13:13:52', ''),
(12, 2, '用户', '这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节', 2, 0, 0, 0, '77c5c8de5b8e44a6af011dbaf6ba1d6f.png', '2017-01-05 04:26:25', NULL),
(13, 2, '测试词条23333', '22这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节', 3, 0, 0, 0, '2f4829f36fd9491e80d3d018b262b9a6.png', '2017-01-07 04:20:42', ''),
(14, 2, '测试词条666', '22这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节这是细节', 2, 0, 0, 0, NULL, '2017-01-07 04:20:34', NULL),
(15, 2, 'java', 'java第一次修改啦啦啦啦啦啦啦啦', 2, 3, 0, 0, 'defaultEntryPic.jpg', '2017-01-07 04:21:45', NULL),
(16, 2, 'jquery', 'HTTP 请求：GET vs. POST两种在客户端和服务器端进行请求-响应的常用方法是：GET 和 POST。    GET - 从指定的资源请求数据    POST - 向指定的资源提交要处理的数据GET 基本上用于从服务器获得（取回）数据。注释：GET 方法可能返回缓存数据。POST 也可用于从服务器获取数据。不过，POST 方法不会缓存数据，并且常用于连同请求一起发送数据。如需学习更多有关 GET 和 POST 以及两方法差异的知识，请阅读我们的 HTTP 方法 - GET 对比 POST。', 2, 0, 0, 0, 'e2d1baf927b7490ca9db882aa98444ec.jpeg', '2017-01-07 06:39:25', NULL),
(23, 2, 'java', 'java啦啦啦啦黄色信息你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔你个小煞笔', 6, 0, 0, 0, 'defaultEntryPic.jpg', '2017-01-07 10:14:56', NULL),
(30, 2, 'java', 'java啦啦啦啦黄色信息dsfdwfevgbtbhytwdbweufcgeufgeycbeguegfqeugfveiugv', 3, 0, 0, 0, 'defaultEntryPic.jpg', '2017-01-07 10:32:03', ''),
(31, 2, 'java', 'java啦啦啦啦黄色信息husv西四环次vbdibdivbidvbdb的的反病毒代表vfdbdhvbdhabv的百分比', 6, 0, 0, 0, 'c3148f78168847dca4b211273493a20e.jpeg', '2017-01-07 10:34:07', NULL),
(32, 2, 'java', 'java啦啦啦啦黄色信息', 6, 0, 0, 0, '0b67ec478d304175a1c8ecb0adc47663.jpeg', '2017-01-07 11:43:39', NULL),
(33, 2, 'java', 'java啦啦啦啦黄色信息', 6, 0, 0, 0, 'bfa423b333d649308c1650848c09a016.jpeg', '2017-01-07 12:18:07', NULL),
(34, 2, 'c++', 'c++第一次改动', 2, 19, 0, 0, '0abe7a6014874c35a4bb6197383ce6c3.jpeg', '2017-01-07 13:14:43', NULL),
(35, 2, 'sdwf', 'dfds', 2, 0, 0, 0, '0f6b5b62172a4742ab3e57abbca3e29f.jpeg', '2017-01-07 12:50:38', NULL),
(36, 2, 'gyotg7', 'oug7tr6ede4ws', 2, 0, 0, 0, '3dd749b7acef469695acf03b9f20c3a3.jpeg', '2017-01-07 14:21:52', NULL),
(37, 2, 'gyotg7', 'oug7tr6ede4ws', 2, 0, 0, 0, 'a5091212c53e413db1b1437c43ee2da1.jpeg', '2017-01-07 14:22:17', NULL),
(38, 2, 'gyotg7', 'oug7tr6ede4ws', 2, 0, 0, 0, '561a9dcd843a49ae8ca2c0cba68093b4.jpeg', '2017-01-07 14:22:33', NULL),
(39, 2, 't7ift6', 'bug', 3, 0, 0, 0, '84754c3180d3475f9388c8499a83cb58.jpeg', '2017-01-07 14:23:05', ''),
(40, 2, '1', 'wdfew', 2, 0, 0, 0, '831bfb8152c74f34b7b247c1ae72febb.jpeg', '2017-01-07 14:24:21', NULL),
(41, 2, 'swfdewef', 'regrhbhtnth', 2, 0, 0, 0, '0193244666494fc0879ea48835d05910.jpeg', '2017-01-07 14:25:56', NULL),
(42, 2, 'java', 'java啦啦啦啦黄色信息sfesdgdfbfrbdd萨芬萨vcsaxcdcbv', 6, 0, 0, 0, 'd5ac8ccf9fdd4734bc7cfc6c7aa9c2f1.jpeg', '2017-01-07 14:26:31', NULL),
(43, 2, '第一次测试', '这是我的第一次测试222222223232323232323232323232咯咯咯咯', 2, 0, 0, 0, 'defaultEntryPic.jpg', '2017-01-08 04:24:31', NULL),
(44, 8, '测试', '你是的的的放到地方地方', 3, 0, 0, 0, 'defaultEntryPic.jpg', '2017-01-08 06:28:35', ''),
(45, 8, '是的温度是多少', '大苏打实打实的打算大苏打实打实打算', 5, 0, 0, 0, 'defaultEntryPic.jpg', '2017-01-08 06:28:52', NULL),
(46, 8, '第一次测试', '11111111111111111111111112121', 2, 0, 0, 0, '4216ac1b89444ee39824210b9e3b068e.png', '2017-01-08 08:37:53', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `Label`
--

CREATE TABLE IF NOT EXISTS `Label` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) NOT NULL,
  `labelContent` varchar(16) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=152 ;

--
-- 转存表中的数据 `Label`
--

INSERT INTO `Label` (`lid`, `eid`, `labelContent`) VALUES
(1, 1, '计算机语言'),
(2, 1, '高及程序设计语言'),
(3, 2, '高级程序设计语言'),
(4, 2, '计算机语言'),
(5, 3, '协议'),
(6, 3, '计算机网络'),
(19, 12, 'IT项目管理'),
(20, 12, '大作业'),
(21, 12, '我的标签'),
(22, 13, 'IT项目管理'),
(23, 13, '大作业'),
(24, 13, '我的标签'),
(25, 14, 'IT项目管理'),
(26, 14, '大作业'),
(27, 14, '我的标签'),
(28, 16, 'http'),
(29, 16, ''),
(30, 16, ''),
(31, 16, ''),
(32, 17, ''),
(33, 17, ''),
(34, 17, ''),
(35, 17, ''),
(36, 18, ''),
(37, 18, ''),
(38, 18, ''),
(39, 18, ''),
(40, 19, ''),
(41, 19, ''),
(42, 19, ''),
(43, 19, ''),
(44, 20, ''),
(45, 20, ''),
(46, 20, ''),
(47, 20, ''),
(48, 21, ''),
(49, 21, ''),
(50, 21, ''),
(51, 21, ''),
(52, 22, ''),
(53, 22, ''),
(54, 22, ''),
(55, 22, ''),
(56, 23, '计算机语言'),
(57, 23, '高及程序设计语言'),
(58, 23, ''),
(59, 23, ''),
(60, 24, '计算机语言'),
(61, 24, '高及程序设计语言'),
(62, 24, ''),
(63, 24, ''),
(64, 25, '计算机语言'),
(65, 25, '高及程序设计语言'),
(66, 25, ''),
(67, 25, ''),
(68, 26, ''),
(69, 26, ''),
(70, 26, ''),
(71, 26, ''),
(72, 27, ''),
(73, 27, ''),
(74, 27, ''),
(75, 27, ''),
(76, 28, ''),
(77, 28, ''),
(78, 28, ''),
(79, 28, ''),
(80, 29, '计算机语言'),
(81, 29, '高及程序设计语言'),
(82, 29, ''),
(83, 29, ''),
(84, 30, '计算机语言'),
(85, 30, '高及程序设计语言'),
(86, 30, ''),
(87, 30, ''),
(88, 1, '计算机语言'),
(89, 1, '高及程序设计语言'),
(90, 1, ''),
(91, 1, ''),
(92, 1, '计算机语言'),
(93, 1, '高及程序设计语言'),
(94, 1, '计算机语言'),
(95, 1, '高及程序设计语言'),
(96, 1, '计算机语言'),
(97, 1, '高及程序设计语言'),
(98, 1, '计算机语言'),
(99, 1, '高及程序设计语言'),
(100, 1, '计算机语言'),
(101, 1, '高及程序设计语言'),
(102, 1, '计算机语言'),
(103, 1, '高及程序设计语言'),
(104, 35, ''),
(105, 35, ''),
(106, 35, ''),
(107, 35, ''),
(108, 36, 'giyuft6'),
(109, 36, ''),
(110, 36, ''),
(111, 36, ''),
(112, 37, 'giyuft6'),
(113, 37, ''),
(114, 37, ''),
(115, 37, ''),
(116, 38, 'giyuft6'),
(117, 38, ''),
(118, 38, ''),
(119, 38, ''),
(120, 39, 'fytrf'),
(121, 39, ''),
(122, 39, ''),
(123, 39, ''),
(124, 40, '1'),
(125, 40, ''),
(126, 40, ''),
(127, 40, ''),
(128, 41, 'degre'),
(129, 41, ''),
(130, 41, ''),
(131, 41, ''),
(132, 1, '计算机语言'),
(133, 1, '高及程序设计语言'),
(134, 1, '计算机语言'),
(135, 1, '高及程序设计语言'),
(136, 43, '测试测试'),
(137, 43, '23333'),
(138, 43, ''),
(139, 43, ''),
(140, 44, '1'),
(141, 44, '2'),
(142, 44, '3'),
(143, 44, '4'),
(144, 45, '是多少'),
(145, 45, ''),
(146, 45, ''),
(147, 45, ''),
(148, 46, '1111'),
(149, 46, '21212测试'),
(150, 46, ''),
(151, 46, '');

-- --------------------------------------------------------

--
-- 表的结构 `Report`
--

CREATE TABLE IF NOT EXISTS `Report` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `reason` varchar(32) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `reportTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `Report`
--

INSERT INTO `Report` (`rid`, `eid`, `uid`, `reason`, `status`, `reportTime`) VALUES
(1, 1, 1, '包含黄色信息', 3, '2017-01-07 14:24:26'),
(2, 1, 2, '太黄了', 3, '2017-01-07 14:24:23'),
(3, 1, 2, '太黄了额', 2, '2017-01-07 14:24:20'),
(4, 4, 2, '举报测试', 2, '2017-01-07 14:24:09');

-- --------------------------------------------------------

--
-- 表的结构 `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `userName` varchar(32) DEFAULT NULL,
  `iconAddr` varchar(128) DEFAULT 'defaultUserIcon.png',
  `role` int(11) NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `lastLoginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `User`
--

INSERT INTO `User` (`uid`, `account`, `password`, `userName`, `iconAddr`, `role`, `level`, `exp`, `lastLoginTime`) VALUES
(1, 'root', '63a9f0ea7bb98050796b649e85481845', '管理员', 'defaultUserIcon.png', 2, 0, 0, '2017-01-05 09:26:31'),
(2, 'test', '098f6bcd4621d373cade4e832627b4f6', '测试用户', 'f52d9bacaf474896a35125d434300142.jpeg', 1, 4, 24, '2017-01-08 03:33:07'),
(3, 'test2', 'a004816f6b10399bdc855b3536b3aef0', '测试用户2', 'defaultUserIcon.png', 1, 3, 15, '2017-01-04 04:45:10'),
(4, 'test3', '8ad8757baa8564dc136c1e07507f4a98', '测试用户3', 'defaultUserIcon.png', 1, 0, 0, '2017-01-05 09:36:36'),
(5, 'test23333', '098f6bcd4621d373cade4e832627b4f6', '测试用户4', 'defaultUserIcon.png', 1, 0, 0, '2017-01-07 08:15:44'),
(7, '13710685836', '202cb962ac59075b964b07152d234b70', '何徐昊', 'defaultUserIcon.png', 2, 0, 0, '2017-01-08 08:38:08'),
(8, '13710685839', '202cb962ac59075b964b07152d234b70', '没名字', 'defaultUserIcon.png', 1, 2, 5, '2017-01-08 08:36:53'),
(9, '12345678900', 'e10adc3949ba59abbe56e057f20f883e', '没名字2', 'defaultUserIcon.png', 1, 0, 0, '2017-01-08 02:35:56');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
