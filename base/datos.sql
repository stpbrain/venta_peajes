-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-11-2017 a las 19:21:09
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `carreteras`
--

create database `carreteras`;
use `carreteras`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE IF NOT EXISTS `datos` (
  `id` bigint(255) NOT NULL,
  `rut` int(9) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `comprador` varchar(60) NOT NULL,
  `carretera` varchar(60) NOT NULL,
  `cantidad` bigint(99) NOT NULL,
  `opcion_de_pago` varchar(60) NOT NULL,
  `opcion_de_retiro` varchar(60) NOT NULL,
  `valor` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `rut`, `nombre`, `direccion`, `comprador`, `carretera`, `cantidad`, `opcion_de_pago`, `opcion_de_retiro`, `valor`) VALUES
(12, 159933687, 'seele company', 'las tejuelas 80', 'Patricio', 'Ruta 05 - Autopista Central - Santiago', 1, '', '', 0),
(13, 159933687, 'lala', 'lklkl34', 'patricio palominos', 'Ruta 05 - Autopista Central - Santiago', 1, '', '', 0),
(15, 159933687, 'lalo la lona', 'lala 45', 'lala lo lala', 'Autopista Central', 1, '', '', 2700),
(15, 159933687, 'ld', 'lk', 'lk', 'esta otra', 1, '', '', 3000),
(15, 159933687, 'lj', 'lkj', 'lkj', 'esta otra', 1, '', '', 100000),
(16, 222222222, 'prueba 1', 'lala', 'prueba 1', 'Autopista Central', 1, '', '', 2700),
(16, 222222222, 'lj2Ã±oj', 'Ã±n', 'Ã±j', 'Autopista Central', 1, '', '', 2700),
(16, 222222222, 'fe', 'ef', 'fe', 'Ruta del Maipo', 1, '', '', 3100),
(16, 222222222, 'dd', 'dd', 'dd', 'Ruta del Maipo', 1, '', '', 3100),
(17, 333333333, 'j', 'j', 'j', 'Autopista Central', 1, '', '', 2700),
(17, 333333333, 'e', 'e', 'e', 'Autopista Nororiente', 1, '', '', 2000),
(18, 444444444, 'e', 'e', 'e', 'Ruta del Maipo', 1, '', '', 3100),
(19, 555555555, 'ee', 'ee', 'ee', 'Ruta del Maipo', 1, '', '', 3100),
(20, 555555555, 'ff', 'ff', 'ff', 'Ruta del Maipo', 1, '', '', 3100),
(21, 444444444, 'ff', 'ff', 'ff', 'Ruta del Maipo', 1, '', '', 3100),
(22, 888888888, 'lalo', 'casa yo mi ', 'lila', 'Ruta del Maipo', 1, '', '', 3100),
(22, 888888888, 'jhj', 'hh', 'hh', 'Autopista Nororiente', 1, '', '', 2000),
(22, 888888888, 'd', 'd', 'd', 'Vespucio Norte', 1, '', '', 3000),
(22, 888888888, 'u', 'u', 'u', 'Autopista Nororiente', 1, '', '', 2000),
(22, 888888888, 't', 't', 't', 'Ruta del Maipo', 1, '', '', 3100),
(26, 159933687, 'pato', 'lala', 'pato p', 'Autopista Central', 1, '', '', 2700),
(26, 159933687, 'pato', 'ksk', 'sd', 'Costanera Norte', 1, '', '', 1100),
(26, 159933687, 's', 's', 's', 'Autopista Nororiente', 1, '', '', 2000),
(18, 333333333, 'sd', 'sd', 'sd', 'Autopista Nororiente', 1, '', '', 2000),
(30, 333333333, 'ef', 'ef', 'ef', 'Vespucio Norte', 1, '', '', 3000),
(32, 333333333, 'sd', 'sd', 'sd', 'Costanera Norte', 1, '', '', 1100),
(32, 333333333, 'sd', 'sd', 'sd', 'Costanera Norte', 1, '', '', 1100),
(32, 333333333, 'df', 'df', 'df', 'Costanera Norte', 1, '', '', 1100),
(32, 333333333, 'df', 'df', 'df', 'Ruta del Maipo', 1, '', '', 3100),
(32, 333333333, 'df', 'df', 'df', 'Vespucio Sur', 1, '', '', 2000),
(32, 333333333, 'df', 'df', 'df', 'Vespucio Sur', 1, '', '', 2000),
(32, 333333333, 'sd', 'sd', 'sd', 'Costanera Norte', 1, '', '', 1100),
(32, 333333333, 'sd', 'sd', 'sd', 'Costanera Norte', 1, '', '', 1100),
(32, 333333333, 'sd', 'sd', 'sd', 'Costanera Norte', 1, '', '', 1100),
(32, 333333333, 'sd', 'sd', 'sd', 'Costanera Norte', 1, '', '', 1100),
(34, 555555555, 'f', 'f', 'f', 'Ruta del Maipo', 1, '', '', 3100),
(35, 444444444, 'f', 'f', 'f', 'Ruta del Maipo', 1, '', '', 3100),
(36, 444444444, 'd', 'd', 'd', 'Ruta del Maipo', 1, '', '', 3100),
(39, 159933687, 'pato sa', 'mi casa', 'patricio', 'Autopista Central', 1, '', '', 2700),
(41, 159933687, 'Patricio', 'mi casa', 'Patricio', 'Ruta del Maipo', 1, '', '', 3100),
(41, 159933687, 'Patricio', 'mi casa', 'Patricio', 'Autopista Nororiente', 1, '', '', 2000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
