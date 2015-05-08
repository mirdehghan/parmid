-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2015 at 05:25 PM
-- Server version: 5.5.42-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ariadevi_sangposht`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE IF NOT EXISTS `attachment` (
  `attachmentid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `letterid` mediumint(8) unsigned NOT NULL,
  `filename` varchar(300) NOT NULL,
  `address` varchar(500) NOT NULL,
  `filesize` varchar(30) NOT NULL,
  PRIMARY KEY (`attachmentid`),
  KEY `letterid` (`letterid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `attachment`
--

INSERT INTO `attachment` (`attachmentid`, `letterid`, `filename`, `address`, `filesize`) VALUES
(1, 1, 'DSC_0003.jpg', 'attachments/1411570801.37.jpg', '1730'),
(2, 6, 'apache_pb.png', 'attachments/1413822220.57.png', '1'),
(3, 7, 'amuzesheNasb.pdf', 'attachments/1414852893.31.pdf', '983'),
(4, 8, 'kardani_karshenasi(1).pdf', 'attachments/1414912239.47.pdf', '284'),
(5, 8, '2048.jpg', 'attachments/1414912267.97.jpg', '103');

-- --------------------------------------------------------

--
-- Table structure for table `grouppermission`
--

CREATE TABLE IF NOT EXISTS `grouppermission` (
  `grouppermissionid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` mediumint(8) unsigned NOT NULL,
  `permissionid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`grouppermissionid`),
  KEY `permissionid` (`permissionid`),
  KEY `groupid` (`groupid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `grouppermission`
--

INSERT INTO `grouppermission` (`grouppermissionid`, `groupid`, `permissionid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 3),
(5, 3, 3),
(6, 1, 4),
(7, 2, 4),
(8, 3, 4),
(9, 1, 5),
(10, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `groupid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupid`, `groupname`) VALUES
(1, 'مدیریت اتوماسیون'),
(2, 'کارمندان'),
(3, 'دبیرخانه');

-- --------------------------------------------------------

--
-- Table structure for table `letter`
--

