-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 07:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userform`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('question63d76e8556982', 'optionA63d76e857239b'),
('question63d76e85ec31d', 'optionA63d76e8600aaa'),
('question63d76e866cb89', 'optionD63d76e867ae1e'),
('question63d76e86c2e29', 'optionA63d76e86ce538'),
('question63d76e8705c0f', 'optionA63d76e871f694'),
('question63d76e874b0e0', 'optionB63d76e8753b19'),
('question63d76e878f9e8', 'optionA63d76e879856b'),
('question63d76e8810f57', 'optionB63d76e88205aa'),
('question63d76e8867caa', 'optionA63d76e8875e1c'),
('question63d76e88b1c6a', 'optionC63d76e88ba9c5'),
('question63d77e36eeb65', 'optionA63d77e371f1f6'),
('question63d77e37501e8', 'optionB63d77e3758db3'),
('question63d77e37a8ebb', 'optionA63d77e37b9d2d'),
('question63d77e384bef5', 'optionA63d77e3873a32'),
('question63d77e38a7796', 'optionA63d77e38b0309'),
('question63d794b4931cd', 'optionC63d794b4a44b7'),
('question63d794b50cc97', 'optionD63d794b5158c7'),
('question63d794b57f33e', 'optionA63d794b599607'),
('question63d794b5c24d9', 'optionB63d794b5cb089'),
('question63d794b626f69', 'optionB63d794b6351d1');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(99) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `thumbnail_path` varchar(255) NOT NULL,
  `custom_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `duration`, `thumbnail_path`, `custom_link`) VALUES
