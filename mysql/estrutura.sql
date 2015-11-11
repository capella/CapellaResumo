-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 10, 2015 at 06:01 PM
-- Server version: 5.5.37-35.1
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `capeocom_estudo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cr_2015_artigos`
--

CREATE TABLE IF NOT EXISTS `cr_2015_artigos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `idpai` int(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descri` varchar(1000) DEFAULT NULL,
  `texto` mediumtext,
  `unix` int(100) NOT NULL,
  `usoid` int(100) NOT NULL,
  `tipo_1_text_2_artigo` int(10) NOT NULL,
  `pequenonome` varchar(1000) NOT NULL,
  `imagem` int(2) NOT NULL,
  `manutencao` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titulo` (`titulo`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=770 ;

-- --------------------------------------------------------

--
-- Table structure for table `cr_2015_artigos_versao`
--

CREATE TABLE IF NOT EXISTS `cr_2015_artigos_versao` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `idpai` int(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descri` varchar(1000) DEFAULT NULL,
  `texto` mediumtext,
  `unix` int(100) NOT NULL,
  `usoid` int(100) NOT NULL,
  `tipo_1_text_2_artigo` int(10) NOT NULL,
  `pequenonome` varchar(1000) NOT NULL,
  `imagem` int(2) NOT NULL,
  `atualiza` int(100) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=769 ;

-- --------------------------------------------------------

--
-- Table structure for table `cr_2015_professores`
--

CREATE TABLE IF NOT EXISTS `cr_2015_professores` (
  `id` int(100) NOT NULL,
  `nomecompleto` varchar(100) DEFAULT NULL,
  `cep` varchar(100) DEFAULT NULL,
  `cpf` varchar(100) DEFAULT NULL,
  `datadenascimento` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `decricao` varchar(1000) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `habilitacao1` int(10) DEFAULT NULL,
  `habilitacao2` int(10) DEFAULT NULL,
  `universidade` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nivel` int(1) NOT NULL,
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cr_2015_user`
--

CREATE TABLE IF NOT EXISTS `cr_2015_user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `ativo` int(10) NOT NULL,
  `nivel` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cr_2015_users`
--

CREATE TABLE IF NOT EXISTS `cr_2015_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(70) DEFAULT NULL,
  `oauth_uid` varchar(200) DEFAULT NULL,
  `oauth_provider` varchar(200) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `twitter_oauth_token` varchar(200) DEFAULT NULL,
  `twitter_oauth_token_secret` varchar(200) DEFAULT NULL,
  `nivel` varchar(70) DEFAULT NULL,
  `sobre` varchar(10000) DEFAULT NULL,
  `DadosProf` varchar(1000) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

-- --------------------------------------------------------

--
-- Table structure for table `cr_2015_visitas`
--

CREATE TABLE IF NOT EXISTS `cr_2015_visitas` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `pageid` int(100) NOT NULL,
  `userip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71207 ;

-- --------------------------------------------------------

--
-- Table structure for table `cr_2013_authentications`
--

CREATE TABLE IF NOT EXISTS `cr_2013_authentications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'refer to users.id',
  `provider` varchar(100) NOT NULL,
  `provider_uid` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `display_name` varchar(150) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `profile_url` varchar(300) NOT NULL,
  `website_url` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_uid` (`provider_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cr_2013_users`
--

CREATE TABLE IF NOT EXISTS `cr_2013_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `tipo` int(11) NOT NULL,
  `descricao` varchar(1100) NOT NULL,
  `nivel` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
