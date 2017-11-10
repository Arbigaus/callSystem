-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2017 at 11:16 PM
-- Server version: 10.1.25-MariaDB-
-- PHP Version: 7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atendimento_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_call`
--

CREATE TABLE `tab_call` (
  `id` int(11) NOT NULL,
  `call_title` varchar(255) NOT NULL,
  `call_subject` text NOT NULL,
  `call_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tab_call_rel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- Table structure for table `tab_call_rel`
--

CREATE TABLE `tab_call_rel` (
  `id` int(11) NOT NULL,
  `call_user` int(11) NOT NULL,
  `call_resp` int(11) DEFAULT NULL,
  `call_gestor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tab_clients`
--

CREATE TABLE `tab_clients` (
  `id_client` int(11) NOT NULL,
  `client_name` varchar(80) NOT NULL,
  `client_genre` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_clients`
--

INSERT INTO `tab_clients` (`id_client`, `client_name`, `client_genre`) VALUES
(1, 'Gerson Arbigaus', 'M'),
(2, 'Adriele Arbigaus', 'F'),
(3, 'Bella Arbigaus', 'F'),
(4, 'Maria José', 'F'),
(6, 'Hugo Rabelo', 'M'),
(7, 'Fernanda Galvão', 'F'),
(8, 'Cassia Arbigaus', 'F'),
(9, 'Fernando Arbigaus', 'M'),
(10, 'Guilherme Santos', 'M'),
(11, 'teste', 'F'),
(12, 'teste3', 'F'),
(13, 'teste4', '');

-- --------------------------------------------------------

--
-- Table structure for table `tab_filial`
--

CREATE TABLE `tab_filial` (
  `id` int(11) NOT NULL,
  `filial_name` varchar(45) NOT NULL,
  `filial_address` varchar(45) NOT NULL,
  `filial_zipcode` varchar(45) NOT NULL,
  `filial_city` varchar(45) DEFAULT NULL,
  `filial_phone` varchar(45) DEFAULT NULL,
  `filial_state` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tab_level`
--

CREATE TABLE `tab_level` (
  `id` int(11) NOT NULL,
  `level_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tab_users`
--

CREATE TABLE `tab_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(75) NOT NULL,
  `user_email` varchar(75) NOT NULL,
  `user_passwd` varchar(32) NOT NULL,
  `user_phone` varchar(15) DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL,
  `user_profilepic` varchar(35) DEFAULT NULL,
  `user_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_users`
--

INSERT INTO `tab_users` (`id`, `user_name`, `user_email`, `user_passwd`, `user_phone`, `user_status`, `user_level`, `user_profilepic`, `user_date`) VALUES
(1, 'Gerson Arbigaus', 'gerson87@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 'profile2.jpg', '2017-11-06 23:02:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_call`
--
ALTER TABLE `tab_call`
  ADD PRIMARY KEY (`id`,`tab_call_rel_id`),
  ADD KEY `fk_tab_call_tab_call_rel1_idx` (`tab_call_rel_id`);

--
-- Indexes for table `tab_call_rel`
--
ALTER TABLE `tab_call_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tab_call_rel_tab_user1_idx` (`call_user`),
  ADD KEY `fk_tab_call_rel_tab_user2_idx` (`call_resp`),
  ADD KEY `fk_tab_call_rel_tab_user3_idx` (`call_gestor`);

--
-- Indexes for table `tab_clients`
--
ALTER TABLE `tab_clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `tab_filial`
--
ALTER TABLE `tab_filial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_level`
--
ALTER TABLE `tab_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_users`
--
ALTER TABLE `tab_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tab_user_tab_nivel1_idx` (`user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_call`
--
ALTER TABLE `tab_call`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tab_call_rel`
--
ALTER TABLE `tab_call_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tab_clients`
--
ALTER TABLE `tab_clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tab_filial`
--
ALTER TABLE `tab_filial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tab_level`
--
ALTER TABLE `tab_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tab_users`
--
ALTER TABLE `tab_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tab_call`
--
ALTER TABLE `tab_call`
  ADD CONSTRAINT `fk_tab_call_tab_call_rel1` FOREIGN KEY (`tab_call_rel_id`) REFERENCES `tab_call_rel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tab_call_rel`
--
ALTER TABLE `tab_call_rel`
  ADD CONSTRAINT `fk_tab_call_rel_tab_user1` FOREIGN KEY (`call_user`) REFERENCES `tab_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tab_call_rel_tab_user2` FOREIGN KEY (`call_resp`) REFERENCES `tab_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tab_call_rel_tab_user3` FOREIGN KEY (`call_gestor`) REFERENCES `tab_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tab_users`
--
ALTER TABLE `tab_users`
  ADD CONSTRAINT `fk_tab_user_tab_nivel1` FOREIGN KEY (`user_level`) REFERENCES `tab_level` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
