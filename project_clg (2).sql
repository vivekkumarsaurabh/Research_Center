-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 03:31 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_clg`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `e_title` varchar(255) NOT NULL,
  `es_date` datetime NOT NULL,
  `ee_date` datetime NOT NULL,
  `e_category` varchar(255) NOT NULL,
  `e_desc` varchar(255) NOT NULL,
  `e_pic1` varchar(255) NOT NULL,
  `e_pic2` varchar(255) NOT NULL,
  `e_pic3` varchar(255) NOT NULL,
  `e_pic4` varchar(255) NOT NULL,
  `e_pic5` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_title`, `es_date`, `ee_date`, `e_category`, `e_desc`, `e_pic1`, `e_pic2`, `e_pic3`, `e_pic4`, `e_pic5`, `status`) VALUES
(1, 'LOGO Design Competition', '2022-06-20 02:30:00', '2022-06-20 03:32:00', 'Web And Mobile Application Development', 'This is a logo design competition for SCSE Research groups And Organisation (S5 And SPIDER)', 'event_pic/sharee1.jfif', 'event_pic/sharee3.jfif', 'event_pic/watch.jpg', 'event_pic/images.jfif', 'event_pic/prod1.jfif', '1'),
(2, 'Exercise Competition', '2022-05-20 03:57:00', '2022-05-31 11:57:00', 'cyber_security_and_privacy', '', '', '', '', '', '', '0'),
(3, 'Painting Competition', '2022-05-30 12:09:00', '2022-06-09 12:05:00', 'core_and_emerging_technologies', 'this is testing purpose ', '', '', '', '', '', '1'),
(4, 'Drawing Competition', '2022-05-30 17:52:00', '2022-05-31 12:56:00', 'cyber_security_and_privacy', 'test', '', '', '', '', '', '0'),
(5, 'Coding Test', '2022-08-20 10:00:00', '2022-08-20 11:30:00', 'Web and Mobile Application Development', 'This is a coding competition . Important to participate in this coding', '', '', '', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `clgpass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `depart` varchar(255) NOT NULL,
  `re_area` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `c_password` varchar(255) NOT NULL,
  `main_pic` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `name`, `clgpass`, `email`, `department`, `depart`, `re_area`, `phone`, `password`, `c_password`, `main_pic`, `datetime`) VALUES
(13, 'Dr. Seema Rani', '324234526', 'seema.rani@galgotiasuniversity.edu.in', 'Web And Mobile Application Development', 'Dept. Computer Science And Engineering', 'Data Structure, Algorithm Analysis, optimization Algorithms, Social Network Analysis', '9811476855', '$2y$10$Hl9SQ.I2TyMWZ9Y4h/uA.OEZZyDUp0v0p08SnuymJ3af6SzyuWIY2', '$2y$10$TnPWTeR44rhypKvpbhPjlukpuFR/zl0sooclnRVvtTVf2OSUExRXa', 'faculty_pic/seema.jpeg', '2022-05-31 13:09:49'),
(15, 'Dr. Abdul Aleem', '123456789', 'Test_abdulaleem@gmail.com', 'DATA SCIENCE AND AI', 'Dept. Computer Science And Engineering', 'Research interest includes\r\nmathematical modelling and simulation, digital image processing, machine learning and artificial\r\nintelligence.', '12345678', '12345678', '12345678', 'faculty_pic/dr.abdul.png', '2022-07-22 23:41:52'),
(16, 'Dr. Vandana Sharma', '12345636354', 'Test_vandana@gmail.com', 'Computer Network', 'Dept. Computer Science And Engineering', 'Research at various International Conferences across India\r\nand abroad', '13123121231221', '12345678', '12345678', 'faculty_pic/dr.vandana.png', '2022-07-23 01:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `facuties_member`
--

CREATE TABLE `facuties_member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `categ` varchar(255) NOT NULL,
  `clg_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `re_area` varchar(255) NOT NULL,
  `main_pic` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facuties_member`
--

INSERT INTO `facuties_member` (`id`, `name`, `department`, `categ`, `clg_id`, `email`, `number`, `re_area`, `main_pic`, `status`, `datetime`) VALUES
(4, 'Dr. Michael Raj TF', 'Dept. Computer Science And Engineering', 'Web And Mobile Application Development', '1111', 'tf.michaelraj@galgotiasuniversity.edu.in', '8838959686', 'Semantic Web, Data science, Artificial Intelligence and Blockchin Technologies', 'faculty_member/avatar.jpg', '1', '2022-06-01 15:00:58'),
(5, 'V.Arul', 'Dept. Computer Science And Engineering', 'Web And Mobile Application Development', '1112', 'v.arul@galgotiasuniversity.edu.in', '9003781190', 'Developing Websites and Automation System by using PHP, .NET, MySql,Ajax', 'faculty_member/avatar.jpg', '1', '2022-06-01 15:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `id` int(11) NOT NULL,
  `rand_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `r_title` varchar(255) NOT NULL,
  `r_subtitle` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `r_desc` varchar(255) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `pic_main` varchar(255) NOT NULL,
  `pic_subone` varchar(255) NOT NULL,
  `pic_sobtwo` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`id`, `rand_id`, `email`, `r_title`, `r_subtitle`, `category`, `r_desc`, `cat`, `pic_main`, `pic_subone`, `pic_sobtwo`, `datetime`) VALUES
(1, '4862', 'utkarsh@gmail.com', 'reseach1', 'research1sub', 'computer_graphics_and_digital_image_processing', 'testing...', '', 'research_picture/research_mainpic/prod1.jfif', 'research_picture/research_subone/keyboard.jpg', 'research_picture/research_subtwo/cpu.jfif', '2022-04-17 20:03:54'),
(2, '8917', 'utkarsh@gmail.com', 'reseach2', 'research2sub', 'Web And Mobile Application Development ', 'testing222', 'Research Paper', 'research_picture/research_mainpic/sharee3.jfif', 'research_picture/research_subone/images.jfif', 'research_picture/research_subtwo/sharee1.jfif', '2022-04-17 20:08:26'),
(3, '5148', 'rohit@gmail.com', 'Reseach Test', 'Research Sub Test', 'cloud_computing_and_distributed_system', 'testing..', '', 'research_picture/research_mainpic/images.jfif', 'research_picture/research_subone/sharee3.jfif', 'research_picture/research_subtwo/sharee1.jfif', '2022-04-17 22:06:38'),
(4, '5450', 'nikhil@gmail.com', 'Technical', 'Technical subtitle', 'data_science_and_ai', 'testing....', '', 'research_picture/research_mainpic/butterfly-g0fdbed257_1920.jpg', 'research_picture/research_subone/butterfly-gc21b61f75_1920.png', 'research_picture/research_subtwo/stork-g050bc8c51_1920.jpg', '2022-04-18 11:03:33'),
(5, '2536', 'bhanu@gmail.com', 'research test', 'research test', 'computer_graphics_and_digital_image_processing', 'testingimnvbgmmsfdg', '', 'research_picture/research_mainpic/stork-g050bc8c51_1920.jpg', 'research_picture/research_subone/butterfly-gc21b61f75_1920.png', 'research_picture/research_subtwo/butterfly-g0fdbed257_1920.jpg', '2022-04-18 12:26:41'),
(6, '2030', 'seema.rani@galgotiasuniversity.edu.in', 'test', 'test', 'Web And Mobile Application Development', 'this is book', 'Book', '', '', '', '2022-06-01 14:29:42'),
(7, '106', 'seema.rani@galgotiasuniversity.edu.in', 'test', 'test', 'Web And Mobile Application Development', 'this is book', 'Book', '', '', '', '2022-06-01 14:32:13'),
(8, '3684', 'seema.rani@galgotiasuniversity.edu.in', 'BooK chapter1', 'Design', 'Web and Mobile Application Development', 'This is Book Chapter  ', 'Book Chapter', '', '', '', '2022-06-15 10:01:57'),
(9, '8858', 'seema.rani@galgotiasuniversity.edu.in', 'BooK chapter1', 'Design', 'Web and Mobile Application Development', 'This is Book Chapter  ', 'Book Chapter', '', '', '', '2022-06-15 10:02:40'),
(10, '8061', 'seema.rani@galgotiasuniversity.edu.in', '', '', 'web_and_mobile_app_development', '', '', '', '', '', '2022-08-07 09:34:58'),
(11, '4612', 'seema.rani@galgotiasuniversity.edu.in', 'Web Development', 'Website on Research', 'Web and Mobile Application Development', 'This is a project of web development', 'Project', '', '', '', '2022-08-07 18:08:41'),
(12, '1628', 'seema.rani@galgotiasuniversity.edu.in', 'Basic Project on AI', 'Project AI', 'Web and Mobile Application Development', 'this is project on AI in the book', 'Book', '', '', '', '2022-08-07 18:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `research_name_group`
--

CREATE TABLE `research_name_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `research_name_group`
--

INSERT INTO `research_name_group` (`id`, `name`, `category`, `pic`) VALUES
(1, 'WEB AND MOBILE\r\nAPP DEVELOPMENT', 'Web And Mobile Application Development', 'images/Web and Mobile Application development.png'),
(2, 'COMPUTER\r\nNETWORK', 'Computer Network', 'images/Computer Networks and Wireless Computing.jpeg'),
(3, 'DATA SCIENCE AND AI', 'Data Science And AI', 'images/Data Science and AI.jpeg'),
(4, 'CYBER SECURITY\r\nAND PRIVACY', 'Cyber Security And Privacy', 'images/Cyber Security and Privacy.jpeg'),
(5, 'COMPUTER GRAPHICS\r\nAND DIGITAL\r\nIMAGE PROCESSING', 'Computer Graphics And Digital Image Processing', 'images/Computer Graphics and Image Processing.png'),
(6, 'CLOUD COMPUTING\r\nAND DISTRIBUTED\r\nSYSTEMS', 'Cloud Computing And Distributed System', 'images/Cloud Computing and Visualization.png'),
(7, 'CORE AND EMERGING\r\nTECHNOLOGIES', 'Core And Emerging Technologies', 'images/Core and Emerging technology.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `student_request`
--

CREATE TABLE `student_request` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `roll` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `categ` varchar(255) NOT NULL,
  `re_area` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `c_password` varchar(255) NOT NULL,
  `pic_main` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_request`
--

INSERT INTO `student_request` (`id`, `name`, `roll`, `email`, `department`, `categ`, `re_area`, `phone`, `password`, `c_password`, `pic_main`, `status`, `category`, `datetime`) VALUES
(25, 'Nikhil Chauhan', '21SCSE2030250', 'nikhil@gmail.com', 'MCA', 'Web And Mobile Application Development', 'Front-End Developer (C, Core JAVA)', '7017161118', '$2y$10$3qnaHXTqGkROtNmiunJ7k.Z1C/5zuK6EeqvHN0KgT69MN7jnTzgOq', '$2y$10$jh7vHVsjIn06kr3actNm9OC.9HPAf1c.GXpPk1iDhH.RP9APMlrTK', 'student_profile/nikhil.jpeg', '1', 'core', '2022-05-31 13:18:26'),
(26, 'Sankalp Singh', '21SCSE2030197', 'sankalpshingh@gamil.com', 'MCA', 'Web And Mobile Application Development', 'Full Stack Web Developer , Graphics Designer (PHP,Core JAVA, JavaScript)', '8077312209', '$2y$10$LIfDe9YRTZO4G3G.NVI1C.uporkomkK2jgReJaXokHDrABTr6IPtC', '$2y$10$/uYa1IF/BPmO7kcMGYyOPOGX0YFaUwd1fP9lAW934cdEUY49lWvSi', 'student_profile/sankalp.jpeg', '1', 'core', '2022-05-31 13:22:04'),
(27, 'Vivek Kumar Saurabh ', '21SCSE2030235', 'vivekkumarsaurabh59@gmail.com', 'MCA', 'Web And Mobile Application Development', 'Full Stack Web Developer , Graphics Designer (PHP,Core JAVA, Django)', '8292840881', '$2y$10$1GeAlnRt9wrdXbv6tXsWL.uQDOG1NGVNX4xepFIZiqhRTZ.C8n5S2', '$2y$10$SpoadWoQAGmHKCi9PlW8xu3yVhkdKeyOG8f1bcXF52EyikZ9k7GyK', 'student_profile/vivek.jpg', '1', 'core', '2022-05-31 13:24:22'),
(28, 'Aman Kumar', '21SCSE2030000', 'amankr@gmail.com', 'MCA', 'Web And Mobile Application Development', 'Web Development', '13434655', '$2y$10$alt.eXbXLm/fOqTEJldYsuPNIVexnwYbfwPQX3/8D2i3NknioOgh2', '$2y$10$thGWMbTH/SD7Ds25LdjgYO4pL8WPkV3cT9GggG5xWdXegLPhyE2j2', 'student_profile/avatar.jpg', '1', 'core', '2022-05-31 13:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `vission_mission_objective`
--

CREATE TABLE `vission_mission_objective` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `option` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vission_mission_objective`
--

INSERT INTO `vission_mission_objective` (`id`, `category`, `option`, `desc`, `datetime`) VALUES
(1, 'Web And Mobile Application Development', 'vision', 'To motivate and strengthen with the necessary expertise to create professional web pages', '2022-07-23 00:15:41'),
(2, 'Web And Mobile Application Development', 'mission', 'Inspirational, attractive design and illustration', '2022-07-23 00:17:34'),
(3, 'Web And Mobile Application Development', 'mission', 'Motivate the audience in terms of Sell, Serve, Save and Speak', '2022-07-23 00:18:14'),
(4, 'Web And Mobile Application Development', 'mission', 'Conduct Training on latest technology in the domain of web and mobile application development', '2022-07-23 00:18:51'),
(5, 'Data Science And AI', 'vision', 'Create an outstanding environment for Galgotias University researchers, broadly enabling stellar research advances in the field of Data Science and Artificial Intelligence (DS&AI). ', '2022-07-23 00:20:12'),
(6, 'Data Science And AI', 'mission', 'Advocate and raise awareness for the need of DS & AI research.', '2022-07-23 00:21:32'),
(7, 'Data Science And AI', 'mission', 'Promote the conduct of DS & AI research for developing innovative solutions and compliance. ', '2022-07-23 00:25:09'),
(8, 'Data Science And AI', 'mission', 'Collaboration with industries and DS & AI research community.\r\n', '2022-07-23 00:25:57'),
(9, 'Data Science And AI', 'mission', 'Enhance the ability to perform research in a global community.', '2022-07-23 00:28:10'),
(10, 'Web And Mobile Application Development', 'objective', 'To have an independent and one platform for SCSE research activities.', '2022-07-23 00:54:46'),
(11, 'Web And Mobile Application Development', 'objective', 'This will help in spreading the complete information and updates to a large and targeted audience.', '2022-07-23 00:55:37'),
(12, 'Web And Mobile Application Development', 'objective', 'Understand the principles of creating an effective web page', '2022-07-23 00:56:59'),
(13, 'Web And Mobile Application Development', 'objective', 'Students will utilize coding and software tools to analyze and present data in a professional manner that could be translated to web-based or app-based media', '2022-07-23 00:56:59'),
(14, 'Web And Mobile Application Development', 'objective', 'Help the audience in terms of Sell, Serve, Save and Speak', '2022-07-23 00:57:50'),
(15, 'Data Science And AI', 'objective', 'To motivate, train and strengthen researchers with the necessary expertise to handle the various real-world problems in data science and artificial intelligence field', '2022-07-23 00:58:54'),
(16, 'Data Science And AI', 'objective', 'To enhance the number of research publications, Edited /Authored Book, Patents.', '2022-07-23 01:00:09'),
(17, 'Data Science And AI', 'objective', 'To enhance interdisciplinary research activities with our research group.', '2022-07-23 01:00:09'),
(18, 'Data Science And AI', 'objective', 'To conduct workshops/seminars/hackathons/discussion forums.\r\n', '2022-07-23 01:02:52'),
(19, 'Data Science And AI', 'objective', 'To get funded Projects and Research Grants of DS & AI Domain.', '2022-07-23 01:02:52'),
(20, 'Data Science And AI', 'objective', 'To set up industrial oriented laboratory for DS & AI research domain.', '2022-07-23 01:03:34'),
(21, 'Computer Network', 'vision', 'CREATE AN OUTSTANDING PORTFOLIO IN THE FIELD OF COMPUTER NETWORKS.', '2022-07-23 01:22:19'),
(22, 'Computer Network', 'mission', 'Creating Awareness of the basics and advances in the area of Computer Networks.', '2022-07-23 01:23:35'),
(23, 'Computer Network', 'mission', 'Understanding the promising and upcoming research areas in the field of Computer Networks', '2022-07-23 01:23:35'),
(24, 'Computer Network', 'mission', 'Advocating the need of Computer Networks and its Amalgamation with other technologies for RG Members', '2022-07-23 01:25:38'),
(25, 'Computer Network', 'mission', 'Developing Research Aptitude in the field of Computer Networks', '2022-07-23 01:25:38'),
(26, 'Computer Network', 'mission', 'Supporting Strong Infrastructure for the Interdisciplinary Research in Computer Networks.\r\n', '2022-07-23 01:26:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facuties_member`
--
ALTER TABLE `facuties_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research_name_group`
--
ALTER TABLE `research_name_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_request`
--
ALTER TABLE `student_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vission_mission_objective`
--
ALTER TABLE `vission_mission_objective`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `facuties_member`
--
ALTER TABLE `facuties_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `research_name_group`
--
ALTER TABLE `research_name_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_request`
--
ALTER TABLE `student_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `vission_mission_objective`
--
ALTER TABLE `vission_mission_objective`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
