-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 10, 2016 at 09:40 PM
-- Server version: 5.5.52-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `security_challenge`
--
CREATE DATABASE IF NOT EXISTS `security_challenge` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `security_challenge`;

-- --------------------------------------------------------

--
-- Table structure for table `challenge_clue`
--

CREATE TABLE IF NOT EXISTS `challenge_clue` (
                                                `id` int(11) NOT NULL AUTO_INCREMENT,
                                                `info` varchar(255) NOT NULL,
                                                PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `challenge_clue`
--

INSERT INTO `challenge_clue` (`id`, `info`) VALUES
(1, 'Is this the real life?'),
(2, 'Is this just fantasy?');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE IF NOT EXISTS `offices` (
                                         `id` int(11) NOT NULL AUTO_INCREMENT,
                                         `city` varchar(255) NOT NULL,
                                         `address` varchar(255) NOT NULL,
                                         `phone` varchar(255) NOT NULL,
                                         PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `city`, `address`, `phone`) VALUES
(1, 'Stockholm', 'Birger Jarlsgatan 7, 4 tr', '+46 8-616 99 40'),
(2, 'Berlin', 'Friedrichstra??e 68', '+49 173 329 6295'),
(3, 'Hamburg', 'Ferdinandstra??e 35', '+49 403 07 39 810'),
(4, 'Helsinki', 'Arkadiankatu 23 C', '+358 (0)20 7705600'),
(5, 'London', '8 Ganton Street', '+44 7469 214 950'),
(6, 'M??nchen', 'Sternstra??e 5', '+49 89 885 627 88'),
(7, 'Oslo', 'Karl Johans gate 23B, 4. etasje', '+47 224 25 150'),
(8, 'Paris', '149 Rue Saint-Honor??', '+33 635 46 15 03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE users (
                       id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                       username VARCHAR(50) NOT NULL UNIQUE,
                       password VARCHAR(255) NOT NULL,
                       created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;