(35, 'HTML', '30days', 'thumbnails/christmas-winter-4k-wallpaper-preview.jpg', 'https://m-anandh.github.io/ToDoList/');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(99) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `student_name`, `feedback`, `date`) VALUES
(1, 'Anandh', 'Good', '2023-10-02 17:11:43.545775'),
(2, 'Anandh', 'good', '2023-10-02 17:19:41.140700'),
(3, 'Anandh', 'good ', '2023-10-02 17:25:02.544655');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(255) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `right`, `wrong`, `date`) VALUES
('demo@gmail.com', 'quiz63d77d4f82bf1', 10, 5, 5, 0, '2023-01-30 09:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` text NOT NULL,
  `option` text NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('question63d76e8556982', 'Interconnected computing devices that can exchange data and share resources with each other', 'optionA63d76e857239b'),
('question63d76e8556982', 'A system which is not connected to the network and can’t be communicated with', 'optionB63d76e85723a5'),
('question63d76e8556982', 'Both a & b', 'optionC63d76e85723a6'),
('question63d76e8556982', 'None', 'optionD63d76e85723a7'),
('question63d76e85ec31d', 'Personal Area Network', 'optionA63d76e8600aaa'),
('question63d76e85ec31d', 'Personalized Area Network', 'optionB63d76e8600ab0'),
('question63d76e85ec31d', 'Persona Area Network', 'optionC63d76e8600ab2'),
('question63d76e85ec31d', 'None of the above', 'optionD63d76e8600ab3'),
('question63d76e866cb89', 'Hub', 'optionA63d76e867ae15'),
('question63d76e866cb89', 'Switch', 'optionB63d76e867ae1b'),
('question63d76e866cb89', 'Bridge', 'optionC63d76e867ae1d'),
('question63d76e866cb89', 'Mobile', 'optionD63d76e867ae1e'),
('question63d76e86c2e29', 'Open System Interconnection Model', 'optionA63d76e86ce538'),
('question63d76e86c2e29', 'Open System and Inter Model', 'optionB63d76e86ce53f'),
('question63d76e86c2e29', 'Open System Interconnected Model', 'optionC63d76e86ce540'),
('question63d76e86c2e29', 'None of the above', 'optionD63d76e86ce541'),
('question63d76e8705c0f', 'Resource sharing', 'optionA63d76e871f694'),
('question63d76e8705c0f', 'Communication speed', 'optionB63d76e871f699'),
('question63d76e8705c0f', 'Scalability', 'optionC63d76e871f69a'),
('question63d76e8705c0f', 'All the above', 'optionD63d76e871f69b'),
('question63d76e874b0e0', 'RCF', 'optionA63d76e8753b13'),
('question63d76e874b0e0', 'RFC', 'optionB63d76e8753b19'),
('question63d76e874b0e0', 'TTL', 'optionC63d76e8753b1b'),
('question63d76e874b0e0', 'RRL', 'optionD63d76e8753b1c'),
('question63d76e878f9e8', 'Added', 'optionA63d76e879856b'),
('question63d76e878f9e8', 'Removed', 'optionB63d76e8798571'),
('question63d76e878f9e8', 'Modified', 'optionC63d76e8798572'),
('question63d76e878f9e8', 'None of the above', 'optionD63d76e8798573'),
('question63d76e8810f57', 'Semantics', 'optionA63d76e88205a5'),
('question63d76e8810f57', 'Syntax', 'optionB63d76e88205aa'),
('question63d76e8810f57', 'Structure', 'optionC63d76e88205ac'),
('question63d76e8810f57', 'All the above', 'optionD63d76e88205ad'),
('question63d76e8867caa', 'Access point is not required', 'optionA63d76e8875e1c'),
('question63d76e8867caa', 'Access point is required', 'optionB63d76e8875e22'),
('question63d76e8867caa', 'Access point is mandatory', 'optionC63d76e8875e23'),
('question63d76e8867caa', 'None of the above', 'optionD63d76e8875e24'),
('question63d76e88b1c6a', 'Infrastructure mode', 'optionA63d76e88ba9bd'),
('question63d76e88b1c6a', 'Ad-havoc mode', 'optionB63d76e88ba9c3'),
('question63d76e88b1c6a', 'Both a & b', 'optionC63d76e88ba9c5'),
('question63d76e88b1c6a', 'None', 'optionD63d76e88ba9c6'),
('question63d77e36eeb65', 'Dennis Ritchie', 'optionA63d77e371f1f6'),
('question63d77e36eeb65', 'Dennis Roslansky', 'optionB63d77e371f1ff'),
('question63d77e36eeb65', 'David RItchie', 'optionC63d77e371f200'),
('question63d77e36eeb65', 'David Roslansly', 'optionD63d77e371f202'),
('question63d77e37501e8', 'print(\"Hello World\");', 'optionA63d77e3758da9'),
('question63d77e37501e8', 'printf(\"Hello World\");', 'optionB63d77e3758db3'),
('question63d77e37501e8', 'printed(\"Hello World\");', 'optionC63d77e3758db5'),
('question63d77e37501e8', 'None of the above', 'optionD63d77e3758db7'),
('question63d77e37a8ebb', '//', 'optionA63d77e37b9d2d'),
('question63d77e37a8ebb', '<!-- -->', 'optionB63d77e37b9d37'),
('question63d77e37a8ebb', '--', 'optionC63d77e37b9d39'),
('question63d77e37a8ebb', '#', 'optionD63d77e37b9d3b'),
('question63d77e384bef5', 'True', 'optionA63d77e3873a32'),
('question63d77e384bef5', 'False', 'optionB63d77e3873a3e'),
('question63d77e384bef5', 'Maybe', 'optionC63d77e3873a40'),
('question63d77e384bef5', 'Undefined', 'optionD63d77e3873a43'),
('question63d77e38a7796', 'Yes', 'optionA63d77e38b0309'),
('question63d77e38a7796', 'No', 'optionB63d77e38b0311'),
('question63d77e38a7796', 'Maybe', 'optionC63d77e38b0313'),
('question63d77e38a7796', 'Undefined', 'optionD63d77e38b0315'),
('question63d794b4931cd', 'Wick van Rossum', 'optionA63d794b4a44af'),
('question63d794b4931cd', 'Rasmus Lerdorf', 'optionB63d794b4a44b6'),
('question63d794b4931cd', 'Guido van Rossum', 'optionC63d794b4a44b7'),
('question63d794b4931cd', 'Neine Stom', 'optionD63d794b4a44b8'),
('question63d794b50cc97', 'Object oriented', 'optionA63d794b5158bd'),
('question63d794b50cc97', 'Structural', 'optionB63d794b5158c4'),
('question63d794b50cc97', 'Functional', 'optionC63d794b5158c6'),
('question63d794b50cc97', 'All of the above', 'optionD63d794b5158c7'),
('question63d794b57f33e', 'Yes', 'optionA63d794b599607'),
('question63d794b57f33e', 'No', 'optionB63d794b59960e'),
('question63d794b57f33e', 'Maybe', 'optionC63d794b59960f'),
('question63d794b57f33e', 'Machine-dependent', 'optionD63d794b599610'),
('question63d794b5c24d9', '.python', 'optionA63d794b5cb084'),
('question63d794b5c24d9', '.py', 'optionB63d794b5cb089'),
('question63d794b5c24d9', '.pyy', 'optionC63d794b5cb08b'),
('question63d794b5c24d9', '.pyn', 'optionD63d794b5cb08c'),
('question63d794b626f69', 'Compiled', 'optionA63d794b6351cb'),
('question63d794b626f69', 'Interpreted', 'optionB63d794b6351d1'),
('question63d794b626f69', 'Both', 'optionC63d794b6351d3'),
('question63d794b626f69', 'None', 'optionD63d794b6351d4');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `question` text NOT NULL,
  `choice` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `question`, `choice`, `status`) VALUES
