-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 10:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acacia.quizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`id`, `username`, `pass`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `quizz_answers`
--

CREATE TABLE `quizz_answers` (
  `id` int(100) NOT NULL,
  `unique_code` varchar(100) NOT NULL,
  `phone_num` int(15) DEFAULT NULL,
  `memberID` varchar(50) DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `q1` int(10) NOT NULL,
  `q2` int(10) NOT NULL,
  `q3` int(10) NOT NULL,
  `q4` int(10) NOT NULL,
  `q5` int(10) NOT NULL,
  `q6` int(10) NOT NULL,
  `q7` int(10) NOT NULL,
  `q8` int(10) NOT NULL,
  `q9` int(11) NOT NULL,
  `results` int(100) NOT NULL DEFAULT 0,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizz_answers`
--

INSERT INTO `quizz_answers` (`id`, `unique_code`, `phone_num`, `memberID`, `userName`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `results`, `date_added`) VALUES
(1, 'AQA2046', NULL, NULL, NULL, 0, 2, 1, 0, 0, 0, 1, 2, 1, 0, '2022-07-12 11:55:49'),
(2, 'AQA453', NULL, NULL, NULL, 0, 0, 2, 0, 1, 1, 1, 2, 2, 50, '2022-06-09 16:03:03'),
(3, 'AQA9010', NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 0, 1, 0, 17, '2022-05-09 16:06:01'),
(4, 'AQA381', NULL, NULL, NULL, 0, 2, 1, 0, 0, 1, 0, 1, 1, 33, '2021-08-09 16:18:56'),
(5, 'AQA8218', NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 1, 0, 0, 17, '2021-08-09 16:21:07'),
(6, 'AQA8005', NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, 2, 2, 2, 50, '2021-08-09 16:28:59'),
(7, 'AQA1676', NULL, NULL, NULL, 2, 2, 2, 1, 0, 2, 1, 2, 2, 78, '2021-08-09 20:05:04'),
(8, 'AQA2397', NULL, NULL, NULL, 0, 2, 0, 0, 0, 1, 0, 0, 0, 17, '2021-08-10 02:30:56'),
(9, 'AQA9585', NULL, NULL, NULL, 0, 0, 1, 0, 0, 1, 0, 0, 1, 17, '2021-09-12 11:54:35'),
(10, 'AQA2645', NULL, NULL, NULL, 2, 2, 2, 0, 2, 2, 0, 0, 2, 67, '2021-08-10 13:44:51'),
(11, 'AQA5031', NULL, NULL, NULL, 2, 2, 1, 1, 2, 1, 1, 1, 2, 72, '2021-08-10 14:50:13'),
(12, 'AQA1668', NULL, NULL, NULL, 2, 2, 1, 0, 0, 1, 1, 1, 1, 50, '2021-08-10 16:29:02'),
(13, 'AQA8957', NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, 0, 0, 11, '2021-08-10 17:19:46'),
(14, 'AQA7809', NULL, NULL, NULL, 2, 2, 2, 2, 2, 2, 2, 2, 2, 100, '2021-08-10 17:34:24'),
(15, 'AQA6389', NULL, NULL, NULL, 0, 2, 1, 1, 1, 1, 2, 2, 1, 0, '2021-08-10 17:40:16'),
(16, 'AQA5758', NULL, NULL, NULL, 0, 2, 1, 1, 1, 1, 2, 2, 1, 61, '2021-08-10 17:40:19'),
(17, 'AQA4498', NULL, NULL, NULL, 0, 2, 1, 1, 1, 1, 2, 2, 1, 61, '2021-08-10 17:40:20'),
(18, 'AQA9883', NULL, NULL, NULL, 2, 2, 1, 0, 0, 1, 0, 1, 2, 50, '2021-08-10 22:21:09'),
(19, 'AQA5261', NULL, NULL, NULL, 2, 2, 1, 2, 0, 1, 1, 0, 0, 0, '2021-08-11 09:42:32'),
(20, 'AQA977', NULL, NULL, NULL, 2, 2, 1, 2, 0, 1, 1, 0, 0, 50, '2021-08-11 09:42:33'),
(21, 'AQA9405', NULL, NULL, NULL, 2, 2, 0, 0, 0, 1, 2, 1, 0, 44, '2021-08-11 10:12:46'),
(22, 'AQA2370', NULL, NULL, NULL, 2, 2, 0, 0, 0, 1, 2, 1, 0, 44, '2021-08-11 10:12:47'),
(23, 'AQA4399', NULL, NULL, NULL, 2, 2, 2, 2, 2, 2, 2, 2, 2, 100, '2021-08-12 02:14:29'),
(24, 'AQA1658', NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, '2021-08-15 13:49:10'),
(25, 'AQA9128', NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 1, 0, 0, 11, '2021-08-15 13:49:11'),
(26, 'AQA2640', NULL, NULL, NULL, 1, 2, 1, 0, 1, 1, 0, 1, 1, 44, '2021-08-15 13:58:18'),
(27, 'AQA5343', NULL, NULL, NULL, 2, 0, 1, 0, 1, 1, 2, 2, 2, 61, '2021-08-17 12:21:46'),
(28, 'AQA1385', NULL, NULL, NULL, 0, 2, 0, 2, 2, 2, 2, 2, 2, 78, '2021-08-18 02:46:24'),
(29, 'AQA2479', NULL, NULL, NULL, 2, 2, 0, 1, 1, 2, 0, 2, 2, 67, '2021-08-18 12:14:26'),
(30, 'AQA9630', NULL, NULL, NULL, 0, 0, 1, 2, 1, 0, 0, 1, 2, 39, '2021-08-18 15:10:34'),
(31, 'AQA26', NULL, NULL, NULL, 2, 2, 2, 1, 2, 1, 0, 0, 2, 67, '2021-08-20 11:01:22'),
(32, 'AQA2981', NULL, NULL, NULL, 2, 2, 2, 0, 2, 2, 2, 2, 2, 89, '2021-08-20 12:11:36'),
(33, 'AQA6396', NULL, NULL, NULL, 2, 2, 1, 1, 0, 1, 2, 0, 2, 61, '2021-08-21 17:39:43'),
(34, 'AQA1779', NULL, NULL, NULL, 2, 2, 1, 1, 0, 1, 2, 0, 2, 61, '2021-08-21 17:39:44'),
(35, 'AQA6644', NULL, NULL, NULL, 2, 2, 1, 1, 2, 1, 1, 2, 2, 78, '2021-08-21 22:43:57'),
(36, 'AQA4398', NULL, NULL, NULL, 2, 2, 2, 2, 2, 2, 0, 2, 2, 89, '2021-08-22 10:01:53'),
(37, 'AQA9623', NULL, NULL, NULL, 2, 2, 2, 2, 1, 2, 2, 2, 2, 94, '2021-08-23 10:20:12'),
(38, 'AQA837', NULL, NULL, NULL, 2, 2, 2, 2, 1, 2, 2, 2, 2, 94, '2021-08-23 10:20:12'),
(39, 'AQA8140', NULL, NULL, NULL, 2, 0, 0, 1, 0, 1, 2, 2, 2, 56, '2021-08-23 14:49:46'),
(40, 'AQA7083', NULL, NULL, NULL, 2, 2, 0, 0, 1, 1, 0, 1, 2, 50, '2021-08-24 12:40:22'),
(41, 'AQA9503', NULL, NULL, NULL, 1, 0, 2, 2, 1, 2, 2, 1, 2, 72, '2021-08-24 15:34:47'),
(42, 'AQA6090', NULL, NULL, NULL, 2, 2, 2, 2, 2, 2, 2, 2, 2, 100, '2021-08-24 16:36:50'),
(43, 'AQA2397', NULL, NULL, NULL, 1, 0, 1, 0, 2, 1, 2, 1, 2, 17, '2021-08-24 16:45:58'),
(44, 'AQA2343', NULL, NULL, NULL, 0, 2, 0, 2, 0, 0, 2, 1, 2, 50, '2021-08-24 17:19:15'),
(45, 'AQA8654', NULL, NULL, NULL, 1, 2, 1, 2, 1, 0, 2, 1, 2, 67, '2021-08-25 06:54:39'),
(46, 'AQA9327', NULL, NULL, NULL, 2, 2, 0, 1, 0, 0, 0, 0, 0, 28, '2021-08-25 09:48:10'),
(47, 'AQA4614', NULL, NULL, NULL, 1, 2, 1, 0, 1, 1, 0, 1, 1, 44, '2021-08-25 10:30:40'),
(48, 'AQA8461', NULL, NULL, NULL, 1, 2, 2, 0, 2, 2, 0, 2, 2, 72, '2021-08-25 11:17:25'),
(49, 'AQA9659', NULL, NULL, NULL, 1, 2, 1, 0, 1, 1, 0, 0, 1, 39, '2021-08-25 15:30:29'),
(50, 'AQA6109', NULL, NULL, NULL, 0, 2, 2, 2, 2, 2, 2, 2, 2, 89, '2021-08-26 11:50:26'),
(51, 'AQA2360', NULL, NULL, NULL, 2, 2, 1, 2, 1, 2, 0, 2, 2, 78, '2021-08-26 12:38:40'),
(52, 'AQA2283', NULL, NULL, NULL, 2, 0, 1, 0, 0, 0, 0, 1, 1, 28, '2021-08-26 15:21:53'),
(53, 'AQA9205', NULL, NULL, NULL, 2, 2, 2, 2, 2, 2, 2, 2, 2, 100, '2021-08-26 15:29:58'),
(54, 'AQA7452', NULL, NULL, NULL, 2, 2, 2, 0, 1, 1, 0, 2, 2, 67, '2021-08-26 15:33:25'),
(55, 'AQA8977', NULL, NULL, NULL, 2, 0, 1, 0, 0, 1, 1, 1, 0, 33, '2021-08-27 11:14:14'),
(56, 'AQA4966', NULL, NULL, NULL, 2, 2, 2, 1, 2, 2, 2, 2, 2, 94, '2021-08-27 15:58:13'),
(57, 'AQA2186', NULL, NULL, NULL, 1, 2, 1, 2, 2, 1, 0, 2, 1, 67, '2021-08-28 16:09:28'),
(58, 'AQA2843', NULL, NULL, NULL, 2, 2, 1, 1, 2, 2, 0, 0, 1, 61, '2021-08-30 10:53:07'),
(59, 'AQA6571', NULL, NULL, NULL, 2, 2, 2, 1, 1, 1, 0, 2, 2, 72, '2021-09-01 08:26:27'),
(60, 'AQA6745', NULL, NULL, NULL, 2, 2, 2, 1, 1, 1, 2, 2, 2, 83, '2021-09-01 10:16:55'),
(61, 'AQA5470', NULL, NULL, NULL, 0, 2, 1, 0, 0, 1, 0, 1, 1, 33, '2021-09-01 22:06:57'),
(62, 'AQA5327', NULL, NULL, NULL, 2, 2, 0, 0, 2, 2, 0, 2, 2, 67, '2021-09-02 14:00:28'),
(63, 'AQA4773', NULL, NULL, NULL, 2, 2, 2, 2, 2, 2, 0, 2, 2, 0, '2021-09-02 15:48:50'),
(64, 'AQA5760', NULL, NULL, NULL, 2, 2, 2, 2, 2, 2, 0, 2, 2, 89, '2021-09-02 15:48:54'),
(65, 'AQA6810', NULL, NULL, NULL, 0, 0, 1, 2, 2, 2, 0, 2, 2, 61, '2021-09-05 18:12:47'),
(66, 'AQA9030', NULL, NULL, NULL, 2, 2, 2, 1, 2, 1, 2, 2, 2, 89, '2021-09-06 10:21:55'),
(67, 'AQA9073', NULL, NULL, NULL, 2, 2, 2, 1, 2, 2, 2, 2, 2, 94, '2021-09-07 00:04:06'),
(68, 'AQA9879', NULL, NULL, NULL, 2, 2, 2, 2, 2, 2, 2, 2, 2, 100, '2021-09-07 00:05:49'),
(69, 'AQA3183', NULL, NULL, NULL, 0, 2, 2, 1, 1, 2, 2, 2, 2, 78, '2021-09-08 19:20:17'),
(70, 'AQA4006', NULL, NULL, NULL, 2, 2, 1, 1, 1, 0, 0, 2, 2, 61, '2021-09-09 08:51:27'),
(71, 'AQA255', NULL, NULL, NULL, 2, 2, 1, 1, 1, 0, 0, 2, 2, 61, '2021-09-09 08:51:27'),
(72, 'AQA3329', NULL, NULL, NULL, 2, 2, 1, 1, 2, 2, 2, 2, 2, 89, '2021-09-09 14:44:56'),
(73, 'AQA8438', NULL, NULL, NULL, 2, 2, 1, 1, 1, 1, 0, 0, 2, 56, '2021-09-10 16:52:32'),
(74, 'AQA9112', NULL, NULL, NULL, 2, 2, 2, 1, 2, 2, 0, 2, 2, 83, '2021-09-11 12:25:39'),
(75, 'AQA4216', NULL, NULL, NULL, 2, 0, 1, 2, 1, 0, 0, 2, 2, 56, '2021-09-11 21:09:16'),
(76, 'AQA4636', NULL, NULL, NULL, 0, 0, 1, 0, 0, 1, 0, 1, 2, 28, '2021-09-11 22:57:23'),
(77, 'AQA9172', NULL, NULL, NULL, 2, 2, 1, 2, 2, 1, 0, 1, 1, 0, '2021-09-12 10:36:12'),
(78, 'AQA7677', NULL, NULL, NULL, 2, 2, 1, 2, 1, 1, 2, 2, 2, 83, '2021-09-12 10:38:45'),
(79, 'AQA2049', NULL, NULL, NULL, 1, 2, 1, 2, 2, 2, 2, 2, 2, 89, '2021-09-25 09:39:12'),
(80, 'AQA436', NULL, NULL, NULL, 1, 2, 2, 2, 2, 1, 0, 1, 2, 72, '2021-09-25 09:45:51'),
(81, 'AQA2581', 555935329, '33S10860S16', 'CYNDA SOMUAH', 2, 2, 2, 2, 2, 2, 2, 2, 2, 100, '2022-08-20 16:24:31'),
(82, 'A2345678', 4567897, '3456789', 'hb', 1, 1, 1, 1, 1, 1, 1, 1, 1, 90, '2022-08-31 21:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `quizz_questions`
--

CREATE TABLE `quizz_questions` (
  `id` int(100) NOT NULL,
  `code` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option1_value` int(10) NOT NULL DEFAULT 0,
  `option2` varchar(255) NOT NULL,
  `option2_value` int(10) NOT NULL DEFAULT 0,
  `option3` varchar(255) DEFAULT NULL,
  `option3_value` int(10) NOT NULL DEFAULT 0,
  `option4` varchar(255) DEFAULT NULL,
  `option4_value` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizz_questions`
--

INSERT INTO `quizz_questions` (`id`, `code`, `question`, `option1`, `option1_value`, `option2`, `option2_value`, `option3`, `option3_value`, `option4`, `option4_value`) VALUES
(1, 'q1', 'Do you think exercise is relevant to one’s general well-being? ', 'Yes, to stay healthy one must keep fit.', 2, 'Yes, but it is not a necessity. ', 1, 'I am indifferent, I think some sick people need exercises to stay healthy.', 0, 'No, physical fitness is for aesthetics.', 0),
(2, 'q2', 'What is your go-to work out routine?', 'Vigorous routines (hiking, aerobics, jogging, running, cycling, soccer etc.)', 2, 'Moderate routines (walking briskly, cleaning heavily, tennis doubles, lap swimming etc.)', 2, 'Light routines (walking, dancing, yoga, etc.)', 2, 'I do not work out.', 0),
(3, 'q3', 'How many hours of sleep do you get daily?', 'I get just the right amount of sleep. [7-9 hours]', 2, 'I do not sleep so much; I am active at night too. [less than 7 hours]', 0, 'I sleep a lot; I am always tired. [more than 9 hours]', 0, 'I am not sure; I do not keep tabs. [between 6 to 10 hours]', 1),
(4, 'q4', 'Do you have scheduled sleep and rest patterns?', 'Yes, I do, sleep and rest times are important ', 2, ' I don’t have a timetable, but I do get enough sleep', 2, 'What’s my own I sleep anytime the sleep comes', 1, 'I think I struggle with sleep disorders', 0),
(5, 'q5', 'How many meals do you have daily?', '1-1-1 I ensure to have three whole meals everyday ', 2, '1-0-1 I get two standard meals, breakfast and dinner or lunch. ', 1, ' I am a foodie I eat as much as I desire because life is short ', 0, 'I hardly eat anything, depends on my mood so I can’t tell', 0),
(6, 'q6', 'Do you subscribe to balanced diets?', 'Yes, I ensure my meals are healthy and a balanced mix of food classes', 2, 'I try but I don’t always find all food classes', 1, 'I don’t have that time I eat what I like and can afford', 0, 'I’d love to normally but that’ll be expensive', 1),
(7, 'q7', 'When are you most productive at work?', 'In the morning, that’s my most productive time of the day', 2, 'Always, I’m obsessed with working and getting results', 1, 'When I work from home and in my own space', 1, 'Indifferent, Whatever time of the day I feel most energetic', 1),
(8, 'q8', 'Do you have good sitting/working posture?', 'Yes, I sit up right', 2, 'I view my work screens from calculated angles', 2, 'Not really, I have back injuries', 0, 'I slouch', 0),
(9, 'q9', 'Do you pay attention to mental health and therapy? ', 'Yes, and I have therapy sessions when necessary', 2, 'Yes, I meditate and do yoga', 2, 'Yes, but therapy is expensive', 1, 'No, is that even a real thing?', 0),
(10, 'q10', 'Do you think mental health influences your relationship with people?', 'Yes, it influences my relationships and productivity a great deal', 2, 'Yes, mental health is just as important as physical health', 2, 'I’m indifferent, I think it does sometimes', 1, 'No, my mental health does not interfere in my relationships with people.', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizz_answers`
--
ALTER TABLE `quizz_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizz_questions`
--
ALTER TABLE `quizz_questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quizz_answers`
--
ALTER TABLE `quizz_answers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `quizz_questions`
--
ALTER TABLE `quizz_questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
