-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2017 at 08:32 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

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
-- Table structure for table `tab_cells`
--

CREATE TABLE `tab_cells` (
  `id` int(11) NOT NULL,
  `user_name` varchar(75) NOT NULL,
  `user_cell` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_cells`
--

INSERT INTO `tab_cells` (`id`, `user_name`, `user_cell`) VALUES
(1, 'Anderson Sloboda', '42988130504'),
(2, 'Andre Gustavo Lima Pivoto', '41988087590'),
(3, 'Bento Luiz Ribas dos Santos', '41988582799'),
(4, 'Bruno Henrique Assis Santos', '41988577477'),
(5, 'Cleversson dos Santos', '46988201178'),
(6, 'Cristiano Locatelli', '41987841081'),
(7, 'Douglas Silva', '45988094794'),
(8, 'Edielson Josias Gonçalves', '42988689340'),
(9, 'Edson Costa', '41988357504'),
(10, 'Elaine Arcari', '41987215990'),
(11, 'Gerson Arbrugaus', '41988624260'),
(12, 'Jafer Rossi', '45988010892'),
(13, 'Jefferson Longoni Pires', '45988020532'),
(14, 'João Erineu de Freitas', '42988260183'),
(15, 'Joel Cancido de Andrade', '42988023308'),
(16, 'Joel Cirino', '42988397333'),
(17, 'Linha Pabx CSV 1', '45988031223'),
(18, 'Linha Pabx CSV 2', '45988090162'),
(19, 'Linha Pabx GPV 1', '42988129157'),
(20, 'Linha Pabx PGO 1', '42988651124'),
(21, 'Linha Pabx PGO 2', '42988688749'),
(22, 'Linha Pabx PTB 1', '46988015336'),
(23, 'Linha Pabx PTB 2', '46988039929'),
(24, 'Ariane - Juridico', '41988240713'),
(25, 'Linha Pabx SJP 4', '41988656077'),
(26, 'Linha Pabx SJP 5', '41988656179'),
(27, 'Linha Pabx SJP 6', '41988846983'),
(28, 'Linha Pabx SJP 7', '41988848286'),
(29, 'Linha PABX TLB', '42988135195'),
(30, 'Luciano Penteado', '42988132398'),
(31, 'Luciano Ribas Battistella', '11991519577'),
(32, 'Marcel Fabricio Cararo', '41988082950'),
(33, 'Marcio Endrigo', '45988112361'),
(34, 'Marlus Campagnoli', '41988012851'),
(35, 'Mauricio Valente Battistella', '11993778692'),
(36, 'Maxilane Sustrunk', '45988111840'),
(37, 'Norvino Reneo Schuh', '42988132753'),
(38, 'Paola Geronasso Raminelli', '41988580592'),
(39, 'Paulo Cenci', '46988051814'),
(40, 'Rafael Caçator', '41987080834'),
(41, 'Rodrigo Bernardes', '45988132414'),
(42, 'Rodrigo Bittencourt', '41988016184'),
(43, 'Rogério Serrano', '42988130229'),
(44, 'Sadi Roque Balbinot Jr', '42988030138'),
(45, 'Scania Assistence PLUS', '41988432180'),
(46, 'Scania Assistence PLUS', '42988020535'),
(47, 'Scania Assistence PLUS', '42988129771'),
(48, 'Scania Assistence PLUS', '45988132510'),
(49, 'Scania Assistence PLUS', '46988192700'),
(50, 'Valeria Gobalchini', '41987254218'),
(51, 'Zulmir Luiz Menetrier', '46988031029');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_cells`
--
ALTER TABLE `tab_cells`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_cells`
--
ALTER TABLE `tab_cells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
