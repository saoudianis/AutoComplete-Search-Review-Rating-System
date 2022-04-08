-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 07, 2022 at 05:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Pid` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Des` varchar(200) NOT NULL,
  `Link` varchar(300) NOT NULL,
  `Pic` varchar(100) DEFAULT NULL,
  `Cat` varchar(100) NOT NULL,
  `Uid` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Pid`, `Title`, `Des`, `Link`, `Pic`, `Cat`, `Uid`) VALUES
(1, 'JK\'S Chicago Hot Dogs and Beef sandwich ', 'JK\'S Chicago Hot Dogs and Beef sandwich ', 'https://jkchicagodogs.com/?utm_medium=company_profile&utm_source=trustpilot&utm_campaign=domain_click', 'rest.jpeg', 'restaurants_bars', '1'),
(2, 'PosterMyWall\r\nModèle Restaurant logo design | PosterMyWall', 'PosterMyWall\r\nModèle Restaurant logo design | PosterMyWall', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Ffr.postermywall.com%2Findex.php%2Fart%2Ftemplate%2F08a68b9418adeb6c8599892284a22ef1%2Frestaurant-logo-design-template&psig=AOvVaw1tc_53iSZR_qxRHyJb4n30&ust=1649352323411000&source=images&cd=vfe&ved=0CAsQjhxqFwoTCJiBqa36__YCFQAAAAAdAAAAABAD', 'koko.jpeg', 'restaurants_bars', '1');

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `review_id` int(11) NOT NULL,
  `userID` varchar(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_rating` int(1) NOT NULL,
  `user_review` text NOT NULL,
  `datetime` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `approved` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_table`
--

INSERT INTO `review_table` (`review_id`, `userID`, `user_name`, `user_rating`, `user_review`, `datetime`, `pid`, `approved`) VALUES
(6, '1', 'John Smith', 4, 'Nice Product, Value for money', 1621935691, '1', '1'),
(7, '2', 'Peter Parker', 5, 'Nice Product with Good Feature.', 1621939888, '1', '1'),
(8, '3', 'Donna Hubber', 1, 'Worst Product, lost my money.', 1621940010, '2', '1'),
(9, '4', 'anis', 4, 'good', 1649261305, '1', '1'),
(10, '5', 'anis saoudi', 4, 'perfect', 1649261331, '2', '1'),
(11, '6', 'anis saoudi', 5, 'perfect', 1649261344, '1', '1'),
(12, '1', 'new review', 5, 'a good product', 1649287217, '2', '1'),
(13, '1', 'anis saoudi', 3, 'hhjg', 1649345262, '2', '1'),
(14, '1', 'anis saoudi', 5, 'a perfect product i recomend', 1649345414, '2', '1'),
(15, '1', 'anis saoudi', 5, 'good product', 1649345611, '2', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `review_table`
--
ALTER TABLE `review_table`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
