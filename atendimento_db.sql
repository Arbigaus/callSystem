-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2017 at 07:42 PM
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
-- Table structure for table `tab_area`
--

CREATE TABLE `tab_area` (
  `id` int(11) NOT NULL,
  `area_name` varchar(50) NOT NULL,
  `area_initials` varchar(10) NOT NULL,
  `area_color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_area`
--

INSERT INTO `tab_area` (`id`, `area_name`, `area_initials`, `area_color`) VALUES
(1, 'Tecnologia da Informação', 'TIC', 'box-success'),
(2, 'Financeiro', 'Fin.', 'box-danger'),
(3, 'Contabilidade', 'Cont.', 'box-warning'),
(4, 'Gestão de Pessoas', 'GDP', 'box-info');

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
-- Table structure for table `tab_cells`
--

CREATE TABLE `tab_cells` (
  `id` int(11) NOT NULL,
  `user_name` varchar(75) NOT NULL,
  `user_cell` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_cells`
--

INSERT INTO `tab_cells` (`id`, `user_name`, `user_cell`) VALUES
(1, 'Anderson Sloboda', '42 98813-0504'),
(2, 'Andre Gustavo Lima Pivoto', '41 98808-7590'),
(3, 'Bento Luiz Ribas dos Santos', '41 98858-2799'),
(4, 'Bruno Henrique Assis Santos', '41 98857-7477'),
(5, 'Cleversson dos Santos', '46 98820-1178'),
(6, 'Cristiano Locatelli', '41 98784-1081'),
(7, 'Douglas Silva', '45 98809-4794'),
(8, 'Edielson Josias Gonçalves', '42 98868-9340'),
(9, 'Edson Costa', '41 98835-7504'),
(10, 'Elaine Arcari', '41 98721-5990'),
(11, 'Gerson Arbrugaus', '41 98862-4260'),
(12, 'Jafer Rossi', '45 98801-0892'),
(13, 'Jefferson Longoni Pires', '45 98802-0532'),
(14, 'João Erineu de Freitas', '42 98826-0183'),
(15, 'Joel Cancido de Andrade', '42 98802-3308'),
(16, 'Joel Cirino', '42 98839-7333'),
(17, 'Linha Pabx CSV 1', '45 98803-1223'),
(18, 'Linha Pabx CSV 2', '45 98809-0162'),
(19, 'Linha Pabx GPV 1', '42 98812-9157'),
(20, 'Linha Pabx PGO 1', '42 98865-1124'),
(21, 'Linha Pabx PGO 2', '42 98868-8749'),
(22, 'Linha Pabx PTB 1', '46 98801-5336'),
(23, 'Linha Pabx PTB 2', '46 98803-9929'),
(24, 'Ariane Aparecida Modesto Machado', '41 98824-0713'),
(25, 'Linha Pabx SJP 4', '41 98865-6077'),
(26, 'Linha Pabx SJP 5', '41 98865-6179'),
(27, 'Linha Pabx SJP 6', '41 98884-6983'),
(28, 'Linha Pabx SJP 7', '41 98884-8286'),
(29, 'Linha PABX TLB', '42 98813-5195'),
(30, 'Luciano Penteado', '42 98813-2398'),
(31, 'Luciano Ribas Battistella', '11 99151-9577'),
(32, 'Marcel Fabricio Cararo', '41 98808-2950'),
(33, 'Marcio Endrigo', '45 98811-2361'),
(34, 'Marlus Campagnoli', '41 98801-2851'),
(35, 'Mauricio Valente Battistella', '11 99377-8692'),
(36, 'Maxilane Sustrunk', '45 98811-1840'),
(37, 'Norvino Reneo Schuh', '42 98813-2753'),
(38, 'Paola Geronasso Raminelli', '41 98858-0592'),
(39, 'Paulo Cenci', '46 98805-1814'),
(40, 'Rafael Caçator', '41 98708-0834'),
(41, 'Rodrigo Bernardes', '45 98813-2414'),
(42, 'Rodrigo Bittencourt', '41 98801-6184'),
(43, 'Rogério Serrano', '42 98813-0229'),
(44, 'Sadi Roque Balbinot Jr', '42 98803-0138'),
(45, 'Scania Assistence PLUS', '41 98843-2180'),
(46, 'Scania Assistence PLUS', '42 98802-0535'),
(47, 'Scania Assistence PLUS', '42 98812-9771'),
(48, 'Scania Assistence PLUS', '45 98813-2510'),
(49, 'Scania Assistence PLUS', '46 98819-2700'),
(50, 'Valeria Gobalchini', '41 98725-4218'),
(51, 'Zulmir Luiz Menetrier', '46 98803-1029');

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
-- Table structure for table `tab_fatura`
--

CREATE TABLE `tab_fatura` (
  `id` int(11) NOT NULL,
  `col_number` varchar(13) NOT NULL,
  `col_section` varchar(100) DEFAULT NULL,
  `col_date` varchar(30) DEFAULT NULL,
  `col_hour` varchar(30) DEFAULT NULL,
  `col_source` varchar(75) DEFAULT NULL,
  `col_number_dest` varchar(15) DEFAULT NULL,
  `col_time` varchar(30) DEFAULT NULL,
  `col_price` varchar(30) DEFAULT NULL,
  `col_price2` varchar(30) DEFAULT NULL,
  `col_info` varchar(30) DEFAULT NULL,
  `col_info2` varchar(30) DEFAULT NULL,
  `col_info3` varchar(30) DEFAULT NULL,
  `col_sub_section` varchar(30) DEFAULT NULL,
  `col_type_tax` varchar(30) DEFAULT NULL,
  `col_description` varchar(75) DEFAULT NULL,
  `col_position` varchar(75) DEFAULT NULL,
  `col_name_source` varchar(75) DEFAULT NULL,
  `col_name_target` varchar(75) DEFAULT NULL,
  `col_code_source` varchar(11) DEFAULT NULL,
  `col_code_target` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_fatura`
--

INSERT INTO `tab_fatura` (`id`, `col_number`, `col_section`, `col_date`, `col_hour`, `col_source`, `col_number_dest`, `col_time`, `col_price`, `col_price2`, `col_info`, `col_info2`, `col_info3`, `col_sub_section`, `col_type_tax`, `col_description`, `col_position`, `col_name_source`, `col_name_target`, `col_code_source`, `col_code_target`) VALUES
(1, '11 99220-1612', 'Total Share - Assinatura Smartphone : 02/10/2017 a 01/11/2017', '02/10/2017', '', '', '', '', '0,00', '12,98', '12,98', '', '', '', 'Mensalidades e Pacotes Promoci', 'ICMS', '', '', '', '', ''),
(2, '11 99151-9577', 'Total Share - Assinatura Smartphone : 02/10/2017 a 01/11/2017', '02/10/2017', '', '', '', '', '0,00', '2,59', '2,59', '', '', '', 'Mensalidades e Pacotes Promoci', 'ICMS', '', '', '', '', ''),
(3, '11 99220-1612', 'Total Share - Assinatura Smartphone : 02/10/2017 a 01/11/2017', '02/10/2017', '', '', '', '', '0,00', '2,59', '2,59', '', '', '', 'Mensalidades e Pacotes Promoci', 'ICMS', '', '', '', '', ''),
(4, '11 99220-1612', 'Total Share - Assinatura Smartphone : 02/10/2017 a 01/11/2017', '02/10/2017', '', '', '', '', '0,00', '9,09', '9,09', '', '', '', 'Mensalidades e Pacotes Promoci', 'ICMS', '', '', '', '', ''),
(5, '11 99151-9577', 'Total Share - Assinatura Smartphone : 02/10/2017 a 01/11/2017', '02/10/2017', '', '', '', '', '0,00', '40,24', '40,24', '', '', '', 'Mensalidades e Pacotes Promoci', 'ICMS', '', '', '', '', ''),
(6, '11 99151-9577', 'Total Share - Assinatura Smartphone : 02/10/2017 a 01/11/2017', '02/10/2017', '', '', '', '', '0,00', '9,09', '9,09', '', '', '', 'Mensalidades e Pacotes Promoci', 'ICMS', '', '', '', '', ''),
(7, '11 99220-1612', 'Total Share - Assinatura Smartphone : 02/10/2017 a 01/11/2017', '02/10/2017', '', '', '', '', '0,00', '40,24', '40,24', '', '', '', 'Mensalidades e Pacotes Promoci', 'ICMS', '', '', '', '', ''),
(8, '11 99151-9577', 'Int. Nacional', '29/09/2017', '16:31:51', 'São Paulo - Sao Jose Dos Pinhais', '4132998588', '00:00:48', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(9, '11 99151-9577', 'Int. Regional', '29/09/2017', '19:00:44', 'São Paulo - Tatui', '1533052000', '00:00:48', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Tatui', '00011'),
(10, '11 99151-9577', 'Int. Regional', '29/09/2017', '19:01:51', 'São Paulo - Tatui', '1533052000', '00:01:06', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Tatui', '00011'),
(11, '11 99151-9577', 'Int. Regional', '29/09/2017', '20:09:53', 'São Paulo - Tatui', '1533052000', '00:01:18', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Tatui', '00011'),
(12, '11 99151-9577', 'Internet (MB)', '01/10/2017', '01:01:20', '', '', '19,235351', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(13, '11 99151-9577', 'Internet (MB)', '01/10/2017', '09:47:20', '', '', '1,324218', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(14, '11 99151-9577', 'Claro-Claro', '01/10/2017', '19:16:46', 'São Paulo - São Paulo (11)', '11963094219', '00:01:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(15, '11 99151-9577', 'Internet (MB)', '02/10/2017', '01:08:58', '', '', '39,541015', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(16, '11 99151-9577', 'Claro-Claro', '02/10/2017', '09:09:11', 'São Paulo - São Paulo (11)', '11992201612', '00:00:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(17, '11 99151-9577', 'Int. Nacional', '02/10/2017', '09:17:23', 'São Paulo - Sao Jose Dos Pinhais', '4132998578', '00:01:06', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(18, '11 99151-9577', 'Internet (MB)', '02/10/2017', '09:31:02', '', '', ',508789', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(19, '11 99151-9577', 'Torpedos', '02/10/2017', '09:31:55', '', '11992300502', '1', '0,10', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo', '', '', '', '00011'),
(20, '11 99151-9577', 'Claro-Claro', '02/10/2017', '09:35:14', 'São Paulo - São Paulo (11)', '11992201612', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(21, '11 99151-9577', 'Claro-Claro', '02/10/2017', '09:40:50', 'São Paulo - São Paulo (11)', '11992201612', '00:00:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(22, '11 99151-9577', 'Int. Nacional', '02/10/2017', '09:49:25', 'São Paulo - Sao Jose Dos Pinhais', '4132998578', '00:03:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(23, '11 99151-9577', 'Internet (MB)', '03/10/2017', '00:46:34', '', '', '27,973632', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(24, '11 99151-9577', 'Internet (MB)', '03/10/2017', '09:08:03', '', '', ',649414', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(25, '11 99151-9577', 'Torpedos', '03/10/2017', '09:27:10', '', '11992300502', '1', '0,10', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo', '', '', '', '00011'),
(26, '11 99151-9577', 'Claro-Fixo', '03/10/2017', '11:47:26', 'São Paulo - Sao Paulo', '1138266832', '00:10:18', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(27, '11 99151-9577', 'Internet (MB)', '04/10/2017', '01:20:05', '', '', '79,625976', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(28, '11 99151-9577', 'Internet (MB)', '04/10/2017', '05:53:52', '', '', ',976562', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(29, '11 99151-9577', 'Int. Nacional', '04/10/2017', '13:31:11', 'Paraná - Sao Paulo', '1131672326', '00:01:48', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'Sao Paulo', '00041'),
(30, '11 99151-9577', 'Int. Nacional', '04/10/2017', '17:22:57', 'Paraná - São Paulo (11)', '11963094219', '00:15:06', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(31, '11 99151-9577', 'Internet (MB)', '05/10/2017', '01:49:58', '', '', '49,870117', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(32, '11 99151-9577', 'Internet (MB)', '05/10/2017', '07:32:10', '', '', ',893554', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(33, '11 99151-9577', 'Int. Nacional', '05/10/2017', '11:18:10', 'Paraná - São Paulo (11)', '11963094219', '00:00:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(34, '11 99151-9577', 'Torpedos', '05/10/2017', '11:58:56', '', '11992201612', '1', '0,10', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo', '', '', '', '00011'),
(35, '11 99151-9577', 'Int. Nacional', '05/10/2017', '12:04:04', 'Paraná - São Paulo (11)', '11992201612', '00:02:54', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(36, '11 99151-9577', 'Int. Nacional', '05/10/2017', '14:04:00', 'Paraná - São Paulo (11)', '11992201612', '00:04:12', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(37, '11 99151-9577', 'Int. Nacional', '05/10/2017', '16:00:15', 'Paraná - Sao Paulo', '1140205790', '00:19:12', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'Sao Paulo', '00041'),
(38, '11 99151-9577', 'Int. Nacional', '05/10/2017', '16:29:37', 'Paraná - São Paulo (11)', '11975310841', '00:04:18', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(39, '11 99151-9577', 'Claro-Outras Op.', '05/10/2017', '17:05:01', 'Paraná - Paraná (41)', '41999330909', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Paraná', 'Paraná (41)', '00041'),
(40, '11 99151-9577', 'Internet (MB)', '06/10/2017', '00:03:39', '', '', '4,162109', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(41, '11 99151-9577', 'Internet (MB)', '06/10/2017', '09:01:43', '', '', ',085937', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(42, '11 99151-9577', 'Int. Nacional', '06/10/2017', '10:54:55', 'São Paulo - Sao Jose Dos Pinhais', '4132997203', '00:00:36', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(43, '11 99151-9577', 'Claro-Fixo', '06/10/2017', '12:56:18', 'São Paulo - Sao Paulo', '1138266832', '00:13:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(44, '11 99151-9577', 'Claro-Fixo', '06/10/2017', '15:43:15', 'São Paulo - Sao Paulo', '1140043600', '00:04:18', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(45, '11 99151-9577', 'Claro-Fixo', '06/10/2017', '15:54:44', 'São Paulo - Sao Paulo', '1140043600', '00:03:12', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(46, '11 99151-9577', 'Internet (MB)', '07/10/2017', '00:05:04', '', '', '134,411132', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(47, '11 99151-9577', 'Internet (MB)', '07/10/2017', '10:21:13', '', '', ',445312', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(48, '11 99151-9577', 'Claro-Claro', '07/10/2017', '11:58:34', 'São Paulo - São Paulo (11)', '11963094219', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(49, '11 99151-9577', 'Internet (MB)', '08/10/2017', '01:07:22', '', '', '48,05371', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(50, '11 99151-9577', 'Internet (MB)', '08/10/2017', '09:39:40', '', '', ',545898', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(51, '11 99151-9577', 'Claro-Fixo', '08/10/2017', '12:35:59', 'São Paulo - Sao Paulo', '1138266832', '00:00:42', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(52, '11 99151-9577', 'Claro-Fixo', '08/10/2017', '12:38:42', 'São Paulo - Sao Paulo', '1136648313', '00:01:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(53, '11 99151-9577', 'Claro-Fixo', '08/10/2017', '12:40:43', 'São Paulo - Sao Paulo', '1138266832', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(54, '11 99151-9577', 'Internet (MB)', '09/10/2017', '01:33:33', '', '', '5,763671', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(55, '11 99151-9577', 'Internet (MB)', '09/10/2017', '11:00:27', '', '', ',02832', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(56, '11 99151-9577', 'Torpedos', '09/10/2017', '12:20:48', '', '11992201612', '1', '0,10', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo', '', '', '', '00011'),
(57, '11 99151-9577', 'Int. Nacional', '09/10/2017', '13:40:18', 'São Paulo - Sao Jose Dos Pinhais', '4132997203', '00:10:12', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(58, '11 99151-9577', 'Int. Nacional', '09/10/2017', '14:00:56', 'São Paulo - Sao Jose Dos Pinhais', '4132997203', '00:02:24', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(59, '11 99151-9577', 'Claro-Fixo', '09/10/2017', '14:19:31', 'São Paulo - Sao Paulo', '1137576139', '00:04:18', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(60, '11 99151-9577', 'Int. Nacional', '09/10/2017', '14:37:49', 'São Paulo - Sao Jose Dos Pinhais', '4132998588', '00:03:06', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(61, '11 99151-9577', 'Claro-Claro', '09/10/2017', '14:41:37', 'São Paulo - São Paulo (11)', '11992201612', '00:04:18', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(62, '11 99151-9577', 'Int. Nacional', '09/10/2017', '15:18:19', 'São Paulo - Sao Jose Dos Pinhais', '4132998578', '00:02:18', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(63, '11 99151-9577', 'Claro-Claro', '09/10/2017', '19:46:40', 'São Paulo - São Paulo (11)', '11992201612', '00:00:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(64, '11 99151-9577', 'Claro-Claro', '09/10/2017', '19:53:06', 'São Paulo - São Paulo (11)', '11992201612', '00:00:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(65, '11 99151-9577', 'Claro-Fixo', '09/10/2017', '20:07:38', 'São Paulo - Sao Paulo', '1138266832', '00:00:36', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(66, '11 99151-9577', 'Internet (MB)', '10/10/2017', '00:02:35', '', '', '44,024414', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(67, '11 99151-9577', 'Internet (MB)', '10/10/2017', '09:26:42', '', '', ',795898', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(68, '11 99151-9577', 'Claro-Fixo', '10/10/2017', '10:21:42', 'São Paulo - Sao Paulo', '1131672326', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(69, '11 99151-9577', 'Int. Nacional', '10/10/2017', '10:44:07', 'São Paulo - Sao Jose Dos Pinhais', '4132998595', '00:00:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(70, '11 99151-9577', 'Torpedos', '10/10/2017', '11:18:09', '', '11992201612', '1', '0,10', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo', '', '', '', '00011'),
(71, '11 99151-9577', 'Torpedos', '10/10/2017', '11:18:35', '', '11992201612', '1', '0,10', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo', '', '', '', '00011'),
(72, '11 99151-9577', 'Claro-Claro', '10/10/2017', '15:52:00', 'São Paulo - São Paulo (11)', '11963094219', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(73, '11 99151-9577', 'Internet (MB)', '10/10/2017', '18:40:55', '', '', ',15039', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(74, '11 99151-9577', 'Internet (MB)', '11/10/2017', '00:07:54', '', '', '6,5625', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(75, '11 99151-9577', 'Internet (MB)', '11/10/2017', '08:46:53', '', '', ',135742', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(76, '11 99151-9577', 'Claro-Outras Op.', '11/10/2017', '12:45:16', 'São Paulo - São Paulo (11)', '11974499528', '00:01:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(77, '11 99151-9577', 'Internet (MB)', '12/10/2017', '00:04:31', '', '', '144,33789', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(78, '11 99151-9577', 'Internet (MB)', '12/10/2017', '09:50:12', '', '', '1,182617', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(79, '11 99151-9577', 'Internet (MB)', '13/10/2017', '00:10:31', '', '', '14,517578', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(80, '11 99151-9577', 'Internet (MB)', '13/10/2017', '09:43:18', '', '', ',09375', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(81, '11 99151-9577', 'Internet (MB)', '13/10/2017', '18:51:13', '', '', ',009765', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(82, '11 99151-9577', 'Internet (MB)', '14/10/2017', '00:01:10', '', '', '3,441406', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(83, '11 99151-9577', 'Internet (MB)', '14/10/2017', '00:01:17', '', '', ',064453', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(84, '11 99151-9577', 'Claro-Claro', '14/10/2017', '18:34:07', 'São Paulo - São Paulo (11)', '11963099329', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(85, '11 99151-9577', 'Internet (MB)', '14/10/2017', '21:05:32', '', '', '46,426757', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(86, '11 99151-9577', 'Internet (MB)', '14/10/2017', '21:25:37', '', '', ',291015', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(87, '11 99151-9577', 'Internet (MB)', '15/10/2017', '01:30:47', '', '', '18,097656', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(88, '11 99151-9577', 'Internet (MB)', '15/10/2017', '11:08:03', '', '', ',196289', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(89, '11 99151-9577', 'Claro-Fixo', '15/10/2017', '21:47:47', 'São Paulo - Sao Paulo', '1138266832', '00:03:18', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(90, '11 99151-9577', 'Internet (MB)', '16/10/2017', '01:49:57', '', '', '15,876953', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(91, '11 99151-9577', 'Claro-Claro', '16/10/2017', '09:09:32', 'São Paulo - São Paulo (11)', '11992201612', '00:03:24', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(92, '11 99151-9577', 'Internet (MB)', '16/10/2017', '09:16:23', '', '', '3,925781', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(93, '11 99151-9577', 'Secretária Claro', '16/10/2017', '12:59:02', 'Paraná - Secretária Claro', '*100', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações para números especiai', '', '', '', 'Paraná', 'Secretária ', '00041'),
(94, '11 99151-9577', 'Int. Nacional', '16/10/2017', '12:59:43', 'Paraná - São Paulo (11)', '11992656720', '00:01:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(95, '11 99151-9577', 'Internet (MB)', '17/10/2017', '00:50:06', '', '', '25,21289', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(96, '11 99151-9577', 'Internet (MB)', '17/10/2017', '08:21:39', '', '', ',746093', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(97, '11 99151-9577', 'Int. Nacional', '17/10/2017', '10:39:20', 'Paraná - Sao Paulo', '1137576105', '00:08:48', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'Sao Paulo', '00041'),
(98, '11 99151-9577', 'Int. Nacional', '17/10/2017', '11:26:00', 'Paraná - Sao Paulo', '1137576105', '00:01:06', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'Sao Paulo', '00041'),
(99, '11 99151-9577', 'Secretária Claro', '17/10/2017', '13:02:52', 'Paraná - Secretária Claro', '*100', '00:00:48', '0,00', '0', '0', '', '', '', 'Ligações para números especiai', '', '', '', 'Paraná', 'Secretária ', '00041'),
(100, '11 99151-9577', 'Claro-Outras Op.', '17/10/2017', '19:01:35', 'Santa Catarina - Santa Catarina (47)', '47996506060', '00:01:00', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Santa Catar', '00047'),
(101, '11 99151-9577', 'Int. Nacional', '17/10/2017', '20:50:57', 'Santa Catarina - São Paulo (11)', '11963094219', '00:14:12', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'São Paulo (', '00047'),
(102, '11 99151-9577', 'Int. Nacional', '17/10/2017', '22:04:17', 'Santa Catarina - Sao Paulo', '1131672326', '00:03:06', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Sao Paulo', '00047'),
(103, '11 99151-9577', 'Int. Nacional', '17/10/2017', '22:07:35', 'Santa Catarina - Sao Paulo', '1131672326', '00:03:00', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Sao Paulo', '00047'),
(104, '11 99151-9577', 'Internet (MB)', '18/10/2017', '00:48:27', '', '', '5,55664', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(105, '11 99151-9577', 'Internet (MB)', '18/10/2017', '07:10:29', '', '', ',571289', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(106, '11 99151-9577', 'Int. Nacional', '18/10/2017', '13:28:39', 'Santa Catarina - São Paulo (11)', '11972572576', '00:04:12', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'São Paulo (', '00047'),
(107, '11 99151-9577', 'Int. Nacional', '18/10/2017', '22:25:32', 'Santa Catarina - São Paulo (11)', '11963094219', '00:02:36', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'São Paulo (', '00047'),
(108, '11 99151-9577', 'Internet (MB)', '19/10/2017', '00:06:49', '', '', '7,600585', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(109, '11 99151-9577', 'Internet (MB)', '19/10/2017', '00:31:23', '', '', ',375', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(110, '11 99151-9577', 'Internet (MB)', '19/10/2017', '06:31:22', '', '', '58,158203', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(111, '11 99151-9577', 'Internet (MB)', '19/10/2017', '07:23:16', '', '', ',350585', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(112, '11 99151-9577', 'Torpedos', '19/10/2017', '10:42:57', '', '11992300502', '1', '0,10', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo', '', '', '', '00011'),
(113, '11 99151-9577', 'Internet (MB)', '20/10/2017', '01:27:41', '', '', '57,736328', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(114, '11 99151-9577', 'Internet (MB)', '20/10/2017', '09:24:32', '', '', ',250976', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(115, '11 99151-9577', 'Int. Nacional', '20/10/2017', '10:10:37', 'São Paulo - Sao Jose Dos Pinhais', '4132998588', '00:00:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(116, '11 99151-9577', 'Claro-Claro', '20/10/2017', '12:37:45', 'São Paulo - São Paulo (11)', '11992201612', '00:01:00', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(117, '11 99151-9577', 'Internet (MB)', '20/10/2017', '12:39:37', '', '', ',009765', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(118, '11 99151-9577', 'Int. Nacional', '20/10/2017', '12:40:38', 'São Paulo - Sao Jose Dos Pinhais', '4132998578', '00:01:42', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(119, '11 99151-9577', 'Claro-Fixo', '20/10/2017', '14:18:25', 'São Paulo - Sao Paulo', '1138266832', '00:03:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(120, '11 99151-9577', 'Internet (MB)', '21/10/2017', '00:22:39', '', '', '5,765625', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(121, '11 99151-9577', 'Internet (MB)', '21/10/2017', '13:49:23', '', '', ',692382', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(122, '11 99151-9577', 'Claro-Outras Op.', '21/10/2017', '20:57:29', 'São Paulo - São Paulo (19)', '19981665533', '00:01:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00019'),
(123, '11 99151-9577', 'Internet (MB)', '22/10/2017', '01:51:36', '', '', '1,20996', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(124, '11 99151-9577', 'Claro-Claro', '22/10/2017', '12:46:18', 'São Paulo - São Paulo (11)', '11976548775', '00:03:12', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(125, '11 99151-9577', 'Internet (MB)', '22/10/2017', '17:44:00', '', '', ',167968', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(126, '11 99151-9577', 'Internet (MB)', '23/10/2017', '01:08:36', '', '', '3,032226', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(127, '11 99151-9577', 'Internet (MB)', '23/10/2017', '09:54:57', '', '', ',067382', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(128, '11 99151-9577', 'Claro-Claro', '23/10/2017', '10:42:42', 'São Paulo - São Paulo (11)', '11992187846', '00:02:42', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(129, '11 99151-9577', 'Claro-Outras Op.', '23/10/2017', '15:12:07', 'São Paulo - São Paulo (11)', '11972572576', '00:03:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(130, '11 99151-9577', 'Int. Nacional', '23/10/2017', '16:05:49', 'São Paulo - Sao Jose Dos Pinhais', '4132997206', '00:03:24', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(131, '11 99151-9577', 'Claro-Claro', '23/10/2017', '18:16:38', 'São Paulo - São Paulo (11)', '11992201612', '00:00:36', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(132, '11 99151-9577', 'Internet (MB)', '24/10/2017', '00:04:25', '', '', '52,576171', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(133, '11 99151-9577', 'Internet (MB)', '24/10/2017', '09:47:00', '', '', ',341796', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(134, '11 99151-9577', 'Internet (MB)', '25/10/2017', '00:39:20', '', '', '18,335937', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(135, '11 99151-9577', 'Internet (MB)', '25/10/2017', '09:11:26', '', '', ',761718', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(136, '11 99151-9577', 'Torpedos', '25/10/2017', '09:55:59', '', '41988952079', '1', '0,10', ',1', ',1', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo - Outras Operadoras', '', '', '', '00011'),
(137, '11 99151-9577', 'Int. Nacional', '25/10/2017', '15:11:03', 'Paraná - São Paulo (11)', '11992201612', '00:04:18', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(138, '11 99151-9577', 'Int. Nacional', '25/10/2017', '15:31:55', 'Paraná - São Paulo (11)', '11992201612', '00:01:12', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(139, '11 99151-9577', 'Int. Nacional', '25/10/2017', '16:45:59', 'Paraná - São Paulo (11)', '11963094219', '00:03:42', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(140, '11 99151-9577', 'Internet (MB)', '26/10/2017', '01:49:49', '', '', '14,721679', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(141, '11 99151-9577', 'Internet (MB)', '26/10/2017', '07:57:42', '', '', '1,582031', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(142, '11 99151-9577', 'Torpedos', '26/10/2017', '16:02:31', '', '11971682315', '1', '0,10', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo', '', '', '', '00011'),
(143, '11 99151-9577', 'Internet (MB)', '27/10/2017', '01:07:22', '', '', '10,799804', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(144, '11 99151-9577', 'Internet (MB)', '27/10/2017', '08:59:14', '', '', ',274414', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(145, '11 99151-9577', 'Claro-Outras Op.', '27/10/2017', '14:27:40', 'Paraná - Paraná (41)', '41999747823', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Paraná', 'Paraná (41)', '00041'),
(146, '11 99151-9577', 'Int. Nacional', '27/10/2017', '16:25:03', 'Paraná - São Paulo (11)', '11963094219', '00:05:18', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(147, '11 99151-9577', 'Internet (MB)', '28/10/2017', '00:38:25', '', '', '16,457031', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(148, '11 99151-9577', 'Internet (MB)', '28/10/2017', '07:31:45', '', '', ',373046', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(149, '11 99151-9577', 'Internet (MB)', '29/10/2017', '00:38:32', '', '', '8,085937', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(150, '11 99151-9577', 'Internet (MB)', '29/10/2017', '13:04:08', '', '', '3,210937', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(151, '11 99151-9577', 'Claro-Claro', '29/10/2017', '13:50:09', 'São Paulo - São Paulo (11)', '11963094219', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(152, '11 99151-9577', 'Internet (MB)', '30/10/2017', '00:38:43', '', '', '25,461914', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(153, '11 99151-9577', 'Internet (MB)', '30/10/2017', '09:40:20', '', '', ',984375', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(154, '11 99151-9577', 'Claro-Claro', '30/10/2017', '10:28:04', 'São Paulo - São Paulo (11)', '11992300502', '00:03:06', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(155, '11 99151-9577', 'Claro-Claro', '30/10/2017', '10:31:20', 'São Paulo - São Paulo (11)', '11992201612', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(156, '11 99151-9577', 'Torpedos', '30/10/2017', '11:44:37', '', '11992201612', '1', '0,10', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo', '', '', '', '00011'),
(157, '11 99151-9577', 'Claro-Claro', '30/10/2017', '14:36:23', 'São Paulo - São Paulo (11)', '11992201612', '00:16:12', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(158, '11 99151-9577', 'Secretária Claro', '30/10/2017', '18:23:20', 'São Paulo - Secretária Claro', '*100', '00:00:36', '0,00', '0', '0', '', '', '', 'Ligações para números especiai', '', '', '', 'São Paulo', 'Secretária ', '00011'),
(159, '11 99151-9577', 'Internet (MB)', '31/10/2017', '00:37:39', '', '', '182,392578', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(160, '11 99151-9577', 'Internet (MB)', '31/10/2017', '05:45:14', '', '', ',862304', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(161, '11 99151-9577', 'Claro-Outras Op.', '31/10/2017', '12:09:09', 'Paraná - Paraná (41)', '41999791909', '00:01:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Paraná', 'Paraná (41)', '00041'),
(162, '11 99220-1612', 'Int. Nacional', '29/09/2017', '15:54:56', 'São Paulo - Santa Catarina (49)', '49988150094', '00:05:54', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Santa Catar', '00011'),
(163, '11 99220-1612', 'Internet (MB)', '01/10/2017', '01:13:31', '', '', ',755859', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(164, '11 99220-1612', 'Internet (MB)', '01/10/2017', '09:55:04', '', '', ',013671', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(165, '11 99220-1612', 'Internet (MB)', '02/10/2017', '01:02:15', '', '', '41,568359', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(166, '11 99220-1612', 'Internet (MB)', '02/10/2017', '08:55:33', '', '', '4,146484', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(167, '11 99220-1612', 'Int. Nacional', '02/10/2017', '11:16:17', 'São Paulo - Sao Jose Dos Pinhais', '4132998578', '00:00:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(168, '11 99220-1612', 'Claro-Fixo', '02/10/2017', '11:18:37', 'São Paulo - Osasco', '1136849441', '00:02:42', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Osasco', '00011'),
(169, '11 99220-1612', 'Claro-Outras Op.', '02/10/2017', '19:33:50', 'São Paulo - São Paulo (11)', '11972142222', '00:06:42', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(170, '11 99220-1612', 'Claro-Fixo', '02/10/2017', '21:05:44', 'São Paulo - Sao Paulo', '1140043535', '00:08:00', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(171, '11 99220-1612', 'Claro-Fixo', '02/10/2017', '22:14:39', 'São Paulo - Sao Paulo', '1140043535', '00:28:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(172, '11 99220-1612', 'Internet (MB)', '03/10/2017', '00:45:44', '', '', '19,117187', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(173, '11 99220-1612', 'Internet (MB)', '03/10/2017', '07:40:36', '', '', '1,457031', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(174, '11 99220-1612', 'Claro-Outras Op.', '03/10/2017', '08:05:21', 'São Paulo - São Paulo (11)', '11964240111', '00:04:18', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(175, '11 99220-1612', 'Claro-Claro', '03/10/2017', '08:10:05', 'São Paulo - São Paulo (11)', '11991519577', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(176, '11 99220-1612', 'Claro-Claro', '03/10/2017', '08:28:36', 'São Paulo - São Paulo (11)', '11991519577', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(177, '11 99220-1612', 'Claro-Outras Op.', '03/10/2017', '11:41:42', 'São Paulo - São Paulo (11)', '11998992026', '00:13:36', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(178, '11 99220-1612', 'Int. Nacional', '03/10/2017', '11:57:19', 'São Paulo - Sao Jose Dos Pinhais', '4132998578', '00:02:48', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(179, '11 99220-1612', 'Claro-Claro', '03/10/2017', '12:19:56', 'São Paulo - São Paulo (11)', '11991519577', '00:05:00', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(180, '11 99220-1612', 'Claro-Outras Op.', '03/10/2017', '12:25:29', 'São Paulo - São Paulo (11)', '11975310841', '00:11:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(181, '11 99220-1612', 'Claro-Outras Op.', '03/10/2017', '12:54:12', 'São Paulo - São Paulo (11)', '11964240111', '00:01:00', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(182, '11 99220-1612', 'Int. Nacional', '03/10/2017', '12:57:49', 'São Paulo - Paraná (41)', '41988587198', '00:06:54', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Paraná (41)', '00011'),
(183, '11 99220-1612', 'Int. Nacional', '03/10/2017', '14:28:04', 'São Paulo - Rio Negrinho', '4736462255', '00:01:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Rio Negrinh', '00011'),
(184, '11 99220-1612', 'Claro-Outras Op.', '03/10/2017', '14:41:49', 'São Paulo - São Paulo (11)', '11999374988', '00:07:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(185, '11 99220-1612', 'Claro-Claro', '03/10/2017', '15:48:24', 'São Paulo - São Paulo (11)', '11991519577', '00:01:18', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(186, '11 99220-1612', 'Int. Nacional', '03/10/2017', '15:49:54', 'São Paulo - Sao Jose Dos Pinhais', '4132998578', '00:03:24', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(187, '11 99220-1612', 'Claro-Claro', '03/10/2017', '16:50:27', 'São Paulo - São Paulo (11)', '11991519577', '00:00:42', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(188, '11 99220-1612', 'Int. Nacional', '03/10/2017', '17:08:24', 'São Paulo - Sao Jose Dos Pinhais', '4132998578', '00:19:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(189, '11 99220-1612', 'Claro-Claro', '03/10/2017', '18:54:40', 'São Paulo - São Paulo (11)', '11991519577', '00:01:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(190, '11 99220-1612', 'Claro-Claro', '03/10/2017', '18:58:36', 'São Paulo - São Paulo (11)', '11991519577', '00:01:42', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(191, '11 99220-1612', 'Internet (MB)', '04/10/2017', '00:45:29', '', '', '66,137695', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(192, '11 99220-1612', 'Internet (MB)', '04/10/2017', '07:32:57', '', '', '32,879882', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(193, '11 99220-1612', 'Int. Regional', '04/10/2017', '17:20:55', 'Santa Catarina - Sao Jose Dos Pinhais', '4132998578', '00:00:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Sao Jose Do', '00049'),
(194, '11 99220-1612', 'Int. Regional', '04/10/2017', '17:36:50', 'Santa Catarina - Santa Catarina (48)', '48988567800', '00:01:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Santa Catar', '00049'),
(195, '11 99220-1612', 'Claro-Outras Op.', '04/10/2017', '17:39:13', 'Santa Catarina - Santa Catarina (49)', '49999334648', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Santa Catar', '00049'),
(196, '11 99220-1612', 'Int. Nacional', '04/10/2017', '17:43:23', 'Santa Catarina - São Paulo (11)', '11972142222', '00:00:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'São Paulo (', '00049'),
(197, '11 99220-1612', 'Int. Regional', '04/10/2017', '17:57:16', 'Santa Catarina - Paraná (41)', '41999747823', '00:02:36', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Paraná (41)', '00049'),
(198, '11 99220-1612', 'Int. Nacional', '04/10/2017', '19:12:21', 'Santa Catarina - São Paulo (11)', '11991519577', '00:11:48', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'São Paulo (', '00049'),
(199, '11 99220-1612', 'Claro-Outras Op.', '04/10/2017', '19:58:11', 'Santa Catarina - Santa Catarina (49)', '49991805153', '00:01:06', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Santa Catar', '00049'),
(200, '11 99220-1612', 'Internet (MB)', '04/10/2017', '20:35:21', '', '', ',05371', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(201, '11 99220-1612', 'Internet (MB)', '05/10/2017', '00:57:58', '', '', '36,514648', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(202, '11 99220-1612', 'Internet (MB)', '05/10/2017', '04:42:42', '', '', '91,310546', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(203, '11 99220-1612', 'Claro-Outras Op.', '05/10/2017', '11:31:35', 'Santa Catarina - Santa Catarina (49)', '49998171053', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Santa Catar', '00049'),
(204, '11 99220-1612', 'Int. Regional', '05/10/2017', '11:59:25', 'Santa Catarina - Sao Jose Dos Pinhais', '4132998590', '00:04:36', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Sao Jose Do', '00049'),
(205, '11 99220-1612', 'Int. Regional', '05/10/2017', '13:33:55', 'Santa Catarina - Paraná (41)', '41999747823', '00:02:00', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Paraná (41)', '00049'),
(206, '11 99220-1612', 'Int. Regional', '05/10/2017', '13:46:06', 'Santa Catarina - Paraná (41)', '41999747823', '00:04:18', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Paraná (41)', '00049'),
(207, '11 99220-1612', 'Claro-Fixo', '05/10/2017', '14:21:49', 'Santa Catarina - Lages', '4932260057', '00:00:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Lages', '00049'),
(208, '11 99220-1612', 'Claro-Fixo', '05/10/2017', '15:47:41', 'Santa Catarina - Lages', '4940043535', '00:29:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Lages', '00049'),
(209, '11 99220-1612', 'Internet (MB)', '05/10/2017', '17:41:29', '', '', '9,988281', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(210, '11 99220-1612', 'Int. Nacional', '05/10/2017', '18:36:22', 'Santa Catarina - São Paulo (11)', '11991519577', '00:09:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'São Paulo (', '00049'),
(211, '11 99220-1612', 'Int. Nacional', '05/10/2017', '18:48:55', 'Santa Catarina - São Paulo (11)', '11964240111', '00:03:18', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'São Paulo (', '00049'),
(212, '11 99220-1612', 'Claro-Outras Op.', '05/10/2017', '19:28:07', 'Santa Catarina - Santa Catarina (49)', '49999830026', '00:00:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Santa Catar', '00049'),
(213, '11 99220-1612', 'Int. Regional', '05/10/2017', '19:48:47', 'Santa Catarina - Santa Catarina (48)', '48988567800', '00:01:00', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Santa Catar', '00049'),
(214, '11 99220-1612', 'Internet (MB)', '06/10/2017', '00:39:49', '', '', '11,14746', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(215, '11 99220-1612', 'Internet (MB)', '06/10/2017', '01:45:17', '', '', '53,394531', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(216, '11 99220-1612', 'Internet (MB)', '06/10/2017', '12:05:28', '', '', ',009765', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(217, '11 99220-1612', 'Claro-Outras Op.', '06/10/2017', '12:18:10', 'Santa Catarina - Santa Catarina (49)', '49999334648', '00:00:36', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Santa Catar', '00049'),
(218, '11 99220-1612', 'Claro-Outras Op.', '06/10/2017', '12:19:05', 'Santa Catarina - Santa Catarina (49)', '49988150094', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Santa Catar', '00049'),
(219, '11 99220-1612', 'Claro-Outras Op.', '06/10/2017', '12:19:46', 'Santa Catarina - Santa Catarina (49)', '49999830026', '00:01:24', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Santa Catar', '00049'),
(220, '11 99220-1612', 'Int. Regional', '06/10/2017', '13:02:26', 'Santa Catarina - Santa Catarina (48)', '48988567800', '00:00:48', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Santa Catar', '00049'),
(221, '11 99220-1612', 'Claro-Fixo', '06/10/2017', '14:39:46', 'Santa Catarina - Lages', '4940043535', '00:21:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Lages', '00049'),
(222, '11 99220-1612', 'Int. Nacional', '06/10/2017', '15:02:42', 'Santa Catarina - São Paulo (11)', '11964240111', '00:00:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'São Paulo (', '00049'),
(223, '11 99220-1612', 'Claro-Outras Op.', '06/10/2017', '19:35:10', 'São Paulo - São Paulo (11)', '11964240111', '00:01:12', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(224, '11 99220-1612', 'Claro-Outras Op.', '06/10/2017', '19:36:49', 'São Paulo - São Paulo (11)', '11998992026', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(225, '11 99220-1612', 'Internet (MB)', '07/10/2017', '10:19:29', '', '', '1,796875', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(226, '11 99220-1612', 'Internet (MB)', '07/10/2017', '16:23:09', '', '', ',049804', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(227, '11 99220-1612', 'Claro-Fixo', '07/10/2017', '19:14:21', 'São Paulo - Sao Paulo', '1140043535', '00:00:36', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(228, '11 99220-1612', 'Internet (MB)', '08/10/2017', '01:22:59', '', '', '3,667968', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(229, '11 99220-1612', 'Int. Nacional', '08/10/2017', '07:38:32', 'São Paulo - Paraná (41)', '41999850900', '00:01:06', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Paraná (41)', '00011'),
(230, '11 99220-1612', 'Internet (MB)', '08/10/2017', '10:03:47', '', '', '1,065429', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(231, '11 99220-1612', 'Int. Nacional', '08/10/2017', '11:12:20', 'Paraná - São Paulo (11)', '11964240111', '00:02:06', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(232, '11 99220-1612', 'Internet (MB)', '09/10/2017', '00:00:55', '', '', '1,117187', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(233, '11 99220-1612', 'Internet (MB)', '09/10/2017', '01:43:19', '', '', '11,267578', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(234, '11 99220-1612', 'Int. Nacional', '09/10/2017', '12:50:13', 'Paraná - São Paulo (11)', '11964240111', '00:01:24', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(235, '11 99220-1612', 'Int. Nacional', '09/10/2017', '12:53:34', 'Paraná - São Paulo (11)', '11964240111', '00:00:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041');
INSERT INTO `tab_fatura` (`id`, `col_number`, `col_section`, `col_date`, `col_hour`, `col_source`, `col_number_dest`, `col_time`, `col_price`, `col_price2`, `col_info`, `col_info2`, `col_info3`, `col_sub_section`, `col_type_tax`, `col_description`, `col_position`, `col_name_source`, `col_name_target`, `col_code_source`, `col_code_target`) VALUES
(236, '11 99220-1612', 'Int. Nacional', '09/10/2017', '12:54:28', 'Paraná - São Paulo (11)', '11991519577', '00:21:06', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(237, '11 99220-1612', 'Torpedos', '09/10/2017', '13:43:41', '', '47992864040', '1', '0,10', ',1', ',1', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo - Outras Operadoras', '', '', '', '00011'),
(238, '11 99220-1612', 'Torpedos', '09/10/2017', '19:10:38', '', '47992864040', '1', '0,10', ',1', ',1', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo - Outras Operadoras', '', '', '', '00011'),
(239, '11 99220-1612', 'Int. Regional', '09/10/2017', '19:55:47', 'Paraná - Santa Catarina (47)', '47996900808', '00:03:00', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'Santa Catar', '00041'),
(240, '11 99220-1612', 'Internet (MB)', '10/10/2017', '00:00:18', '', '', '3,723632', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(241, '11 99220-1612', 'Internet (MB)', '10/10/2017', '06:37:04', '', '', ',295898', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(242, '11 99220-1612', 'Claro-Claro', '10/10/2017', '14:19:05', 'Santa Catarina - Santa Catarina (47)', '47988446443', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Santa Catar', '00047'),
(243, '11 99220-1612', 'Int. Nacional', '10/10/2017', '15:03:00', 'Santa Catarina - São Paulo (11)', '11991519577', '00:08:06', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'São Paulo (', '00047'),
(244, '11 99220-1612', 'Int. Nacional', '10/10/2017', '17:50:09', 'Paraná - São Paulo (11)', '11991519577', '00:14:54', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(245, '11 99220-1612', 'Int. Regional', '10/10/2017', '18:07:27', 'Paraná - Santa Catarina (47)', '47999844460', '00:02:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'Santa Catar', '00041'),
(246, '11 99220-1612', 'Int. Regional', '10/10/2017', '18:10:16', 'Paraná - Santa Catarina (47)', '47999844460', '00:00:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'Santa Catar', '00041'),
(247, '11 99220-1612', 'Int. Regional', '10/10/2017', '18:11:24', 'Paraná - Santa Catarina (47)', '47999844460', '00:10:24', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'Santa Catar', '00041'),
(248, '11 99220-1612', 'Int. Nacional', '10/10/2017', '18:22:04', 'Paraná - São Paulo (11)', '11964240111', '00:02:00', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(249, '11 99220-1612', 'Int. Regional', '10/10/2017', '18:24:32', 'Paraná - Santa Catarina (47)', '47999844460', '00:01:12', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'Santa Catar', '00041'),
(250, '11 99220-1612', 'Int. Nacional', '10/10/2017', '19:17:45', 'Paraná - São Paulo (11)', '11964240111', '00:04:06', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(251, '11 99220-1612', 'Internet (MB)', '11/10/2017', '01:50:41', '', '', '19,474609', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(252, '11 99220-1612', 'Internet (MB)', '11/10/2017', '06:52:17', '', '', '20,267578', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(253, '11 99220-1612', 'Int. Nacional', '11/10/2017', '17:13:58', 'Santa Catarina - São Paulo (11)', '11998992026', '00:09:54', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'São Paulo (', '00047'),
(254, '11 99220-1612', 'Secretária Claro', '11/10/2017', '21:30:35', 'Paraná - Secretária Claro', '*100', '00:00:48', '0,00', '0', '0', '', '', '', 'Ligações para números especiai', '', '', '', 'Paraná', 'Secretária ', '00041'),
(255, '11 99220-1612', 'Internet (MB)', '12/10/2017', '00:35:11', '', '', '3,310546', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(256, '11 99220-1612', 'Internet (MB)', '12/10/2017', '06:57:45', '', '', '2,21289', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(257, '11 99220-1612', 'Int. Regional', '12/10/2017', '09:30:41', 'Paraná - Santa Catarina (48)', '48988567800', '00:05:48', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'Santa Catar', '00041'),
(258, '11 99220-1612', 'Internet (MB)', '13/10/2017', '00:41:04', '', '', '13,493164', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(259, '11 99220-1612', 'Internet (MB)', '13/10/2017', '06:23:15', '', '', ',727539', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(260, '11 99220-1612', 'Claro-Fixo', '13/10/2017', '09:23:06', 'Paraná - Curitiba', '4132234868', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Paraná', 'Curitiba', '00041'),
(261, '11 99220-1612', 'Claro-Outras Op.', '13/10/2017', '11:00:45', 'Paraná - Paraná (41)', '41999850900', '00:00:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Paraná', 'Paraná (41)', '00041'),
(262, '11 99220-1612', 'Claro-Outras Op.', '13/10/2017', '11:21:19', 'Paraná - Paraná (41)', '41999850900', '00:01:06', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Paraná', 'Paraná (41)', '00041'),
(263, '11 99220-1612', 'Claro-Outras Op.', '13/10/2017', '11:48:16', 'Paraná - Paraná (41)', '41988952079', '00:03:18', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Paraná', 'Paraná (41)', '00041'),
(264, '11 99220-1612', 'Int. Nacional', '13/10/2017', '12:01:24', 'Paraná - São Paulo (11)', '11991519577', '00:24:54', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(265, '11 99220-1612', 'Claro-Outras Op.', '13/10/2017', '15:52:44', 'Paraná - Paraná (41)', '41988952079', '00:02:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Paraná', 'Paraná (41)', '00041'),
(266, '11 99220-1612', 'Claro-Outras Op.', '13/10/2017', '16:59:15', 'Paraná - Paraná (41)', '41988952079', '00:02:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Paraná', 'Paraná (41)', '00041'),
(267, '11 99220-1612', 'Internet (MB)', '14/10/2017', '00:43:34', '', '', '2,160156', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(268, '11 99220-1612', 'Internet (MB)', '14/10/2017', '08:38:24', '', '', '1,045898', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(269, '11 99220-1612', 'Claro-Fixo', '14/10/2017', '12:22:26', 'São Paulo - Sao Paulo', '1130522799', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(270, '11 99220-1612', 'Claro-Outras Op.', '14/10/2017', '13:53:28', 'São Paulo - São Paulo (11)', '11981537545', '00:01:00', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(271, '11 99220-1612', 'Internet (MB)', '14/10/2017', '20:24:22', '', '', ',198242', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(272, '11 99220-1612', 'Internet (MB)', '15/10/2017', '01:27:20', '', '', '4,048828', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(273, '11 99220-1612', 'Internet (MB)', '15/10/2017', '12:03:39', '', '', ',39746', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(274, '11 99220-1612', 'Internet (MB)', '16/10/2017', '01:23:36', '', '', '10,377929', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(275, '11 99220-1612', 'Internet (MB)', '16/10/2017', '07:50:22', '', '', ',501953', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(276, '11 99220-1612', 'Claro-Fixo', '16/10/2017', '08:59:27', 'São Paulo - Sao Paulo', '1155757051', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(277, '11 99220-1612', 'Claro-Fixo', '16/10/2017', '14:07:02', 'São Paulo - Sao Paulo', '1133715523', '00:13:24', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(278, '11 99220-1612', 'Claro-Claro', '16/10/2017', '14:21:01', 'São Paulo - São Paulo (11)', '11991519577', '00:01:00', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(279, '11 99220-1612', 'Internet (MB)', '17/10/2017', '00:21:07', '', '', '374,895507', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(280, '11 99220-1612', 'Internet (MB)', '17/10/2017', '06:31:30', '', '', '2,211914', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(281, '11 99220-1612', 'Int. Nacional', '17/10/2017', '11:00:05', 'Paraná - São Paulo (11)', '11991519577', '00:00:42', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'São Paulo (', '00041'),
(282, '11 99220-1612', 'Int. Regional', '17/10/2017', '11:01:09', 'Paraná - Itapoa', '4734438506', '00:01:18', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Paraná', 'Itapoa', '00041'),
(283, '11 99220-1612', 'Internet (MB)', '18/10/2017', '00:04:15', '', '', '4,704101', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(284, '11 99220-1612', 'Internet (MB)', '18/10/2017', '08:42:00', '', '', '2,216796', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(285, '11 99220-1612', 'Int. Regional', '18/10/2017', '16:40:22', 'Santa Catarina - Curitiba', '4121067900', '00:04:48', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Curitiba', '00047'),
(286, '11 99220-1612', 'Int. Nacional', '18/10/2017', '22:35:45', 'Santa Catarina - São Paulo (11)', '11964240111', '00:00:36', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'São Paulo (', '00047'),
(287, '11 99220-1612', 'Internet (MB)', '19/10/2017', '01:14:09', '', '', '1,435546', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(288, '11 99220-1612', 'Internet (MB)', '19/10/2017', '04:33:33', '', '', '2,759765', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(289, '11 99220-1612', 'Internet (MB)', '19/10/2017', '08:15:18', '', '', '142,260742', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(290, '11 99220-1612', 'Internet (MB)', '19/10/2017', '08:15:47', '', '', '2,236328', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(291, '11 99220-1612', 'Int. Nacional', '19/10/2017', '12:27:11', 'Santa Catarina - Sao Paulo', '1121066897', '00:03:06', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Sao Paulo', '00047'),
(292, '11 99220-1612', 'Claro-Fixo', '19/10/2017', '12:36:49', 'Santa Catarina - Joinville', '4740043535', '00:06:06', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Joinville', '00047'),
(293, '11 99220-1612', 'Int. Nacional', '19/10/2017', '12:45:10', 'Santa Catarina - Sao Paulo', '1131019851', '00:01:48', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Sao Paulo', '00047'),
(294, '11 99220-1612', 'Claro-Claro', '19/10/2017', '15:34:47', 'Santa Catarina - Santa Catarina (47)', '47988446443', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Santa Catar', '00047'),
(295, '11 99220-1612', 'Claro-Fixo', '19/10/2017', '15:35:48', 'Santa Catarina - Rio Negrinho', '4736462255', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Rio Negrinh', '00047'),
(296, '11 99220-1612', 'Claro-Fixo', '19/10/2017', '16:24:35', 'Santa Catarina - Rio Negrinho', '4736462255', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'Santa Catarina', 'Rio Negrinh', '00047'),
(297, '11 99220-1612', 'Int. Regional', '19/10/2017', '16:31:50', 'Santa Catarina - Lages', '4932260057', '00:04:00', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Lages', '00047'),
(298, '11 99220-1612', 'Int. Regional', '19/10/2017', '16:37:17', 'Santa Catarina - Lages', '4932260057', '00:01:18', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Lages', '00047'),
(299, '11 99220-1612', 'Int. Nacional', '19/10/2017', '18:07:42', 'Santa Catarina - Rio de Janeiro (21)', '21986933493', '00:04:36', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'Santa Catarina', 'Rio de Jane', '00047'),
(300, '11 99220-1612', 'Int. Nacional', '19/10/2017', '21:41:14', 'São Paulo - Curitiba', '4130197787', '00:05:00', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Curitiba', '00011'),
(301, '11 99220-1612', 'Internet (MB)', '20/10/2017', '03:27:19', '', '', '106,415039', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(302, '11 99220-1612', 'Internet (MB)', '20/10/2017', '07:33:16', '', '', '19,659179', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(303, '11 99220-1612', 'Torpedos', '20/10/2017', '07:59:01', '', '11983831140', '1', '0,10', ',1', ',1', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo - Outras Operadoras', '', '', '', '00011'),
(304, '11 99220-1612', 'Claro-Claro', '20/10/2017', '09:36:45', 'São Paulo - São Paulo (11)', '11991519577', '00:01:42', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(305, '11 99220-1612', 'Int. Nacional', '20/10/2017', '10:34:00', 'São Paulo - Santa Catarina (47)', '47992864040', '00:10:12', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Santa Catar', '00011'),
(306, '11 99220-1612', 'Int. Nacional', '20/10/2017', '10:44:58', 'São Paulo - Curitiba', '4133429778', '00:02:48', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Curitiba', '00011'),
(307, '11 99220-1612', 'Int. Nacional', '20/10/2017', '10:48:13', 'São Paulo - Curitiba', '4130197787', '00:04:00', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Curitiba', '00011'),
(308, '11 99220-1612', 'Claro-Outras Op.', '20/10/2017', '10:52:49', 'São Paulo - São Paulo (11)', '11972142222', '00:01:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(309, '11 99220-1612', 'Claro-Fixo', '20/10/2017', '11:05:02', 'São Paulo - Sao Paulo', '1140043535', '00:13:06', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(310, '11 99220-1612', 'Claro-Claro', '20/10/2017', '13:13:50', 'São Paulo - São Paulo (11)', '11991519577', '00:01:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(311, '11 99220-1612', 'Claro-Fixo', '20/10/2017', '14:54:35', 'São Paulo - Sao Paulo', '1140043535', '00:09:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(312, '11 99220-1612', 'Claro-Fixo', '20/10/2017', '15:18:28', 'São Paulo - Sao Paulo', '1148831031', '00:01:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(313, '11 99220-1612', 'Claro-Fixo', '20/10/2017', '15:23:47', 'São Paulo - Sao Paulo', '1131011129', '00:01:18', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(314, '11 99220-1612', 'Claro-Fixo', '20/10/2017', '15:33:58', 'São Paulo - Sao Paulo', '1137021133', '00:03:24', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(315, '11 99220-1612', 'Claro-Claro', '20/10/2017', '15:54:21', 'São Paulo - São Paulo (11)', '11989799666', '00:02:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(316, '11 99220-1612', 'Claro-Outras Op.', '20/10/2017', '16:34:30', 'São Paulo - São Paulo (11)', '11976069528', '00:01:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(317, '11 99220-1612', 'Internet (MB)', '21/10/2017', '00:54:10', '', '', '19,501953', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(318, '11 99220-1612', 'Internet (MB)', '21/10/2017', '08:22:11', '', '', '7,899414', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(319, '11 99220-1612', 'Claro-Outras Op.', '21/10/2017', '09:24:25', 'São Paulo - São Paulo (11)', '11976069528', '00:00:36', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(320, '11 99220-1612', 'Claro-Outras Op.', '21/10/2017', '10:13:30', 'São Paulo - São Paulo (11)', '11976069528', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(321, '11 99220-1612', 'Internet (MB)', '22/10/2017', '00:34:34', '', '', '4,714843', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(322, '11 99220-1612', 'Internet (MB)', '22/10/2017', '00:59:36', '', '', ',441406', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(323, '11 99220-1612', 'Claro-Claro', '22/10/2017', '16:48:34', 'São Paulo - São Paulo (11)', '11991519577', '00:03:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(324, '11 99220-1612', 'Claro-Outras Op.', '22/10/2017', '16:52:18', 'São Paulo - São Paulo (11)', '11972142222', '00:02:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(325, '11 99220-1612', 'Internet (MB)', '23/10/2017', '01:52:17', '', '', '24,690429', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(326, '11 99220-1612', 'Internet (MB)', '23/10/2017', '07:30:39', '', '', '3', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(327, '11 99220-1612', 'Claro-Claro', '23/10/2017', '12:19:30', 'São Paulo - São Paulo (11)', '11991519577', '00:05:42', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(328, '11 99220-1612', 'Int. Nacional', '23/10/2017', '14:13:47', 'São Paulo - Sao Jose Dos Pinhais', '4132998578', '00:06:18', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(329, '11 99220-1612', 'Claro-Claro', '23/10/2017', '18:58:16', 'São Paulo - São Paulo (11)', '11991519577', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(330, '11 99220-1612', 'Claro-Outras Op.', '23/10/2017', '20:05:05', 'São Paulo - São Paulo (11)', '11998992026', '00:06:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(331, '11 99220-1612', 'Secretária Claro', '23/10/2017', '20:12:46', 'São Paulo - Secretária Claro', '*100', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações para números especiai', '', '', '', 'São Paulo', 'Secretária ', '00011'),
(332, '11 99220-1612', 'Internet (MB)', '24/10/2017', '00:32:06', '', '', '73,402343', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(333, '11 99220-1612', 'Internet (MB)', '24/10/2017', '06:11:48', '', '', '2,081054', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(334, '11 99220-1612', 'Claro-Outras Op.', '24/10/2017', '10:22:35', 'São Paulo - São Paulo (11)', '11964240111', '00:00:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(335, '11 99220-1612', 'Claro-Fixo', '24/10/2017', '14:56:01', 'São Paulo - Sao Paulo', '1131681133', '00:03:00', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(336, '11 99220-1612', 'Claro-Fixo', '24/10/2017', '15:15:27', 'São Paulo - Sao Paulo', '1131681133', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(337, '11 99220-1612', 'Claro-Outras Op.', '24/10/2017', '15:16:05', 'São Paulo - São Paulo (11)', '11964240111', '00:00:36', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(338, '11 99220-1612', 'Claro-Claro', '24/10/2017', '16:07:10', 'São Paulo - São Paulo (11)', '11991519577', '00:17:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(339, '11 99220-1612', 'Claro-Claro', '24/10/2017', '16:37:36', 'São Paulo - São Paulo (11)', '11991519577', '00:01:24', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(340, '11 99220-1612', 'Int. Nacional', '24/10/2017', '16:40:01', 'São Paulo - Santa Catarina (47)', '47988362096', '00:02:00', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Santa Catar', '00011'),
(341, '11 99220-1612', 'Int. Nacional', '24/10/2017', '16:44:17', 'São Paulo - Paraná (41)', '41999850900', '00:00:36', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Paraná (41)', '00011'),
(342, '11 99220-1612', 'Claro-Claro', '24/10/2017', '17:02:35', 'São Paulo - São Paulo (11)', '11991519577', '00:13:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(343, '11 99220-1612', 'Claro-Outras Op.', '24/10/2017', '17:19:23', 'São Paulo - São Paulo (11)', '11999374988', '00:01:36', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(344, '11 99220-1612', 'Int. Nacional', '24/10/2017', '19:07:29', 'São Paulo - Paraná (41)', '41999850900', '00:24:54', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Paraná (41)', '00011'),
(345, '11 99220-1612', 'Internet (MB)', '25/10/2017', '07:33:46', '', '', '46,970703', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(346, '11 99220-1612', 'Claro-Claro', '25/10/2017', '09:51:32', 'São Paulo - São Paulo (11)', '11991519577', '00:03:18', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(347, '11 99220-1612', 'Internet (MB)', '25/10/2017', '09:54:59', '', '', '7,988281', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(348, '11 99220-1612', 'Secretária Claro', '25/10/2017', '10:10:48', 'São Paulo - Secretária Claro', '*100', '00:00:42', '0,00', '0', '0', '', '', '', 'Ligações para números especiai', '', '', '', 'São Paulo', 'Secretária ', '00011'),
(349, '11 99220-1612', 'Int. Nacional', '25/10/2017', '10:22:37', 'São Paulo - Sao Jose Dos Pinhais', '4132998581', '00:01:00', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(350, '11 99220-1612', 'Claro-Claro', '25/10/2017', '14:13:40', 'São Paulo - São Paulo (11)', '11991519577', '00:17:00', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(351, '11 99220-1612', 'Claro-Fixo', '25/10/2017', '14:47:52', 'São Paulo - Sao Paulo', '1134659666', '00:02:42', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(352, '11 99220-1612', 'Claro-Outras Op.', '25/10/2017', '15:18:56', 'São Paulo - São Paulo (11)', '11998992026', '00:06:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(353, '11 99220-1612', 'Claro-Fixo', '25/10/2017', '16:18:45', 'São Paulo - Sao Paulo', '1140024099', '00:09:36', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(354, '11 99220-1612', 'Claro-Claro', '25/10/2017', '16:55:31', 'São Paulo - São Paulo (11)', '11991519577', '00:01:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(355, '11 99220-1612', 'Claro-Fixo', '25/10/2017', '18:08:46', 'São Paulo - Sao Paulo', '1140024099', '00:10:24', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(356, '11 99220-1612', 'Claro-Fixo', '25/10/2017', '18:22:57', 'São Paulo - Sao Paulo', '1133376786', '00:09:18', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(357, '11 99220-1612', 'Internet (MB)', '26/10/2017', '00:10:41', '', '', '66,489257', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(358, '11 99220-1612', 'Internet (MB)', '26/10/2017', '08:26:58', '', '', '14,608398', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(359, '11 99220-1612', 'Int. Nacional', '26/10/2017', '09:01:22', 'São Paulo - Curitiba', '4132502590', '00:00:54', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Curitiba', '00011'),
(360, '11 99220-1612', 'Int. Nacional', '26/10/2017', '09:03:06', 'São Paulo - Curitiba', '4132502590', '00:35:00', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Curitiba', '00011'),
(361, '11 99220-1612', 'Claro-Outras Op.', '26/10/2017', '09:38:38', 'São Paulo - São Paulo (11)', '11964240111', '00:01:00', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(362, '11 99220-1612', 'Int. Nacional', '26/10/2017', '09:40:50', 'São Paulo - Lages', '4932260057', '00:04:36', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Lages', '00011'),
(363, '11 99220-1612', 'Int. Nacional', '26/10/2017', '09:46:10', 'São Paulo - Curitiba', '4130197787', '00:06:18', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Curitiba', '00011'),
(364, '11 99220-1612', 'Int. Nacional', '26/10/2017', '09:53:09', 'São Paulo - Sao Jose Dos Pinhais', '4132998578', '00:00:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Sao Jose Do', '00011'),
(365, '11 99220-1612', 'Claro-Fixo', '26/10/2017', '11:47:22', 'São Paulo - Sao Paulo', '1130037727', '00:06:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(366, '11 99220-1612', 'Claro-Fixo', '26/10/2017', '12:29:16', 'São Paulo - Sao Paulo', '1127888239', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(367, '11 99220-1612', 'Claro-Outras Op.', '26/10/2017', '12:30:37', 'São Paulo - São Paulo (11)', '11964240111', '00:01:00', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(368, '11 99220-1612', 'Claro-Outras Op.', '26/10/2017', '12:45:55', 'São Paulo - São Paulo (11)', '11964240111', '00:00:36', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(369, '11 99220-1612', 'Claro-Outras Op.', '26/10/2017', '12:53:49', 'São Paulo - São Paulo (11)', '11964240111', '00:00:42', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(370, '11 99220-1612', 'Int. Nacional', '26/10/2017', '16:00:27', 'São Paulo - Itapoa', '4734438503', '00:00:42', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Itapoa', '00011'),
(371, '11 99220-1612', 'Int. Nacional', '26/10/2017', '16:25:24', 'São Paulo - Itapoa', '4734438503', '00:01:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Itapoa', '00011'),
(372, '11 99220-1612', 'Int. Nacional', '26/10/2017', '18:40:24', 'São Paulo - Curitiba', '4130197787', '00:13:54', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Curitiba', '00011'),
(373, '11 99220-1612', 'Claro-Claro', '26/10/2017', '18:55:06', 'São Paulo - São Paulo (11)', '11991519577', '00:05:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(374, '11 99220-1612', 'Int. Nacional', '26/10/2017', '19:08:28', 'São Paulo - Curitiba', '4130197787', '00:02:42', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Curitiba', '00011'),
(375, '11 99220-1612', 'Internet (MB)', '27/10/2017', '00:09:28', '', '', '42,060546', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(376, '11 99220-1612', 'Internet (MB)', '27/10/2017', '00:09:35', '', '', '33,661132', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(377, '11 99220-1612', 'Claro-Outras Op.', '27/10/2017', '15:37:10', 'São Paulo - São Paulo (11)', '11981537545', '00:00:54', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(378, '11 99220-1612', 'Claro-Outras Op.', '27/10/2017', '16:28:01', 'São Paulo - São Paulo (11)', '11964240111', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(379, '11 99220-1612', 'Claro-Outras Op.', '27/10/2017', '16:55:37', 'São Paulo - São Paulo (11)', '11964240111', '00:00:42', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(380, '11 99220-1612', 'Int. Nacional', '27/10/2017', '16:57:04', 'São Paulo - Rio Negrinho', '4736462282', '00:00:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Rio Negrinh', '00011'),
(381, '11 99220-1612', 'Torpedos', '27/10/2017', '17:35:16', '', '11983831456', '1', '0,10', ',1', ',1', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Torpedo - Outras Operadoras', '', '', '', '00011'),
(382, '11 99220-1612', 'Claro-Outras Op.', '27/10/2017', '17:36:59', 'São Paulo - São Paulo (11)', '11964240111', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(383, '11 99220-1612', 'Claro-Outras Op.', '27/10/2017', '17:47:06', 'São Paulo - São Paulo (11)', '11964240111', '00:01:24', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(384, '11 99220-1612', 'Claro-Outras Op.', '27/10/2017', '18:08:40', 'São Paulo - São Paulo (11)', '11964240111', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(385, '11 99220-1612', 'Claro-Outras Op.', '27/10/2017', '18:19:07', 'São Paulo - São Paulo (11)', '11964240111', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(386, '11 99220-1612', 'Internet (MB)', '28/10/2017', '01:06:41', '', '', '2,615234', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(387, '11 99220-1612', 'Internet (MB)', '28/10/2017', '06:50:53', '', '', '31,384765', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(388, '11 99220-1612', 'Internet (MB)', '29/10/2017', '00:33:37', '', '', '2,186523', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(389, '11 99220-1612', 'Internet (MB)', '29/10/2017', '02:20:24', '', '', '2,575195', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(390, '11 99220-1612', 'Internet (MB)', '30/10/2017', '00:07:11', '', '', '23,736328', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(391, '11 99220-1612', 'Internet (MB)', '30/10/2017', '00:43:04', '', '', '44,509765', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(392, '11 99220-1612', 'Int. Nacional', '30/10/2017', '08:22:48', 'São Paulo - Paraná (41)', '41999850900', '00:07:12', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Paraná (41)', '00011'),
(393, '11 99220-1612', 'Claro-Outras Op.', '30/10/2017', '08:30:58', 'São Paulo - São Paulo (11)', '11961911843', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(394, '11 99220-1612', 'Int. Nacional', '30/10/2017', '11:44:52', 'São Paulo - Curitiba', '4130197787', '00:04:30', '0,00', '0', '0', '', '', '', 'Interurbanas e Rec. em viagem ', '', '', '', 'São Paulo', 'Curitiba', '00011'),
(395, '11 99220-1612', 'Claro-Outras Op.', '30/10/2017', '16:15:01', 'São Paulo - São Paulo (11)', '11995922093', '00:12:36', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(396, '11 99220-1612', 'Claro-Outras Op.', '30/10/2017', '17:58:56', 'São Paulo - São Paulo (11)', '11964240111', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(397, '11 99220-1612', 'Claro-Claro', '30/10/2017', '19:29:55', 'São Paulo - São Paulo (11)', '11991519577', '00:02:18', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(398, '11 99220-1612', 'Internet (MB)', '31/10/2017', '01:48:41', '', '', '39,077148', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(399, '11 99220-1612', 'Internet (MB)', '31/10/2017', '07:27:30', '', '', '10,246093', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(400, '11 99220-1612', 'Internet (MB)', '31/10/2017', '10:03:15', '', '', ',009765', '0,03', '0', '0', '', '', '', 'Serviços (Torpedos, Hits, Jogo', '', 'Navegação Web', '', '', '', '00011'),
(401, '11 99220-1612', 'Claro-Outras Op.', '31/10/2017', '10:43:17', 'São Paulo - São Paulo (11)', '11999374988', '00:03:24', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(402, '11 99220-1612', 'Claro-Outras Op.', '31/10/2017', '18:21:25', 'São Paulo - São Paulo (11)', '11964240111', '00:00:48', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(403, '11 99220-1612', 'Claro-Fixo', '31/10/2017', '18:27:20', 'São Paulo - Sao Paulo', '1140205790', '00:01:42', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(404, '11 99220-1612', 'Claro-Claro', '31/10/2017', '18:37:10', 'São Paulo - São Paulo (11)', '11991519577', '00:00:30', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(405, '11 99220-1612', 'Claro-Fixo', '31/10/2017', '18:37:48', 'São Paulo - Sao Paulo', '1140205790', '00:25:12', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(406, '11 99220-1612', 'Claro-Fixo', '01/11/2017', '09:02:51', 'São Paulo - Sao Paulo', '1140205790', '00:47:06', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011'),
(407, '11 99220-1612', 'Claro-Claro', '01/11/2017', '09:50:09', 'São Paulo - São Paulo (11)', '11991519577', '00:21:06', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'São Paulo (', '00011'),
(408, '11 99220-1612', 'Claro-Fixo', '01/11/2017', '10:35:02', 'São Paulo - Sao Paulo', '1140043535', '00:17:12', '0,00', '0', '0', '', '', '', 'Ligações Locais', '', '', '', 'São Paulo', 'Sao Paulo', '00011');

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
-- Table structure for table `tab_navbar`
--

CREATE TABLE `tab_navbar` (
  `id` int(11) NOT NULL,
  `nav_name` varchar(50) NOT NULL,
  `nav_icon` varchar(50) DEFAULT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_navbar`
--

INSERT INTO `tab_navbar` (`id`, `nav_name`, `nav_icon`, `area_id`) VALUES
(1, 'Atendimento TI', 'fa-laptop', 1),
(2, 'Atendimento Financeiro', 'fa-line-chart', 2),
(3, 'Atendimento Contabilidade', 'fa-bar-chart-o', 3),
(4, 'Atendimento GDP', 'fa-users', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tab_navbar_submenu`
--

CREATE TABLE `tab_navbar_submenu` (
  `id` int(11) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `sub_icon` varchar(50) DEFAULT NULL,
  `sub_url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_navbar_submenu`
--

INSERT INTO `tab_navbar_submenu` (`id`, `sub_name`, `sub_icon`, `sub_url`) VALUES
(1, 'Solicitar Atendimento', 'fa-circle-o text-aqua', '/call/open'),
(2, 'Atendimentos Pendentes', 'fa-circle-o text-red', '/call'),
(3, 'Atendimentos Finalizados', 'fa-circle-o text-green', '/call/finished'),
(4, 'Formulários', 'fa-circle-o text-yellow', '/call/form'),
(5, 'Contato', 'fa-circle-o', '/call/contact');

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
  `user_ocup` varchar(75) DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL,
  `user_profilepic` varchar(35) DEFAULT 'avatar5.png',
  `user_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab_users`
--

INSERT INTO `tab_users` (`id`, `user_name`, `user_email`, `user_passwd`, `user_phone`, `user_ocup`, `user_status`, `user_level`, `user_profilepic`, `user_date`) VALUES
(1, 'Gerson Arbigaus', 'gerson87@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 'Analista de TI', NULL, NULL, 'profile2.jpg', '2017-11-06 23:02:11'),
(2, 'Rafael Caçator', 'rafael.cacator@cotrasa.com.br', '202cb962ac59075b964b07152d234b70', NULL, 'Assistente de TI', NULL, NULL, 'avatar5.png', '2017-11-07 17:10:08'),
(4, 'Rafael Moresco', 'rafael.moresco@cotrasa.com.br', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, 'avatar5.png', '2017-11-09 16:13:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_area`
--
ALTER TABLE `tab_area`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tab_cells`
--
ALTER TABLE `tab_cells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_clients`
--
ALTER TABLE `tab_clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `tab_fatura`
--
ALTER TABLE `tab_fatura`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tab_navbar`
--
ALTER TABLE `tab_navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_navbar_submenu`
--
ALTER TABLE `tab_navbar_submenu`
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
-- AUTO_INCREMENT for table `tab_area`
--
ALTER TABLE `tab_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
-- AUTO_INCREMENT for table `tab_cells`
--
ALTER TABLE `tab_cells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `tab_clients`
--
ALTER TABLE `tab_clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tab_fatura`
--
ALTER TABLE `tab_fatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;
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
-- AUTO_INCREMENT for table `tab_navbar`
--
ALTER TABLE `tab_navbar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tab_navbar_submenu`
--
ALTER TABLE `tab_navbar_submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tab_users`
--
ALTER TABLE `tab_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