CREATE TABLE IF NOT EXISTS `letter` (
  `letterid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `usertitle` mediumint(8) unsigned NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL,
  `letternumber` varchar(50) NOT NULL,
  `docnumber` varchar(50) DEFAULT NULL,
  `docdate` varchar(50) DEFAULT NULL,
  `date` varchar(40) NOT NULL,
  `sender` varchar(400) NOT NULL,
  `touser` varchar(400) NOT NULL,
  `type` varchar(30) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `mainText` varchar(3000) NOT NULL,
  `status` varchar(30) NOT NULL,
  `hasattachment` varchar(10) NOT NULL,
  `eghdam` varchar(30) NOT NULL,
  PRIMARY KEY (`letterid`),
  KEY `usertitle` (`usertitle`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `letter`
--

INSERT INTO `letter` (`letterid`, `usertitle`, `userid`, `letternumber`, `docnumber`, `docdate`, `date`, `sender`, `touser`, `type`, `subject`, `mainText`, `status`, `hasattachment`, `eghdam`) VALUES
(1, 1, 1, '10001 / د', '', '', '۹۳/۰۷/۰۲', 'اتوماسیون اداری سنگ پشت', 'اتوماسیون اداری سنگ پشت', 'داخلی', 'برگزاری مراسم مطربی و لهو لعب', 'احتراماً باتوجه به اینکه اینجانب از شغل پردآمد مسئول سایت دانشگاه استعفا داده ام و به جامعه بیکاران کشور اضافه شده ام ، به جا است تا مراسمی به همین مناسبت به همراه سنتور نوازی و مطربی برگزار شود. خواهشمند است دستور فرمایید تا این مراسم لهو و لعب هرچه زودتر برگزار شود. \r\nباتشکر', 'ارسال شده', 'دارد', 'دعوت به جلسه'),
(4, 3, 3, '10002 / د', '', '', '۹۳/۰۷/۰۴', 'اتوماسیون اداری سنگ پشت', 'اتوماسیون اداری سنگ پشت', 'داخلی', 'اقا ', 'مساله مهم استان اب است. هه هه \r\n مساله مهم من او', 'ارسال شده', 'ندارد', 'جهت اطلاع'),
(5, 3, 3, '10005 / ص', '', '', '۹۳/۰۷/۲۸', 'اتوماسیون اداری آریا', 'اداره فرهنگ و ارشاد اسلامی استان گیلان', 'صادره', 'طرح هم کد سازی تلفن های ثابت', 'باسلام\r\nاحتراماً در خصوص دستور سراسری وزارت ارتباطات و فن آوری اطلاعات جهت هم کدسازی تلفن های ثابت استان های کشور ، خواهشمند است نبست به امکان سنجی و در نهایت اجرای این طرح اقدامات لازم صورت گیرد. \r\nباتشکر', 'چاپ شده', 'ندارد', 'بخش نامه و آیین نامه ها'),
(6, 3, 3, '10006 / د', '', '', '۹۳/۰۷/۲۸', 'اتوماسیون اداری آریا', 'اتوماسیون اداری آریا', 'داخلی', 'خرید سه شماره تلفن ثابت', 'باسلام و عرض ادب.\r\nاحتراماً خواهشمند است با توجه به نیاز اداره آموزش دانشکده فنی و مهندسی سه خط تلفن ثابت خریداری شود. با توجه به نزدیکی ایام ثبت نام دانشجویان جدیدالورود و ترافیک بالا در اداره مذکور هرچه سریع تر این مهم صورت گیرد. قبلا از همکاری شما سپاسگذارم.', 'ارسال شده', 'دارد', 'جهت تایید'),
(7, 3, 3, '10007 / د', '', '', '۹۳/۰۸/۱۰', 'اتوماسیون اداری تحت وب', 'اتوماسیون اداری تحت وب', 'داخلی', 'بررسی امکان سنجی پروژه وایرلس', 'باسلام\r\nاحتراما در خصوص نامه ارسال شده از طرف ستاد مرکزی ، ریاست محترم اداره جهت راه اندازی اینترنت و شبکه بی سیم در حوزه اداره پیشنهاداتی ارسال نموده اند. بدینوسیله اطلاع رسانی می شود.\r\nباتشکر', 'ارسال شده', 'دارد', 'جهت بررسی و اقدام'),
(8, 3, 3, '10008 / د', '', '', '۹۳/۰۸/۱۱', 'اتوماسیون اداری تحت وب', 'اتوماسیون اداری تحت وب', 'داخلی', 'ارسال فایل های مورد نیاز', 'باسلام.\r\nفایل های مورد نیاز که در جلسه هفته گذشته بحث شد ، ضمیمه شده است.\r\nباتشکر', 'پیش نویس', 'دارد', 'جهت اطلاع'),
(9, 3, 3, '10009 / د', '', '', '۹۳/۰۸/۱۱', 'اتوماسیون اداری تحت وب', 'اتوماسیون اداری تحت وب', 'داخلی', 'گواهی اشتغال به تحصیل', 'احتراما در خصوص ارائه گواهی اشتغال به تحصیل به دانشجویان مشروطی ، خواهشمند  است دستور فرمایید مسئول آموزش دانشگاه هماهنگی لازم با دانشجویان انجام دهد. باتشکر', 'ارسال شده', 'ندارد', 'ارائه پیشنهاد و نظر'),
(10, 4, 4, '10010 / د', '', '', '۹۳/۰۹/۰۴', 'اتوماسیون اداری تحت وب', 'اتوماسیون اداری تحت وب', 'داخلی', 'مم', 'افغفف', 'ارسال شده', 'ندارد', 'جهت مذاکره');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `optionid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(200) NOT NULL,
  `option_value` varchar(200) NOT NULL,
  PRIMARY KEY (`optionid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`optionid`, `option_name`, `option_value`) VALUES
(1, 'organization_name', 'اتوماسیون اداری تحت وب'),
(2, 'header', 'images/header/header-header.jpg'),
(3, 'deadline_archive', '7'),
(4, 'letter_start', '');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `permissionId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(70) NOT NULL,
  PRIMARY KEY (`permissionId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permissionId`, `permissionName`) VALUES
(1, 'دسترسی به تنظیمات'),
(2, 'دسترسی به مدیریت پرسنل'),
(3, 'ایجاد نامه داخلی'),
(4, 'ایجاد نامه وارده'),
(5, 'ایجاد نامه صادره');

-- --------------------------------------------------------

--
-- Table structure for table `receivers`
--

CREATE TABLE IF NOT EXISTS `receivers` (
  `receiverid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL,
  `titleid` mediumint(8) unsigned NOT NULL,
  `letterid` mediumint(8) unsigned NOT NULL,
  `receivertype` varchar(100) NOT NULL,
  `view` varchar(10) NOT NULL,
  `archived` varchar(10) NOT NULL,
  `action` varchar(100) NOT NULL,
  `parent_receiverid` mediumint(8) unsigned NOT NULL,
  `recipes` varchar(1000) DEFAULT NULL,
  `delivery_date` varchar(40) NOT NULL,
  `delivery_date_seconds` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`receiverid`),
  KEY `userid` (`userid`),
  KEY `titleid` (`titleid`),
  KEY `letterid` (`letterid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `receivers`
--

INSERT INTO `receivers` (`receiverid`, `userid`, `titleid`, `letterid`, `receivertype`, `view`, `archived`, `action`, `parent_receiverid`, `recipes`, `delivery_date`, `delivery_date_seconds`) VALUES
(2, 2, 2, 1, 'مستقیم', 'yes', 'yes', 'ارجاع داده شده', 0, NULL, '۹۳/۰۷/۰۲', '1411516800'),
(3, 3, 3, 1, 'ارجاعی', 'yes', 'yes', 'اقدام نشده', 2, 'حتما تشریف فرما شوید مشتاق دیدار', '۹۳/۰۷/۰۲', '1411516800'),
(5, 2, 2, 1, 'ارجاعی', 'no', 'yes', 'اقدام نشده', 3, 'هر چه زودتر اقدام شود', '۹۳/۰۷/۰۴', '1411689600'),
(6, 1, 1, 1, 'ارجاعی', 'yes', 'yes', 'اقدام نشده', 3, 'هر چه زودتر اقدام شود', '۹۳/۰۷/۰۴', '1411689600'),
(9, 1, 1, 4, 'مستقیم', 'yes', 'yes', 'اقدام شده', 0, NULL, '۹۳/۰۷/۰۴', '1411689600'),
(10, 3, 3, 4, 'ارجاعی', 'yes', 'yes', 'اقدام نشده', 9, 'جالب بود. اونایی که در خـــــــط امام نیستند ... فلان و فلان !!', '۹۳/۰۷/۰۵', '1411776000'),
(11, 2, 2, 6, 'مستقیم', 'yes', 'no', 'اقدام نشده', 0, NULL, '۹۳/۰۷/۲۸', '1413763200'),
(12, 1, 1, 7, 'مستقیم', 'yes', 'yes', 'اقدام نشده', 0, NULL, '۹۳/۰۸/۱۰', '1414800000'),
(13, 1, 1, 8, 'مستقیم', 'yes', 'yes', 'اقدام نشده', 0, NULL, '۹۳/۰۸/۱۱', '1414886400'),
(14, 1, 1, 9, 'مستقیم', 'yes', 'yes', 'ارجاع داده شده', 0, NULL, '۹۳/۰۸/۱۱', '1414886400'),
(15, 2, 2, 9, 'ارجاعی', 'no', 'no', 'اقدام نشده', 14, 'لطفا مساعدت شود.\r\nباتشکر', '۹۳/۰۸/۱۱', '1414886400'),
(17, 3, 3, 10, 'مستقیم', 'yes', 'yes', 'اقدام نشده', 0, NULL, '۹۳/۰۹/۰۴', '1416873600');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE IF NOT EXISTS `title` (
  `titleid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `groupid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`titleid`),
  KEY `groupid` (`groupid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`titleid`, `title`, `groupid`) VALUES
(1, 'مدیر اتوماسیون', 1),
(2, 'مدیرگروه کامپیوتر', 2),
(3, 'مسئول دبیرخانه', 3),
(4, 'معاونت شرکت', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` char(40) NOT NULL,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) NOT NULL,
  `signature` varchar(500) DEFAULT NULL,
  `createdate` varchar(40) NOT NULL,
  `melicode` varchar(10) NOT NULL,
  `cellphone` varchar(11) DEFAULT NULL,
  `birthdate` varchar(30) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `successor` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `firstname`, `lastname`, `signature`, `createdate`, `melicode`, `cellphone`, `birthdate`, `address`, `successor`) VALUES
(1, 'admin', '029c15b84b4e387fc8ed798902b2d30f', 'سیدمجتبی', 'میردهقان اشکذری', 'images/signature/IMG_20140917_091333.png', '', '5519956472', '09133509180', '1366', 'یزد اشکذر', 'not-select'),
(2, 'torabi', '73b809940cb93b848a03d2064c7d9177', 'سیدقاسم', 'ترابی', 'null', '۹۳/۰۷/۰۲ ۱۸:۲۰', '551', '09137767761', '1371', 'فیروزآباد', 'not-select'),
(3, 'mahdi', 'f9c24b8f961d48841a9838cca5274d8d', 'محمدمهدی', 'دهقانی اشکذری', 'images/signature/IMG_20140917_091325.png', '۹۳/۰۷/۰۲ ۱۸:۴۱', '112', '0913', '13', 'یزد شهرستان اشکذر', 'not-select'),
(4, 'mahmood', '44ab1370eb802e0fd277ebf9be94547b', 'سیدمحمود', 'میرزاده', 'null', '۹۳/۰۸/۲۶ ۱۲:۵۱', '000001232', '09120000000', '137', 'تهران', 'not-select');

-- --------------------------------------------------------

--
-- Table structure for table `userpermission`
--

CREATE TABLE IF NOT EXISTS `userpermission` (
  `userpermissionId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL,
  `permissionid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`userpermissionId`),
  KEY `userid` (`userid`),
  KEY `permissionid` (`permissionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usertitle`
--

CREATE TABLE IF NOT EXISTS `usertitle` (
  `usertitleid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL,
  `titleid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`usertitleid`),
  KEY `titleid` (`titleid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `usertitle`
--

INSERT INTO `usertitle` (`usertitleid`, `userid`, `titleid`) VALUES
(2, 2, 2),
(4, 3, 3),
(5, 1, 1),
(6, 4, 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachment`
--
ALTER TABLE `attachment`
  ADD CONSTRAINT `attachment_ibfk_1` FOREIGN KEY (`letterid`) REFERENCES `letter` (`letterid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grouppermission`
--
ALTER TABLE `grouppermission`
  ADD CONSTRAINT `grouppermission_ibfk_1` FOREIGN KEY (`permissionid`) REFERENCES `permission` (`permissionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grouppermission_ibfk_2` FOREIGN KEY (`groupid`) REFERENCES `groups` (`groupid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `letter`
--
ALTER TABLE `letter`
  ADD CONSTRAINT `letter_ibfk_1` FOREIGN KEY (`usertitle`) REFERENCES `title` (`titleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `letter_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receivers`
--
ALTER TABLE `receivers`
  ADD CONSTRAINT `receivers_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receivers_ibfk_2` FOREIGN KEY (`titleid`) REFERENCES `title` (`titleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receivers_ibfk_3` FOREIGN KEY (`letterid`) REFERENCES `letter` (`letterid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `title`
--
ALTER TABLE `title`
  ADD CONSTRAINT `title_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `groups` (`groupid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userpermission`
--
ALTER TABLE `userpermission`
  ADD CONSTRAINT `userpermission_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userpermission_ibfk_2` FOREIGN KEY (`permissionid`) REFERENCES `permission` (`permissionId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usertitle`
--
ALTER TABLE `usertitle`
  ADD CONSTRAINT `usertitle_ibfk_1` FOREIGN KEY (`titleid`) REFERENCES `title` (`titleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usertitle_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
