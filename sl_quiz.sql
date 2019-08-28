-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2019 at 12:14 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sl_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(50) NOT NULL,
  `question` varchar(255) NOT NULL,
  `ans_one` varchar(200) NOT NULL,
  `ans_two` varchar(200) NOT NULL,
  `ans_three` varchar(200) NOT NULL,
  `ans_four` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `ans_one`, `ans_two`, `ans_three`, `ans_four`, `answer`) VALUES
(1, 'What is the national food in Sri Lanka?\r\n', 'Milk Rice', 'Rice ', 'Hoppers', 'Oil cake', 'Rice '),
(2, 'What is the national tree in Sri Lanka ?', 'Ceylon ironwood (Naa) ', 'Tea', 'Rubber', 'Coconut', 'Ceylon ironwood (Naa) '),
(3, 'What is the capital of Sri Lanka?\r\n', 'Colombo', 'Kandy', 'Kurunegala', 'Sri Jayawardenapura-Kotte', 'Sri Jayawardenapura-Kotte'),
(4, 'What is the highest peak of Sri Lanka?', 'Pidurutalagala', 'Havagala', 'Samanala Hill', 'Namunukula Hill', 'Pidurutalagala'),
(5, 'How many districts in Sri Lanka?\r\n', '26', '22', '25', '23', '25'),
(6, 'Which is the largest city in Sri Lanka?', 'Colombo', 'Kandy', 'Anuradhapura', 'Kurunegala', 'Colombo'),
(7, 'What is the national language of Sri Lanka?', 'Tamil', 'English', 'Sinhala', 'Hindi', 'Sinhala'),
(8, 'What is the calling code of Sri Lanka?', '54', '61', '94', '43', '94'),
(9, 'What is the largest river in Sri Lanka?', 'Kelani river', 'Nilwala River', 'Mahaweli River', 'Malvathu River', 'Mahaweli River'),
(10, 'What is the national bird in Sri Lanka?\r\n', 'Junglefowl', 'Pigeon', 'Parrot', 'Eagle', 'Junglefowl'),
(11, 'What is the national game of Sri Lanka?', 'Football', 'Cricket', 'Volleyball', 'Badminton\r\n', 'Volleyball'),
(12, 'Who is the 1st woman Prime Minister of Sri Lanka?', 'Sarina jayasuriya', 'Sirimavo banadaranayake', 'Venkathisha', 'Laxmiswamikar', 'Sirimavo banadaranayake'),
(13, 'What is Sri Lanka''s biggest school?', 'Lyceum-Wattala', 'Royal college', 'Trinity College', 'Ananda College', 'Royal college'),
(14, 'What is the first Television channel in Sri Lanka?', 'Independent Television Network (ITN)', 'Sri Lanka Rupavahini', 'TNL', 'Eye Channel', 'Independent Television Network (ITN)'),
(15, 'Who is the first president of Sri Lanka?', 'J.R.Jayawardena', 'R.Premadasa', 'William Gopallawa', 'Richard Jayawardena', 'William Gopallawa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `email`, `password`) VALUES
('Maduranga', 'madur@gmail.com', '28024a160358e4eeb7c4880ce062054b7ddc1c68'),
('Namal', 'namal@gmail.com', '28024a160358e4eeb7c4880ce062054b7ddc1c68'),
('Supun', 'supun@gmail.com', 'bc8912f4bdf61fdbe94e3113cbb75b0c328f897d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
