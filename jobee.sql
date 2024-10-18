-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2024 at 06:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin frist', 'admin1@gmail.com', '$2y$10$E6idQxUuLMXGa1jLj8LrZ.SEsKrdZdNUtmwQxl9I5s/LbIvtCM3ly', '2024-10-12 19:06:49', '2024-10-12 19:06:49'),
(4, 'sama', 'samaelnady7@gmail.com', '$2y$10$6CB4tQh3FygKj9lqW60PCe566R6ETytUfiZ/.KMDfTo/GWoIlww32', '2024-10-13 16:37:59', '2024-10-13 16:37:59'),
(5, 'nairaelnady', 'nanaalnady@gmail.com', '$2y$10$9l6zVZ0fo6UMnt6DWhDb9OhN6BvoLVj5GEX58AwsBZmQOLi.SzUpS', '2024-10-13 17:59:51', '2024-10-13 17:59:51'),
(6, 'Hedayya Adel', 'hedayyaadel@gmail.com', '$2y$10$6Q3zzqFwyR1kTXfjiiqE.OWFfVIaSTNU4ILxwOxzec23csj4u09S2', '2024-10-14 17:33:28', '2024-10-14 17:33:28'),
(7, 'Yomna Mohamed', 'yomnamu7md@icloud.com', '$2y$10$nGmMa1mYb/KQp8oMjQ7uwOAizgidz/0Gw92/CAFNsaimvJJpJ7qY2', '2024-10-14 17:35:26', '2024-10-14 17:35:26'),
(8, 'Nourhan Khaled', 'nourhankhaled@gmail.com', '$2y$10$hxApp0i4m7FwwIuEV5y0i.lL6yvzW3pRES248ecBcWAmMDtso8GJy', '2024-10-17 12:35:30', '2024-10-17 12:35:30'),
(9, 'sara mohamed', 'saramohamed@gmail.com', '$2y$10$PzZ9ct1uAlvEzjL7iSlrD.w3aAkSnaFyiKMspuR5vqJa7lfEJz1vm', '2024-10-17 12:36:20', '2024-10-17 12:36:20'),
(10, 'alaa fayez', 'alaafayez@gmail.com', '$2y$10$/vRrQPESU/tK3zd42Fk/MegvYM8GcKhdi4t21X1YVZWEvVHR3Gzki', '2024-10-17 12:37:04', '2024-10-17 12:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `cv` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `job_image` varchar(200) DEFAULT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `job_id`, `cv`, `user_id`, `email`, `job_image`, `job_title`, `job_region`, `company`, `job_type`, `created_at`, `updated_at`) VALUES
(16, 22, '', 15, 'yomnamu7med13@gmail.com', NULL, 'Backend Developer', 'New York', 'Microsoft', 'Part Time', '2024-10-15 23:20:47', '2024-10-15 23:20:47'),
(17, 14, 'Sara-Mohamed-Junior Backend Developer1111.pdf', 14, 'yomnamu7md@icloud.com', NULL, 'JS Dev', 'San Francisco', 'Micro', 'Full Time', '2024-10-15 23:54:25', '2024-10-15 23:54:25'),
(18, 22, 'default_value', 16, 'yomna.mu7med.13@gmail.com', NULL, 'Backend Developer', 'New York', 'Microsoft', 'Part Time', '2024-10-15 23:59:26', '2024-10-15 23:59:26'),
(19, 21, 'DSS-Lecture-2 (1).pdf', 17, 'hedayaadel@gemail.com', NULL, 'JS Developer', 'San Francisco', 'Micro', 'Full Time', '2024-10-17 12:31:26', '2024-10-17 12:31:26'),
(20, 21, '', 18, 'hedaya@gmail.com', NULL, 'JS Developer', 'San Francisco', 'Micro', 'Full Time', '2024-10-17 13:28:33', '2024-10-17 13:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Programming', '2024-10-05 00:13:25', '2024-10-15 08:22:23'),
(3, 'Laravel', '2024-10-15 04:08:51', '2024-10-15 04:08:51'),
(5, 'PHP', '2024-10-15 05:06:29', '2024-10-15 05:06:29'),
(6, 'Frontend', '2024-10-15 07:38:49', '2024-10-15 08:21:57'),
(7, 'Backend', '2024-10-15 07:39:05', '2024-10-15 07:39:05'),
(8, 'Programming Language', '2024-10-15 11:26:50', '2024-10-15 11:27:12'),
(9, 'Web Development', '2024-10-15 19:19:45', '2024-10-15 19:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `vacancy` varchar(200) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `application_deadline` varchar(200) NOT NULL,
  `jobdescription` varchar(200) NOT NULL,
  `responsibilities` varchar(200) NOT NULL,
  `education_experience` varchar(200) NOT NULL,
  `otherbenefits` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_region`, `company`, `job_type`, `vacancy`, `experience`, `salary`, `gender`, `application_deadline`, `jobdescription`, `responsibilities`, `education_experience`, `otherbenefits`, `image`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Product Designer', 'Mountian View', 'Adidas', 'Full Time ', '20', '2 to 3 year(s)', '$60k - $100k', 'Any', 'April 28, 2019', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in. Fusce i', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in. Fusce i', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in. Fusce i', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in. Fusce i', 'job_logo_1.jpg', 'programming', '2024-10-04 23:14:03', '2024-10-04 23:14:03'),
(2, 'Digital Marketing Director ', 'Kansas', 'Sprint', 'Full time ', '20', '2 to 3 year(s)', '$60k - $100k', 'Any', 'April 28, 2019', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'job_logo_2.jpg', '', '2024-10-04 23:14:03', '2024-10-04 23:14:03'),
(3, 'Back-End Engineer(Python)', 'Kansas', 'Amazon', 'Full Time', '20', '2 to 3 year(s)', '$60k - $100k', 'Any', 'April 28, 2019', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'job_logo_3.jpg', '', '2024-10-04 23:14:03', '2024-10-04 23:14:03'),
(4, 'Senior Art Director', 'AnyWhere ', 'Microsoft', 'Full Time', '20', '2 to 3 year(s)', '$60k - $100k', 'Any', ' April 28, 2019', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'job_logo_4.jpg', '', '2024-10-04 23:14:03', '2024-10-04 23:14:03'),
(5, 'Product Designer ', 'New York', 'Puma', 'Full-Time', '20', ' 2 to 3 year(s)', '$60k - $100k', 'Any', 'April 28, 2019', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'job_logo_5.jpg', '', '2024-10-04 23:14:03', '2024-10-04 23:14:03'),
(6, 'Product Designer', ' New York', 'Adidas', 'Part Time ', '20', '2 to 3 year(s)', '$60k - $100k', 'Any', 'April 28, 2024', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'job_logo_1.jpg', '', '2024-10-04 23:14:03', '2024-10-04 23:14:03'),
(7, 'Digital Marketing Director ', 'Kansa', 'Sprint', 'Full Time ', '20', '2 to 3 year(s)', '$60k - $100k', 'Any', ' April 28, 2019', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula augue nec odio fermentum, a aliquam libero bibendum. Aenean efficitur lacinia mauris, id vestibulum odio dignissim in.', 'job_logo_2.jpg', '', '2024-10-04 23:14:03', '2024-10-04 23:14:03'),
(9, 'JS Dev', 'San Francisco', 'Micro', 'Full Time', '2', '3-6 years', '$70k - $100k', 'Female', 'April 28, 2019', 'A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibili', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 15:48:42', '2024-10-15 15:48:42'),
(10, 'JS Dev', 'San Francisco', 'Micro', 'Full Time', '2', '3-6 years', '$70k - $100k', 'Female', 'April 28, 2019', 'A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibili', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 15:48:55', '2024-10-15 15:48:55'),
(11, 'JS Dev', 'San Francisco', 'Micro', 'Full Time', '2', '3-6 years', '$70k - $100k', 'Female', 'April 28, 2019', 'A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibili', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 15:49:52', '2024-10-15 15:49:52'),
(12, 'JS Dev', 'San Francisco', 'Micro', 'Full Time', '2', '3-6 years', '$70k - $100k', 'Female', 'April 28, 2019', 'A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibili', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 15:51:07', '2024-10-15 15:51:07'),
(13, 'JS Dev', 'San Francisco', 'Micro', 'Full Time', '2', '3-6 years', '$70k - $100k', 'Female', 'April 28, 2019', 'A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibili', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 15:55:00', '2024-10-15 15:55:00'),
(14, 'JS Dev', 'San Francisco', 'Micro', 'Full Time', '2', '3-6 years', '$70k - $100k', 'Female', 'April 28, 2019', 'A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibili', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 16:01:09', '2024-10-15 16:01:09'),
(15, 'JS Dev', 'San Francisco', 'Micro', 'Full Time', '2', '3-6 years', '$70k - $100k', 'Female', 'April 28, 2019', 'A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibili', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 16:02:48', '2024-10-15 16:02:48'),
(16, 'JS Dev', 'San Francisco', 'Micro', 'Full Time', '2', '3-6 years', '$70k - $100k', 'Female', 'April 28, 2019', 'A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibili', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 16:10:04', '2024-10-15 16:10:04'),
(17, 'JS Dev', 'San Francisco', 'Micro', 'Full Time', '2', '3-6 years', '$70k - $100k', 'Female', 'April 28, 2019', 'A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibili', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'To whom the position reports A job description or JD is a written narrative that describes the general tasks, or other related duties, and responsibilities of a position. It may specify the functionar', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 17:29:47', '2024-10-15 17:29:47'),
(18, 'JS Developer', 'San Francisco', 'Micro', 'Full Time', '3', '3-6 years', '$70k - $100k', 'Male', 'April 28, 2019', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 17:43:51', '2024-10-15 17:43:51'),
(19, 'JS Developer', 'San Francisco', 'Micro', 'Full Time', '3', '3-6 years', '$70k - $100k', 'Male', 'April 28, 2019', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 17:47:09', '2024-10-15 17:47:09'),
(20, 'JS Developer', 'San Francisco', 'Micro', 'Full Time', '3', '3-6 years', '$70k - $100k', 'Male', 'April 28, 2019', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 18:22:32', '2024-10-15 18:22:32'),
(21, 'JS Developer', 'San Francisco', 'Micro', 'Full Time', '3', '3-6 years', '$70k - $100k', 'Male', 'April 28, 2019', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'Learn about what a job description is, and get free job descriptions that cover responsibilities, job duties, and requirements for more than 2,000 jobs.', 'job_logo_4.jpg', 'Programming Language', '2024-10-15 19:19:09', '2024-10-15 19:19:09'),
(22, 'Backend Developer', 'New York', 'Microsoft', 'Part Time', '2', '1-3 years', '$50k - $70k', 'Male', 'April 28, 2019', 'Learn about the history, usage and variations of Lorem Ipsum, the industry\'s standard dummy text for printing and typesetting.', 'Learn about the history, usage and variations of Lorem Ipsum, the industry\'s standard dummy text for printing and typesetting.', 'Learn about the history, usage and variations of Lorem Ipsum, the industry\'s standard dummy text for printing and typesetting.', 'Learn about the history, usage and variations of Lorem Ipsum, the industry\'s standard dummy text for printing and typesetting.', 'job_logo_4.jpg', 'Web Development', '2024-10-15 19:33:03', '2024-10-15 19:33:03'),
(23, 'Backend Developer', 'Ontario', 'Microsoft', 'Part Time', '2', '1-3 years', '$50k - $70k', 'Male', 'April 28, 2019', 'Learn about the history, usage and variations of Lorem Ipsum, the industry\'s standard dummy text for printing and typesetting.', 'Learn about the history, usage and variations of Lorem Ipsum, the industry\'s standard dummy text for printing and typesetting.', 'Learn about the history, usage and variations of Lorem Ipsum, the industry\'s standard dummy text for printing and typesetting.', 'Learn about the history, usage and variations of Lorem Ipsum, the industry\'s standard dummy text for printing and typesetting.', 'job_logo_4.jpg', 'PHP', '2024-10-15 19:36:00', '2024-10-15 19:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `jobsaved`
--

CREATE TABLE `jobsaved` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_image` varchar(200) DEFAULT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobsaved`
--

INSERT INTO `jobsaved` (`id`, `job_id`, `user_id`, `job_image`, `job_title`, `job_region`, `company`, `job_type`, `created_at`, `updated_at`) VALUES
(1, 6, 3, NULL, 'Product Designer', 'New York , New York', 'Adidas', 'Part Time', '2024-10-05 00:28:18', '2024-10-05 00:28:18'),
(2, 6, 3, NULL, 'Product Designer', 'New York , New York', 'Adidas', 'Part Time', '2024-10-05 00:28:22', '2024-10-05 00:28:22'),
(3, 1, 3, NULL, 'Product Designer', 'New York , New York', 'Adidas', 'Full Time', '2024-10-05 14:17:34', '2024-10-05 14:17:34'),
(4, 8, 3, NULL, 'Front End developer', 'cairo,cairo', 'Amazon', 'part time', '2024-10-05 15:59:22', '2024-10-05 15:59:22'),
(5, 8, 6, 'job_logo_3.jpg\n', 'Front End developer', 'cairo,cairo', 'Amazon', 'part time', '2024-10-08 18:43:23', '2024-10-08 18:43:23'),
(6, 4, 7, NULL, 'Senior Art Director', 'AnyWhere', 'Microsoft', 'Full Time', '2024-10-09 21:23:15', '2024-10-09 21:23:15'),
(7, 23, 16, NULL, 'Backend Developer', 'Ontario', 'Microsoft', 'Part Time', '2024-10-16 00:04:06', '2024-10-16 00:04:06'),
(8, 21, 17, NULL, 'JS Developer', 'San Francisco', 'Micro', 'Full Time', '2024-10-17 12:31:11', '2024-10-17 12:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Back-End Engineer', '2024-10-11 19:14:37', '2024-10-11 19:14:37'),
(2, 'Back-End Engineer', '2024-10-11 19:29:01', '2024-10-11 19:29:01'),
(3, 'Product Designer', '2024-10-11 19:29:24', '2024-10-11 19:29:24'),
(4, 'Product Designer', '2024-10-11 19:30:00', '2024-10-11 19:30:00'),
(5, 'Backend Developer', '2024-10-17 12:51:46', '2024-10-17 12:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL DEFAULT 'person_1.jpg',
  `cv` varchar(255) NOT NULL,
  `job_title` varchar(200) NOT NULL DEFAULT 'No job title',
  `bio` varchar(200) NOT NULL DEFAULT 'No bio',
  `twitter` varchar(200) NOT NULL DEFAULT 'No tweitter',
  `facebook` varchar(200) NOT NULL DEFAULT 'No facebook',
  `linkedin` varchar(200) NOT NULL DEFAULT 'No linkedin',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `cv`, `job_title`, `bio`, `twitter`, `facebook`, `linkedin`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'nour', 'nkankakhaled@gmail.com', NULL, '$2y$10$T0DuvURNlj9aI.JPkwFUTerLL9XoxW/M/.EDxvnniAocPOaU7yhTu', '', 'nourhan khaled', 'No job title', 'No bio', 'No tweitter', 'No facebook', 'No linkedin', NULL, '2024-10-03 17:12:08', '2024-10-03 17:12:08'),
(7, 'sara', 'aa496012772@gmail.com', NULL, '$2y$10$mh0GzWmYwGeaBROhsoh1.OAHIBzPpKWUikMvTVyoglFuGbfvWY.eS', 'person_6.jpg', 'Sara-Mohamed-Junior Backend Developer1111.pdf', 'Backend Developer', 'A passionate Backend Developer with 8 years of experience', 'No tweitter', 'No facebook', 'No linkedin', NULL, '2024-10-08 22:42:44', '2024-10-09 21:55:22'),
(8, 'alaa fayez', 'alaafayez05@gmail.com', NULL, '$2y$10$E6idQxUuLMXGa1jLj8LrZ.SEsKrdZdNUtmwQxl9I5s/LbIvtCM3ly', 'person_1.jpg', 'alaafayez.pdf', 'No job title', 'No bio', 'No tweitter', 'No facebook', 'No linkedin', NULL, '2024-10-10 20:17:44', '2024-10-11 15:28:55'),
(13, 'Samaelnady', 'Samaelnady7@gmail.com', NULL, '$2y$10$6CB4tQh3FygKj9lqW60PCe566R6ETytUfiZ/.KMDfTo/GWoIlww32', 'person_1.jpg', 'Sara-Mohamed-Junior Backend Developer1111.pdf', 'No job title', 'No bio', 'No tweitter', 'No facebook', 'No linkedin', NULL, '2024-10-13 13:37:00', '2024-10-13 13:37:00'),
(14, 'Yomna Mohamed', 'yomnamu7md@icloud.com', NULL, '$2y$10$qOwep7ELmv8hcAEyMpXCPuCXCLaABIGvbjMmXhloYV.Jacoi3DO3q', 'yomna.jpg', 'Yomna-Mohamed-Mahmoud..pdf', 'No job title', 'No bio', 'No tweitter', 'No facebook', 'No linkedin', NULL, '2024-10-14 17:41:36', '2024-10-15 23:56:26'),
(15, 'Yomna', 'yomnamu7med13@gmail.com', NULL, '$2y$10$RtWbdexJkl/PNIiX1XE0GubucOkPKtB5wVdzhp8LcmYEOiBF1cu7W', 'person_1.jpg', 'Sara-Mohamed-Junior Backend Developer1111.pdf', 'No job title', 'No bio', 'No tweitter', 'No facebook', 'No linkedin', NULL, '2024-10-15 23:10:54', '2024-10-15 23:10:54'),
(16, 'يمنى محمد محمود عيسى', 'yomna.mu7med.13@gmail.com', NULL, '$2y$10$iHl3Dtv2FsNhAsmPqVY/oOAHjpSMWwYAZGivFylXoUYQB2v.VyJnu', 'person_1.jpg', 'Yomna-Mohamed-Mahmoud..pdf', 'No job title', 'No bio', 'No tweitter', 'No facebook', 'No linkedin', NULL, '2024-10-15 23:59:11', '2024-10-16 00:16:26'),
(17, 'Hedaya Adel', 'hedayaadel@gemail.com', NULL, '$2y$10$cbFcBD1nseWdVAAwGxRNb.N5C3UeksBkHFb7fxGR3QzslBJDv.PEW', 'person_1.jpg', 'DSS-Lecture-2 (1).pdf', 'No job title', 'No bio', 'No tweitter', 'No facebook', 'No linkedin', NULL, '2024-10-17 12:22:24', '2024-10-17 12:28:27'),
(18, 'hedaya', 'hedaya@gmail.com', NULL, '$2y$10$tyt0KerTKQ5AvCDp.fYeIOKD0i2imabT/WeCns24xx.4ndpWZNzF.', 'person_1.jpg', '', 'No job title', 'No bio', 'No tweitter', 'No facebook', 'No linkedin', NULL, '2024-10-17 13:27:51', '2024-10-17 13:27:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobsaved`
--
ALTER TABLE `jobsaved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jobsaved`
--
ALTER TABLE `jobsaved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
