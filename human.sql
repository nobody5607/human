-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2019 at 06:37 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `human`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL COMMENT 'รหส',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'หัวข้อข่าวประชาสัมพันธ์',
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'รายละเอียดประชาสัมพันธ์',
  `create_by` bigint(20) DEFAULT NULL COMMENT 'สร้างโดย',
  `create_date` datetime DEFAULT NULL COMMENT 'สร้างวันที่',
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `title`, `detail`, `create_by`, `create_date`, `photo`) VALUES
(4, 'สำนักวิทยบริการและเทคโนโลยีสารสนเทศ', '<p>สำนักวิทยบริการและเทคโนโลยีสารสนเทศ อาคารบรรณราชนครินทร์ (ห้องสมุด) เปิดบริการล่วง 20.00 น.</p>\r\n', 3, '2019-04-30 14:26:47', '1556609207.jpg'),
(5, 'ประกาศหยุดให้บริการ 6-8 เมษายน 2562', '<h1>ร่วมสืบสานประเพณี สงกรานต์</h1>\r\n\r\n<p>ร่วมกิจกรรม สรงน้ำพระ อาคารบรรณราชนครินทร์ (ห้องสมุด) ชั้น 1 มหาวิทยาลัยราชภัฏสกลนคร</p>\r\n', 3, '2019-04-30 14:18:50', '1556608730.jpg'),
(6, 'ประกาศหยุด', '<h1>ประกาศเรื่องปิดปรับปรุง ดูแล รักษาเครื่องแม่ข่ายที่ให้บริการ</h1>\r\n\r\n<p>สำนักวิทยบริการและเทคโนโลยีสารสนเทศเนื่องจากฮาร์ดดิสก์ (Hard Disk) ของเครื่องแม่ข่ายที่ให้บริการ เกิดความเสียหายจากการประมวลผลงานสารสนเทศภายใน<br />\r\nดั้งนั้น เพื่อความเสถียรภาพของเครื่องแม่ข่ายที่ให้บริการ จะทำการปิดปรับปรุง ดูแล รักษาเครื่องแม่ข่ายที่ให้บริการตั้งแต่วันที่ 26 เมษายน 2562 เวลา 18.00 น. ถึง วันที่ 28 เมษายน 2562 เวลา 18.00 น.<br />\r\nจึงทำให้ไม่สามารถเข้าใช้งานระบบภายในที่ให้บริการในช่วงเวลาดังกล่าวได้ ประกอบด้วย<br />\r\n1. ระบบเว็บไซต์มหาวิทยาลัยราชภัฏสกลนคร<br />\r\n2. ระบบเว็บไซต์อาจารย์<br />\r\n3. เว็บไซต์หน่วยงาน<br />\r\n4. ระบบจองเลขหนังสือพัสดุ<br />\r\n5. ระบบแฟ้มสะสมงานบุคลากร<br />\r\n6. ระบบบริหารงบประมาณ<br />\r\n7. ระบบจองเลขที่หนังสือราชการภายนอกและเลขที่คำสั่งออนไลน์<br />\r\n8. ระบบบริหารวัสดุ<br />\r\n9. ระบบจัดการเรียนการสอนออนไลน์<br />\r\n10. ระบบไฟล์</p>\r\n\r\n<p>ขออภัยในความไม่สดวกมา ณ ที่นี้</p>\r\n', 3, '2019-04-30 14:17:58', '1556608678.jpg'),
(7, 'งานสัปดาห์ห้องสมุด2562 ', '<h3>ขอเชิญ เข้าร่วม &ldquo; งานสัปดาห์ห้องสมุด2562 &rdquo; ระหว่างวันที่ 5 &ndash; 7 มีนาคม 2562 ณ อาคารบรรณราชนครินทร์ และ อาคารศูนย์ภาษาและคอมพิวเตอร์</h3>\r\n\r\n<h3><strong>กิจกรรมภายในงาน</strong><br />\r\n<strong>การบรรยายทางวิชาการ</strong><br />\r\n<strong>การประดิษฐ์สมุดทำมือ</strong><br />\r\n<strong>กิจกรรมห้องสมุดมนุษย์ (Human Library)</strong><br />\r\n<strong>กิจกรรม แชะ โชว์ แชร์ ภาพถ่ายห้องสมุด</strong><br />\r\n<strong>กิจกรรมห้องสมุดสัมพันธ์</strong><br />\r\n<strong>SNRU Book &amp; ICT Fair 2019</strong><br />\r\n<strong>การแข่งขัน E-Sport</strong><br />\r\n<strong>ชมดนตรีโฟล์กซอง</strong><br />\r\n<strong>(พร้อมรางวัลสำหรับผู้เข้าร่วมกิจกรรมอีกมากมาย)</strong></h3>\r\n\r\n<p><img alt=\"\" src=\"http://storage.humanlibrary.local/uploads//1556608980_poster2.jpg\" style=\"height:351px; width:248px\" /></p>\r\n\r\n<h3>&nbsp;</h3>\r\n', 3, '2019-04-30 14:24:15', '1556609056.jpg'),
(8, 'ประกาศพิธีพระราชทานปริญญบัตร', '<p>????????&nbsp;กำหนดการงานพิธีพระราชทานปริญญาบัตร ปี พ.ศ.2562&nbsp;<br />\r\n<a href=\"http://reg.snru.ac.th/reg/?fbclid=IwAR2CdOzZT2RnDPMH_T5Am5RvManX7a03RpvBkZjdG-amsqe_pQ8cFDe3tZU\" target=\"_blank\">http://reg.snru.ac.th/reg/</a>&nbsp;รายชื่อบัณฑิต มหาบัณฑิต และดุษฎีบัณฑิต มหาวิทยาลัยราชภัฏสกลนคร (ช่วงฝึกซ้อม)????&zwj;????????&zwj;????</p>\r\n', 3, '2019-08-16 15:08:21', '1565942901.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `assessment_form`
--

CREATE TABLE `assessment_form` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'หัวข้อแปบประเมิน',
  `explanation` text COLLATE utf8_unicode_ci COMMENT 'คำชี้แจง',
  `create_date` date DEFAULT NULL COMMENT 'วันที่สร้าง',
  `create_by` bigint(20) DEFAULT NULL COMMENT 'สร้างโดย',
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `assessment_form`
--

INSERT INTO `assessment_form` (`id`, `title`, `explanation`, `create_date`, `create_by`, `detail`) VALUES
(2, 'โครงการห้องสมุดมนุษย์ (Human Library) เรื่อง มนต์เสน่ห์ผ้าย้อมคราม by ครามฮัก', 'คำชี้แจง  1. ข้อมูลที่ได้จากแบบประเมินนี้จะนำไปใช้ในการพัฒนาการจัดการโครงการครั้งต่อไป<br>\r\n                2. โปรดตอบแบบประเมินตามความคิดเห็นที่สร้างสรรค์อย่างแท้จริง<br>\r\n                3. ทุกความคิดเห็นของท่านเป็นส่วนหนึ่งที่จะพัฒนาสำนักวิทยบริการและเทคโนโลยีสารสนเทศต่อไป<br>', '2019-04-07', 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lai0VGzWRrM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `assessment_form_l1`
--

CREATE TABLE `assessment_form_l1` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `p_id` int(11) DEFAULT NULL COMMENT 'รหัสฟอร์มแบบประเมิน',
  `sex` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เพศ',
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'สถานะ',
  `status_other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'อื่นๆ',
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'หน่วยงานที่สังกัด',
  `department_other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'อื่นๆ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `assessment_form_l1`
--

INSERT INTO `assessment_form_l1` (`id`, `p_id`, `sex`, `status`, `status_other`, `department`, `department_other`) VALUES
(1, NULL, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `assessment_form_l2`
--

CREATE TABLE `assessment_form_l2` (
  `id` int(11) NOT NULL COMMENT 'รหัสแปบบประเมิน',
  `p_id` int(11) NOT NULL COMMENT 'รหัสแบบประเมิน',
  `one` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '1. ความรู้ที่ได้รับจากการเข้าร่วมเปิดอ่านหนังสือมีชีวิต (Living book)',
  `two` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '2. เนื้อหาของหนังสือมีชีวิตมีความน่าสนใจ',
  `three` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '3. หนังสือมีชีวิต (Living book) ถ่ายทอดเนื้อหาได้ชัดเจน',
  `four` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '4. หนังสือมีชีวิต (Living book) ถ่ายทอดเนื้อหาได้อย่างน่าสนใจ',
  `five` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '5. การจัดโครงการห้องสมุดมนุษย์ (Human Library) มีประโยชน์',
  `six` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '6. การจัดโครงการห้องสมุดมนุษย์ (Human Library) มีความเหมาะสม',
  `seven` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '7. บรรยากาศในการจัดงานในครั้งนี้มีความเหมาะสม',
  `eight` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '8. สามารถนำความรู้ที่ได้รับไปประยุกต์ใช้ในการปฏิบัติงานและการดำเนินชีวิตประจำวันได้',
  `nine` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '9. อยากให้มีการจัดกิจกรรมนี้อีก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `assessment_form_l3`
--

CREATE TABLE `assessment_form_l3` (
  `id` int(11) NOT NULL COMMENT 'รหัสแปบบประเมิน',
  `p_id` int(11) DEFAULT NULL COMMENT 'รหัสแปบบประเมินหลัก',
  `one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ข้อเสนอแนะเพิ่มเติมอื่น ๆ (โปรดระบุ)',
  `two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'หัวข้อที่ท่านสนใจที่จะร่วมกิจกรรมครั้งต่อไป (โปรดระบุ)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รูปภาพ',
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รายละเอียด',
  `forder` int(11) DEFAULT NULL COMMENT 'ลำดับที่',
  `create_by` bigint(20) DEFAULT NULL COMMENT 'สร้างโดย',
  `create_date` datetime DEFAULT NULL COMMENT 'สร้างเมื่อวันที่',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `detail`, `forder`, `create_by`, `create_date`, `url`) VALUES
(4, '1556607837.jpg', '', 1, 3, '2019-04-30 14:03:57', '/site/news-detail?id=5'),
(5, '1556607958.jpg', '', 2, 3, '2019-04-30 14:05:58', '/site/news-detail?id=4'),
(6, '1556608937.jpg', '', 3, 3, '2019-04-30 14:22:17', '/site/news-detail?id=6');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL COMMENT 'รหัสการบรรยาย',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'หัวข้อการบรรยาย',
  `detail` longtext COLLATE utf8_unicode_ci COMMENT 'รายละเอียดการบรรยาย',
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อผู้บรรยาย',
  `user_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รูปภาพผู้บรรยาย',
  `date` datetime DEFAULT NULL COMMENT 'เวลาจัดการการบรรยาย',
  `create_by` bigint(20) DEFAULT NULL COMMENT 'สร้างโดย',
  `create_date` datetime DEFAULT NULL COMMENT 'สร้างเมื่อ',
  `forder` int(11) DEFAULT NULL COMMENT 'ลำดับที่',
  `time_start` time DEFAULT NULL COMMENT 'เวลาจัดกิจกรรม',
  `time_stop` time DEFAULT NULL COMMENT 'ถึงเวลา',
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'สถานที่จัดงาน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `detail`, `user_name`, `user_image`, `date`, `create_by`, `create_date`, `forder`, `time_start`, `time_stop`, `location`) VALUES
(2, 'บรรยายวิชาการ เรื่อง ฝันให้ไกลไปให้ถึง ด้วยทักษะการอ่านและการเรียนรู้', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n', 'รศ.ดร.น้ำทิพย์ วิภาวิน มหาวิทยาลัยสุโขทัยธรรมาธิราช', '1554875288.jpg', '2019-03-06 00:00:00', 3, '2019-04-30 13:14:32', 1, '09:07:25', NULL, 'ณ ห้องประชุมสัตตบงกช อาคารศูนย์ภาษาและคอมพิวเตอร์ มหาวิทยาลัยราชภัฏสกลนคร'),
(3, 'กิจกรรม Human Library เรื่อง เปิดช่องทางธุรกิจภูหวานคอฟฟี่ ', '<p>วันที่ 5 มีนาคม 2562&nbsp;เวลา 10.00-12.00 น. วิทยากรโดยคุณกรรณิกา จันทร​​์พา เจ้าของร้านภูหวาน&nbsp;ห้องสัตตบงกช อาคารศูนย์ภาษาและคอมพิวเตอร์</p>\r\n', 'วิทยากรโดยคุณกรรณิกา จันทร​​์พา', '1554876736.jpg', '2019-03-05 00:00:00', 3, '2019-04-10 14:25:26', 2, NULL, NULL, NULL),
(4, 'การปลูกพืชแบบผสมผสาน', '<p>เวลาจัดกิจกรรม : อังคาร 20 ธันวาคม 2016 , 09:00:00</p>\r\n\r\n<p>การปลูกพืชแบบผสมผสาน ไม่มีคำจำกัดความเพราะสามารถแตกแขนงออกได้หลายแบบไม่มีการเจาะลงชนิดของพืชที่สามารถปลูกแต่การทำเกษตรแบบผสมผสานนั้น ภายในแปลงปลูกควรมีพืชพันธ์นานาชนิดมีความร่มรื่น เย็นสบาย เพื่อให้พืชหลายชนิดมีการเอื้อเฟื้อต่อกันได้มากที่สุด โดยส่วนใหญ่แล้วพืชพันธ์ที่พบภายในสวน มีทั้งไม้ผล ไม้ยืนต้น พืชผักสมุนไพร ผักพื้นบ้าน ผักป่า ผักสวนครัว และอื่นๆ ที่สามารถนำมาใช้ประโยชน์ได้ทุกอย่าง รวมทั้ง การเลี้ยงกุ้งหอย ปู ปลาในบ่อเดียวกัน เรียกได้ว่าเป็นการผสมผสานทุกสิ่งทุกอย่าง ในพื้นที่จำกัดได้อย่างลงตัว และที่สำคัญสามารถพึ่งพาตนเองได้อย่างยั่งยืน เป็นวิธีทำการเกษตรที่มีการเพาะปลูกและเลี้ยงสัตว์หลายๆ ชนิดอยู่พื้นที่เดียวกัน มีการนำวัสดุเหลือใช้จากการผลิตหนึ่ง เพื่อใช้ประโยชน์อย่างครบวงจร โดยทั่วไปการผลิตแบบนี้มักเป็นรูปแบบการเกษตรประเภททำเพื่อพอกินพอใช้ ทำโดยสมาชิกในครัวเรือนพอมีเหลือจึงขาย ซึ่งการเกษตรแบบนี้จัดเป็นการเกษตรแบบดั้งเดิม ที่เกษตรกรสามารถมีชีวิตอยู่ได้อย่างพอเพียงแต่อาจไม่เหมาะกับสภาพเศรษฐกิจในปัจจุบัน เนื่องจากเกษตรกรจำเป็นต้องมีรายได้หลักเพื่อใช้จ่ายภายในครอบครัว รวมทั้งเพื่อการศึกษาของบุตรหลาน ค่าใช้จ่ายเพื่อรักษาพยาบาลเมื่อยามเจ็บป่วย หลักการสำคัญของการผลิตแบบนี้คือ การรักษาสมดุลของระบบนิเวศ ลดการใช้สารเคมีการเกษตรหรือใช้แนวทางเลือกอื่นในการป้องกันกำจัดศัตรูพืช ซึ่งการเกษตรแบบนี้ถ้าได้รับการพัฒนาให้เหมาะสมจะเกิดประโยชน์แก่เกษตรกรทำให้มีงานทำตลอดปี</p>\r\n', 'ดร.นฤทธิ์ คำธิศรี', '1555599786.jpg', '2016-12-20 00:00:00', 3, '2019-05-23 14:34:21', 3, '09:00:00', NULL, ' ชั้น 1 อาคารบรรณราชนครินทร์');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL COMMENT 'รหัสกิจกรรม',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อกิจกรรม',
  `detail` text COLLATE utf8_unicode_ci COMMENT 'รายละเอียดกิจกรรม',
  `create_at` int(255) DEFAULT NULL COMMENT 'สร้างโดย',
  `create_date` datetime DEFAULT NULL COMMENT 'วันที่จัดกิจกรรม',
  `update_at` int(11) DEFAULT NULL COMMENT 'แก้ไขโดย',
  `update_date` datetime DEFAULT NULL COMMENT 'แก้ไขเมื่อวันที่',
  `rstat` int(11) DEFAULT NULL COMMENT 'สถานะ',
  `forder` int(11) DEFAULT NULL COMMENT 'เรียงลำดับ',
  `event_type` int(11) DEFAULT NULL COMMENT 'ประเภทกิจกรรม',
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ภาพขนาดเล็ก',
  `time_start` time NOT NULL,
  `user_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `detail`, `create_at`, `create_date`, `update_at`, `update_date`, `rstat`, `forder`, `event_type`, `file`, `time_start`, `user_name`, `location`) VALUES
(1554881043, 'กิจกรรม Human Library เรื่อง เปิดช่องทางธุรกิจภูหวานคอฟฟี่ ', '', 3, '2019-04-10 00:00:00', NULL, '2019-08-16 16:44:57', 1, 4, 1, '1554881043.jpg', '09:30:00', '', ''),
(1556260612, 'ปราชญ์เดินดิน วิถีลูกอีสาน', '<p>&ldquo; เรื่อง : ปราชญ์เดินดิน วิถีลูกอีสาน &rdquo;</p>\r\n\r\n<p>สถานที่จัดกิจกรรม : ชั้น 1 อาคารบรรณราชนครินทร์ (ศูนย์วิทยบริการ)</p>\r\n\r\n<p>เวลาจัดกิจกรรม : พุธ 22 เมษายน 2015 , 09:00:00</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2015-04-22 00:00:00', NULL, '2019-08-26 14:14:46', 1, 1, 1, '1565680765.jpg', '09:00:00', 'รศ.ดร.น้ำทิพย์ วิภาวิน ', 'ชั้น 1 อาคารบรรณราชนครินทร์ (ศูนย์วิทยบริการ)'),
(1565947890, 'ผ้าคราม', '<p>&ldquo; เรื่อง : ผ้าคราม &rdquo;</p>\r\n\r\n<p>สถานที่จัดกิจกรรม : ชั้น 1 อาคารบรรณราชนครินทร์ (ศูนย์วิทยบริการ)</p>\r\n\r\n<p>เวลาจัดกิจกรรม : ศุกร์ 5 มิถุนายน 2015 , 09:00:00</p>\r\n', 3, '2015-06-05 00:00:00', NULL, '2019-08-16 16:44:48', 1, 2, 1, '1565947890.jpg', '16:29:05', 'ผศ.อนุรัตน์ สายทอง', 'ชั้น 1 อาคารบรรณราชนครินทร์ (ศูนย์วิทยบริการ)'),
(1565948477, 'เล่าขานตำนานเมืองสกลนคร', '<p><a href=\"http://human.snru.ac.th/register/22\">พระมหาคาวี ญาณสาโร</a></p>\r\n\r\n<p>&ldquo; เรื่อง : เล่าขานตำนานเมืองสกลนคร &rdquo;</p>\r\n\r\n<p>สถานที่จัดกิจกรรม : อาคารศูนย์ภาษาและคอมพิวเตอร์</p>\r\n\r\n<p>เวลาจัดกิจกรรม : พุธ 7 กุมภาพันธ์ 2018 , 09:30:00</p>\r\n', 3, '2018-02-07 00:00:00', NULL, '2019-08-16 16:45:05', 1, 3, 1, '1565948490.jpg', '09:30:00', 'พระมหาคาวี ญาณสาโร', 'อาคารศูนย์ภาษาและคอมพิวเตอร์');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) NOT NULL COMMENT 'รหัสไฟล์',
  `event_id` bigint(20) DEFAULT NULL COMMENT 'ชื่อกิจกรรม',
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อไฟล์',
  `file_name_origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อไฟล์ต้นฉบับ',
  `forder` int(11) DEFAULT NULL COMMENT 'เรียงลำดับไฟล์',
  `created_by` int(11) DEFAULT NULL COMMENT 'สร้างโดย'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `event_id`, `file_name`, `file_name_origin`, `forder`, `created_by`) VALUES
(155488106259, 1554881043, '20190410_142422_900.jpg', 'IMG_0563.JPG', 99941, 3),
(1554881061291, 1554881043, '20190410_142421_494.jpg', 'IMG_0553.JPG', 99944, 3),
(1554881061786, 1554881043, '20190410_142421_500.jpg', 'IMG_0545.JPG', 99945, 3),
(1554881062727, 1554881043, '20190410_142422_278.jpg', 'IMG_0550.JPG', 99943, 3),
(1554881062776, 1554881043, '20190410_142422_804.jpg', 'IMG_0552.JPG', 99942, 3),
(1554881062960, 1554881043, '20190410_142422_963.jpg', 'IMG_0566.JPG', 99940, 3),
(1554881063115, 1554881043, '20190410_142423_361.jpg', 'IMG_0595.JPG', 99937, 3),
(1554881063420, 1554881043, '20190410_142423_626.jpg', 'IMG_0571.JPG', 99938, 3),
(1554881063515, 1554881043, '20190410_142423_980.jpg', 'IMG_0567.JPG', 99939, 3),
(1556601241458, 1556260612, '20190430_121401_864.mp4', 'edit01.mp4', 99936, 3),
(1556601302431, 1556260612, '20190430_121502_36.mp4', 'edit02.mp4', 99935, 3),
(1565681166524, 1556260612, '20190813_142606_593.jpg', '2.jpg', 100000, 2),
(1565948104925, 1565947890, '20190816_163504_234.mp4', 'Human Library . 1.mp4', 99934, 3),
(1565948828387, 1565947890, '20190816_164708_407.mp4', 'Human Library . 2.mp4', 99933, 3);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL COMMENT 'รหัสผู้จัดทำ',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อผู้จัดทำ',
  `detail` longtext COLLATE utf8_unicode_ci COMMENT 'รายละเอียดผู้จัดทำ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `detail`) VALUES
(2, 'นางสาวกัญญาพร มาตราช', '<p>รหัสนักศึกษา 58102105207</p>\r\n\r\n<p>สาขาวิชา วิทยาการคอมพิวเตอร์ หมู่ 2 คณะวิทยาศาสตร์และเทคโนโลยี</p>\r\n\r\n<p>มหาวิทยาลัยราชภัฏสกลนคร</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1553559729),
('m130524_201442_init', 1553559745);

-- --------------------------------------------------------

--
-- Table structure for table `register_form`
--

CREATE TABLE `register_form` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT 'รหัสผู้ใช้',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อนามสกุล',
  `tel` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เบอร์โทรศัพท์',
  `user_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ประเภทผู้ใช้',
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'หน่วยงาน',
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'อีเมล์',
  `event_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `register_form`
--

INSERT INTO `register_form` (`id`, `user_id`, `name`, `tel`, `user_type`, `department`, `email`, `event_id`, `create_date`) VALUES
(1, 6, 'กัญญาพร มาตราช', '1234323456', 'อาจารย์', 'บัณฑิตวิทยาลัย', 'ananam527@gmail.com', 1556260612, '2019-08-04 22:45:40'),
(2, 7, 'คมสันต์ กัปโก', '0957628400', 'นักศึกษา', 'คณะมนุษย์ศาสตร์และสังคมศาสตร์', 'fah1234@gmail.com', 1556260612, '2019-08-20 11:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL COMMENT 'รหัสบทบาท',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อบทบาท'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ผู้ดูแลระบบ'),
(2, 'เจ้าหน้าที่ห้องสมุด (บรรณารักษ์)'),
(3, 'สมาชิก');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อผู้ใช้',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสผ่าน',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมล',
  `status` int(6) NOT NULL DEFAULT '10',
  `created_at` int(11) DEFAULT NULL COMMENT 'สร้างโดย',
  `updated_at` int(11) DEFAULT NULL COMMENT 'แก้ไขโดย',
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อ',
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'นามสกุล',
  `tel` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เบอร์โทรศัพท์',
  `role` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'บทบาท'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `status`, `created_at`, `updated_at`, `firstname`, `lastname`, `tel`, `role`) VALUES
(2, 'user1', '1234', 'user1@gmail.com', 10, NULL, NULL, 'user1', 'user1', '0650859480', '[\"2\"]'),
(3, 'admin', '123456', 'admin@gmail.com', 10, NULL, NULL, 'Admin', 'Service', '0650859480', '[\"1\"]'),
(6, 'fah', '36987', 'fah@gmail.com', 10, NULL, NULL, 'ฟ้า', 'มาตราช', '0982035215', '[\"3\"]'),
(7, 'kom', '9632147', 'fah1234@gmail.com', 10, NULL, NULL, 'ฟ้า', 'กัญ', '0987542803', '[\"3\"]');

-- --------------------------------------------------------

--
-- Table structure for table `view_count`
--

CREATE TABLE `view_count` (
  `id` int(11) NOT NULL,
  `count` bigint(20) DEFAULT NULL COMMENT 'จำนวนการเข้าชม'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `view_count`
--

INSERT INTO `view_count` (`id`, `count`) VALUES
(1, 265);

-- --------------------------------------------------------

--
-- Table structure for table `view_count_video`
--

CREATE TABLE `view_count_video` (
  `id` int(11) NOT NULL,
  `count` bigint(20) DEFAULT NULL COMMENT 'จำนวนการเข้าชม',
  `video_id` int(11) DEFAULT NULL COMMENT 'รหัสวีดีโอ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `view_count_video`
--

INSERT INTO `view_count_video` (`id`, `count`, `video_id`) VALUES
(1554793768, 1, 2147483647),
(1554793772, 1, 2147483647),
(1554793776, 1, 2147483647),
(1554793778, 1, 2147483647),
(1556601337, 1, 2147483647),
(1556607611, 1, 2147483647),
(1565931013, 1, 2147483647),
(1565931033, 1, 2147483647),
(1565931065, 1, 2147483647),
(1565931069, 1, 2147483647),
(1565931089, 1, 2147483647),
(1565931261, 1, 2147483647),
(1565931342, 1, 2147483647),
(1565932193, 1, 2147483647),
(1565932198, 1, 2147483647),
(1565932205, 1, 2147483647),
(1565932213, 1, 2147483647),
(1565963400, 1, 2147483647),
(1566803798, 1, 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `assessment_form`
--
ALTER TABLE `assessment_form`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `assessment_form_l1`
--
ALTER TABLE `assessment_form_l1`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `assessment_form_l2`
--
ALTER TABLE `assessment_form_l2`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `assessment_form_l3`
--
ALTER TABLE `assessment_form_l3`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`) USING BTREE;

--
-- Indexes for table `register_form`
--
ALTER TABLE `register_form`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`) USING BTREE;

--
-- Indexes for table `view_count`
--
ALTER TABLE `view_count`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `view_count_video`
--
ALTER TABLE `view_count_video`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหส', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `assessment_form`
--
ALTER TABLE `assessment_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assessment_form_l1`
--
ALTER TABLE `assessment_form_l1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assessment_form_l2`
--
ALTER TABLE `assessment_form_l2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสแปบบประเมิน';

--
-- AUTO_INCREMENT for table `assessment_form_l3`
--
ALTER TABLE `assessment_form_l3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสแปบบประเมิน';

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสการบรรยาย', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'รหัสไฟล์', AUTO_INCREMENT=1565948828388;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสผู้จัดทำ', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register_form`
--
ALTER TABLE `register_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสบทบาท', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