('quiz63d76aac57d9d', 'question63d76e8556982', 'What are computer networks?', 4, 1),
('quiz63d76aac57d9d', 'question63d76e85ec31d', 'PAN refers to ', 4, 2),
('quiz63d76aac57d9d', 'question63d76e866cb89', 'Which among this is not a network device?', 4, 3),
('quiz63d76aac57d9d', 'question63d76e86c2e29', 'OSI means', 4, 4),
('quiz63d76aac57d9d', 'question63d76e8705c0f', 'Which among the following are the characteristics of networks?', 4, 5),
('quiz63d76aac57d9d', 'question63d76e874b0e0', 'The IETF standards documents are called ', 4, 6),
('quiz63d76aac57d9d', 'question63d76e878f9e8', 'In the layer hierarchy as the data packet moves from the upper to the lower layers, headers are', 4, 7),
('quiz63d76aac57d9d', 'question63d76e8810f57', 'The structure or format of data is called', 4, 8),
('quiz63d76aac57d9d', 'question63d76e8867caa', 'In wireless ad-hoc network', 4, 9),
('quiz63d76aac57d9d', 'question63d76e88b1c6a', 'A wireless network interface controller can work in', 4, 10),
('quiz63d77d4f82bf1', 'question63d77e36eeb65', 'C was developed by', 4, 1),
('quiz63d77d4f82bf1', 'question63d77e37501e8', 'What is a correct syntax to output \"Hello World\" in C?', 4, 2),
('quiz63d77d4f82bf1', 'question63d77e37a8ebb', 'How to add single-line comments in C?', 4, 3),
('quiz63d77d4f82bf1', 'question63d77e384bef5', 'When a variable is created in C, a memory address is assigned to the variable.', 4, 4),
('quiz63d77d4f82bf1', 'question63d77e38a7796', 'In C, code statements must end with a semicolon (;)', 4, 5),
('quiz63d793aea083f', 'question63d794b4931cd', 'Who developed Python Programming Language?', 4, 1),
('quiz63d793aea083f', 'question63d794b50cc97', 'Which type of Programming does Python support?', 4, 2),
('quiz63d793aea083f', 'question63d794b57f33e', ' Is Python case sensitive when dealing with identifiers?', 4, 3),
('quiz63d793aea083f', 'question63d794b5c24d9', 'Which of the following is the correct extension of the Python file?', 4, 4),
('quiz63d793aea083f', 'question63d794b626f69', 'Is Python code compiled or interpreted?\r\n', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `right` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `right`, `total`, `date`) VALUES
('quiz63d76aac57d9d', 'Computer Networks - 1', 2, 10, '2023-01-30 06:58:52'),
('quiz63d77d4f82bf1', 'C Programming Language', 2, 5, '2023-01-30 08:18:23'),
('quiz63d793aea083f', 'Python Programming - 1', 2, 5, '2023-01-30 09:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('demo@gmail.com', 10, '2023-01-30 09:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `id` int(99) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `college` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `college`, `email`, `password`) VALUES
(9, 'demo', 'tce', 'anandhmadurai02@gmail.com', '12345'),
(6, 'Demo', 'xyz', 'demo@gmail.com', '123'),
(5, 'Test', 'xyz', 'test@gmail.com', '123'),
(7, 'TestMe', 'yz', 'testme@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
(7, 'Sakthi', 'sakthiks2002@gmail.com', '$2y$10$/GLitT8vj6CVlHNv4iyQS.599araYi3Bm1T6JpdMA8xj9iw6xQ0M.', 0, 'verified'),
(9, 'Anandh M', 'anandhmadurai02@gmail.com', '$2y$10$/mFp.FX6E3XrdlXIWNvl3OZRkgW.flFGC.PENjFM1nkAvsEp0Gntq', 0, 'verified'),
(15, 'Viswa', 'smileyvishwa8428@gmail.com', '$2y$10$f4N1eo2IWgC3.mxW5CLg1ew.X6SKkfzG4MhIzar6LmEjFKWYBe.uO', 0, 'verified'),
(16, 'anandh', 'anandhm@student.tce.edu', '$2y$10$iUfH2bI573Kv8180wHDlRuLPN82R.Co5/wvKGVUeCSZZlKeaSgy0O', 0, 'verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
