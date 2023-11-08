-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2023 at 06:39 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21514911_movietheatredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(12, 'BKID6369842', 4, 4, 17, 3, 1, 380, '2021-04-15', '2021-04-15', 1),
(13, 'BKID2313964', 6, 5, 21, 6, 4, 2400, '2021-04-16', '2021-04-15', 1),
(14, 'BKID1766021', 6, 5, 22, 6, 2, 1200, '2021-04-16', '2021-04-16', 1),
(15, 'BKID3764058', 6, 6, 22, 6, 1, 600, '2023-11-06', '2023-11-06', 1),
(16, 'BKID3893585', 6, 7, 19, 5, 2, 300, '2023-11-09', '2023-11-06', 1),
(22, 'BKID8415265', 6, 8, 20, 6, 2, 1200, '2023-11-09', '2023-11-07', 1),
(23, 'BKID8103566', 6, 9, 21, 6, 1, 600, '2023-11-11', '2023-11-07', 1),
(27, 'BKID3730341', 3, 2, 23, 2, 1, 310, '2023-11-23', '2023-11-08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'password', 0),
(2, 3, 'theatre', 'password', 1),
(3, 4, 'theatre2', 'password', 1),
(17, 4, 'bruno@gmail.com', 'password', 2),
(19, 5, 'james@gmail.com', 'password', 2),
(20, 6, 'm.sagnik.2003@gmail.com', 'Sm@16703', 2),
(23, 9, 'abc@gmail.com', '1234567', 2),
(25, 7, 'theatre', '12345', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(255) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(11, 3, 'Oppenheimer', 'Cillian Murphy, Emily Blunt, Robert Downey Jr., Matt Damon', 'During World War II, Lt. Gen. Leslie Groves Jr. appoints physicist J. Robert Oppenheimer to work on the top-secret Manhattan Project. Oppenheimer and a team of scientists spend years developing and designing the atomic bomb. Their work comes to fruition on July 16, 1945, as they witness the world\'s first nuclear explosion, forever changing the course of history.', '2023-07-21', 'images/oppy.jpg', 'https://www.youtube.com/watch?v=bK6ldnjE3Y0', 0),
(12, 6, 'Spider-Man: Across the Spider-Verse', 'Shameik Moore, Hailee Steinfeld, Brian Tyree Henry, Oscar Isaac', 'Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.', '2023-06-01', 'images/atsv.jpg', 'https://www.youtube.com/watch?v=cqGjhVJWtEg', 0),
(13, 6, 'Killers of the Flower Moon', 'Leonardo DiCaprio, Robert De Niro, Lily Gladstone', 'Real love crosses paths with unspeakable betrayal as Mollie Burkhart, a member of the Osage Nation, tries to save her community from a spree of murders fueled by oil and greed.', '2023-10-27', 'images/killers.jpg', 'https://www.youtube.com/watch?v=nFoIg72KGIk', 0),
(17, 6, 'Guardians of the Galaxy Vol. 3', 'Chris Pratt, Chukwudi Iwuji, Bradley Cooper', 'Still reeling from the loss of Gamora, Peter Quill must rally his team to defend the universe and protect one of their own. If the mission is not completely successful, it could possibly lead to the end of the Guardians as we know them.', '2023-05-05', 'images/gotg3.jpg', 'https://www.youtube.com/watch?v=u3V5KDHRQvk', 0),
(19, 3, 'Barbie', 'Margot Robbie, Ryan Gosling, Issa Rae', 'Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.', '2023-07-21', 'images/barbie.jpg', 'https://www.youtube.com/watch?v=pBk4NYhWNMM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(3, 'Napoleon', 'Joaquin Phoenix, Vanessa Kirby, Ludivine Sagnier', '2023-11-24', 'A look at the military commander\'s origins and his swift, ruthless climb to emperor, viewed through the prism of his addictive and often volatile relationship with his wife and true love, Josephine.', 'news_images/nap.jpg'),
(9, 'Thanksgiving', 'Rick Hoffman, Gina Gershon, Patrick Dempsey', '2023-11-17', 'After a Black Friday riot ends in tragedy, a mysterious Thanksgiving-inspired killer terrorizes Plymouth, Massachusetts - the birthplace of the infamous holiday.', 'news_images/thanks.jpg'),
(10, 'Wonka', 'Timothée Chalamet, Olivia Colman, Hugh Grant', '2023-12-08', 'Focusing on a young Willy Wonka and how he came to meet the Oompa-Loompas on one of his earliest adventures.', 'news_images/wonka.jpg'),
(11, 'New Movie', 'Jon Snow, Jane Doe', '2023-11-24', '12345qwert', 'news_images/new.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(2, 'Harry Den', 'harryden@gmail.com', '1247778540', 22, 'gender'),
(4, 'Bruno', 'bruno@gmail.com', '7451112450', 30, 'gender'),
(5, 'James', 'james@gmail.com', '7124445696', 25, 'gender'),
(6, 'Sagnik Mukhopadhyay', 'm.sagnik.2003@gmail.com', '8420180813', 20, 'gender'),
(7, 'John Doe', 'jd123@gmail.com', '9903219948', 21, 'gender'),
(8, 'Pablo Gavi', 'gavi@gmail.com', '9907858956', 19, 'gender'),
(9, 'Jit Ghosh', 'abc@gmail.com', '9123654780', 89, 'gender'),
(10, 'Booby', 'bigboobs69@pornhub.in', '9696969666', 69, 'gender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Screen 1', 100, 350),
(2, 3, 'Screen 2', 150, 310),
(3, 4, 'Screen 1', 200, 380),
(4, 5, 'Screen1', 34, 250),
(5, 6, 'Screen 2', 150, 300),
(6, 6, 'IMAX Screen', 200, 600),
(7, 7, 'IMAX Screen 1', 150, 700),
(8, 7, 'Screen 1', 200, 150);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(19, 15, 6, 11, '2023-11-24', 0, 1),
(20, 20, 4, 13, '2023-11-24', 0, 1),
(21, 19, 5, 12, '2023-11-25', 0, 1),
(22, 18, 7, 17, '2023-11-24', 0, 1),
(23, 5, 3, 19, '2023-11-24', 1, 0),
(28, 22, 7, 11, '2023-11-08', 0, 0),
(29, 23, 7, 13, '2023-11-08', 0, 1),
(30, 24, 7, 12, '2023-11-08', 0, 0),
(31, 23, 7, 11, '2023-11-15', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '12:00:00'),
(2, 1, 'Matinee', '14:00:00'),
(3, 1, 'First', '18:00:00'),
(4, 1, 'Second', '21:00:00'),
(5, 2, 'Noon', '10:00:00'),
(6, 2, 'Matinee', '14:00:00'),
(7, 2, 'First', '18:00:00'),
(8, 2, 'Second', '21:00:00'),
(9, 3, 'Noon', '10:00:00'),
(10, 3, 'Matinee', '14:00:00'),
(11, 3, 'First', '18:00:00'),
(12, 3, 'Second', '21:00:00'),
(14, 4, 'Noon', '12:03:00'),
(15, 5, 'First', '00:08:00'),
(16, 5, 'Second', '15:10:00'),
(17, 5, 'Others', '18:10:00'),
(18, 6, 'Noon', '12:02:00'),
(19, 6, 'First', '06:35:00'),
(20, 6, 'Second', '09:18:00'),
(21, 5, 'Matinee', '15:04:00'),
(22, 7, 'Second', '18:30:00'),
(23, 7, 'First', '19:32:00'),
(24, 8, 'First', '19:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(3, 'INOX: South City', '375, South City Mall, Prince Anwar Shah Road', 'Kolkata', 'West Bengal', 700068),
(4, 'Cinepolis: Lake Mall', '5th Floor Lake mall, Rash behari Avenue Roa', 'Kolkata', 'West Bengal', 700026),
(5, 'PVR: Mani Square Mall, ', 'Mani Square Mall, EM Bypass Road', 'Kolkata', 'West Bengal', 700054),
(6, 'INOX: Forum Mall, Elgin Road', 'Lala Lajpat, Rai Sarani, Bhawanipur', 'Kolkata', 'West Bengal', 700020),
(7, 'XYZ Theatre', '1, Abbey Road', 'Kolkata', 'West Bengal', 700023);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
