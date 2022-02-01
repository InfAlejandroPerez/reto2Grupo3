-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-02-2022 a las 16:52:39
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `euskalmet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `NombreEstacion` varchar(30) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `COmgm3` double DEFAULT NULL,
  `CO8hmgm3` double DEFAULT NULL,
  `NO2gm3` double DEFAULT NULL,
  `NO2ICA` varchar(50) DEFAULT NULL,
  `NOgm3` double DEFAULT NULL,
  `NOXgm3` double DEFAULT NULL,
  `PM10gm3` double DEFAULT NULL,
  `PM10ICA` varchar(50) DEFAULT NULL,
  `PM25gm3` double DEFAULT NULL,
  `PM25ICA` varchar(50) DEFAULT NULL,
  `SO2gm3` double DEFAULT NULL,
  `SO2ICA` varchar(50) DEFAULT NULL,
  `ICAEstacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`NombreEstacion`, `Fecha`, `Hora`, `COmgm3`, `CO8hmgm3`, `NO2gm3`, `NO2ICA`, `NOgm3`, `NOXgm3`, `PM10gm3`, `PM10ICA`, `PM25gm3`, `PM25ICA`, `SO2gm3`, `SO2ICA`, `ICAEstacion`) VALUES
('3 DE MARZO', '2021-12-31', '00:00:00', 0.76, 0.41, 45, 'Bueno / Ona', 45, 114, 13.85, 'Muy bueno / Oso ona', 11.35, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '05:00:00', NULL, NULL, NULL, 'Sin datos / Daturik gabe', NULL, NULL, 17.6, 'Muy bueno / Oso ona', 14.7, 'Bueno / Ona', NULL, 'Sin datos / Daturik gabe', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '06:00:00', NULL, NULL, NULL, 'Sin datos / Daturik gabe', NULL, NULL, 17.89, 'Muy bueno / Oso ona', 15, 'Bueno / Ona', NULL, 'Sin datos / Daturik gabe', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '07:00:00', 0.34, 0.37, 26, 'Muy bueno / Oso ona', 17, 52, 17.89, 'Muy bueno / Oso ona', 14.84, 'Bueno / Ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '08:00:00', 0.58, 0.39, 36, 'Muy bueno / Oso ona', 44, 104, 17.95, 'Muy bueno / Oso ona', 14.95, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '09:00:00', 0.57, 0.41, 36, 'Muy bueno / Oso ona', 58, 125, 17.47, 'Muy bueno / Oso ona', 15.11, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '10:00:00', 0.56, 0.39, 41, 'Bueno / Ona', 63, 138, 16.47, 'Muy bueno / Oso ona', 14.74, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '11:00:00', 0.36, 0.43, 39, 'Muy bueno / Oso ona', 53, 120, 15.68, 'Muy bueno / Oso ona', 14.05, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '12:00:00', 0.08, 0.39, 41, 'Bueno / Ona', 40, 102, 14.47, 'Muy bueno / Oso ona', 13.05, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '13:00:00', -0.07, 0.4, 27, 'Muy bueno / Oso ona', 11, 43, 13.37, 'Muy bueno / Oso ona', 11.95, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '14:00:00', NULL, 0.41, 13, 'Muy bueno / Oso ona', 3, 17, 12.79, 'Muy bueno / Oso ona', 11.21, 'Bueno / Ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '15:00:00', NULL, NULL, 15, 'Muy bueno / Oso ona', 4, 21, 12.89, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('3 DE MARZO', '2021-12-31', '16:00:00', 0.02, NULL, 15, 'Muy bueno / Oso ona', 2, 18, 13.11, 'Muy bueno / Oso ona', 11, 'Bueno / Ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '17:00:00', 0.13, NULL, 17, 'Muy bueno / Oso ona', 1, 19, 13, 'Muy bueno / Oso ona', 11.11, 'Bueno / Ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '18:00:00', 0.22, NULL, 29, 'Muy bueno / Oso ona', 4, 35, 13, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('3 DE MARZO', '2021-12-31', '19:00:00', 0.35, NULL, 48, 'Bueno / Ona', 25, 86, 13, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '20:00:00', 0.51, NULL, 67, 'Bueno / Ona', 58, 155, 13.11, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '21:00:00', 0.75, 0.26, 70, 'Bueno / Ona', 99, 222, 13, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', 5, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '22:00:00', 0.65, 0.32, 52, 'Bueno / Ona', 42, 116, 12.79, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2021-12-31', '23:00:00', 0.61, 0.36, 50, 'Bueno / Ona', 35, 103, 13.15, 'Muy bueno / Oso ona', 11.05, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('3 DE MARZO', '2022-01-04', '05:16:41', 1, 1, 1, '1', 1, 1, 1, '1', 1, '1', 1, '', 'Bastante nais'),
('ABANTO', '2021-12-31', '00:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, 5.08, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '05:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 0, 3, 5.91, 'Muy bueno / Oso ona', NULL, NULL, 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '06:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 0, 4, 5.87, 'Muy bueno / Oso ona', NULL, NULL, 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '07:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 0, 6, 5.83, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '08:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 1, 11, 5.65, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '09:00:00', NULL, NULL, 16, 'Muy bueno / Oso ona', 1, 17, 5.52, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '10:00:00', NULL, NULL, 18, 'Muy bueno / Oso ona', 4, 23, 5.3, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '11:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 2, 9, 4.74, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '12:00:00', NULL, NULL, 11, 'Muy bueno / Oso ona', 3, 15, 4.22, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '13:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 1, 8, 4.25, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '14:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, 4.13, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '15:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, 4.21, 'Muy bueno / Oso ona', NULL, NULL, 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '16:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, 4.25, 'Muy bueno / Oso ona', NULL, NULL, 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '17:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, 4.29, 'Muy bueno / Oso ona', NULL, NULL, 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '18:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 3, 4.21, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '19:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, 4.25, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '20:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 2, 4.46, 'Muy bueno / Oso ona', NULL, NULL, 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '21:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, 4.71, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '22:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 4.79, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ABANTO', '2021-12-31', '23:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 4.92, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '00:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 1, 8, 10.04, 'Muy bueno / Oso ona', 7.92, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '05:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 4, 18, 10.25, 'Muy bueno / Oso ona', 8.25, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '06:00:00', NULL, NULL, 17, 'Muy bueno / Oso ona', 3, 21, 10.33, 'Muy bueno / Oso ona', 8.42, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '07:00:00', NULL, NULL, 20, 'Muy bueno / Oso ona', 6, 29, 10.25, 'Muy bueno / Oso ona', 8.67, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '08:00:00', NULL, NULL, 24, 'Muy bueno / Oso ona', 13, 44, 10.21, 'Muy bueno / Oso ona', 8.88, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '09:00:00', NULL, NULL, 27, 'Muy bueno / Oso ona', 37, 83, 10.25, 'Muy bueno / Oso ona', 9.08, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '10:00:00', NULL, NULL, 34, 'Muy bueno / Oso ona', 47, 106, 10.5, 'Muy bueno / Oso ona', 9.38, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '11:00:00', NULL, NULL, 24, 'Muy bueno / Oso ona', 30, 70, 10.88, 'Muy bueno / Oso ona', 9.63, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '12:00:00', NULL, NULL, 28, 'Muy bueno / Oso ona', 24, 65, 11, 'Muy bueno / Oso ona', 9.63, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '13:00:00', NULL, NULL, 24, 'Muy bueno / Oso ona', 15, 47, 10.88, 'Muy bueno / Oso ona', 9.46, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '14:00:00', NULL, NULL, 20, 'Muy bueno / Oso ona', 15, 42, 10.79, 'Muy bueno / Oso ona', 9.13, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '15:00:00', NULL, NULL, 14, 'Muy bueno / Oso ona', 4, 21, 10.54, 'Muy bueno / Oso ona', 8.83, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '16:00:00', NULL, NULL, 19, 'Muy bueno / Oso ona', 7, 30, 10.54, 'Muy bueno / Oso ona', 8.63, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '17:00:00', NULL, NULL, 22, 'Muy bueno / Oso ona', 7, 32, 10.38, 'Muy bueno / Oso ona', 8.54, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '18:00:00', NULL, NULL, 36, 'Muy bueno / Oso ona', 15, 59, 10.33, 'Muy bueno / Oso ona', 8.46, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '19:00:00', NULL, NULL, 30, 'Muy bueno / Oso ona', 14, 51, 10.17, 'Muy bueno / Oso ona', 8.42, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '20:00:00', NULL, NULL, 25, 'Muy bueno / Oso ona', 7, 35, 10, 'Muy bueno / Oso ona', 8.33, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '21:00:00', NULL, NULL, 20, 'Muy bueno / Oso ona', 5, 28, 10.04, 'Muy bueno / Oso ona', 8.25, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '22:00:00', NULL, NULL, 11, 'Muy bueno / Oso ona', 4, 17, 10, 'Muy bueno / Oso ona', 8.25, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AGURAIN', '2021-12-31', '23:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 6, 9.75, 'Muy bueno / Oso ona', 8.21, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '00:00:00', 0.22, 0.22, 4, 'Muy bueno / Oso ona', 6, 13, 7.71, 'Muy bueno / Oso ona', 3.46, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '05:00:00', 0.1, 0.17, 5, 'Muy bueno / Oso ona', 9, 19, 5.67, 'Muy bueno / Oso ona', 2.42, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '06:00:00', 0.11, 0.16, 8, 'Muy bueno / Oso ona', 10, 22, 5.63, 'Muy bueno / Oso ona', 2.5, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '07:00:00', 0.13, 0.15, 11, 'Muy bueno / Oso ona', 10, 25, 5.71, 'Muy bueno / Oso ona', 2.46, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '08:00:00', 0.14, 0.14, 17, 'Muy bueno / Oso ona', 9, 31, 5.71, 'Muy bueno / Oso ona', 2.46, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '09:00:00', 0.16, 0.13, 22, 'Muy bueno / Oso ona', 10, 37, 5.54, 'Muy bueno / Oso ona', 2.46, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '10:00:00', 0.14, 0.13, 15, 'Muy bueno / Oso ona', 11, 32, 5.54, 'Muy bueno / Oso ona', 2.46, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '11:00:00', 0.13, 0.13, 14, 'Muy bueno / Oso ona', 12, 33, 5.54, 'Muy bueno / Oso ona', 2.46, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '12:00:00', 0.09, 0.13, 10, 'Muy bueno / Oso ona', 12, 28, 5.54, 'Muy bueno / Oso ona', 2.42, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '13:00:00', 0.09, 0.13, 10, 'Muy bueno / Oso ona', 14, 32, 5.46, 'Muy bueno / Oso ona', 2.42, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '14:00:00', 0.06, 0.12, 7, 'Muy bueno / Oso ona', 16, 30, 5.67, 'Muy bueno / Oso ona', 2.38, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '15:00:00', 0.07, 0.11, 6, 'Muy bueno / Oso ona', 17, 32, 5.83, 'Muy bueno / Oso ona', 2.38, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '16:00:00', 0.13, 0.11, 6, 'Muy bueno / Oso ona', 16, 31, 6.08, 'Muy bueno / Oso ona', 2.58, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '17:00:00', 0.15, 0.11, 7, 'Muy bueno / Oso ona', 13, 27, 6.33, 'Muy bueno / Oso ona', 2.63, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '18:00:00', 0.19, 0.11, 7, 'Muy bueno / Oso ona', 10, 22, 6.42, 'Muy bueno / Oso ona', 2.79, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '19:00:00', 0.27, 0.12, 12, 'Muy bueno / Oso ona', 8, 24, 6.5, 'Muy bueno / Oso ona', 2.83, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '20:00:00', 0.24, 0.14, 7, 'Muy bueno / Oso ona', 7, 17, 6.63, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '21:00:00', 0.24, 0.16, 6, 'Muy bueno / Oso ona', 6, 16, 6.92, 'Muy bueno / Oso ona', 3.21, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '22:00:00', 0.24, 0.18, 5, 'Muy bueno / Oso ona', 6, 14, 7.21, 'Muy bueno / Oso ona', 3.42, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALGORTA (BBIZI2)', '2021-12-31', '23:00:00', 0.23, 0.2, 3, 'Muy bueno / Oso ona', 6, 13, 7.46, 'Muy bueno / Oso ona', 3.46, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '00:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, 4.96, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '05:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 3, 4.17, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '06:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 1, 4, 4.29, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '07:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 1, 4, 4.38, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '08:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 1, 7, 4.38, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '09:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 1, 8, 4.29, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '10:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 1, 8, 4.29, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '11:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 6, 4.29, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '12:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 6, 4.29, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '13:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 6, 4.21, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '14:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 1, 5, 4.17, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '15:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 1, 4, 4.21, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '16:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 1, 4, 4.29, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '17:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 6, 4.38, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '18:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 1, 7, 4.58, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '19:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 1, 6, 4.71, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '20:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 6, 4.79, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '21:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 1, 4, 4.75, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '22:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 3, 4.79, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ALONSOTEGI', '2021-12-31', '23:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 2, 4.92, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '00:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 0, 10, 8.13, 'Muy bueno / Oso ona', 5.79, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '05:00:00', NULL, NULL, 13, 'Muy bueno / Oso ona', 1, 14, 7.92, 'Muy bueno / Oso ona', 6.21, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '06:00:00', NULL, NULL, 17, 'Muy bueno / Oso ona', 1, 19, 7.5, 'Muy bueno / Oso ona', 5.92, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '07:00:00', NULL, NULL, 28, 'Muy bueno / Oso ona', 4, 34, 7.08, 'Muy bueno / Oso ona', 5.63, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '08:00:00', NULL, NULL, 35, 'Muy bueno / Oso ona', 9, 48, 6.75, 'Muy bueno / Oso ona', 5.38, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '09:00:00', NULL, NULL, 31, 'Muy bueno / Oso ona', 12, 49, 6.42, 'Muy bueno / Oso ona', 5.08, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '10:00:00', NULL, NULL, 29, 'Muy bueno / Oso ona', 12, 46, 6.04, 'Muy bueno / Oso ona', 4.79, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '11:00:00', NULL, NULL, 29, 'Muy bueno / Oso ona', 17, 55, 5.83, 'Muy bueno / Oso ona', 4.54, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '12:00:00', NULL, NULL, 32, 'Muy bueno / Oso ona', 18, 60, 5.67, 'Muy bueno / Oso ona', 4.38, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '13:00:00', NULL, NULL, 31, 'Muy bueno / Oso ona', 11, 49, 5.58, 'Muy bueno / Oso ona', 4.25, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '14:00:00', NULL, NULL, 19, 'Muy bueno / Oso ona', 5, 27, 5.46, 'Muy bueno / Oso ona', 4.25, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '15:00:00', NULL, NULL, 20, 'Muy bueno / Oso ona', 4, 26, 5.38, 'Muy bueno / Oso ona', 4.25, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '16:00:00', NULL, NULL, 27, 'Muy bueno / Oso ona', 4, 32, 5.42, 'Muy bueno / Oso ona', 4.25, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '17:00:00', NULL, NULL, 37, 'Muy bueno / Oso ona', 7, 46, 5.58, 'Muy bueno / Oso ona', 4.38, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '18:00:00', NULL, NULL, 45, 'Bueno / Ona', 10, 60, 5.92, 'Muy bueno / Oso ona', 4.54, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('ANDOAIN', '2021-12-31', '19:00:00', NULL, NULL, 50, 'Bueno / Ona', 16, 74, 6.38, 'Muy bueno / Oso ona', 4.75, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('ANDOAIN', '2021-12-31', '20:00:00', NULL, NULL, 41, 'Bueno / Ona', 5, 49, 6.83, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('ANDOAIN', '2021-12-31', '21:00:00', NULL, NULL, 35, 'Muy bueno / Oso ona', 4, 41, 7.25, 'Muy bueno / Oso ona', 5.21, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '22:00:00', NULL, NULL, 17, 'Muy bueno / Oso ona', 1, 18, 7.67, 'Muy bueno / Oso ona', 5.46, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ANDOAIN', '2021-12-31', '23:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 0, 9, 8, 'Muy bueno / Oso ona', 5.63, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '00:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 7, 9.67, 'Muy bueno / Oso ona', 5.38, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '05:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, 6.17, 'Muy bueno / Oso ona', 3.83, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '06:00:00', NULL, NULL, 13, 'Muy bueno / Oso ona', 2, 17, 6.17, 'Muy bueno / Oso ona', 3.71, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '07:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 1, 11, 6, 'Muy bueno / Oso ona', 3.54, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '08:00:00', NULL, NULL, 25, 'Muy bueno / Oso ona', 6, 35, 6.08, 'Muy bueno / Oso ona', 3.46, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '09:00:00', NULL, NULL, 37, 'Muy bueno / Oso ona', 16, 62, 6.25, 'Muy bueno / Oso ona', 3.54, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '10:00:00', NULL, NULL, 28, 'Muy bueno / Oso ona', 18, 55, 6.63, 'Muy bueno / Oso ona', 3.67, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '11:00:00', NULL, NULL, 25, 'Muy bueno / Oso ona', 16, 49, 6.96, 'Muy bueno / Oso ona', 3.71, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '12:00:00', NULL, NULL, 26, 'Muy bueno / Oso ona', 11, 44, 7.04, 'Muy bueno / Oso ona', 3.67, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '13:00:00', NULL, NULL, 17, 'Muy bueno / Oso ona', 5, 24, 7.04, 'Muy bueno / Oso ona', 3.67, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '14:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 1, 14, 7, 'Muy bueno / Oso ona', 3.63, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '15:00:00', NULL, NULL, 16, 'Muy bueno / Oso ona', 1, 19, 7, 'Muy bueno / Oso ona', 3.63, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '16:00:00', NULL, NULL, 32, 'Muy bueno / Oso ona', 7, 43, 6.17, 'Muy bueno / Oso ona', 3.46, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '17:00:00', NULL, NULL, 44, 'Bueno / Ona', 33, 95, 6.63, 'Muy bueno / Oso ona', 3.58, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AÑORGA', '2021-12-31', '18:00:00', NULL, NULL, 47, 'Bueno / Ona', 30, 92, 8.04, 'Muy bueno / Oso ona', 3.83, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AÑORGA', '2021-12-31', '19:00:00', NULL, NULL, 58, 'Bueno / Ona', 29, 102, 8.25, 'Muy bueno / Oso ona', 4.04, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AÑORGA', '2021-12-31', '20:00:00', NULL, NULL, 55, 'Bueno / Ona', 13, 74, 8.58, 'Muy bueno / Oso ona', 4.42, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AÑORGA', '2021-12-31', '21:00:00', NULL, NULL, 44, 'Bueno / Ona', 5, 51, 8.88, 'Muy bueno / Oso ona', 4.71, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AÑORGA', '2021-12-31', '22:00:00', NULL, NULL, 30, 'Muy bueno / Oso ona', 2, 33, 9.17, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AÑORGA', '2021-12-31', '23:00:00', NULL, NULL, 18, 'Muy bueno / Oso ona', 1, 20, 9.42, 'Muy bueno / Oso ona', 5.17, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '00:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 3.71, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '05:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 2.67, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '06:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 5, 2.67, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '07:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 2.71, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '08:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 5, 2.75, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '09:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 2.75, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '10:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 3, 5, 2.75, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '11:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 3, 5, 2.75, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '12:00:00', NULL, NULL, NULL, 'Sin datos / Daturik gabe', NULL, NULL, 2.78, 'Muy bueno / Oso ona', NULL, NULL, NULL, 'Sin datos / Daturik gabe', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '13:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 2.78, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '14:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 2.78, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '15:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 3, 2.83, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '16:00:00', NULL, NULL, NULL, 'Sin datos / Daturik gabe', NULL, NULL, 2.86, 'Muy bueno / Oso ona', NULL, NULL, NULL, 'Sin datos / Daturik gabe', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '17:00:00', NULL, NULL, NULL, 'Sin datos / Daturik gabe', NULL, NULL, 2.86, 'Muy bueno / Oso ona', NULL, NULL, NULL, 'Sin datos / Daturik gabe', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '18:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 2.95, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '19:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 3.1, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '20:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 3.24, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '21:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 3.33, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '22:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 3.43, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ARRAIZ (Monte)', '2021-12-31', '23:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 3.57, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ATEGORRIETA', '2021-12-31', '00:00:00', 0.9, 0.96, 46, 'Bueno / Ona', 29, 90, 21.75, 'Bueno / Ona', 11.92, 'Bueno / Ona', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '05:00:00', 0.47, 0.52, 18, 'Muy bueno / Oso ona', 3, 23, 24.42, 'Bueno / Ona', NULL, 'Sin datos / Daturik gabe', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '06:00:00', 0.49, 0.5, 30, 'Muy bueno / Oso ona', 8, 42, 24.21, 'Bueno / Ona', NULL, 'Sin datos / Daturik gabe', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '07:00:00', 0.5, 0.49, 27, 'Muy bueno / Oso ona', 9, 41, 23.88, 'Bueno / Ona', NULL, 'Sin datos / Daturik gabe', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '08:00:00', 0.69, 0.5, 41, 'Bueno / Ona', 32, 89, 23.5, 'Bueno / Ona', 10, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '09:00:00', 0.8, 0.53, 53, 'Bueno / Ona', 74, 167, NULL, 'Sin datos / Daturik gabe', 9.67, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '10:00:00', 0.92, 0.57, 56, 'Bueno / Ona', 80, 179, 18.17, 'Muy bueno / Oso ona', 9.67, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '11:00:00', 1.07, 0.63, 57, 'Bueno / Ona', 75, 172, 18.58, 'Muy bueno / Oso ona', 9.88, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '12:00:00', 0.95, 0.71, 57, 'Bueno / Ona', 65, 156, 19, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '13:00:00', 0.94, 0.77, 57, 'Bueno / Ona', 46, 127, 19.46, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '14:00:00', 0.77, 0.81, 46, 'Bueno / Ona', 28, 89, 19.46, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '15:00:00', 0.68, 0.84, 29, 'Muy bueno / Oso ona', 14, 51, 19.42, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', NULL, NULL, 'Muy bueno / Oso ona'),
('ATEGORRIETA', '2021-12-31', '16:00:00', 0.68, 0.86, 30, 'Muy bueno / Oso ona', 11, 46, 19.17, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', NULL, NULL, 'Muy bueno / Oso ona'),
('ATEGORRIETA', '2021-12-31', '17:00:00', 0.82, 0.85, 39, 'Muy bueno / Oso ona', 22, 73, 17.96, 'Muy bueno / Oso ona', 9.5, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('ATEGORRIETA', '2021-12-31', '18:00:00', 0.98, 0.86, 55, 'Bueno / Ona', 39, 115, 16.79, 'Muy bueno / Oso ona', 9, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '19:00:00', 1.14, 0.87, 57, 'Bueno / Ona', 67, 160, 16.04, 'Muy bueno / Oso ona', 8.79, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '20:00:00', 1.06, 0.87, 54, 'Bueno / Ona', 58, 143, 16.38, 'Muy bueno / Oso ona', 8.92, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '21:00:00', 1.13, 0.9, 53, 'Bueno / Ona', 43, 118, 17.25, 'Muy bueno / Oso ona', 9.42, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('ATEGORRIETA', '2021-12-31', '22:00:00', 0.85, 0.92, 39, 'Muy bueno / Oso ona', 18, 67, 17.67, 'Muy bueno / Oso ona', 9.96, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('ATEGORRIETA', '2021-12-31', '23:00:00', 0.71, 0.92, 38, 'Muy bueno / Oso ona', 12, 56, 18.21, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', NULL, NULL, 'Muy bueno / Oso ona'),
('AV. GASTEIZ', '2021-12-31', '00:00:00', 0.25, 0.41, 28, 'Muy bueno / Oso ona', 7, 38, 15.17, 'Muy bueno / Oso ona', 9.17, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AV. GASTEIZ', '2021-12-31', '05:00:00', 0.21, 0.28, 24, 'Muy bueno / Oso ona', 7, 34, 15.29, 'Muy bueno / Oso ona', 8.96, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AV. GASTEIZ', '2021-12-31', '06:00:00', 0.24, 0.23, 27, 'Muy bueno / Oso ona', 15, 50, 15.54, 'Muy bueno / Oso ona', 9, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AV. GASTEIZ', '2021-12-31', '07:00:00', 0.21, 0.22, 28, 'Muy bueno / Oso ona', 11, 45, 15.58, 'Muy bueno / Oso ona', 9.17, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AV. GASTEIZ', '2021-12-31', '08:00:00', 0.34, 0.23, 36, 'Muy bueno / Oso ona', 45, 106, 15.79, 'Muy bueno / Oso ona', 9.25, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AV. GASTEIZ', '2021-12-31', '09:00:00', 0.49, 0.25, 46, 'Bueno / Ona', 102, 203, 15.67, 'Muy bueno / Oso ona', 9.29, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AV. GASTEIZ', '2021-12-31', '10:00:00', 0.46, 0.28, 49, 'Bueno / Ona', 94, 193, 14.71, 'Muy bueno / Oso ona', 9.13, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AV. GASTEIZ', '2021-12-31', '11:00:00', 0.49, 0.33, 51, 'Bueno / Ona', 84, 180, 13.38, 'Muy bueno / Oso ona', 8.54, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AV. GASTEIZ', '2021-12-31', '12:00:00', 0.37, 0.35, 47, 'Bueno / Ona', 51, 125, 12.33, 'Muy bueno / Oso ona', 7.83, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AV. GASTEIZ', '2021-12-31', '13:00:00', 0.2, 0.35, 20, 'Muy bueno / Oso ona', 6, 29, 11.92, 'Muy bueno / Oso ona', 7.08, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AV. GASTEIZ', '2021-12-31', '14:00:00', 0.16, 0.34, 10, 'Muy bueno / Oso ona', 2, 13, 11.71, 'Muy bueno / Oso ona', 6.29, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AV. GASTEIZ', '2021-12-31', '15:00:00', 0.13, 0.33, 9, 'Muy bueno / Oso ona', 2, 11, 11.63, 'Muy bueno / Oso ona', 5.75, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AV. GASTEIZ', '2021-12-31', '16:00:00', 0.13, 0.31, 10, 'Muy bueno / Oso ona', 1, 12, 11.71, 'Muy bueno / Oso ona', 5.54, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AV. GASTEIZ', '2021-12-31', '17:00:00', 0.14, 0.27, 12, 'Muy bueno / Oso ona', 1, 14, 11.75, 'Muy bueno / Oso ona', 5.63, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AV. GASTEIZ', '2021-12-31', '18:00:00', 0.2, 0.24, 34, 'Muy bueno / Oso ona', 10, 48, 11.83, 'Muy bueno / Oso ona', 5.83, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AV. GASTEIZ', '2021-12-31', '19:00:00', 0.53, 0.22, 73, 'Bueno / Ona', 103, 230, 11.83, 'Muy bueno / Oso ona', 6.08, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AV. GASTEIZ', '2021-12-31', '20:00:00', 0.64, 0.26, 77, 'Bueno / Ona', 141, 292, 12.54, 'Muy bueno / Oso ona', 6.58, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AV. GASTEIZ', '2021-12-31', '21:00:00', 0.77, 0.32, 78, 'Bueno / Ona', 150, 307, 13.67, 'Muy bueno / Oso ona', 7.33, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AV. GASTEIZ', '2021-12-31', '22:00:00', 0.43, 0.37, 54, 'Bueno / Ona', 40, 115, 14.67, 'Muy bueno / Oso ona', 8.17, 'Muy bueno / Oso ona', NULL, NULL, 'Bueno / Ona'),
('AV. GASTEIZ', '2021-12-31', '23:00:00', 0.27, 0.39, 36, 'Muy bueno / Oso ona', 6, 45, 14.83, 'Muy bueno / Oso ona', 8.67, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('AVDA. TOLOSA', '2021-12-31', '00:00:00', NULL, NULL, 10, 'Muy bueno / Oso ona', 1, 11, 14.21, 'Muy bueno / Oso ona', 9.21, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('AVDA. TOLOSA', '2021-12-31', '05:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 0, 7, 9.92, 'Muy bueno / Oso ona', 5.63, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('AVDA. TOLOSA', '2021-12-31', '06:00:00', NULL, NULL, 14, 'Muy bueno / Oso ona', 1, 16, 9.92, 'Muy bueno / Oso ona', 5.63, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('AVDA. TOLOSA', '2021-12-31', '07:00:00', NULL, NULL, 41, 'Bueno / Ona', 18, 68, 9.71, 'Muy bueno / Oso ona', 5.63, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('AVDA. TOLOSA', '2021-12-31', '08:00:00', NULL, NULL, 50, 'Bueno / Ona', 17, 75, 9.63, 'Muy bueno / Oso ona', 5.54, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('AVDA. TOLOSA', '2021-12-31', '09:00:00', NULL, NULL, 49, 'Bueno / Ona', 57, 136, 9.79, 'Muy bueno / Oso ona', 5.54, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('AVDA. TOLOSA', '2021-12-31', '10:00:00', NULL, NULL, 55, 'Bueno / Ona', 81, 179, 9.58, 'Muy bueno / Oso ona', 5.54, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('AVDA. TOLOSA', '2021-12-31', '11:00:00', NULL, NULL, 71, 'Bueno / Ona', 117, 250, 9.79, 'Muy bueno / Oso ona', 5.67, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('AVDA. TOLOSA', '2021-12-31', '12:00:00', NULL, NULL, 63, 'Bueno / Ona', 60, 154, 10.67, 'Muy bueno / Oso ona', 5.88, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('AVDA. TOLOSA', '2021-12-31', '13:00:00', NULL, NULL, 47, 'Bueno / Ona', 28, 89, 11.04, 'Muy bueno / Oso ona', 6.13, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('AVDA. TOLOSA', '2021-12-31', '14:00:00', NULL, NULL, 40, 'Muy bueno / Oso ona', 23, 75, 11.08, 'Muy bueno / Oso ona', 6.29, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('AVDA. TOLOSA', '2021-12-31', '15:00:00', NULL, NULL, 40, 'Muy bueno / Oso ona', 21, 72, 11.33, 'Muy bueno / Oso ona', 6.42, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('AVDA. TOLOSA', '2021-12-31', '16:00:00', NULL, NULL, 35, 'Muy bueno / Oso ona', 15, 58, 11.54, 'Muy bueno / Oso ona', 6.29, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('AVDA. TOLOSA', '2021-12-31', '17:00:00', NULL, NULL, 38, 'Muy bueno / Oso ona', 17, 64, 11.75, 'Muy bueno / Oso ona', 6.5, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('AVDA. TOLOSA', '2021-12-31', '18:00:00', NULL, NULL, 44, 'Bueno / Ona', 26, 84, 11.75, 'Muy bueno / Oso ona', 6.54, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('AVDA. TOLOSA', '2021-12-31', '19:00:00', NULL, NULL, 47, 'Bueno / Ona', 47, 117, 11.54, 'Muy bueno / Oso ona', 6.71, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('AVDA. TOLOSA', '2021-12-31', '20:00:00', NULL, NULL, 54, 'Bueno / Ona', 61, 147, 12.08, 'Muy bueno / Oso ona', 7.17, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('AVDA. TOLOSA', '2021-12-31', '21:00:00', NULL, NULL, 38, 'Muy bueno / Oso ona', 30, 84, 12.96, 'Muy bueno / Oso ona', 7.83, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('AVDA. TOLOSA', '2021-12-31', '22:00:00', NULL, NULL, 46, 'Bueno / Ona', 6, 55, 13.38, 'Muy bueno / Oso ona', 8.29, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('AVDA. TOLOSA', '2021-12-31', '23:00:00', NULL, NULL, 31, 'Muy bueno / Oso ona', 1, 32, 13.75, 'Muy bueno / Oso ona', 8.88, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('AZPEITIA', '2021-12-31', '00:00:00', NULL, NULL, 32, 'Muy bueno / Oso ona', 16, 57, 17.67, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('AZPEITIA', '2021-12-31', '05:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 5, 20, 16.08, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('AZPEITIA', '2021-12-31', '06:00:00', NULL, NULL, 21, 'Muy bueno / Oso ona', 9, 35, 16.17, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('AZPEITIA', '2021-12-31', '07:00:00', NULL, NULL, 30, 'Muy bueno / Oso ona', 28, 72, 16.29, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('AZPEITIA', '2021-12-31', '08:00:00', NULL, NULL, 36, 'Muy bueno / Oso ona', 56, 123, 16.38, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('AZPEITIA', '2021-12-31', '09:00:00', NULL, NULL, 48, 'Bueno / Ona', 84, 177, 16.46, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('AZPEITIA', '2021-12-31', '10:00:00', NULL, NULL, 56, 'Bueno / Ona', 87, 189, 16.63, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('AZPEITIA', '2021-12-31', '11:00:00', NULL, NULL, 56, 'Bueno / Ona', 81, 180, 16.83, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('AZPEITIA', '2021-12-31', '12:00:00', NULL, NULL, 50, 'Bueno / Ona', 62, 146, 17.08, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('AZPEITIA', '2021-12-31', '13:00:00', NULL, NULL, 23, 'Muy bueno / Oso ona', 13, 42, 16.92, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('AZPEITIA', '2021-12-31', '14:00:00', NULL, NULL, 21, 'Muy bueno / Oso ona', 10, 36, 16.75, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('AZPEITIA', '2021-12-31', '15:00:00', NULL, NULL, 17, 'Muy bueno / Oso ona', 7, 27, 16.29, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('AZPEITIA', '2021-12-31', '16:00:00', NULL, NULL, 33, 'Muy bueno / Oso ona', 18, 60, 16.17, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('AZPEITIA', '2021-12-31', '17:00:00', NULL, NULL, 49, 'Bueno / Ona', 47, 120, 16.33, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('AZPEITIA', '2021-12-31', '18:00:00', NULL, NULL, 51, 'Bueno / Ona', 57, 139, 16.17, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('AZPEITIA', '2021-12-31', '19:00:00', NULL, NULL, 48, 'Bueno / Ona', 46, 118, 16.25, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('AZPEITIA', '2021-12-31', '20:00:00', NULL, NULL, 44, 'Bueno / Ona', 33, 94, 16.21, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('AZPEITIA', '2021-12-31', '21:00:00', NULL, NULL, 41, 'Bueno / Ona', 26, 80, 16.54, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('AZPEITIA', '2021-12-31', '22:00:00', NULL, NULL, 38, 'Muy bueno / Oso ona', 13, 58, 17, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('AZPEITIA', '2021-12-31', '23:00:00', NULL, NULL, 31, 'Muy bueno / Oso ona', 7, 42, 17.13, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('BANDERAS (meteo)', '2021-12-31', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '05:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '06:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '09:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '13:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '14:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '15:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '17:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '18:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '19:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '21:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '22:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BANDERAS (meteo)', '2021-12-31', '23:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BARAKALDO', '2021-12-31', '00:00:00', 0.17, 0.17, 5, 'Muy bueno / Oso ona', 0, 6, 8.54, 'Muy bueno / Oso ona', 6.04, 'Muy bueno / Oso ona', 12, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '05:00:00', 0.13, 0.15, 3, 'Muy bueno / Oso ona', 0, 3, 6.75, 'Muy bueno / Oso ona', 4.29, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '06:00:00', 0.14, 0.15, 8, 'Muy bueno / Oso ona', 0, 8, 6.63, 'Muy bueno / Oso ona', 4.17, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '07:00:00', 0.14, 0.14, 8, 'Muy bueno / Oso ona', 0, 8, 6.54, 'Muy bueno / Oso ona', 4.08, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '08:00:00', 0.15, 0.14, 18, 'Muy bueno / Oso ona', 0, 18, 6.38, 'Muy bueno / Oso ona', 3.96, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '09:00:00', 0.17, 0.14, 30, 'Muy bueno / Oso ona', 2, 33, 6.25, 'Muy bueno / Oso ona', 3.96, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '10:00:00', 0.18, 0.15, 29, 'Muy bueno / Oso ona', 5, 36, 6.13, 'Muy bueno / Oso ona', 3.92, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '11:00:00', 0.21, 0.16, 31, 'Muy bueno / Oso ona', 8, 43, 5.96, 'Muy bueno / Oso ona', 3.88, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '12:00:00', 0.2, 0.16, 26, 'Muy bueno / Oso ona', 6, 35, 5.88, 'Muy bueno / Oso ona', 3.88, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '13:00:00', 0.18, 0.17, 11, 'Muy bueno / Oso ona', 2, 14, 5.83, 'Muy bueno / Oso ona', 3.88, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '14:00:00', 0.17, 0.17, 11, 'Muy bueno / Oso ona', 1, 12, 5.67, 'Muy bueno / Oso ona', 3.71, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '15:00:00', 0.2, 0.18, 10, 'Muy bueno / Oso ona', 1, 11, 5.71, 'Muy bueno / Oso ona', 3.75, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '16:00:00', 0.18, 0.19, 9, 'Muy bueno / Oso ona', 1, 10, 5.88, 'Muy bueno / Oso ona', 3.88, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '17:00:00', 0.17, 0.19, 5, 'Muy bueno / Oso ona', 0, 5, 5.92, 'Muy bueno / Oso ona', 3.92, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '18:00:00', 0.17, 0.18, 6, 'Muy bueno / Oso ona', 1, 7, 5.75, 'Muy bueno / Oso ona', 3.79, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '19:00:00', 0.16, 0.18, 4, 'Muy bueno / Oso ona', 0, 4, 6.17, 'Muy bueno / Oso ona', 4.21, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '20:00:00', 0.17, 0.18, 6, 'Muy bueno / Oso ona', 0, 6, 6.5, 'Muy bueno / Oso ona', 4.46, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '21:00:00', 0.17, 0.17, 3, 'Muy bueno / Oso ona', 0, 3, 6.92, 'Muy bueno / Oso ona', 4.75, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '22:00:00', 0.17, 0.17, NULL, 'Sin datos / Daturik gabe', 0, NULL, 7.25, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BARAKALDO', '2021-12-31', '23:00:00', 0.16, 0.17, NULL, 'Sin datos / Daturik gabe', 0, NULL, 7.29, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '00:00:00', NULL, NULL, 13, 'Muy bueno / Oso ona', 0, 13, 7.33, 'Muy bueno / Oso ona', NULL, NULL, 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '05:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 1, 12, 7.25, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '06:00:00', NULL, NULL, 13, 'Muy bueno / Oso ona', 1, 14, 7.17, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona');
INSERT INTO `datos` (`NombreEstacion`, `Fecha`, `Hora`, `COmgm3`, `CO8hmgm3`, `NO2gm3`, `NO2ICA`, `NOgm3`, `NOXgm3`, `PM10gm3`, `PM10ICA`, `PM25gm3`, `PM25ICA`, `SO2gm3`, `SO2ICA`, `ICAEstacion`) VALUES
('BASAURI', '2021-12-31', '07:00:00', NULL, NULL, 20, 'Muy bueno / Oso ona', 1, 21, 7.17, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '08:00:00', NULL, NULL, 23, 'Muy bueno / Oso ona', 1, 24, 7.17, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '09:00:00', NULL, NULL, 20, 'Muy bueno / Oso ona', 3, 24, 7.17, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '10:00:00', NULL, NULL, 18, 'Muy bueno / Oso ona', 5, 25, 7.08, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '11:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 2, 15, 7.08, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '12:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 2, 15, 7.08, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '13:00:00', NULL, NULL, 11, 'Muy bueno / Oso ona', 2, 13, 7.08, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '14:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 1, 9, 7.21, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '15:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 1, 8, 7.29, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '16:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 1, 9, 7.29, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '17:00:00', NULL, NULL, 18, 'Muy bueno / Oso ona', 1, 19, 7.38, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '18:00:00', NULL, NULL, 18, 'Muy bueno / Oso ona', 0, 18, 7.33, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '19:00:00', NULL, NULL, 20, 'Muy bueno / Oso ona', 0, 21, 7.04, 'Muy bueno / Oso ona', NULL, NULL, 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '20:00:00', NULL, NULL, 16, 'Muy bueno / Oso ona', 1, 16, 7.08, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '21:00:00', NULL, NULL, 15, 'Muy bueno / Oso ona', 0, 15, 6.96, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '22:00:00', NULL, NULL, 11, 'Muy bueno / Oso ona', 1, 11, 7.21, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BASAURI', '2021-12-31', '23:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 0, 8, 7.21, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('BEASAIN', '2021-12-31', '00:00:00', 0.22, 0.35, 24, 'Muy bueno / Oso ona', 6, 33, NULL, 'Sin datos / Daturik gabe', 11.58, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '05:00:00', 0.46, 0.54, 17, 'Muy bueno / Oso ona', 28, 60, 36.04, 'Regular / Erregularra', 22.71, 'Regular / Erregularra', 3, 'Muy bueno / Oso ona', 'Regular / Erregularra'),
('BEASAIN', '2021-12-31', '06:00:00', 0.35, 0.51, 20, 'Muy bueno / Oso ona', 29, 65, 34.88, 'Bueno / Ona', 21.63, 'Regular / Erregularra', 3, 'Muy bueno / Oso ona', 'Regular / Erregularra'),
('BEASAIN', '2021-12-31', '07:00:00', 0.45, 0.48, 20, 'Muy bueno / Oso ona', 34, 72, 32.21, 'Bueno / Ona', 19.5, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '08:00:00', 0.42, 0.45, 27, 'Muy bueno / Oso ona', 44, 95, 29.83, 'Bueno / Ona', 17.5, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '09:00:00', 0.3, 0.42, 30, 'Muy bueno / Oso ona', 54, 112, 28, 'Bueno / Ona', 15.88, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '10:00:00', 0.71, 0.4, 40, 'Muy bueno / Oso ona', 75, 155, 26.21, 'Bueno / Ona', 14.29, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '11:00:00', 0.53, 0.43, 37, 'Muy bueno / Oso ona', 50, 114, 24.75, 'Bueno / Ona', 13.25, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '12:00:00', 0.52, 0.44, 44, 'Bueno / Ona', 39, 104, 23.29, 'Bueno / Ona', 12.5, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '13:00:00', 0.56, 0.47, 37, 'Muy bueno / Oso ona', 24, 74, 22.71, 'Bueno / Ona', 12.42, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '14:00:00', 0.47, 0.48, 15, 'Muy bueno / Oso ona', 3, 20, 22.42, 'Bueno / Ona', 11.75, 'Bueno / Ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '15:00:00', 0.26, 0.49, 15, 'Muy bueno / Oso ona', 2, 18, 22.08, 'Bueno / Ona', 11.21, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '16:00:00', 0.24, 0.47, 23, 'Muy bueno / Oso ona', 4, 29, 21.54, 'Bueno / Ona', 11.25, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '17:00:00', 0.37, 0.44, 42, 'Bueno / Ona', 30, 89, 21.08, 'Bueno / Ona', 11.04, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '18:00:00', 0.41, 0.46, 59, 'Bueno / Ona', 74, 172, NULL, 'Sin datos / Daturik gabe', 11.08, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '19:00:00', 0.47, 0.43, 54, 'Bueno / Ona', 51, 133, 21, 'Bueno / Ona', 11.04, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '20:00:00', 0.38, 0.41, 41, 'Bueno / Ona', 18, 68, NULL, 'Sin datos / Daturik gabe', 11.08, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '21:00:00', 0.38, 0.39, 39, 'Muy bueno / Oso ona', 25, 77, NULL, 'Sin datos / Daturik gabe', 11.08, 'Bueno / Ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '22:00:00', 0.38, 0.37, 34, 'Muy bueno / Oso ona', 11, 50, NULL, 'Sin datos / Daturik gabe', 11.21, 'Bueno / Ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BEASAIN', '2021-12-31', '23:00:00', 0.26, 0.36, 29, 'Muy bueno / Oso ona', 10, 44, NULL, 'Sin datos / Daturik gabe', 11.42, 'Bueno / Ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('BOROA METEO', '2021-12-31', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '05:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '06:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '09:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '13:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '14:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '15:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '17:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '18:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '19:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '21:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '22:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('BOROA METEO', '2021-12-31', '23:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('CASTREJANA', '2021-12-31', '00:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 2, 5, 5.25, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '05:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 3, 8, 4.29, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '06:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 3, 8, 4.46, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '07:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 3, 9, 4.58, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '08:00:00', NULL, NULL, 15, 'Muy bueno / Oso ona', 3, 19, 4.63, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '09:00:00', NULL, NULL, 15, 'Muy bueno / Oso ona', 4, 20, 4.58, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '10:00:00', NULL, NULL, 13, 'Muy bueno / Oso ona', 4, 19, 4.54, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '11:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 4, 17, 4.58, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '12:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 3, 12, 4.63, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '13:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 1, 8, 4.71, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '14:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 6, 4.71, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '15:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 5, 4.63, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '16:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 6, 4.54, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '17:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 2, 7, 4.5, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '18:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 2, 7, 4.5, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '19:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 2, 6, 4.58, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '20:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 2, 6, 4.71, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '21:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 2, 5, 4.88, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '22:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 2, 6, 5.04, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('CASTREJANA', '2021-12-31', '23:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 2, 5, 5.17, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('DURANGO', '2021-12-31', '00:00:00', NULL, NULL, 26, 'Muy bueno / Oso ona', 7, 36, 8.63, 'Muy bueno / Oso ona', 4.25, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('DURANGO', '2021-12-31', '05:00:00', NULL, NULL, 24, 'Muy bueno / Oso ona', 3, 28, 22.13, 'Bueno / Ona', 6.58, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('DURANGO', '2021-12-31', '06:00:00', NULL, NULL, 26, 'Muy bueno / Oso ona', 3, 31, 22.21, 'Bueno / Ona', 6.71, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('DURANGO', '2021-12-31', '07:00:00', NULL, NULL, 27, 'Muy bueno / Oso ona', 3, 32, 22.17, 'Bueno / Ona', 6.71, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('DURANGO', '2021-12-31', '08:00:00', NULL, NULL, 45, 'Bueno / Ona', 30, 90, 22.17, 'Bueno / Ona', 6.71, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('DURANGO', '2021-12-31', '09:00:00', NULL, NULL, 41, 'Bueno / Ona', 15, 63, 22.13, 'Bueno / Ona', 6.75, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('DURANGO', '2021-12-31', '10:00:00', NULL, NULL, 31, 'Muy bueno / Oso ona', 7, 41, 21.54, 'Bueno / Ona', 6.63, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('DURANGO', '2021-12-31', '11:00:00', NULL, NULL, 26, 'Muy bueno / Oso ona', 9, 40, 21.04, 'Bueno / Ona', 6.29, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('DURANGO', '2021-12-31', '12:00:00', NULL, NULL, 28, 'Muy bueno / Oso ona', 8, 41, 17.88, 'Muy bueno / Oso ona', 5.46, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('DURANGO', '2021-12-31', '13:00:00', NULL, NULL, 21, 'Muy bueno / Oso ona', 5, 29, 13, 'Muy bueno / Oso ona', 4.67, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('DURANGO', '2021-12-31', '14:00:00', NULL, NULL, 14, 'Muy bueno / Oso ona', 4, 20, 10.5, 'Muy bueno / Oso ona', 4.38, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('DURANGO', '2021-12-31', '15:00:00', NULL, NULL, 16, 'Muy bueno / Oso ona', 3, 21, 6.71, 'Muy bueno / Oso ona', 3.83, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('DURANGO', '2021-12-31', '16:00:00', NULL, NULL, 21, 'Muy bueno / Oso ona', 5, 29, 6.75, 'Muy bueno / Oso ona', 3.83, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('DURANGO', '2021-12-31', '17:00:00', NULL, NULL, 36, 'Muy bueno / Oso ona', 8, 49, 6.63, 'Muy bueno / Oso ona', 3.83, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('DURANGO', '2021-12-31', '18:00:00', NULL, NULL, 51, 'Bueno / Ona', 13, 70, 6.83, 'Muy bueno / Oso ona', 3.92, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('DURANGO', '2021-12-31', '19:00:00', NULL, NULL, 51, 'Bueno / Ona', 11, 68, 6.83, 'Muy bueno / Oso ona', 3.92, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('DURANGO', '2021-12-31', '20:00:00', NULL, NULL, 19, 'Muy bueno / Oso ona', 3, 23, 6.88, 'Muy bueno / Oso ona', 3.83, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('DURANGO', '2021-12-31', '21:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 1, 10, 7.75, 'Muy bueno / Oso ona', 3.83, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('DURANGO', '2021-12-31', '22:00:00', NULL, NULL, 11, 'Muy bueno / Oso ona', 1, 13, 7.88, 'Muy bueno / Oso ona', 3.79, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('DURANGO', '2021-12-31', '23:00:00', NULL, NULL, 10, 'Muy bueno / Oso ona', 1, 12, 8, 'Muy bueno / Oso ona', 3.79, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EASO', '2021-12-31', '00:00:00', 0.76, 1.04, 54, 'Bueno / Ona', 37, 110, 18.5, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '05:00:00', 0.42, 0.54, 33, 'Muy bueno / Oso ona', 8, 45, 13, 'Muy bueno / Oso ona', 6.75, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EASO', '2021-12-31', '06:00:00', 0.46, 0.49, 48, 'Bueno / Ona', 19, 77, 12.88, 'Muy bueno / Oso ona', 6.58, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '07:00:00', 0.43, 0.45, 51, 'Bueno / Ona', 16, 75, 12.75, 'Muy bueno / Oso ona', 6.46, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '08:00:00', 0.59, 0.45, 61, 'Bueno / Ona', 51, 139, 12.46, 'Muy bueno / Oso ona', 6.33, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '09:00:00', 0.65, 0.48, 63, 'Bueno / Ona', 68, 167, 12.83, 'Muy bueno / Oso ona', 6.63, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '10:00:00', 0.66, 0.5, 61, 'Bueno / Ona', 58, 150, 13, 'Muy bueno / Oso ona', 6.67, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '11:00:00', 0.67, 0.53, 66, 'Bueno / Ona', 70, 173, 13.13, 'Muy bueno / Oso ona', 6.75, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '12:00:00', 0.8, 0.58, 74, 'Bueno / Ona', 86, 206, 13.54, 'Muy bueno / Oso ona', 6.83, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '13:00:00', 0.88, 0.64, 73, 'Bueno / Ona', 75, 188, 13.67, 'Muy bueno / Oso ona', 6.83, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '14:00:00', 0.93, 0.7, 63, 'Bueno / Ona', 67, 166, 14.63, 'Muy bueno / Oso ona', 7.21, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '15:00:00', 0.7, 0.73, 50, 'Bueno / Ona', 36, 104, 14.83, 'Muy bueno / Oso ona', 7.42, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '16:00:00', 0.73, 0.75, 54, 'Bueno / Ona', 37, 110, 14.71, 'Muy bueno / Oso ona', 7.38, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '17:00:00', 1.17, 0.82, 65, 'Bueno / Ona', 75, 179, 14.54, 'Muy bueno / Oso ona', 7.33, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '18:00:00', 1.67, 0.94, 85, 'Bueno / Ona', 183, 365, 14.67, 'Muy bueno / Oso ona', 7.42, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '19:00:00', 1.43, 1.04, 84, 'Bueno / Ona', 150, 314, 14.96, 'Muy bueno / Oso ona', 7.63, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '20:00:00', 1.09, 1.07, 72, 'Bueno / Ona', 84, 200, 15.21, 'Muy bueno / Oso ona', 7.83, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '21:00:00', 0.76, 1.06, 63, 'Bueno / Ona', 30, 109, 15.63, 'Muy bueno / Oso ona', 8.25, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '22:00:00', 0.75, 1.04, 59, 'Bueno / Ona', 25, 98, 16.33, 'Muy bueno / Oso ona', 8.83, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('EASO', '2021-12-31', '23:00:00', 0.67, 1.03, 50, 'Bueno / Ona', 17, 76, 17.04, 'Muy bueno / Oso ona', 9.5, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('ELCIEGO', '2021-12-31', '00:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 0, 7, 8.33, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '05:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 0, 3, 6.08, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '06:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 0, 3, 6.25, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '07:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 6.46, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '08:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 6.63, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '09:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 0, 5, 7, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '10:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 1, 9, 7.08, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '11:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 1, 9, 6.75, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '12:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 0, 5, 6.71, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '13:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 6.71, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '14:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 0, 3, 6.67, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '15:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 6.71, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '16:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 6.88, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '17:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 0, 9, 6.92, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '18:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 0, 8, 6.96, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '19:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 0, 7, 7, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '20:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 0, 5, 7.25, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '21:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 7.29, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '22:00:00', NULL, NULL, NULL, 'Sin datos / Daturik gabe', 0, NULL, 7.33, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ELCIEGO', '2021-12-31', '23:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 7.5, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '00:00:00', 0.23, 0.1, 10, 'Muy bueno / Oso ona', 2, 13, 8.13, 'Muy bueno / Oso ona', 3.46, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '05:00:00', 0.1, 0.11, 7, 'Muy bueno / Oso ona', 1, 8, 6.71, 'Muy bueno / Oso ona', 3.04, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '06:00:00', 0.1, 0.11, 9, 'Muy bueno / Oso ona', 1, 10, 6.71, 'Muy bueno / Oso ona', 3.21, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '07:00:00', 0.06, 0.1, 8, 'Muy bueno / Oso ona', 1, 10, 6.58, 'Muy bueno / Oso ona', 3.13, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '08:00:00', 0.1, 0.1, 22, 'Muy bueno / Oso ona', 4, 28, 6.5, 'Muy bueno / Oso ona', 3.04, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '09:00:00', 0.12, 0.1, 29, 'Muy bueno / Oso ona', 5, 36, 6.5, 'Muy bueno / Oso ona', 3.04, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '10:00:00', 0.16, 0.1, 29, 'Muy bueno / Oso ona', 7, 39, 6.58, 'Muy bueno / Oso ona', 3.17, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '11:00:00', 0.18, 0.11, 29, 'Muy bueno / Oso ona', 11, 45, 6.63, 'Muy bueno / Oso ona', 3.17, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '12:00:00', 0.15, 0.12, 24, 'Muy bueno / Oso ona', 8, 36, 6.75, 'Muy bueno / Oso ona', 3.17, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '13:00:00', 0.12, 0.12, 10, 'Muy bueno / Oso ona', 5, 17, 6.79, 'Muy bueno / Oso ona', 3.21, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '14:00:00', 0.13, 0.12, 8, 'Muy bueno / Oso ona', 4, 13, 7.17, 'Muy bueno / Oso ona', 3.38, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '15:00:00', 0.11, 0.13, 7, 'Muy bueno / Oso ona', 2, 10, 7.67, 'Muy bueno / Oso ona', 3.71, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '16:00:00', 0.12, 0.13, 8, 'Muy bueno / Oso ona', 2, 11, 7.96, 'Muy bueno / Oso ona', 3.79, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '17:00:00', 0.1, 0.14, 10, 'Muy bueno / Oso ona', 3, 14, 7.96, 'Muy bueno / Oso ona', 3.71, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '18:00:00', 0.11, 0.13, 10, 'Muy bueno / Oso ona', 2, 13, 7.92, 'Muy bueno / Oso ona', 3.75, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '19:00:00', 0.11, 0.12, 7, 'Muy bueno / Oso ona', 2, 10, 7.71, 'Muy bueno / Oso ona', 3.58, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '20:00:00', 0.11, 0.12, 6, 'Muy bueno / Oso ona', 2, 9, 7.67, 'Muy bueno / Oso ona', 3.58, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '21:00:00', 0.11, 0.11, 7, 'Muy bueno / Oso ona', 2, 9, 7.96, 'Muy bueno / Oso ona', 3.63, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '22:00:00', 0.1, 0.11, 5, 'Muy bueno / Oso ona', 1, 6, 8.08, 'Muy bueno / Oso ona', 3.67, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('ERANDIO', '2021-12-31', '23:00:00', 0.1, 0.11, 5, 'Muy bueno / Oso ona', 1, 6, 8.13, 'Muy bueno / Oso ona', 3.5, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '00:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 2, 14, 7.21, 'Muy bueno / Oso ona', 6.38, 'Muy bueno / Oso ona', 11, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '05:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 1, 11, 7.58, 'Muy bueno / Oso ona', 6.38, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '06:00:00', NULL, NULL, 11, 'Muy bueno / Oso ona', 1, 13, 7.54, 'Muy bueno / Oso ona', 6.25, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '07:00:00', NULL, NULL, 19, 'Muy bueno / Oso ona', 1, 21, 7.46, 'Muy bueno / Oso ona', 6.17, 'Muy bueno / Oso ona', 8, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '08:00:00', NULL, NULL, 28, 'Muy bueno / Oso ona', 2, 32, 7.46, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '09:00:00', NULL, NULL, 30, 'Muy bueno / Oso ona', 5, 38, 7.38, 'Muy bueno / Oso ona', 6.17, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '10:00:00', NULL, NULL, 24, 'Muy bueno / Oso ona', 5, 32, 7.04, 'Muy bueno / Oso ona', 6.21, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '11:00:00', NULL, NULL, 19, 'Muy bueno / Oso ona', 3, 23, 6.75, 'Muy bueno / Oso ona', 6.25, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '12:00:00', NULL, NULL, 14, 'Muy bueno / Oso ona', 2, 17, 6.63, 'Muy bueno / Oso ona', 6.25, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '13:00:00', NULL, NULL, 14, 'Muy bueno / Oso ona', 2, 17, 6.5, 'Muy bueno / Oso ona', 6.25, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '14:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 2, 15, 6.75, 'Muy bueno / Oso ona', 6.25, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '15:00:00', NULL, NULL, 11, 'Muy bueno / Oso ona', 2, 14, 7.13, 'Muy bueno / Oso ona', 6.25, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '16:00:00', NULL, NULL, 10, 'Muy bueno / Oso ona', 1, 13, 7.29, 'Muy bueno / Oso ona', 6.25, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '17:00:00', NULL, NULL, 14, 'Muy bueno / Oso ona', 1, 16, 7.38, 'Muy bueno / Oso ona', 6.25, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '18:00:00', NULL, NULL, 17, 'Muy bueno / Oso ona', 1, 19, 7.29, 'Muy bueno / Oso ona', 6.13, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '19:00:00', NULL, NULL, 17, 'Muy bueno / Oso ona', 1, 19, 7.21, 'Muy bueno / Oso ona', 5.79, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '20:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 1, 14, 6.96, 'Muy bueno / Oso ona', 5.96, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '21:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 1, 14, 6.88, 'Muy bueno / Oso ona', 6.08, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '22:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 1, 14, 6.71, 'Muy bueno / Oso ona', 6.21, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('EUROPA', '2021-12-31', '23:00:00', NULL, NULL, 11, 'Muy bueno / Oso ona', 1, 13, 6.92, 'Muy bueno / Oso ona', 6.13, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '05:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '06:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '09:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '13:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '14:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '15:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '17:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '18:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '19:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '21:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '22:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FARMACIA', '2021-12-31', '23:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('FERIA (meteo)', '2021-12-31', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '05:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '06:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '09:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '13:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '14:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '15:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '17:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '18:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '19:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '21:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '22:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('FERIA (meteo)', '2021-12-31', '23:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('HERNANI', '2021-12-31', '00:00:00', NULL, NULL, 28, 'Muy bueno / Oso ona', 14, 49, 15.29, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('HERNANI', '2021-12-31', '05:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 8, 24, 8.96, 'Muy bueno / Oso ona', 5.04, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('HERNANI', '2021-12-31', '06:00:00', NULL, NULL, 16, 'Muy bueno / Oso ona', 6, 26, 8.75, 'Muy bueno / Oso ona', 4.83, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('HERNANI', '2021-12-31', '07:00:00', NULL, NULL, 24, 'Muy bueno / Oso ona', 10, 39, 8.58, 'Muy bueno / Oso ona', 4.67, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('HERNANI', '2021-12-31', '08:00:00', NULL, NULL, 33, 'Muy bueno / Oso ona', 11, 49, 8.5, 'Muy bueno / Oso ona', 4.54, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('HERNANI', '2021-12-31', '09:00:00', NULL, NULL, 38, 'Muy bueno / Oso ona', 23, 73, 8.46, 'Muy bueno / Oso ona', 4.42, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('HERNANI', '2021-12-31', '10:00:00', NULL, NULL, 34, 'Muy bueno / Oso ona', 21, 65, 8.33, 'Muy bueno / Oso ona', 4.29, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('HERNANI', '2021-12-31', '11:00:00', NULL, NULL, 35, 'Muy bueno / Oso ona', 27, 76, 8.33, 'Muy bueno / Oso ona', 4.29, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('HERNANI', '2021-12-31', '12:00:00', NULL, NULL, 38, 'Muy bueno / Oso ona', 26, 77, 8.33, 'Muy bueno / Oso ona', 4.38, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('HERNANI', '2021-12-31', '13:00:00', NULL, NULL, 48, 'Bueno / Ona', 42, 112, 8.42, 'Muy bueno / Oso ona', 4.42, 'Muy bueno / Oso ona', 9, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('HERNANI', '2021-12-31', '14:00:00', NULL, NULL, 46, 'Bueno / Ona', 34, 98, 8.46, 'Muy bueno / Oso ona', 4.46, 'Muy bueno / Oso ona', 11, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('HERNANI', '2021-12-31', '15:00:00', NULL, NULL, 46, 'Bueno / Ona', 29, 89, 8.38, 'Muy bueno / Oso ona', 4.46, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('HERNANI', '2021-12-31', '16:00:00', NULL, NULL, 51, 'Bueno / Ona', 36, 105, 8.33, 'Muy bueno / Oso ona', 4.54, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('HERNANI', '2021-12-31', '17:00:00', NULL, NULL, 49, 'Bueno / Ona', 16, 74, 8.63, 'Muy bueno / Oso ona', 4.88, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('HERNANI', '2021-12-31', '18:00:00', NULL, NULL, 68, 'Bueno / Ona', 20, 99, 8.88, 'Muy bueno / Oso ona', 5.04, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('HERNANI', '2021-12-31', '19:00:00', NULL, NULL, 65, 'Bueno / Ona', 39, 125, 10.42, 'Muy bueno / Oso ona', 6.42, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('HERNANI', '2021-12-31', '20:00:00', NULL, NULL, 63, 'Bueno / Ona', 21, 95, 11.5, 'Muy bueno / Oso ona', 7.54, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('HERNANI', '2021-12-31', '21:00:00', NULL, NULL, 56, 'Bueno / Ona', 22, 90, 12.38, 'Muy bueno / Oso ona', 8.38, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('HERNANI', '2021-12-31', '22:00:00', NULL, NULL, 37, 'Muy bueno / Oso ona', 9, 50, 13.17, 'Muy bueno / Oso ona', 9.08, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('HERNANI', '2021-12-31', '23:00:00', NULL, NULL, 31, 'Muy bueno / Oso ona', 8, 43, 13.92, 'Muy bueno / Oso ona', 9.67, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '05:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '06:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '09:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '13:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '14:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '15:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '17:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '18:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '19:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '21:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '22:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('JAIZKIBEL', '2021-12-31', '23:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '00:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '05:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '06:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '07:00:00', NULL, NULL, 11, 'Muy bueno / Oso ona', 2, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '08:00:00', NULL, NULL, 21, 'Muy bueno / Oso ona', 5, 30, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '09:00:00', NULL, NULL, 19, 'Muy bueno / Oso ona', 6, 29, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '10:00:00', NULL, NULL, 15, 'Muy bueno / Oso ona', 5, 23, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '11:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 5, 19, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '12:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 4, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '13:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 4, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '14:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '15:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '16:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '17:00:00', NULL, NULL, 11, 'Muy bueno / Oso ona', 3, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '18:00:00', NULL, NULL, 24, 'Muy bueno / Oso ona', 4, 30, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '19:00:00', NULL, NULL, 28, 'Muy bueno / Oso ona', 5, 36, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '20:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 3, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '21:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 3, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '22:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LARRABETZU', '2021-12-31', '23:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 3, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '00:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 2, 5, 4.54, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '05:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 2, 5, 5.42, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '06:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 2, 5, 5.29, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '07:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 2, 6, 5.25, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '08:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 3, 11, 5.04, 'Muy bueno / Oso ona', NULL, NULL, 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '09:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 5, 17, 4.96, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '10:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 3, 8, 5.04, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '11:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 3, 8, 4.83, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '12:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 3, 9, 4.29, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '13:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 4, 9, 3.83, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '14:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 3, 7, 3.5, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '15:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 3, 7, 3.42, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '16:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 3, 7, 3.54, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '17:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 2, 6, 3.67, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '18:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 3, 7, 3.63, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '19:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 3, 8, 3.58, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '20:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 3, 7, 3.67, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '21:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 2, 6, 3.92, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '22:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 4.25, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LAS CARRERAS', '2021-12-31', '23:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 2, 4, 4.42, 'Muy bueno / Oso ona', NULL, NULL, 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '00:00:00', NULL, NULL, 16, 'Muy bueno / Oso ona', 4, 22, 10.5, 'Muy bueno / Oso ona', 7.75, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '05:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 1, 13, 8.83, 'Muy bueno / Oso ona', 4.83, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '06:00:00', NULL, NULL, 18, 'Muy bueno / Oso ona', 2, 20, 8.58, 'Muy bueno / Oso ona', 4.58, 'Muy bueno / Oso ona', 9, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '07:00:00', NULL, NULL, 22, 'Muy bueno / Oso ona', 4, 28, 8.33, 'Muy bueno / Oso ona', 4.42, 'Muy bueno / Oso ona', 9, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '08:00:00', NULL, NULL, 34, 'Muy bueno / Oso ona', 10, 47, 8.21, 'Muy bueno / Oso ona', 4.17, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '09:00:00', NULL, NULL, 47, 'Bueno / Ona', 45, 115, 8.13, 'Muy bueno / Oso ona', 3.96, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Bueno / Ona');
INSERT INTO `datos` (`NombreEstacion`, `Fecha`, `Hora`, `COmgm3`, `CO8hmgm3`, `NO2gm3`, `NO2ICA`, `NOgm3`, `NOXgm3`, `PM10gm3`, `PM10ICA`, `PM25gm3`, `PM25ICA`, `SO2gm3`, `SO2ICA`, `ICAEstacion`) VALUES
('LASARTE-ORIA', '2021-12-31', '10:00:00', NULL, NULL, 38, 'Muy bueno / Oso ona', 33, 87, 8.21, 'Muy bueno / Oso ona', 3.88, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '11:00:00', NULL, NULL, 41, 'Bueno / Ona', 44, 107, 8.46, 'Muy bueno / Oso ona', 3.88, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('LASARTE-ORIA', '2021-12-31', '12:00:00', NULL, NULL, 30, 'Muy bueno / Oso ona', 18, 57, 8.71, 'Muy bueno / Oso ona', 3.88, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '13:00:00', NULL, NULL, 22, 'Muy bueno / Oso ona', 9, 36, 8.92, 'Muy bueno / Oso ona', 3.96, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '14:00:00', NULL, NULL, 21, 'Muy bueno / Oso ona', 6, 31, 9.04, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '15:00:00', NULL, NULL, 24, 'Muy bueno / Oso ona', 5, 31, 8.96, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '16:00:00', NULL, NULL, 19, 'Muy bueno / Oso ona', 4, 23, 8.83, 'Muy bueno / Oso ona', 4.08, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '17:00:00', NULL, NULL, 39, 'Muy bueno / Oso ona', 9, 53, 8.96, 'Muy bueno / Oso ona', 4.33, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '18:00:00', NULL, NULL, 41, 'Bueno / Ona', 19, 69, 9.33, 'Muy bueno / Oso ona', 4.5, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('LASARTE-ORIA', '2021-12-31', '19:00:00', NULL, NULL, 47, 'Bueno / Ona', 28, 90, 9.71, 'Muy bueno / Oso ona', 4.63, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('LASARTE-ORIA', '2021-12-31', '20:00:00', NULL, NULL, 45, 'Bueno / Ona', 16, 68, 9.88, 'Muy bueno / Oso ona', 5.08, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('LASARTE-ORIA', '2021-12-31', '21:00:00', NULL, NULL, 41, 'Bueno / Ona', 17, 68, 9.83, 'Muy bueno / Oso ona', 5.79, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('LASARTE-ORIA', '2021-12-31', '22:00:00', NULL, NULL, 24, 'Muy bueno / Oso ona', 7, 34, 9.88, 'Muy bueno / Oso ona', 6.5, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LASARTE-ORIA', '2021-12-31', '23:00:00', NULL, NULL, 18, 'Muy bueno / Oso ona', 3, 21, 10.04, 'Muy bueno / Oso ona', 7.08, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LEZO', '2021-12-31', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 28.17, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '05:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 21.79, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '06:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 21.67, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 21.88, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 22.17, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '09:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 23.25, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 24.42, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 24.67, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 24.92, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '13:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 25.21, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '14:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 25.88, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '15:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 26.04, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 25.71, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '17:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 25.13, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '18:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 23.79, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '19:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 23.17, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 22.75, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '21:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 22.92, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '22:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 22.88, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LEZO', '2021-12-31', '23:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 23, 'Bueno / Ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('LLODIO', '2021-12-31', '00:00:00', 0.24, 0.21, 15, 'Muy bueno / Oso ona', 9, 29, 14.04, 'Muy bueno / Oso ona', 8.67, 'Muy bueno / Oso ona', 10, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '05:00:00', 0.21, 0.25, 4, 'Muy bueno / Oso ona', 4, 10, 9.6, 'Muy bueno / Oso ona', 4.85, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '06:00:00', 0.25, 0.24, 11, 'Muy bueno / Oso ona', 10, 27, 9.55, 'Muy bueno / Oso ona', 4.85, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '07:00:00', 0.25, 0.23, 14, 'Muy bueno / Oso ona', 5, 21, 9.52, 'Muy bueno / Oso ona', 4.86, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '08:00:00', 0.3, 0.23, 19, 'Muy bueno / Oso ona', 4, 25, 9.45, 'Muy bueno / Oso ona', 4.77, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '09:00:00', 0.35, 0.24, 20, 'Muy bueno / Oso ona', 6, 29, 9.45, 'Muy bueno / Oso ona', 4.82, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '10:00:00', 0.33, 0.26, 21, 'Muy bueno / Oso ona', 17, 46, 8.95, 'Muy bueno / Oso ona', 4.68, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '11:00:00', 0.4, 0.27, 44, 'Bueno / Ona', 36, 99, 8.77, 'Muy bueno / Oso ona', 4.64, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('LLODIO', '2021-12-31', '12:00:00', 0.22, 0.29, 16, 'Muy bueno / Oso ona', 7, 27, 8.32, 'Muy bueno / Oso ona', 4.5, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '13:00:00', 0.27, 0.29, 11, 'Muy bueno / Oso ona', 6, 20, 8.26, 'Muy bueno / Oso ona', 4.43, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '14:00:00', 0.24, 0.3, 15, 'Muy bueno / Oso ona', 9, 29, 8.25, 'Muy bueno / Oso ona', 4.38, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '15:00:00', 0.08, 0.29, 8, 'Muy bueno / Oso ona', 3, 12, 8.42, 'Muy bueno / Oso ona', 4.46, 'Muy bueno / Oso ona', 1, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '16:00:00', 0.04, 0.27, 7, 'Muy bueno / Oso ona', 5, 15, 8.54, 'Muy bueno / Oso ona', 4.5, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '17:00:00', 0.23, 0.24, 34, 'Muy bueno / Oso ona', 28, 77, 8.83, 'Muy bueno / Oso ona', 4.58, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '18:00:00', 0.15, 0.22, 15, 'Muy bueno / Oso ona', 6, 24, 8.83, 'Muy bueno / Oso ona', 4.58, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '19:00:00', 0.28, 0.21, 12, 'Muy bueno / Oso ona', 9, 26, 8.88, 'Muy bueno / Oso ona', 4.54, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '20:00:00', 0.3, 0.2, 17, 'Muy bueno / Oso ona', 3, 22, 9.29, 'Muy bueno / Oso ona', 4.79, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '21:00:00', 0.21, 0.2, 15, 'Muy bueno / Oso ona', 5, 22, 9.54, 'Muy bueno / Oso ona', 4.88, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '22:00:00', 0.2, 0.2, 12, 'Muy bueno / Oso ona', 2, 16, 10.88, 'Muy bueno / Oso ona', 6.13, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LLODIO', '2021-12-31', '23:00:00', 0.19, 0.19, 6, 'Muy bueno / Oso ona', 3, 10, 11.17, 'Muy bueno / Oso ona', 6.33, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '00:00:00', NULL, NULL, 29, 'Muy bueno / Oso ona', 9, 44, 14.08, 'Muy bueno / Oso ona', 9.63, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '05:00:00', NULL, NULL, 16, 'Muy bueno / Oso ona', 3, 20, 16.13, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '06:00:00', NULL, NULL, 19, 'Muy bueno / Oso ona', 4, 24, 16, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '07:00:00', NULL, NULL, 21, 'Muy bueno / Oso ona', 6, 31, 15.92, 'Muy bueno / Oso ona', NULL, 'Sin datos / Daturik gabe', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '08:00:00', NULL, NULL, 28, 'Muy bueno / Oso ona', 19, 56, 15.67, 'Muy bueno / Oso ona', 9.92, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '09:00:00', NULL, NULL, 30, 'Muy bueno / Oso ona', 34, 82, 14.96, 'Muy bueno / Oso ona', 9.67, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '10:00:00', NULL, NULL, 29, 'Muy bueno / Oso ona', 26, 68, 14.46, 'Muy bueno / Oso ona', 9.42, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '11:00:00', NULL, NULL, 35, 'Muy bueno / Oso ona', 39, 94, 13.75, 'Muy bueno / Oso ona', 9.04, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '12:00:00', NULL, NULL, 33, 'Muy bueno / Oso ona', 25, 71, 12.96, 'Muy bueno / Oso ona', 8.58, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '13:00:00', NULL, NULL, 10, 'Muy bueno / Oso ona', 3, 14, 12.33, 'Muy bueno / Oso ona', 8.25, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '14:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 2, 11, 12.21, 'Muy bueno / Oso ona', 8.17, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '15:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 2, 10, 12.29, 'Muy bueno / Oso ona', 8.25, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '16:00:00', NULL, NULL, 10, 'Muy bueno / Oso ona', 1, 12, 12.38, 'Muy bueno / Oso ona', 8.33, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '17:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 1, 11, 12.33, 'Muy bueno / Oso ona', 8.33, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '18:00:00', NULL, NULL, 17, 'Muy bueno / Oso ona', 1, 20, 12.54, 'Muy bueno / Oso ona', 8.38, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '19:00:00', NULL, NULL, 13, 'Muy bueno / Oso ona', 1, 15, 12.17, 'Muy bueno / Oso ona', 8.17, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '20:00:00', NULL, NULL, 14, 'Muy bueno / Oso ona', 1, 16, 12.17, 'Muy bueno / Oso ona', 8.13, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '21:00:00', NULL, NULL, 30, 'Muy bueno / Oso ona', 5, 37, 12.29, 'Muy bueno / Oso ona', 8.17, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '22:00:00', NULL, NULL, 11, 'Muy bueno / Oso ona', 1, 13, 12.46, 'Muy bueno / Oso ona', 8.17, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('LOS HERRAN', '2021-12-31', '23:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 1, 9, 12.29, 'Muy bueno / Oso ona', 8.04, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '00:00:00', 0.15, 0.15, 15, 'Muy bueno / Oso ona', 3, 20, 9.08, 'Muy bueno / Oso ona', 5.17, 'Muy bueno / Oso ona', 15, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '05:00:00', 0.09, 0.18, 14, 'Muy bueno / Oso ona', 2, 17, 8.29, 'Muy bueno / Oso ona', 4.54, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '06:00:00', 0.09, 0.14, 23, 'Muy bueno / Oso ona', 5, 30, 8.33, 'Muy bueno / Oso ona', 4.54, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '07:00:00', 0.1, 0.13, 38, 'Muy bueno / Oso ona', 4, 43, 8.38, 'Muy bueno / Oso ona', 4.54, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '08:00:00', 0.12, 0.13, 49, 'Bueno / Ona', 10, 64, 8.33, 'Muy bueno / Oso ona', 4.54, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MAZARREDO', '2021-12-31', '09:00:00', 0.14, 0.11, 46, 'Bueno / Ona', 16, 70, 8.21, 'Muy bueno / Oso ona', 4.54, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MAZARREDO', '2021-12-31', '10:00:00', 0.18, 0.11, 56, 'Bueno / Ona', 26, 95, 8.08, 'Muy bueno / Oso ona', 4.5, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MAZARREDO', '2021-12-31', '11:00:00', 0.18, 0.12, 47, 'Bueno / Ona', 17, 73, 7.96, 'Muy bueno / Oso ona', 4.46, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MAZARREDO', '2021-12-31', '12:00:00', 0.13, 0.12, 29, 'Muy bueno / Oso ona', 10, 44, 7.67, 'Muy bueno / Oso ona', 4.33, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '13:00:00', 0.15, 0.13, 28, 'Muy bueno / Oso ona', 9, 42, 7.46, 'Muy bueno / Oso ona', 4.25, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '14:00:00', 0.13, 0.14, 20, 'Muy bueno / Oso ona', 7, 31, 7.46, 'Muy bueno / Oso ona', 4.25, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '15:00:00', 0.11, 0.14, 12, 'Muy bueno / Oso ona', 4, 18, 7.33, 'Muy bueno / Oso ona', 4.17, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '16:00:00', 0.14, 0.14, 13, 'Muy bueno / Oso ona', 3, 17, 7.33, 'Muy bueno / Oso ona', 4.17, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '17:00:00', 0.17, 0.15, 27, 'Muy bueno / Oso ona', 5, 34, 7.38, 'Muy bueno / Oso ona', 4.17, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '18:00:00', 0.17, 0.15, 28, 'Muy bueno / Oso ona', 4, 33, 7.17, 'Muy bueno / Oso ona', 4.04, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '19:00:00', 0.14, 0.14, 19, 'Muy bueno / Oso ona', 4, 24, 7, 'Muy bueno / Oso ona', 3.96, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '20:00:00', 0.16, 0.14, 24, 'Muy bueno / Oso ona', 5, 31, 7.13, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '21:00:00', 0.15, 0.15, 11, 'Muy bueno / Oso ona', 2, 14, 7.04, 'Muy bueno / Oso ona', 3.88, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '22:00:00', 0.14, 0.15, 9, 'Muy bueno / Oso ona', 2, 11, 7, 'Muy bueno / Oso ona', 3.71, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MAZARREDO', '2021-12-31', '23:00:00', 0.13, 0.15, 11, 'Muy bueno / Oso ona', 2, 13, 7.29, 'Muy bueno / Oso ona', 3.79, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MONDRAGON', '2021-12-31', '00:00:00', 0.27, 0.3, 30, 'Muy bueno / Oso ona', 9, 43, 16.17, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('MONDRAGON', '2021-12-31', '05:00:00', NULL, 0.21, NULL, 'Sin datos / Daturik gabe', NULL, NULL, 16.78, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('MONDRAGON', '2021-12-31', '06:00:00', 0.13, 0.14, 21, 'Muy bueno / Oso ona', 5, 28, 16.78, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('MONDRAGON', '2021-12-31', '07:00:00', 0.13, 0.13, 38, 'Muy bueno / Oso ona', 25, 76, 16.87, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('MONDRAGON', '2021-12-31', '08:00:00', 0.19, 0.13, 42, 'Bueno / Ona', 35, 96, 16.83, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('MONDRAGON', '2021-12-31', '09:00:00', 0.15, 0.14, 41, 'Bueno / Ona', 40, 103, 16.22, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('MONDRAGON', '2021-12-31', '10:00:00', 0.36, 0.16, 48, 'Bueno / Ona', 64, 146, 15.96, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('MONDRAGON', '2021-12-31', '11:00:00', 0.2, 0.17, 29, 'Muy bueno / Oso ona', 19, 57, 15.26, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('MONDRAGON', '2021-12-31', '12:00:00', 0.15, 0.16, 20, 'Muy bueno / Oso ona', 9, 33, 14.61, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('MONDRAGON', '2021-12-31', '13:00:00', 0.16, 0.18, 24, 'Muy bueno / Oso ona', 11, 40, 14.48, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('MONDRAGON', '2021-12-31', '14:00:00', 0.14, 0.18, 14, 'Muy bueno / Oso ona', 8, 25, 14.39, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('MONDRAGON', '2021-12-31', '15:00:00', 0.17, 0.19, 23, 'Muy bueno / Oso ona', 13, 43, 15.13, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('MONDRAGON', '2021-12-31', '16:00:00', 0.21, 0.19, 37, 'Muy bueno / Oso ona', 18, 64, 15.43, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('MONDRAGON', '2021-12-31', '17:00:00', 0.35, 0.21, 57, 'Bueno / Ona', 48, 131, 15.35, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('MONDRAGON', '2021-12-31', '18:00:00', 0.41, 0.22, 56, 'Bueno / Ona', 62, 150, 15.26, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('MONDRAGON', '2021-12-31', '19:00:00', 0.33, 0.23, 53, 'Bueno / Ona', 44, 120, 15.3, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('MONDRAGON', '2021-12-31', '20:00:00', 0.33, 0.26, 51, 'Bueno / Ona', 46, 121, 15.39, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('MONDRAGON', '2021-12-31', '21:00:00', 0.28, 0.27, 47, 'Bueno / Ona', 23, 82, 15.43, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Bueno / Ona'),
('MONDRAGON', '2021-12-31', '22:00:00', 0.2, 0.28, 26, 'Muy bueno / Oso ona', 6, 35, 15.22, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('MONDRAGON', '2021-12-31', '23:00:00', 0.22, 0.29, 26, 'Muy bueno / Oso ona', 3, 30, 15.3, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('MONTORRA', '2021-12-31', '00:00:00', NULL, NULL, 36, 'Muy bueno / Oso ona', 10, 50, NULL, NULL, NULL, NULL, 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MONTORRA', '2021-12-31', '05:00:00', NULL, NULL, 33, 'Muy bueno / Oso ona', 26, 72, NULL, NULL, NULL, NULL, 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MONTORRA', '2021-12-31', '06:00:00', NULL, NULL, 41, 'Bueno / Ona', 36, 96, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MONTORRA', '2021-12-31', '07:00:00', NULL, NULL, 45, 'Bueno / Ona', 39, 105, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MONTORRA', '2021-12-31', '08:00:00', NULL, NULL, 51, 'Bueno / Ona', 72, 162, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MONTORRA', '2021-12-31', '09:00:00', NULL, NULL, 59, 'Bueno / Ona', 112, 230, NULL, NULL, NULL, NULL, 8, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MONTORRA', '2021-12-31', '10:00:00', NULL, NULL, 55, 'Bueno / Ona', 81, 178, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MONTORRA', '2021-12-31', '11:00:00', NULL, NULL, 43, 'Bueno / Ona', 30, 88, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MONTORRA', '2021-12-31', '12:00:00', NULL, NULL, 23, 'Muy bueno / Oso ona', 8, 35, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MONTORRA', '2021-12-31', '13:00:00', NULL, NULL, 15, 'Muy bueno / Oso ona', 4, 21, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MONTORRA', '2021-12-31', '14:00:00', NULL, NULL, 17, 'Muy bueno / Oso ona', 4, 23, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MONTORRA', '2021-12-31', '15:00:00', NULL, NULL, 14, 'Muy bueno / Oso ona', 3, 19, NULL, NULL, NULL, NULL, 8, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MONTORRA', '2021-12-31', '16:00:00', NULL, NULL, 16, 'Muy bueno / Oso ona', 3, 20, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MONTORRA', '2021-12-31', '17:00:00', NULL, NULL, 26, 'Muy bueno / Oso ona', 3, 31, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MONTORRA', '2021-12-31', '18:00:00', NULL, NULL, 52, 'Bueno / Ona', 16, 77, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MONTORRA', '2021-12-31', '19:00:00', NULL, NULL, 62, 'Bueno / Ona', 31, 110, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MONTORRA', '2021-12-31', '20:00:00', NULL, NULL, 61, 'Bueno / Ona', 41, 122, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MONTORRA', '2021-12-31', '21:00:00', NULL, NULL, 62, 'Bueno / Ona', 41, 124, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MONTORRA', '2021-12-31', '22:00:00', NULL, NULL, 57, 'Bueno / Ona', 43, 124, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MONTORRA', '2021-12-31', '23:00:00', NULL, NULL, 50, 'Bueno / Ona', 29, 95, NULL, NULL, NULL, NULL, 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('MUNDAKA', '2021-12-31', '00:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, 5.33, 'Muy bueno / Oso ona', 3.38, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '05:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, 7.13, 'Muy bueno / Oso ona', 2.75, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '06:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, 7.08, 'Muy bueno / Oso ona', 2.79, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '07:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, 6.96, 'Muy bueno / Oso ona', 2.88, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '08:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, 6.88, 'Muy bueno / Oso ona', 2.88, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '09:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, 6.88, 'Muy bueno / Oso ona', 2.83, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '10:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 6, 6.71, 'Muy bueno / Oso ona', 2.83, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '11:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 6, 6.58, 'Muy bueno / Oso ona', 2.83, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '12:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 2, 8, 6.21, 'Muy bueno / Oso ona', 2.83, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '13:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 1, 8, 5.79, 'Muy bueno / Oso ona', 2.83, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '14:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 2, 8, 5.33, 'Muy bueno / Oso ona', 2.88, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '15:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 2, 12, 5.33, 'Muy bueno / Oso ona', 3.13, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '16:00:00', NULL, NULL, 10, 'Muy bueno / Oso ona', 1, 12, 5.54, 'Muy bueno / Oso ona', 3.25, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '17:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 1, 11, 5.71, 'Muy bueno / Oso ona', 3.25, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '18:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 1, 9, 5.58, 'Muy bueno / Oso ona', 3.21, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '19:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 6, 5.25, 'Muy bueno / Oso ona', 3.08, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '20:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, 5.08, 'Muy bueno / Oso ona', 3.21, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '21:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, 5.17, 'Muy bueno / Oso ona', 3.33, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '22:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, 5.54, 'Muy bueno / Oso ona', 3.42, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNDAKA', '2021-12-31', '23:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, 5.58, 'Muy bueno / Oso ona', 3.38, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('MUNOA', '2021-12-31', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '05:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '06:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '09:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '13:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '14:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '15:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '17:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '18:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '19:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '21:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '22:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUNOA', '2021-12-31', '23:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('MUSKIZ', '2021-12-31', '00:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, 6, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '05:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 4.61, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '06:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 4.57, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '07:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 4.52, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '08:00:00', NULL, NULL, 3, 'Muy bueno / Oso ona', 1, 5, 4.35, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '09:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, 4.17, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '10:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, 3.83, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '11:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, 3.48, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '12:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, 3.65, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '13:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, 3.92, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '14:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, 4.08, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '15:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, 4.33, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '16:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, 4.46, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '17:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, 4.46, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '18:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, 4.58, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '19:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 2, 4.83, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '20:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 2, 5.04, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '21:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 3, 5.17, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '22:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 3, 5.5, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('MUSKIZ', '2021-12-31', '23:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 0, 2, 5.67, 'Muy bueno / Oso ona', NULL, NULL, 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '00:00:00', 0.23, 0.25, 9, 'Muy bueno / Oso ona', 3, 14, 8.5, 'Muy bueno / Oso ona', 4.88, 'Muy bueno / Oso ona', 8, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '05:00:00', 0.25, 0.37, 11, 'Muy bueno / Oso ona', 9, 26, 10.42, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '06:00:00', 0.28, 0.33, 25, 'Muy bueno / Oso ona', 11, 42, 10.38, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '07:00:00', 0.34, 0.3, 40, 'Muy bueno / Oso ona', 18, 67, 10.38, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '08:00:00', 0.45, 0.31, 52, 'Bueno / Ona', 48, 125, 10.33, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('Mª DIAZ HARO', '2021-12-31', '09:00:00', 0.58, 0.33, 55, 'Bueno / Ona', 74, 168, 10.33, 'Muy bueno / Oso ona', 6.04, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('Mª DIAZ HARO', '2021-12-31', '10:00:00', 0.49, 0.36, 52, 'Bueno / Ona', 59, 143, 9.92, 'Muy bueno / Oso ona', 5.96, 'Muy bueno / Oso ona', 8, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('Mª DIAZ HARO', '2021-12-31', '11:00:00', 0.55, 0.38, 57, 'Bueno / Ona', 75, 171, 9.71, 'Muy bueno / Oso ona', 5.88, 'Muy bueno / Oso ona', 8, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('Mª DIAZ HARO', '2021-12-31', '12:00:00', 0.59, 0.42, 59, 'Bueno / Ona', 77, 176, 9.54, 'Muy bueno / Oso ona', 5.83, 'Muy bueno / Oso ona', 7, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('Mª DIAZ HARO', '2021-12-31', '13:00:00', 0.43, 0.45, 33, 'Muy bueno / Oso ona', 39, 92, 9.29, 'Muy bueno / Oso ona', 5.71, 'Muy bueno / Oso ona', 6, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '14:00:00', NULL, 0.47, 21, 'Muy bueno / Oso ona', 29, 64, 9.04, 'Muy bueno / Oso ona', 5.63, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '15:00:00', 0.29, 0.48, 20, 'Muy bueno / Oso ona', 22, 54, 8.92, 'Muy bueno / Oso ona', 5.54, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '16:00:00', 0.32, 0.46, 27, 'Muy bueno / Oso ona', 21, 59, 8.83, 'Muy bueno / Oso ona', 5.54, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '17:00:00', 0.26, 0.44, 15, 'Muy bueno / Oso ona', 13, 35, 8.38, 'Muy bueno / Oso ona', 5.29, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '18:00:00', 0.27, 0.4, 19, 'Muy bueno / Oso ona', 11, 36, 8.21, 'Muy bueno / Oso ona', 5.13, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '19:00:00', 0.24, 0.37, 12, 'Muy bueno / Oso ona', 9, 27, 8.04, 'Muy bueno / Oso ona', 4.96, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '20:00:00', 0.24, 0.32, 8, 'Muy bueno / Oso ona', 6, 18, 7.96, 'Muy bueno / Oso ona', 4.83, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '21:00:00', 0.23, 0.29, 5, 'Muy bueno / Oso ona', 5, 12, 7.92, 'Muy bueno / Oso ona', 4.63, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '22:00:00', 0.24, 0.27, 6, 'Muy bueno / Oso ona', 3, 11, 7.83, 'Muy bueno / Oso ona', 4.46, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('Mª DIAZ HARO', '2021-12-31', '23:00:00', 0.22, 0.25, 5, 'Muy bueno / Oso ona', 2, 8, 7.83, 'Muy bueno / Oso ona', 4.33, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('NAUTICA', '2021-12-31', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '05:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '06:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '09:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '13:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '14:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '15:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '17:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '18:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '19:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '21:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '22:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('NAUTICA', '2021-12-31', '23:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin datos / Daturik gabe'),
('PAGOETA', '2021-12-31', '00:00:00', 0.11, 0.11, 1, 'Muy bueno / Oso ona', 2, 4, 8.33, 'Muy bueno / Oso ona', 2.67, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '05:00:00', 0.07, 0.06, 3, 'Muy bueno / Oso ona', 2, 6, 4.13, 'Muy bueno / Oso ona', 2.21, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '06:00:00', 0.09, 0.07, 3, 'Muy bueno / Oso ona', 2, 6, 4.13, 'Muy bueno / Oso ona', 2.08, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '07:00:00', 0.09, 0.07, 3, 'Muy bueno / Oso ona', 2, 6, 4.17, 'Muy bueno / Oso ona', 2.13, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '08:00:00', 0.1, 0.07, 3, 'Muy bueno / Oso ona', 2, 6, 4.08, 'Muy bueno / Oso ona', 2.08, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '09:00:00', 0.1, 0.08, 3, 'Muy bueno / Oso ona', 2, 6, 4.08, 'Muy bueno / Oso ona', 2.13, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '10:00:00', 0.12, 0.08, 3, 'Muy bueno / Oso ona', 2, 6, 4.17, 'Muy bueno / Oso ona', 2.17, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '11:00:00', 0.12, 0.09, 8, 'Muy bueno / Oso ona', 8, 20, 4.25, 'Muy bueno / Oso ona', 2.21, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '12:00:00', 0.17, 0.11, 5, 'Muy bueno / Oso ona', 3, 9, 4.96, 'Muy bueno / Oso ona', 2.13, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '13:00:00', 0.21, 0.12, 4, 'Muy bueno / Oso ona', 3, 8, 7.38, 'Muy bueno / Oso ona', 2.04, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '14:00:00', 0.19, 0.14, 5, 'Muy bueno / Oso ona', 2, 8, 7.29, 'Muy bueno / Oso ona', 2.08, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '15:00:00', 0.16, 0.15, 5, 'Muy bueno / Oso ona', 2, 8, 7.33, 'Muy bueno / Oso ona', 2.04, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '16:00:00', 0.15, 0.15, 5, 'Muy bueno / Oso ona', 2, 8, 7.33, 'Muy bueno / Oso ona', 2.08, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '17:00:00', 0.14, 0.16, 4, 'Muy bueno / Oso ona', 2, 7, 7.13, 'Muy bueno / Oso ona', 2.13, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '18:00:00', 0.1, 0.16, 3, 'Muy bueno / Oso ona', 2, 6, 7.13, 'Muy bueno / Oso ona', 2.04, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '19:00:00', 0.11, 0.15, 3, 'Muy bueno / Oso ona', 2, 6, 7.25, 'Muy bueno / Oso ona', 2.13, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '20:00:00', 0.1, 0.15, 3, 'Muy bueno / Oso ona', 2, 6, 7.58, 'Muy bueno / Oso ona', 2.21, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '21:00:00', 0.11, 0.13, 3, 'Muy bueno / Oso ona', 2, 6, 7.79, 'Muy bueno / Oso ona', 2.25, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '22:00:00', 0.11, 0.12, 3, 'Muy bueno / Oso ona', 2, 6, 8, 'Muy bueno / Oso ona', 2.33, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PAGOETA', '2021-12-31', '23:00:00', 0.11, 0.12, 3, 'Muy bueno / Oso ona', 2, 6, 8.29, 'Muy bueno / Oso ona', 2.38, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '00:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 0, 5, 8.25, 'Muy bueno / Oso ona', 6.29, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '05:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 0, 6, 8, 'Muy bueno / Oso ona', 6.5, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '06:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 0, 7, 8, 'Muy bueno / Oso ona', 6.54, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '07:00:00', NULL, NULL, 29, 'Muy bueno / Oso ona', 0, 30, 7.96, 'Muy bueno / Oso ona', 6.5, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '08:00:00', NULL, NULL, 30, 'Muy bueno / Oso ona', 4, 36, 8, 'Muy bueno / Oso ona', 6.5, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '09:00:00', NULL, NULL, 37, 'Muy bueno / Oso ona', 8, 49, 8.08, 'Muy bueno / Oso ona', 6.58, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '10:00:00', NULL, NULL, 33, 'Muy bueno / Oso ona', 12, 52, 8.17, 'Muy bueno / Oso ona', 6.58, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '11:00:00', NULL, NULL, 42, 'Bueno / Ona', 22, 75, 8.17, 'Muy bueno / Oso ona', 6.58, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Bueno / Ona'),
('PUYO', '2021-12-31', '12:00:00', NULL, NULL, 33, 'Muy bueno / Oso ona', 9, 46, 8.17, 'Muy bueno / Oso ona', 6.54, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '13:00:00', NULL, NULL, 22, 'Muy bueno / Oso ona', 3, 26, 8.25, 'Muy bueno / Oso ona', 6.58, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '14:00:00', NULL, NULL, 29, 'Muy bueno / Oso ona', 4, 36, 8.17, 'Muy bueno / Oso ona', 6.54, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '15:00:00', NULL, NULL, 23, 'Muy bueno / Oso ona', 2, 26, 8.13, 'Muy bueno / Oso ona', 6.5, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '16:00:00', NULL, NULL, 24, 'Muy bueno / Oso ona', 1, 26, 8.08, 'Muy bueno / Oso ona', 6.42, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '17:00:00', NULL, NULL, 32, 'Muy bueno / Oso ona', 1, 33, 7.92, 'Muy bueno / Oso ona', 6.33, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '18:00:00', NULL, NULL, 33, 'Muy bueno / Oso ona', 0, 33, 8, 'Muy bueno / Oso ona', 6.33, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '19:00:00', NULL, NULL, 23, 'Muy bueno / Oso ona', 0, 23, 8.04, 'Muy bueno / Oso ona', 6.25, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '20:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 0, 9, 8, 'Muy bueno / Oso ona', 6.25, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '21:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 0, 9, 8.08, 'Muy bueno / Oso ona', 6.29, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '22:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 0, 6, 8.17, 'Muy bueno / Oso ona', 6.33, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('PUYO', '2021-12-31', '23:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 0, 5, 8.17, 'Muy bueno / Oso ona', 6.29, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '00:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 4, 11, 12.63, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '05:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 3, 11, 11.42, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '06:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 3, 12, 11.46, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '07:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 3, 9, 11.54, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '08:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 3, 10, 11.5, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '09:00:00', NULL, NULL, 10, 'Muy bueno / Oso ona', 3, 15, 11.42, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '10:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 4, 13, 11.38, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '11:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 5, 15, 11.17, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '12:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 4, 13, 10.83, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '13:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 4, 14, 10.75, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '14:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 4, 14, 10.79, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '15:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 4, 14, 10.92, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '16:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 4, 12, 11.13, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '17:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 4, 13, 11.54, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '18:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 3, 12, 11.83, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '19:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 4, 11, 12.04, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '20:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 4, 11, 12.13, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '21:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 4, 12, 12.33, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '22:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 4, 12, 12.54, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN JULIAN', '2021-12-31', '23:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 4, 12, 12.58, 'Muy bueno / Oso ona', NULL, NULL, 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.17, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '05:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.75, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona');
INSERT INTO `datos` (`NombreEstacion`, `Fecha`, `Hora`, `COmgm3`, `CO8hmgm3`, `NO2gm3`, `NO2ICA`, `NOgm3`, `NOXgm3`, `PM10gm3`, `PM10ICA`, `PM25gm3`, `PM25ICA`, `SO2gm3`, `SO2ICA`, `ICAEstacion`) VALUES
('SAN MIGUEL', '2021-12-31', '06:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.54, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '07:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.38, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '08:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.25, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '09:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.08, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 6.92, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 6.96, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.17, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '13:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.29, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '14:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.46, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '15:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.63, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.75, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '17:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.92, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '18:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.92, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '19:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.67, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.33, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '21:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.13, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '22:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.04, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SAN MIGUEL', '2021-12-31', '23:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 7.04, 'Muy bueno / Oso ona', NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '00:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 0, 7, 7.29, 'Muy bueno / Oso ona', 4.63, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '05:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 0, 8, 7.46, 'Muy bueno / Oso ona', 4.88, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '06:00:00', NULL, NULL, 16, 'Muy bueno / Oso ona', 1, 18, 7.38, 'Muy bueno / Oso ona', 4.79, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '07:00:00', NULL, NULL, 29, 'Muy bueno / Oso ona', 4, 35, 7.38, 'Muy bueno / Oso ona', 4.75, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '08:00:00', NULL, NULL, 31, 'Muy bueno / Oso ona', 1, 32, 7.17, 'Muy bueno / Oso ona', 4.63, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '09:00:00', NULL, NULL, 25, 'Muy bueno / Oso ona', 3, 29, 7.33, 'Muy bueno / Oso ona', 4.46, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '10:00:00', NULL, NULL, 19, 'Muy bueno / Oso ona', 5, 26, 7.33, 'Muy bueno / Oso ona', 4.21, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '11:00:00', NULL, NULL, 17, 'Muy bueno / Oso ona', 5, 24, 7.58, 'Muy bueno / Oso ona', 4.38, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '12:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 1, 10, 7.33, 'Muy bueno / Oso ona', 4.46, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '13:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 1, 8, 7.17, 'Muy bueno / Oso ona', 4.5, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '14:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 0, 5, 7.08, 'Muy bueno / Oso ona', 4.42, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '15:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 0, 4, 7.08, 'Muy bueno / Oso ona', 4.42, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '16:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 0, 5, 7, 'Muy bueno / Oso ona', 4.54, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '17:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 0, 7, 7.08, 'Muy bueno / Oso ona', 4.58, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '18:00:00', NULL, NULL, 20, 'Muy bueno / Oso ona', 1, 21, 7.04, 'Muy bueno / Oso ona', 4.58, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '19:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 0, 12, 6.58, 'Muy bueno / Oso ona', 4.29, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '20:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 0, 6, 6.38, 'Muy bueno / Oso ona', 4.21, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '21:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 0, 6, 6.46, 'Muy bueno / Oso ona', 4.17, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '22:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 0, 7, 6.54, 'Muy bueno / Oso ona', 4.25, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANGRONIZ', '2021-12-31', '23:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 0, 6, 6.29, 'Muy bueno / Oso ona', 4.21, 'Muy bueno / Oso ona', NULL, NULL, 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '00:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 1, 8, 4.42, 'Muy bueno / Oso ona', 3.21, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '05:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 1, 10, 8.33, 'Muy bueno / Oso ona', 2.71, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '06:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 1, 10, 8.33, 'Muy bueno / Oso ona', 2.67, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '07:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 1, 11, 8.33, 'Muy bueno / Oso ona', 2.67, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '08:00:00', NULL, NULL, 14, 'Muy bueno / Oso ona', 1, 18, 8.33, 'Muy bueno / Oso ona', 2.5, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '09:00:00', NULL, NULL, 20, 'Muy bueno / Oso ona', 3, 25, 8.25, 'Muy bueno / Oso ona', 2.5, 'Muy bueno / Oso ona', 5, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '10:00:00', NULL, NULL, 21, 'Muy bueno / Oso ona', 3, 26, 8, 'Muy bueno / Oso ona', 2.46, 'Muy bueno / Oso ona', 4, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '11:00:00', NULL, NULL, 15, 'Muy bueno / Oso ona', 2, 19, 7.54, 'Muy bueno / Oso ona', 2.42, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '12:00:00', NULL, NULL, 13, 'Muy bueno / Oso ona', 2, 17, 5.54, 'Muy bueno / Oso ona', 2.25, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '13:00:00', NULL, NULL, 10, 'Muy bueno / Oso ona', 1, 13, 4.17, 'Muy bueno / Oso ona', 2.13, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '14:00:00', NULL, NULL, 10, 'Muy bueno / Oso ona', 1, 11, 3.79, 'Muy bueno / Oso ona', 2.08, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '15:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 1, 11, 3.5, 'Muy bueno / Oso ona', 2, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '16:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 1, 11, 3.33, 'Muy bueno / Oso ona', 1.92, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '17:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 1, 10, 3.21, 'Muy bueno / Oso ona', 2.04, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '18:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 1, 11, 3.13, 'Muy bueno / Oso ona', 2.13, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '19:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 1, 11, 3.08, 'Muy bueno / Oso ona', 2.13, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '20:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 1, 10, 3.08, 'Muy bueno / Oso ona', 2.38, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '21:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 1, 8, 3.21, 'Muy bueno / Oso ona', 2.5, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '22:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 7, 3.46, 'Muy bueno / Oso ona', 2.42, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SANTURCE', '2021-12-31', '23:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 1, 6, 3.75, 'Muy bueno / Oso ona', 2.46, 'Muy bueno / Oso ona', 3, 'Muy bueno / Oso ona', 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '00:00:00', NULL, NULL, NULL, 'Sin datos / Daturik gabe', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '05:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '06:00:00', NULL, NULL, NULL, 'Sin datos / Daturik gabe', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '07:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '08:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '09:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '10:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '11:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '12:00:00', NULL, NULL, 1, 'Muy bueno / Oso ona', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '13:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '14:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '15:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '16:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '17:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '18:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '19:00:00', NULL, NULL, 0, 'Muy bueno / Oso ona', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '20:00:00', NULL, NULL, NULL, 'Sin datos / Daturik gabe', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '21:00:00', NULL, NULL, NULL, 'Sin datos / Daturik gabe', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '22:00:00', NULL, NULL, NULL, 'Sin datos / Daturik gabe', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SERANTES', '2021-12-31', '23:00:00', NULL, NULL, NULL, 'Sin datos / Daturik gabe', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '00:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 4, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '05:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '06:00:00', NULL, NULL, 8, 'Muy bueno / Oso ona', 3, 13, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '07:00:00', NULL, NULL, 15, 'Muy bueno / Oso ona', 4, 22, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '08:00:00', NULL, NULL, 19, 'Muy bueno / Oso ona', 5, 27, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '09:00:00', NULL, NULL, 20, 'Muy bueno / Oso ona', 5, 28, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '10:00:00', NULL, NULL, 18, 'Muy bueno / Oso ona', 6, 27, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '11:00:00', NULL, NULL, 18, 'Muy bueno / Oso ona', 7, 29, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '12:00:00', NULL, NULL, 18, 'Muy bueno / Oso ona', 8, 31, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '13:00:00', NULL, NULL, 12, 'Muy bueno / Oso ona', 6, 20, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '14:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 5, 16, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '15:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 3, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '16:00:00', NULL, NULL, 9, 'Muy bueno / Oso ona', 4, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '17:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 3, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '18:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '19:00:00', NULL, NULL, 7, 'Muy bueno / Oso ona', 2, 11, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '20:00:00', NULL, NULL, 6, 'Muy bueno / Oso ona', 3, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '21:00:00', NULL, NULL, 5, 'Muy bueno / Oso ona', 2, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '22:00:00', NULL, NULL, 4, 'Muy bueno / Oso ona', 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona'),
('SESTAO', '2021-12-31', '23:00:00', NULL, NULL, 2, 'Muy bueno / Oso ona', 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'Muy bueno / Oso ona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_diarios`
--

CREATE TABLE `datos_diarios` (
  `NombreEstacion` varchar(30) NOT NULL,
  `Dia` date NOT NULL,
  `COmgm3` double DEFAULT NULL,
  `CO8hmgm3` double DEFAULT NULL,
  `NOgm3` double DEFAULT NULL,
  `NO2gm3` double DEFAULT NULL,
  `NOXgm3` double DEFAULT NULL,
  `PM10gm3` double DEFAULT NULL,
  `PM25gm3` double DEFAULT NULL,
  `SO2gm3` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacios_naturales`
--

CREATE TABLE `espacios_naturales` (
  `CodEspacio` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` longtext COLLATE utf8_spanish_ci NOT NULL,
  `Imagen` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `espacios_naturales`
--

INSERT INTO `espacios_naturales` (`CodEspacio`, `Nombre`, `Descripcion`, `Imagen`) VALUES
(1, 'Piscinas fluviales de Espejo', 'Las piscinas fluviales de Espejo se hallan en el territorio histórico de Álava, en el municipio de Valdegovía, dentro de la Cuadrilla de Añana. Este bello entorno, emplazado en el río Omecillo, se convierte en lugar de descanso para muchos lugareños y visitantes durante los meses de verano. Cuenta con amplios aparcamientos a ambos lados del río, una zona de baño y un área de recreo con arbolado que dispone de asadores, mesas, bancos e instalaciones infantiles para el disfrute de los más pequeños. Además, en el río también existen tramos preparados para los aficionados al piragü ismo.', 'Imagen.jpg'),
(2, 'Playa de Arrigunaga', 'La playa de Arrigunaga se encuentra en el municipio de Getxo, en Bizkaia. Ubicada bajo los acantilados de La Galea, ofrece hermosas vistas al Abra y al Molino de Aixerrota. Además de poder tomar el sol y un agradable baño, la playa de Arrigunaga ofrece al visitante la posibilidad de realizar numerosas actividades como elsurfo el skate. Aunque es de fácil acceso, resulta algo peligrosa, ya que su fondo es de arena y roca, y al bajar la marea, aparecen puntas de roca, por lo que hay que tener cuidado. Genera varias olas a lo largo de la playa, siendo las más interesantes las que rompen atrás. En la zona oeste de la playa hay un espigón y junto a él, los días de mucho mar rompe una derecha que se adentra en la ría. Esta ola es sólo para expertos ya que rompe a partir de los dos metros de altura. A un kilómetro más hacia el norte se encuentra otra ola de gran calidad que solo rompe en ocasiones especiales, se trata de unpoint breakque genera largas derechas. Cabe destacar que este arenal ha obtenido laBandera Azul, Certificado Internacional de Calidad Ambiental otorgado por la FEE', 'EstacionNatural2.jpg'),
(3, 'Playa de Barinatxe', 'Enclavada entre los municipios vizcaínos de Sopela y Getxo, la playa de Barinatxe está compuesta por tres elementos vitales de la naturaleza: agua de una inmensa bravura, fina arena y un aire volátil que emana una pureza solamente propia de enclaves tan característicos como este. Precisamente gracias a su innato e impredecible ecosistema, Barinatxe se ha ganado el nombre de “ La Salvaje&rdquor . Se trata de unaplaya amplia y abierta, flanqueada por hermosos acantilados, y que cuenta con una zona naturista. Asimismo, la playa de Barinatxe ofrece la oportunidad de realizar numerosas actividades, entre las que destaca elsurf, debido al gran oleaje de sus aguas. Como su propio nombre indica se trata de una playa salvaje con un sistema dunar propio. Cuenta con un edificio multiusos con vestuarios, duchas y donde tienen su sede las escuelas de surf locales, cuenta con dos clubes de surf y como el resto de las playas de esta zona hay una gran afluencia de bañistas y surfistas. Orientada al noroeste, la frecuencia de olas es bastante alta. Es una playa que cuenta con distintos picos, la más conocida es la ola de La Triangular, de fondo rocoso, que puede aguantar bastante tamaño y funciona con todas las mareas. Se trata de una derecha larga con un pico muy concentrado pero bastante noble, lo que la hace ideal para la práctica del longboard, en marea baja tiene una izquierda más vertical con secciones tuberas. En la zona oeste de la playa está la ola de La Batidora, donde predominan las izquierdas. En la zona centro se encuentra La Corriente, una izquierda muy técnica y muy cambiante en función de la marea, el tamaño del swell y la corriente. En Barinatxe los fondos son muy cambiantes y pueden dar olas de mucha calidad. Sus acantilados son ideales para la práctica del parapente.', 'EstacionNatural3.jpg'),
(4, 'Playa de Ereaga', 'La playa de Ereaga se encuentra en el municipio de Getxo, entre el puerto viejo de Algorta y el espigón de Arriluze. Con sus más de800 metros de fina arena, este hermoso arenal está muy bien equipado de cara a la época estival. Por otro lado, son muchos los deportes que se practican en esta playa: surf, piragü ismo, voleibol y vela, entre otros. Pero, sin duda, Ereaga es muy conocida por los torneos de fútbol playa que aquí se disputan. Se trata de una playa urbana que ofrece sobre todo olas de izquierdas y es idónea para la práctica del bodyboard. Olas cortas y tubulares. Necesita mucho mar, por lo que no ofrece olas a menudo aguanta olas de hasta 2 metros y cabe destacar que está muy protegida del viento noroeste, por lo que resulta una alternativa muy válida cuando las condiciones meteorológicas son adversas en las playas abiertas y el mar está desfasado. El otro spot existente en esta playa es el apodado Jeffrey\'s por los locales: una derecha de calidad que rompe en la zona interna de la ría de Bilbao, en frente del Puerto Viejo de Algorta. Necesita de mucha mar para empezar a romper y son pocas las veces que lo hace al año, pero cuando se dan las condiciones, aguanta olas largas de hasta 3 metros de altura. El acceso es complicado ya que hay que acceder entre rocas o realizar una remada de mucho recorrido. Cabe destacar que este arenal ha obtenido laBandera Azul, Certificado Internacional de Calidad Ambiental otorgado por la FEE', ''),
(5, 'Playa de Gorrondatxe (Azkorri)', 'Gorrondatxees la cuarta playa deGetxo  y  quizá la menos accesible, pero la más limpia. Conocido también por el nombre deAzkorri, este arenal se encuentra alejado del casco urbano del municipio al que pertenece, pero próximo a la vecina localidad de Berango.\n \nLa playa está situada en unentorno natural de excepción, rodeada de abruptos acantilados y hermosas dunas. De arena fina y oscura, está bien equipada.\n \nAsimismo, la playa de Gorrondatxe es un lugar propicio para la práctica de algunas actividades deportivas, como el voleibol y el surf.\n \nSe trata de una de las playas más especiales de la zona, es de las pocas que aún conserva el sistema dunar propio y es un beach rock, su superficie es dura. En la zona oeste de la playa se encuentra la ola del Akanti, justo enfrente de la punta del acantilado, es una izquierda muy técnica con distintas secciones, alguna de ellas tubera. Puede aguantar hasta 3 metros y necesita un swell medio para empezar a funcionar. En la zona centro y este de la playa también hay olas interesantes que rompen sobre roca, una derecha intensa y una izquierda de mayor calidad. En ambas olas es importante que las condiciones de viento y swell sean lo más limpias posible.\n \nCabe destacar que este arenal ha obtenido la Bandera Azul, certificado Internacional de Calidad Ambiental otorgado por la FEE.', 'EstacionNatural5.jpg'),
(6, 'Playa de Hondarribia', 'La playa deHondarribiaestá ubicada en el extremo oriental del litoral guipuzcoano, concretamente en la hermosabahía de Txingudi, junto a la desembocadura del río Bidasoa.\n \nEste hermoso arenal defina arena doraday aguas tranquilas cuenta con 700 metros de longitud. Se encuentra muy cerca del centro urbano, por lo que está rodeado de numerosos establecimientos hosteleros y dispone de diversos servicios.\n \nHondarribia es un spot alternativo para los días de maretón. Se trata de una derecha larga y maniobrable que rompe junto al espigón y da buenas sesiones, sobre todo en invierno. Único spot del municipio, es uno de los más bellos de la costa vasca.\n \nAsimismo, en esta playa, podemos practicar otros deportes acuáticos, entre los que destacan el piragü ismo y el windsurf. Además, durante la época estival, se coloca una estructura en el mar con toboganes y trampolines.', ''),
(7, 'Playa de Hondartzape', 'La playa de Hondartzape está ubicada en el municipio vizcaíno de Mundaka, a 36 km de Bilbao. La principal característica de esta playa son sus rocas y su arena negra, formando así, en bajamar, unapequeña y bonita cala. La playa cuenta en sus inmediaciones con unasespectaculares vistas, dado que se encuentra dentro de la Reserva de la Biosfera de Urdaibai, espacio natural de gran interés por ser lugar de reposo e invernada de muchas especies de aves migratorias. Hondartzape es un lugar apropiado para quienes buscan unambiente tranquilo e idealpara los amantes delsubmarinismo.', 'EstacionNatural7.jpg'),
(8, 'Playa de La Arena', 'Situada entre Muskiz y Zierbena, la hermosa playa de La Arena tiene 966 metros de longitud y esuno de los rincones preferidos de los surfistasde la Margen Izquierda del Gran Bilbao. Es la última playa de Euskadi en su límite oeste. Tiene fundamentalmente tres olas principales: la izquierda de Pobeña, en la zona oeste de la playa, el Centro y la derecha del Vivero, en la zona este de la playa. Es en el Centro donde se imparten las clases de surf, ya que los otros dos picos merecen especial atención por las fuertes corrientes. Todas las olas funcionan en todas las mareas, aunque Pobeña rompe mejor con marea baja, siendo una izquierda larga de gran calidad que puede ofrecer sesiones épicas. La playa aguanta hasta los 2 metros y no necesita mucho mar, gracias a que es un arenal abierto.', ''),
(9, 'Playa de La Concha', 'La incomparableplaya de La Conchaes una de las señas de identidad deSan Sebastián. Situada en pleno centro de la ciudad, ofrece al visitante la oportunidad de disfrutar de magníficas vistas, como la que nos ofrece su hermosa bahía en forma de concha, con la isla de Santa Clara en el centro, flanqueada por los montes Urgull e Igeldo.\n \nDefina arena dorada, en sus 1.350 metros de longitud podemos practicar numerosas actividades deportivas, tales como surf, windsurf, piragü ismo, bodyboard, voleibol o fútbol playa. Es un spot alternativo para los días grandes, un beach break  muy urbano. Cuenta con varios picos, sobre todo derechas, destacando El Pico del Loro en marea alta, ideal para la práctica de bodyboard.\n \nEn la temporada de verano, se coloca una estructura en el mar con toboganes y trampolines, que nos permite disfrutar aún más del baño. ', ''),
(10, 'Playa de Laidatxu', 'La playa de Laidatxu se halla en el municipio vizcaíno deMundaka, muy cerca delcasco urbano. De dimensiones pequeñas yarena fina y dorada, la calidad de sus aguas es muy buena, por lo que es muy recomendable para familias con niños.\n \nConsiderada como una de las 10 mejores olas del mundo, Mundaka ofrece olas izquierdas de gran nivel, aptas sólo para surfistas con conocimientos altos. Necesita condiciones muy especiales. Su ola, espectacularmente tubular, se caracteriza además por su gran longitud. Puede aguantar hasta los 4 metros.\n \nSu situación en la salida de la ría de Gernika, hace que sus fondos no sean constantes y que cambien a lo largo del año. Enclavada en laReserva de la Biosfera Urdaibai, declarada patrimonio de la humanidad por la UNESCO, es uno de los parajes más espectaculares de la costa vasca.\n \nLa playa de Mundaka alberga importantes eventos de nivel mundial. Este pequeño arenal ofrece también la posibilidad de realizar otras actividades, como piragü ismo, windsurf... En la temporada de verano, podemos tomar un ferry para trasladarnos hasta la cercana playa de Laida, y recorrer así parte de la hermosa Reserva de la Biosfera de Urdaibai.', 'EstacionNatural10.jpg'),
(11, 'Playa de Las Arenas', 'La playa de Las Arenas se encuentra en el municipio vizcaíno deGetxo, en el Abra de Bilbao, junto al muelle de Churruca y muy próxima alPuente de Bizkaia, monumento declarado Patrimonio de la Humanidad.\n \nEste pequeño arenal, ubicado en pleno centro urbano, está bien comunicado y cuenta en sus inmediaciones con un club marítimo de gran tradición y numerosos servicios hosteleros.\n \nEn la época estival, socorristas y hondartzainas vigilan la playa, mientras que los usuarios tienen a su disposición varios servicios aseos, duchas, vestuarios, fuentes... Además de ser un lugar propicio para tomar el sol, esta playa ofrece la posibilidad de realizar diversas actividades, como windsurf, piraguismo y, en especial,vela.\n \nCerca se encuentra la escuela de vela José Luis de Ugarte, donde se organizan cursos de iniciación y perfeccionamiento en este deporte a partir de los ocho años, entre otras actividades.', ''),
(12, 'Playa de Ondarreta', 'Situada en el extremo oeste de la capital donostiarra, al abrigo del monte Igeldo y frente a la isla de Santa Clara, esta playa de fina arena dorada es una de las más elegantes de Gipuzkoa. Ondarreta, con sus 600 metros de longitud, dispone de una variada oferta deportiva. Durante los meses de verano, se organizan cursos de natación y voleibol. Asimismo, es posible practicar numerosas actividades acuáticas y posee, además, amplias y modernas instalaciones. Ondarreta cuenta con un par de izquierdas que rompen junto al paseo oeste de la playa. Izquierdas rápidas e intensas. Es un spot alternativo para los días de maretón y condiciones adversas, está protegida de los vientos del oeste. De gran vistosidad ya que los paseantes están literalmente encima de los surfistas. Precisamente, está unida a las playas de La Concha y La Zurriola a través de un paseo marítimo de 7 kilómetros que termina cerca de Ondarreta, en el Peine del Viento, espacio mágico donde contemplaremos las esculturas de acero de Eduardo Chillida que se agarran a las rocas, desafiando a las olas del mar.', 'EstacionNatural12.jpg'),
(13, 'Playa de Zarautz', 'La playa deZarautzllama especialmente la atención por su extensa longitud, con 2.500 metros de fina arena dorada.\n \nEste hermoso arenal, con sus llamativos toldos, cuenta con unanimado paseo marítimorepleto de bares, cafeterías y restaurantes. La playa está abierta al mar y es muy conocida por las olas que allí se forman, pues sirven dereclamo para surfistasque provienen de muchos lugares del mundo. De hecho, Zarautz posee una de las mejores canteras de surfistas de toda Europa.\n \nEs laplaya más extensa de la costa vascay cuenta con multitud de rompientes. Es ideal para la iniciación en el surf y cuenta con cinco escuelas, su club de surf es uno de los más activos de la costa. Alberga varias competiciones a lo largo del año, destacando el mundial WQS que se celebra en el mes de septiembre. De oeste a este destacan los picos del puerto, (el cual rompe cuando hay mar de más de dos metros) Argiñano, verdadero epicentro de la playa y El canal, una zona más alejada en la punta este que da sesiones de calidad.\n \nElambiente surfero de Zarautzes increíble, destacando las zonas de Argiñano y el pueblo.', ''),
(14, 'Playa de la Zurriola', 'La playa de la Zurriola se halla en el barrio donostiarra de Gros, bajo la atenta mirada del Palacio de Congresos y Auditorio Kursaal. Antiguamente, estuvo formada por grandes arenales ubicados entre la desembocadura del río Urumea y el monte Ulía. En la década de los 90, comenzaron los trabajos de rehabilitación y se procedió a la construcción de la actual playa, defina arena dorada y fuerte oleaje. La playa más surfera de la capital, cuenta con olas de calidad, destacando la derecha de Monpas y El Centro, con derechas e izquierdas intensas. Monpas puede generar buenas secciones tuberas y es la ola de más fuerza, mientras que El Centro genera principalmente izquierdas en marea baja y buenas derechas a medida que sube la marea. Es una playa que recoge mucho mar y funciona en todas las mareas. En esta playa se desarrollan importantes eventos de surf como la prueba europea Projunior ASP que se celebra en julio. La playa cuenta con unclub de surf local y cuatro escuelas de surf, por lo que es ideal para la iniciación.', ''),
(15, 'Zierbena-Puerto', 'Situada en la costa occidental de Bizkaia, esta playa artificial de tan sólo 100 metros de longitud se encuentra en el propio puerto pesquero de Zierbena. Esta pequeña playa se asoma en bajamar. Sus aguas tranquilas son seguras para los bañistas y sobre todo, para los más pequeños. En verano, dispone de varios servicios, como duchas, hondartzainas, socorristas... El lugar mantiene su encanto y cierto sabor marinero, con barcos de pesca y de recreo atracados en el puerto y los típicos restaurantes y asadores en las inmediaciones que despiden un delicioso aroma de pescados cocinados a la brasa. Además de poder tomar el sol y un agradable baño, la playa de Zierbena ofrece al visitante la posibilidad de realizar actividades como piragü ismo y vela.', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estaciones`
--

CREATE TABLE `estaciones` (
  `Nombre` varchar(30) NOT NULL,
  `CodMunicipio` int(11) NOT NULL,
  `CodProvincia` int(11) NOT NULL,
  `CoordenadaX` double NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `CoordenadaY` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estaciones`
--

INSERT INTO `estaciones` (`Nombre`, `CodMunicipio`, `CodProvincia`, `CoordenadaX`, `Direccion`, `CoordenadaY`) VALUES
('3 DE MARZO', 59, 1, 42.85604797053618, 'Plaza Tres de Marzo, s/n', -2.667784994714487),
('ABANTO', 2, 48, 43.32047399433485, 'Avda. del Minero, 2. Ayuntamiento', -3.0741559961978044),
('AGURAIN', 51, 1, 42.84901250588428, 'C/ Fueros, 11. Subcomisaría de la Ertzaintza.', -2.3937033896081683),
('ALGORTA (BBIZI2)', 44, 48, 43.362055748944286, 'Carretera de Galea, s/n ', -3.0227822073211765),
('ALONSOTEGI', 912, 48, 43.247567997964374, 'C/ Baztieta, s/n. Bº Irauregi', -2.988024000380936),
('ANDOAIN', 9, 20, 43.22137866586519, 'Ikastola Aita larramendi', -2.02332524753123),
('AÑORGA', 69, 20, 43.29053138556358, 'Avda. de Añorga, 12 (Añorga Txiki)', -1.9957411467011474),
('ARRAIZ (Monte)', 20, 48, 43.245553729819484, 'Camino de Arraiz, s/n', -2.960475856567045),
('ATEGORRIETA', 69, 20, 43.32199194732484, 'Avda. Ategorrieta, 71', -1.960650618338729),
('AV. GASTEIZ', 59, 1, 42.85478118366939, 'Avda. Gasteiz, 97', -2.6807098224581067),
('AVDA. TOLOSA', 69, 20, 43.30941344063433, 'C/ Andrestegi, 2 ', -2.010938423674493),
('AZPEITIA', 18, 20, 43.180370053194196, 'C/ Perdillegi, s/n', -2.2682104189344456),
('BANDERAS (meteo)', 20, 48, 43.28099012364825, 'Monte Banderas, s/n', -2.953278416670214),
('BARAKALDO', 13, 48, 43.298378997955, 'C/ Hogar propio, 7. CIFP Nicolás Larburu', -2.987132999827669),
('BASAURI', 15, 48, 43.24113129588412, 'C/ Uribarri, 5. CEIP Bizkotxalde.', -2.8837610228035238),
('BEASAIN', 19, 20, 43.04809432240711, 'Plaza Gipuzkoa, 1', -2.191380269702985),
('BOROA METEO', 3, 48, 43.23590459584916, 'Parque Empresarial Boroa, s/n', -2.7506874305174405),
('CASTREJANA', 13, 48, 43.25807942736176, 'C/ Larrazabal, 1. Bº Castrejana', -2.973456590856772),
('DURANGO', 27, 48, 43.168285997690994, 'C/ San Roque, 20 bajo. E.S. Roque', -2.6379580009450136),
('EASO', 69, 20, 43.31215280742268, 'Plaza del Centenario, s/n', -1.9809008637096939),
('ELCIEGO', 22, 1, 42.51824807424149, 'C/ Gabriel Celaya, 8', -2.61947521199466),
('ERANDIO', 902, 48, 43.3026526345891, 'Avda. José Luis Goyoaga, s/n (Pasaje de Altzaga)', -2.9772399863752486),
('EUROPA', 20, 48, 43.25491056506432, 'Parque Europa. Bº Txurdinaga', -2.902376115931137),
('FARMACIA', 59, 1, 42.840099615592926, 'Paseo Universidad, 7. Fac. Farmacia UPV', -2.672563184280286),
('FERIA (meteo)', 20, 48, 43.26522199716327, 'C/ Rafael Moreno Pitxitxi, s/n', -2.9475439999557134),
('HERNANI', 40, 20, 43.26743142273141, 'C/ Aristizabal, s/n. Centro de salud Hernani.', -1.977715640356133),
('JAIZKIBEL', 36, 20, 43.342775184321106, 'Monte Jaizkibel, s/n', -1.8594129027945114),
('LARRABETZU', 52, 48, 43.261226121618066, 'Barrio Berrezoaga, 3', -2.799399084312731),
('LAS CARRERAS', 2, 48, 43.31960312849335, 'Plaza Trinidad, s/n. Bº Las Carreras', -3.0973975060209376),
('LASARTE-ORIA', 902, 20, 43.26870022418793, 'Parque Tximistarreta', -2.0191293415933154),
('LEZO', 53, 20, 43.32152243586307, 'Plaza Polantzarene, s/n', -1.900131049811533),
('LLODIO', 36, 1, 43.1440289422417, 'C/ Lamuza, s/n', -2.9633852821260223),
('LOS HERRAN', 59, 1, 42.84370295644861, 'Parque Judizmendi. Bº Judizmendi', -2.661230556636825),
('MAZARREDO', 20, 48, 43.26750551179745, 'C/ Alameda Mazarredo, s/n (Guggenheim)', -2.935188110338201),
('MONDRAGON', 55, 20, 43.06412079434686, 'Plaza Jose María Arizmendiarrieta, s/n', -2.4903966831445423),
('MONTORRA', 3, 48, 43.209014222504145, 'Barrio Montorra fte. nº5', -2.7165885073623226),
('MUNDAKA', 68, 48, 43.40588884294258, 'Camino Goitiz, s/n. Depósito de Agua', -2.7031593675211343),
('MUNOA', 13, 48, 43.28558799716144, 'C/ Llano, 55. CEP Munoa. Bº Lutxana', -2.978696000976749),
('MUSKIZ', 71, 48, 43.32071311956527, 'C/ Giba Fregenal, s/n. Estación de Renfe', -3.1127162723783197),
('Mª DIAZ HARO', 20, 48, 43.25880286639215, 'C/ Mª Díaz de Haro, 60', -2.945656664175787),
('NAUTICA', 78, 48, 43.32694444265417, 'C/ Mª Díaz de Haro, 68 (Esc. Náutica)', -3.023333333735672),
('PAGOETA', 16, 20, 43.25060521979407, 'Jardín Botánico de Iturraran. Parque Natural de Pagoeta. ', -2.1548873966664503),
('PUYO', 69, 20, 43.302777170621106, 'Camino de Puyo, 14', -1.9840112864449164),
('SAN JULIAN', 71, 48, 43.33265015831669, 'Camino a Valles, s/n. Bº San Julian', -3.112994770178107),
('SAN MIGUEL', 15, 48, 43.2212234317361, 'Parque pinceles. Bº San Miguel', -2.886508983250916),
('SANGRONIZ', 904, 48, 43.29842135635236, 'C/ Iturrikosolo, s/n', -2.93038581833024),
('SANTURCE', 82, 48, 43.33301199742545, 'C/ Vista Alegre, 29 ', -3.042560000349237),
('SERANTES', 82, 48, 43.3344367083824, 'Camino Serantes igoera, s/n', -3.0629905698856272),
('SESTAO', 84, 48, 43.307726099387494, 'Parque Portopin', -2.9959496198447484),
('TOLOSA', 71, 20, 43.13078067861342, 'Avda. Martin Jose Iraola, 23', -2.078002156707588),
('URKIOLA', 1, 48, 43.100442429429606, 'Urkiola auzoa, 8', -2.6508700717196243),
('USURBIL', 73, 20, 43.27378032307657, 'San Inazio', -2.0505110667115676),
('VALDEREJO', 55, 1, 42.87516709375477, 'Ctro. de Interpretación. Parque Natural de Valderejo', -3.231732505322038),
('ZALLA', 96, 48, 43.2128572411877, 'Avda. Kosme Bibanko Etxebarria, 2', -3.134461258966499),
('ZELAIETA PARQUE', 3, 48, 43.21890568490462, 'Parque Zelaieta ', -2.7344969803118295),
('ZIERBENA (Puerto)', 913, 48, 43.35305543364201, 'Puerto de Zierbena, s/n. Bº El Puerto', -3.080988277376953),
('ZUBIETA', 69, 20, 43.272061873363164, 'URIBITARTE IBILBIDEA', -2.0313507420960284),
('ZUBIETA METEO', 69, 20, 43.25597376352475, 'ZUBIETA', -2.0317166856330036),
('ZUMARRAGA', 80, 20, 43.08507598449891, 'Grupo Izazpi 3, 6 ', -2.316228856182885);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `esta_en`
--

CREATE TABLE `esta_en` (
  `CodEspacio` int(11) NOT NULL,
  `CodMunicipio` int(11) NOT NULL,
  `CodProvincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `esta_en`
--

INSERT INTO `esta_en` (`CodEspacio`, `CodMunicipio`, `CodProvincia`) VALUES
(1, 55, 1),
(2, 44, 48),
(3, 44, 48),
(3, 85, 48),
(4, 44, 48),
(5, 44, 48),
(6, 36, 20),
(7, 68, 48),
(8, 71, 48),
(8, 913, 48),
(9, 69, 20),
(10, 68, 48),
(11, 44, 48),
(12, 69, 20),
(13, 79, 20),
(14, 69, 20),
(15, 913, 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos_espacios`
--

CREATE TABLE `favoritos_espacios` (
  `CodUsuario` int(11) NOT NULL,
  `CodEspacio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `favoritos_espacios`
--

INSERT INTO `favoritos_espacios` (`CodUsuario`, `CodEspacio`) VALUES
(1, 2),
(1, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos_municipios`
--

CREATE TABLE `favoritos_municipios` (
  `CodUsuario` int(11) NOT NULL,
  `CodMunicipio` int(11) NOT NULL,
  `CodProvincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashes`
--

CREATE TABLE `hashes` (
  `CodHash` varchar(200) NOT NULL,
  `Url` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `hashes`
--

INSERT INTO `hashes` (`CodHash`, `Url`) VALUES
('33f2e3824187e1c6ac1158088f223ea2e69a78643bdbb8fe731a1730d0fb9746', 'https://opendata.euskadi.eus/contenidos/ds_informes_estudios/calidad_aire_2021/es_def/adjuntos/index.json');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `CodMunicipio` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `CodProvincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`CodMunicipio`, `Nombre`, `Descripcion`, `CodProvincia`) VALUES
(1, 'Abadiño', 'Montes y árboles tiñen de verde los parajes de esta localidad perteneciente a la comarca del Duranguesado y por los que circulan los ríos Ibaizabal y Urkiola. Una buena opción para admirar estos parajes es a través de diversas rutas que ofrece Abadiño y que se pueden realizar a pie, en bicicleta incluso a caballo. Al llegar a esta bella localidad, quedaremos impresionados por sus edificios, con una larga historia en sus cimientos. La Torre de Muntsaratz, por ejemplo, data del siglo IX y se trata de una de las edificaciones renacentistas más importantes de su género. Otro de los monumentos más destacables es la Casa de Astola, que fue centro de actividades políticas y administrativas. Hoy en día, funciona como sede de varias asociaciones de la comarca. Asimismo, fuera del núcleo urbano, llama la atención el Santuario de San Antonio, situado en el corazón del Parque Natural de Urkiola, rodeado de impresionantes montes y de robledales, hayedos y fresnos.Ferias de gran tradición: San Blas y San AntonioLas fiestas patronales comienzan el 12 de mayo (Santo Domingo), por lo que todo el que quiera podrádisfrutar del inmejorable ambiente que se respira estos días. La música y el baile se apoderan de las calles de este pueblo vizcaíno. En el calendario festivo destacan otras dos ferias: la de San Blas (3 de febrero), con su feria de ganado, y la de San Antonio (13 de junio), que se celebra en las inmediaciones del Santuario de Urkiola. En esta última romería, según manda la tradición, las casaderas que buscan encontrar pronto un marido dan vueltas a la piedra que se encuentra enfrente del Santuario.', 48),
(2, 'Abanto y Ciérvana-Abanto Zierbena', 'Esta pequeña localidad de Bizkaia disfruta de un enclave natural único, a tan solo 20 minutos de Bilbao. Sin necesidad de elegir mar o montaña, Abanto y Zierbena lo tiene todo, siendo un lugar idóneo para disfrutar y descansar.Pasado mineroLos viajeros que elijan Abanto y Ciérvana como destino se darán cuenta del especial paisaje que rodea el municipio. El visitante podrácontemplar los restos de infraestructuras mineras entre los que destacan los hornos de calcinación de la mina Joséy mina Lorenza, cerca del barrio de Las Carreras, o el lago Gerente, antiguo pozo minero. También llama la atención el paisaje singular de La Barga, con sus agujas calizas emergiendo de la tierra en la mina Cristina, o el castillete del pozo Ezequiela, creado para la ventilación de la mina de Agruminsa, el único castillete minero que se conserva en Bizkaia. Todo aquel que quiera conocer de primera mano los entresijos de esta actividad, sólo tiene que visitar el Museo de la Minería del País Vasco, situado en Gallarta, en la cabecera del municipio. La protección del patrimonio industrial de la minería es uno de los objetivos de este museo. Allí, encontraremos todas las curiosidades y características sobre los restos industriales que se distribuyen por toda la zona minera. Asimismo, podremos observar muchos de los tesoros que se conservan únicamente en este lugar.', 48),
(3, 'Amorebieta-Etxano', NULL, 48),
(9, 'Andoain', 'Rodeado de bellos y verdes montes nos sumergimos en el municipio de Andoain, localidad perteneciente al territorio histórico de Gipuzkoa y por la que circulan las aguas del rio Oria. Andoain destaca tanto por su extenso entorno natural como por la oferta cultural que ofrece. Los montes Belkoain, Buruntza y Adarra rodean el pueblo, dotándolo de un paraje realmente admirable. Además, se emplaza en el valle de Leizaran, donde antiguamente pasaba el tren de Plazaola que cubría el recorrido entre Navarra y Gipuzkoa. Este excepcional valle dispone, a su vez, de numerosos parques, entre los que se encuentran Etxarri y Otita. Todos ellos son lugares apropiados para descansar y tomar un refrescante baño.Descubriendo el casco urbanoTras esta ruta por los alrededores, nos adentramos en el casco urbano para conocer los rincones más interesantes. En la plaza del pueblo, por ejemplo, podemos contemplar el edificio del ayuntamiento y la iglesia San Martín de Tours, dos bonitas construcciones que han sido testigo del paso de los años en Andoain. Asimismo, en el centro de la plaza, nos toparemos con la estatua de Aita Manuel Larramendi, ilustre personaje de la localidad. Como colofón final a nuestra visita, es importante ir al centro cultural Bastero, situado en el casco urbano. Estamos ante el edificio cultural por excelencia del municipio, ya que allíse concentran las mayores actividades de esta índole, como conciertos y obras de teatro. Cuenta además, con salas de cine en las que se proyectan las últimas películas de la cartelera. Gracias a todas estas características, Andoain dispone de una oferta turística muy variada.', 20),
(13, 'Barakaldo', 'Barakaldo se encuentra dentro de la comarca del Gran Bilbao, en la margen izquierda de la ría del Ibaizabal. Cuenta con montañas de pequeña altura, como Argalario y Arroletza, y limita al norte con los municipios de Sestao y Trapagaran al sur con Gü eñes y Alonsotegi al este con Bilbao y Erandio, y al oeste con Galdames y Gü eñes. Es el segundo municipio más poblado de Bizkaia, por detrás de su capital, Bilbao. Además, al estar ubicado en un enclave privilegiado, con una excelente comunicación vial, es un punto de referencia importante dentro del Gran Bilbao. Por ejemplo, el Bilbao Exhibition Centre (BEC), la feria de muestras de Bilbao que acoge importantes ferias, congresos, conciertos y acontecimientos deportivos, se sitúa en las campas de Ansio, y desde su inauguración en 2004 ha dado a la ciudad una imagen nueva y moderna.Variedad de paisajesBarakaldo une diferentes paisajes dentro del municipio desde la ría hasta la montaña, el visitante encontraráplazas, avenidas, zonas ajardinadas y un parque Botánico, espacios apropiados para realizar rutas y paseos. Merece la pena visitar el barrio del Regato, algo alejado del centro urbano, con su pantano rodeado de un bidegorri con bancos y fuentes. Por otro lado, el municipio es todo un referente cultural, gracias en gran medida al Teatro Barakaldo, que acoge numerosos eventos y actividades durante todo el año. Barakaldo celebra sus fiestas patronales del Carmen a mediados del mes de julio, donde predomina el ambiente festivo lleno de espectáculos y actuaciones de todo tipo.', 48),
(15, 'Basauri', 'Basauri se halla en el territorio histórico de Bizkaia, más concretamente, en la comarca de Uribe Nervión. El municipio se alza a ambos lados del río Nervión, en el punto donde éste se une con el Ibaizabal. Pueblo eminentemente industrial, Basauri se desanexionóde Arrigorriaga en 1510 como Anteiglesia de San Miguel de Basauri. En este barrio estuvo el Ayuntamiento de la localidad, hasta inicios del siglo XX, cuando se decidiótrasladar al barrio de Dos Caminos. El nombre de Dos Caminos (Bidebieta) fue tomado por la confluencia del camino que une Bilbao con Castilla y el segundo camino que partiendo de Bilbao se dirige a Gipuzkoa y Francia. Esta situación de privilegio contribuyóa la mejora de la economía del municipio, reflejada en el auge de sus tabernas, situadas todas ellas al borde del camino. Para recordar esa confluencia de caminos, la emblemática figura de un carro tirado por dos burros todavía hoy adorna el cruce.Bizkotxalde, el parque más grande de BizkaiaEn lo referente al conjunto de patrimonio artístico que alberga el municipio, la Torre de Ariz y la ermita de San Fausto de Ariz, ligada a la torre históricamente, son los principales símbolos de Basauri. La hermosa parroquia de San Miguel, del siglo XVI, y la ermita de San Martín de Fínaga son otros edificios característicos. Otro de los enclaves destacables de Basauri es el parque de Soloarte, que alberga obras al aire libre de uno de los hijos ilustres del pueblo: el escultor Agustín Ibarrola. Otro parque, Bizkotxalde, es el parque urbano más grande de Bizkaia. Basauri celebra sus fiestas patronales en San Fausto, a mediados del mes de octubre, fecha en la que más de 10.000 personas toman las calles ataviadas con trajes tradicionales.', 48),
(16, 'Aia', 'El entorno natural de esta pequeña localidad rural es espectacular y elParque Natural de Pagoetaes la mejor prueba de ello. Estáubicado en el monte Pagoeta (714 m) y es realmente apropiado para disfrutar de la naturaleza no en vano, tenemos la oportunidad de realizar preciosas rutas por los verdes bosques y prados de la zona. Además, existen diversas áreas recreativas habilitadas para el disfrute de pequeños y mayores. Un total de once barrios conforman el municipio de Aia, que cuenta con un rico patrimonio artístico e histórico. En el centro urbano, por ejemplo, destacan laiglesia de San Estebandel año 1350 y la casa consistorial, y, en el barrio Andatza, podemos admirar laermita San Pedro, cuyo retablo fue realizado por Andrés de Araoz. Las principales fiestas de Aia se celebran a principios de agosto, en honor a San Donato y San Lorenzo. Por otra parte, las fiestas de San Martín son muy conocidas, ya que se organizan pruebas de bueyes que atraen a mucha gente de los municipios de alrededor.', 20),
(18, 'Azpeitia', 'Bajo el abrigo del macizo de Izarraitz en la comarca de Urola Medio, se encuentra el municipio guipuzcoano deAzpeitia.\n \nLa localidad es muy conocida por el santuario de Loiola. Se encuentra a un kilómetro del casco urbano y es, sin duda, el conjunto más emblemático del municipio. Esta construcción barroca posee planta circular y estárematada por una espectacular cúpula. Asimismo, admiraremos la casa-torre medieval de los Loiola, en el que nació San Ignacio de Loiola, el vasco más universal. Todos estos elementos conforman un lugar realmente asombroso de renombre internacional.\n \nDesde este municipio, contemplaremos la belleza del macizo de Izarraitz, donde llaman la atención las abundantes formaciones rocosas de su crestería. A través de sus senderos, llegaremos a rincones mágicos, cimas de espectacular belleza como Erlo, Xoxote y Kakueta, esta última perteneciente a la vecina localidad de Azkoitia.\n \nEl Municipio cuenta con tres interesantes museos que merecen una visita. El Museo Vasco del Ferrocarril, El Museo Ingurugiro Etxea y La Santa Casa y la Casa Torre de los Loiola. Destacamos elMuseo Vasco del Ferrocarril, el cual ofrece una visión de la historia ferroviaria de Euskadi mediante la exhibición de más de sesenta vehículos totalmente restaurados y en funcionamiento, tratándose de uno de los museos más importantes de su género en Europa.', 20),
(19, 'Beasain', 'Beasain, situada en elcorazón del Goierri, se encuentra en un paraje idílico, en medio de montes como Murumendi, Usurbe y Pagokabar y acompañado del río Oria.\nLos primeros moradores de Beasain poblaron estas tierras muchos siglos atrás, tal y como lo atestiguan los túmulos de Basagain, Trikuazti l y Trikuazti ll e Illaun, descubiertos en 1927, 1978 y 1989, respectivamente.\nEl conjunto monumental de Igartza es otro de los lugares a destacar, este yacimiento medieval consta de un palacio construido en el siglo XIII, un puente, una presa de madera, una ferrería y un molino, entre otros elementos. A poca distancia, el casco urbano del municipio alberga diferentes puntos de interés turístico, como son la parroquia de Santa María de la Asunción, la basílica de San Martín de Loinatz y la ermita de Nuestra Señora de Loinatz.\nNaturaleza, gastronomía y fiestas\nAsimismo, el municipio ofrece varios espacios verdes para disfrutar del tiempo de ocio, como el parque de Sagastigutia, que cuenta con más de cincuenta especies arbóreas distintas, y el monte Murumendi, paraje considerado como la morada deMari, personaje de la mitología vasca.\nPor otro lado, Beasain es la población de mayor actividad comercial de toda la comarca del Goierri. En sus calles, repletas de tiendas y bares, se respira un inmejorable ambiente. Además, el turista no puede marcharse de la localidad sin probar sus exquisitas morcillas, que podrádegustarlas en cualquier bar o restaurante de la zona.\nBeasain celebra sus principales fiestas a mediados del mes de mayo, las fiestas de Loinatz, donde se organizan multitud de actos para pequeños y mayores, tales como la bajada deMari, la tamborrada infantil y la de las sociedades, el día de las cuadrillas, un desfile de disfraces, etc.', 20),
(20, 'Bilbao', 'Bilbaoes entre las ciudades vascas la más cosmopolita, poblada e inquieta. Se trata de una ciudad camaleónica, que durante las últimas dos décadas ha sabido reinventarse a símisma, transformando por completo tanto su carácter como su fisonomía ello no le ha impedido conservar el encanto y carisma de sus viejos rincones. Su nombre estáy estaráindiscutiblemente ligado al del espectacularMuseo Guggenheim Bilbao, diseñado por Frank O. Gehry y que tanta fama internacional le ha reportado. Pero elBotxo(asíes como se le conoce popularmente) es mucho más que eso: con el transcurso de los años, se ha convertido en un atractivo destino turístico, provisto de una amplia oferta cultural, comercial y gastronómica. Estructuras tan modernas como elPalacio Euskalduna(sede de congresos internacionales e importantes eventos culturales), lasTorres Isozaki Atea, elBilbao Exhibition Centrede Barakaldo o elAeropuerto de La Paloma, en Loiu, han ayudado a vertebrar un nuevo Bilbao, que compite con las grandes ciudades en calidad y modernidad. En la villa no hay cabida para el tedio. Así, los amantes de los paseos tienen a su disposición una amplia gama de interesantes recorridos a realizar, siendo de obligada visita el singularCasco Viejo(también conocido con el nombre deSiete Calles), cuyas callejuelas están salpicadas de bares, restaurantes y comercios clásicos e innovadores, laGran Vía, arteria comercial y bancaria de la ciudad, en la que convergen firmas internacionales y comercios autóctonos, y el área deAbandoibarra, junto a la Ría. Asimismo, elpuente colgante de Bizkaia, declarado Patrimonio de la Humanidad por la UNESCO y que une ambos márgenes de la ría a su paso por Portugalete y Las Arenas, es uno de los emblemas del Gran Bilbao. La diversidad museística es otra de las señas de identidad de la villa. Además del Guggenheim, destacan el deBellas Artes, eletnográfico, el dereproducciones, el detoros, el dearqueologíay elmarítimo. Incluso cuenta con un museo dedicado alAthletic de Bilbao. Durante la época estival, la música cobra un especial protagonismo, gracias a festivales como elBBKLive, en los que se dan cita artistas de primer orden. Sin olvidar el ambiente festivo que se respira en todos y cada uno de los rincones de la ciudad durante laAste Nagusiao Semana Grande. Bilbao es, en resumidas cuentas, una metrópoli con personalidad propia, que apuesta por la modernidad sin renunciar a sus tradiciones más arraigadas.', 48),
(22, 'Elciego', 'El ciego  se sitúa al sur de la Rioja Alavesa, en el territorio histórico de Álava. Hacia el Norte, divisaremos la Sierra de Toloño, y al Sur, veremos pasar el río Ebro. Al Este, limita con Lapuebla de Labarca y al Oeste, con Baños de Ebro.\n \nAl igual que en todos los municipios de la zona, el vino  y todo lo relacionado con este producto es el centro de todas las actividades de la localidad. Por lo tanto, es un destino paradisíaco para los amantes de  la vitivinicultura y el enoturismo. De hecho, cuenta con muchas bodegas de gran calidad, y la oferta es inmejorable.\n \nPintorescas callejuelas\nA su vez, los aficionados al arte también tienen la oportunidad de disfrutar con diversas obras arquitectónicas como la parroquia de San Andrés y la ermita de la Virgen de la Plaza, un capricho de la arquitectura del siglo XVII. Perderse por sus calles bien trazadas, unidas entre sípor pintorescas callejuelas repletas de palacios y casas de piedra blasonadas, es una auténtica delicia.\n \nSi visitamos Elciego  a principios de septiembre, pondremos el broche final a nuestra visita con las fiestas de la Virgen de la Plaza, las más importantes de la localidad, que se celebran el 8 de septiembre. El buen ambiente, el bullicio y la música inundan las calles durante estas fechas. Además, presenciaremos sus danzas autóctonas, conservadas a través de los siglos, al son de la música de los Gaiteros y Tamboril, de gran tradición en el pueblo.', 1),
(27, 'Durango', 'Durangoes un bello municipio del Duranguesado, atravesado por el río Ibaizabal. Se sitúa en las proximidades delParque Natural de Urkiola, espacio natural de excepción donde es posible realizar agradables recorridos o ascender cimas como Anboto (1.331 m), Alluitz (1.040 m) y Mugarra (964 m).\n \nDurango cuenta además, con un interesante patrimonio arquitectónico. Su casco antiguo alberga numerosos monumentos de valor histórico. En la arquitectura religiosa, entre otros edificios, hay que resaltar las dos iglesias situadas en los dos extremos de la parte vieja: la parroquia de Santa Ana, templo barroco ubicado junto alarcoque lleva el mismo nombre, y la iglesia de Santa María de Uribarri, que destaca por su amplio interior gótico y por suinmenso pórtico con cubierta de madera.\n \nOtros monumentos de interés son lacruz de Kurutziaga, la Torre de Lariz y el propio ayuntamiento, que presenta una fachada interesante. El edificio consta de un portal de siete arcos de medio punto, un gran balcón en su primera planta y unas pinturas muy llamativas que decoran las dos últimas.\n \nCultura y fiestas\n \nEn el ámbito cultural, cabe mencionar el centro cultural de San Agustín, espacio que acoge espectáculos de teatro, danza y música. Por otro lado, el Museo de Arte e Historia de Durango, situado en el Palacio Etxezarreta, nos permitiráconocer a fondo el origen y la historia del municipio.\n \nDurango celebra sus fiestas patronales de San Fausto a mediados del mes de octubre. Por su parte, la popular Feria del Libro y Disco Vasco de Durango, referencia obligada en la cultura vasca, tiene lugar a principios de diciembre en Landako Gunea, moderno recinto de reciente construcción que acoge todo tipo de acontecimientos. ', 48),
(36, 'Llodio/Laudio', 'Situado en el precioso Valle de Ayala y atravesado por el río Nervión, Llodio es una localidad que ofrece muchas oportunidades de ocio, combinando el ambiente rural y urbano. Además, estáemplazada en un entorno montañoso, idóneo para los amantes de la naturaleza. Lo que permite realizar diversas rutas a pie o en bicicleta, y disfrutar asíde los bellos parajes que rodean este municipio.Segunda población alavesaLas calles de Llodio, de intensa actividad comercial están repletas de tiendas y establecimientos, en gran parte debido a la densidad poblacional, que le caracteriza por ser la segunda población alavesa. Llodio/Laudio goza de un amplio calendario cultural, todos los meses del año están repletos de actividades teatrales, conciertos de música, exposiciones y un sinfín de eventos más. Tres son las fiestas más reseñables. Antes del inicio de Semana Santa, se celebra la feria del Viernes de Dolores, de gran tradición entre los lugareños. Las fiestas en honor a San Roque, patrón del municipio, comienzan el 15 de agosto, y el último sábado del mes, tiene lugar una de las fiestas más concurridas de la localidad, el popular Día de las Morcillas.', 1),
(36, 'Hondarribia', 'Bañado por las aguas del mar Cantábrico,Hondarribiase halla al nordeste del territorio histórico de Gipuzkoa, en la comarca de Bidasoa-Txingudi, a los pies del monte Jaizkibel (545 m).\n \nPodemos iniciar la visita a Hondarribia contemplando las vistas que ofrece la maravillosa bahía de Txingudi, con la vecina Hendaia al fondo. Después, nos acercaremos hasta la inmensa playa para dar un agradable paseo.\n \n¿ Quéver en Hondarribia?\nHondarribia alberga tesoros históricos que dotan a la localidad de un encanto especial. Si nos adentramos en elcasco antiguo amurallado, podremos caminar por sus calles empedradas repletas de casas blasonadas y edificios singulares como elCastillo del Emperador Carlos V, convertido hoy en día en parador.  Muy cerca se sitúa elbarrio de La Marina, con sus coloristas casas de pescadores,restaurantes y típicos bares de pintxoscon terrazas.\n \nTodas estas características hacen de Hondarribia un destino idóneo para pasar las vacaciones. Este municipio costero cuenta con una amplia y variada oferta hotelera y gastronómica que la hace atractiva en cualquier época del año.\n \nSi decidimos visitar Hondarribia a principios de septiembre, conoceremos de primera mano una de sus tradiciones más arraigadas. El día 8 de ese mes, festividad de la Virgen de Guadalupe, se celebra elAlarde, un desfile en el cual se dan cita las compañías que representan los antiguos barrios o gremios de la ciudad.', 20),
(40, 'Hernani', 'A tan solo 10 km de la capital donostiarra y a los pies del monte Santa Bárbara, Hernani, permite divisar una amplia zona de la Vega del Urumea. El río Urumea recorre la villa de norte a sur y recoge las aguas de todos los arroyos de los alrededores. El término municipal de Hernani, compuesto por 10 barrios, estárodeado de diversos montes (Akora, Urdaburu, Oindi, Azketa), donde encontraremos numerosos caseríos, ermitas, iglesias y restos megalíticos como dólmenes, túmulos y crómlechs, catalogados todos ellos como bienes culturales.Casco antiguo, conjunto monumentalA partir del siglo XX, Hernani conocióel desarrollo industrial que caracteriza a la localidad actualmente. A pesar de ello, ha sabido conservar muchos elementos de interés histórico. El casco antiguo del municipio, asentado en una pequeña colina sobre el río Urumea y calificado como conjunto monumental, mantiene una forma ovalada y cerrada. Antiguamente, estuvo amurallado y, hoy en día, esconde algunos tesoros que merecen ser visitados: la Parroquia de San Juan Bautista del siglo XVI, la Casa Consistorial y Gudarien Enparantza o la antigua Plaza Mayor de la villa, entre otros. Hernani es, además, un punto importante dentro del Camino de Santiago en su trazado interior a su paso por tierras guipuzcoanas. El Puente de Fagollaga y el Humilladero de Santa Cruz son algunos de los monumentos más significativos que se pueden encontrar en el camino. Asimismo, merece la pena visitar la Ermita de Santa Bárbara, desde donde podremos disfrutar de una magnífica vista de los valles del Urumea y del Oria.Museo Chillida-LekuUbicado en la finca de Zabalaga, en el barrio Jáuregi, ofrece al visitante la posibilidad de contemplar la trayectoria profesional del genial escultor Eduardo Chillida. El recinto estádividido en tres zonas: un jardín de 12 hectáreas con más de 40 esculturas al aire libre, una zona de servicios, equipada con un auditorio, área de descanso y tienda, y, finalmente, el caserío Zabalaga, que conserva las obras de menor tamaño elaboradas con diversos materiales. Hernani celebra sus fiestas patronales entre el 23 y 27 de junio, en honor a San Juan Bautista. Además de las numerosas actividades que completan el programa festivo, todos aquellos que visiten el municipio durante estos días podrán contemplar la popular danza denominada \"Azeridantza\", que como manda la tradición, también se escenifica en las fiestas de Carnaval. Además este municipio es conocido por la tradicional elaboración de sidra, que atrae numerosos visitantes.', 20),
(44, 'Getxo', 'Bañado por las aguas del Cantábrico, Getxo se halla en el territorio histórico de Bizkaia, dentro de la comarca de Uribe Costa, y estáformado por cinco núcleos: Andra Mari, Algorta, Las Arenas, Neguri y Romo. Además, rodeado por la bahía del Abra, Getxo se caracteriza por susplayas y acantilados, ya que ofrece un bello paisaje con 10 kilómetros de acantilados, costa y playas.\n \nEn ese sentido, destaca el hermosopaseo Punta Galea, que va desde Getxo a Sopelana, y que guarda interesantes elementos como el Molino de Aixerrota y el Fuerte de la Galea, fortificación del siglo XVIII.\n \nEste entorno facilita la práctica de deportes náuticos y para eso, se organizan cursos de buceo, piragü ismo y también salidas en barco que recorren la costa de los alrededores.  Además, los más aventureros tendrán la oportunidad de probar deportes como la escalada, el descenso de cañones y muchos más.\n \nEdificios históricos y espacios naturales\n \nPara conocer más a fondo las obras monumentales que guarda este encantador municipio, podemos realizar diversas rutas. Una de ellas comienza en la ermita Santa Ana, uno de los ejemplos neogóticos más antiguos de Bizkaia.\n \nContinuamos la visita por la iglesia Nuestra Señora de las Mercedes, edificio que alberga en su interior un llamativo órgano de cuatro teclados. La iglesia Andra Mari, por su parte, nos presenta elementos barrocos típicos del siglo XVIII. Por último, descubriremos el hermoso paseo Zugazarte, en el que se encuentran el palacio de Churruca y la mansión Bake-Eder, dos edificios emblemáticos de Getxo.\n \nOtro de los atractivos inconfundibles de este municipio lo constituye elPuente Bizkaia, monumento Histórico-Artístico que une este enclave con el municipio de Portugalete, y que nos ofrece una extraordinaria vista panorámica. El entrañable Puerto Viejo, con sus estrechas callejuelas y típicas casas de pescadores, revela la importancia que tuvo la actividad pesquera en el municipio.\n \nPor otro lado, el Puerto Deportivo de Getxo, presenta una extensa oferta de ocio. Asímismo, debemos destacar que los espacios naturales, parques y amplias zonas de esparcimiento del municipio se convierten a lo largo del año en escenario ideal para la celebración de acontecimientos culturales y deportivos de gran relevancia. Dichas zonas recogen, entre otros, los Festivales internacionales de Folklore, Jazz, Blues, Folk asícomo la feria de artesanía.', 48),
(51, 'Salvatierra/Agurain', 'Esta localidad estásituada entre las sierras de Entzia e Iturrieta, en las que se esconden impresionantes hayedos. Sus primeros siglos de vida estuvieron marcados por su carácter fronterizo y las disputas de las Coronas de Navarra y Castilla sobre su control. De esta época heredóun bello casco medieval amurallado, que fue declarado conjunto histórico en 1975. La parte vieja estádividida en tres calles principales: Zapatari, Carnicería y Mayor. Esta última es la que alberga los edificios de mayor interés artístico, como las iglesias de San Juan Bautista y Santa María, ambas con retablos del siglo XVI en su interior. Asimismo, como dato de interés, cabe destacar que el Camino de Santiago atraviesa el municipio.Naturaleza y restos prehistóricosEl entorno natural ofrece la posibilidad de realizar múltiples rutas, tanto en bicicleta como a pie. Conoceremos asítodos los bellos rincones que esconden sus alrededores. Merece la pena visitar algunos monumentos megalíticos encontrados en la zona: el dolmen de Sorginetxe (en Arrizala), el crómlech de Mendiluze y el menhir de Itaida (estos dos últimos hallados en la sierra de Entzia). Estos restos se sitúan cerca del puerto de Opakua y se encuentran en muy buen estado de conservación, prueba del interés histórico que suscitan.', 1),
(52, 'Larrabetzu', 'Este municipio del valle del Txorierri, cuenta con un hermoso casco histórico, declarado Conjunto Monumental, que fue construido basándose en patrones de estilo neoclásico. Entre las edificaciones de la zona destacamos la Iglesia de Santa María de la Asunción, formando parte del mismo núcleo histórico de Larrabetzu. Adentrándonos en el barrio Goikolexea, uno de los edificios que merece especial mención es la iglesia San Emeterio y San Celedonio, templo destacable que posee uno de los retablos más notables del territorio histórico.Conjunto monumentalLos edificios que definen la plaza forman un bello conjunto arquitectónico entre ellos, destaca el palacio de Ikaza, edificio del siglo XV y ubicado junto al ayuntamiento del municipio. A escasos metros se encuentra el palacio Anguleri, edificio cúbico de gran interés artístico y etnográfico por mezclar características del caserío y del palacio. Por otro lado, Larrabetzu estáubicado en un entorno privilegiado, y forma parte del denominado Camino de la Costa dentro del Camino de Santiago, por lo que recibe a numerosos peregrinos. Además, este municipio vizcaíno acoge varias festividades a lo largo del año, aunque celebra sus fiestas patronales de San Isidro a mediados del mes de mayo.', 48),
(53, 'Lezo', 'Lezoes un municipio que cuenta con elmonte Jaizkibelcomo su cota más alta. Asimismo elarteque nos ofrece suCasco Históricohace hincapiéen el alto valor arquitectónico-artístico que nos podemos encontrar si observamos los elementos colindantes de la plaza cuadrada.\n \nUna de las visitas imprescindibles en el municipio de Lezo es labasílica gótica del Santo Cristo, ubicada en la ruta del Camino de Santiago por la costa. El templo es conocido por la imagen de Cristo en su altar, pues se trata de una de las tres únicas representaciones de Jesucristo crucificado existentes en Europa que carecen de barba.\n \nCasco histórico y magnífico entorno natural\nAsímismo, cabe destacar la casa consistorial de Lezo, del siglo XVIII y de estilo renacentista. Por otro lado, el casco antiguo del municipio, que deja ver la vocación marinera de la villay que estáconfigurado en torno al templo del Santo Cristo, contrasta con el cercano monte Jaizkibel (545 m), hermoso enclave montañoso donde se pueden realizar diversos recorridos que nos permitirán contemplar las magníficas panorámicas delParque Natural de Aiako Harria, la Bahía de Txingudi y el mar Cantábrico.\n \nPor otra parte, el municipio de Lezo ofrece un amplio programa festivo dentro de sus principales fiestas de Pentecostés, que se celebran a mediados del mes de mayo y las fiestas de la Santa Cruz, cuyo día festivo es el 14 de septiembre. También caben destacar los carnavales en este municipio, son especialmente singulares, ya que participa el personaje mitológico local llamado Trapujale.', 20),
(55, 'Valdegovía', 'Valdegovía es un lugar situado en Álava próximo a Burgos, donde la naturaleza se impone y sorprende en cada momento del año, vistiéndose de colores intensos. En este valle te esperan sus pueblos, sus bosques, sus ríos, arroyos y fuentes, su silencio, etc. donde podrás descubrir la naturaleza en su estado más puro. Valdegovía ofrece la posibilidad de disfrutar de este entorno privilegiado, rico en patrimonio histórico-artístico y natural. Por un lado, son reseñables las ermitas e iglesias, como la iglesia románica de Nuestra Señora de la Asunción en Tuesta. Por otra parte, existen diversas torres y casas solariegas en el municipio. Destaca entre ellas la torre-palacio de los Varona construida a finales del siglo XIV y ubicada en la localidad de Villanañe. Además, este hermoso conjunto fortificado mantiene numerosos elementos defensivos. Por otra parte, sobresale en el mismo núcleo el Santuario de Nuestra Señora de Angosto, templo del siglo XIV que alberga un retablo renacentista.Cuevas artificiales y Parque Natural de ValderejoAsímismo, en este municipio alavés se conservan vestigios de gran interés como las cuevas artificiales de Corro y Pinedo y la necrópolis de Santa Lucía-Santa Olalla. Por último, el Parque Natural de Valderejo compone un paraje insólito, un lugar ideal para estar en contacto con la naturaleza. Este hermoso enclave fue declarado Parque Natural en 1992 y atesora una rica fauna y flora. Lalastra, ubicado en el corazón del valle de Valderejo, es el punto de partida para realizar las diferentes rutas e itinerarios que ofrece el parque natural.', 1),
(55, 'Arrasate/Mondragón', NULL, 20),
(59, 'Vitoria-Gasteiz', 'Además de ser el centro político y administrativo de Euskadi,Vitoria-Gasteizes un innegable ejemplo de buen vivir. Y es que, la capital alavesa es una de esas ciudades que cuentan con un rico patrimonio histórico-artístico, un sinfín de zonas ajardinadas, espacios peatonales ideales para el ocio y equipamientos cívicos. Una ciudad accesible, especial, con personalidad. Uno de sus tesoros más preciados y mejor guardados es elcasco antiguo, nacido en la Edad Media y único en Euskadi, en el que abundan palacetes renacentistas y edificios románicos. La \"Almendra Medieval\" (sobrenombre por el que es conocido el casco antiguo) acoge construcciones religiosas muy interesantes como las iglesias de San Pedro y San Vicente o la parroquia de San Miguel pero, sin resquicio de duda, la joya más conocida es laCatedral de Santa MaríaoCatedral Vieja. Dicho templo sirvióde inspiración para la novelaUn mundo sin findeKen Follett, y ha dado a conocer Vitoria en el panorama internacional. La iniciativa denominada \"Abierto por obras\" permite a los turistas visitar las obras de restauración del edificio. El ensanche del siglo XIX, es un cómodo espacio peatonal, principal zona comercial y llena de bellos miradores. Parques naturales de gran valor ecológico y paisajístico conforman el\"Anillo Verde\"que rodea la capital alavesa. Humedales (que hacen el papel de playas durante la época estival), bosques, praderas, ríos y campos ofrecen al visitante la oportunidad de realizar excursiones, practicar deportes de naturaleza y observar numerosas especies de aves. Vitoria-Gasteiz ostenta el título deCapital Verde Europea de 2012. El calendario festivo y cultural de la ciudad es muy amplio y diverso. Así, el veteranoFestival Internacional de Jazz, elAzkena Rock Festivaly elFestival Internacional de Teatroson los tres certámenes de más renombre que se celebran en Vitoria-Gasteiz. La fiesta también es otro de los grandes atractivos de la ciudad, tal y como demuestran las multitudinarias fiestas en honor a laVirgen Blanca, la festividad deSan Prudencioy la romería aOlarizu. Asimismo, Vitoria-Gasteiz acoge varios museos: elArtiumo Centro Museo Vasco de Arte Contemporáneo, el Museo deBellas Arteso elBibat, fusión de los museos de Naipes y Arqueología. Los amantes de los mejores dulces tienen otro buen motivo para visitar Vitoria-Gasteiz. No en vano,pasteleríasyconfiteríasde prestigio comercializan exquisitos productos propios, como la Confitería Goya, artífice de los famosos bombones \"Vasquitos\" y \"Nesquitas\". Desde Vitoria-Gasteiz podemos visitar la comarca de laRioja Alavesa, conocida en todo el mundo gracias a sus excelentes vinos y bodegas.', 1),
(68, 'Mundaka', 'Famosa por su ola izquierda que atrae cada año a numerosos surfistas, este pintoresco pueblo marinero estásituado en la margen izquierda de la desembocadura de la ría de Mundaka, en plenaReserva de la Biosfera de Urdaibai, espacio natural formado por amplias marismas y 12 km de extensos arenales que sirven de cobijo a miles de aves migratorias.\n \nSu privilegiada ubicación convierte a Mundaka en uno de losdestinos turísticos preferidosdel litoral vizcaíno. El puerto, con su inconfundible olor a salitre, es el centro de la villa y en sus alrededores encontraremos algunos edificios de interés, como la biblioteca municipal (antiguo hospital del Camino de Santiago), la hermosa Casa Consistorial, la parroquia de Santa María, de estilo renacentista, el palacio Larrinaga...\n \nAlgo alejado del centro, merece la pena visitar la ermita de Santa Catalina, que se halla sobre un pequeño promontorio junto al mar. Desde aquí, se puede observar el espectacular paisaje (el cabo de Ogoño, la isla de Izaro...) que ofrece la desembocadura de la ría de Urdaibai.\n \nLa ola izquierda\n \nMundaka es, sin duda, muy conocida por su ola izquierda. Surfistas de todo el mundo acuden a sus playas para comprobar de primera mano la calidad de su ola. Elsurfse ha convertido en una practica habitual en esta localidad costera, y, de hecho, Mundaka acoge anualmente en sus aguas competiciones a nivel internacional.\n \nFiestas y tradiciones\n \nEste municipio celebra sus principales fiestas a finales de junio en honor a San Pedro y cuentan con un variado programa repleto de actos, como conciertos, procesiones, cabezudos... El último fin de semana de agosto, tiene lugar la Fiesta Vasca o Euskal Jaia, una espléndida muestra de folklore local.\n \nAunque, sin duda, es su carnaval, uno de los más antiguos de Euskadi, la fiesta que mayor número de visitantes atrae. El domingo de carnaval, los lugareños se disfrazan de Atorrak (hombres) y Lamiak (mujeres), y las comparsas desfilan por las calles de Mundaka al son de la música hasta bien entrada la madrugada.', 48),
(69, 'San Sebastián', 'Hermosa, elegante, exquisita, coqueta, señorial. AsíesDonostia / San Sebastián, una ciudad en plena costa vasca, abierta al mar y considerada por muchos la capital turística de Euskadi. Es una de las ciudades que posee  una de las bahías más bellas del mundo, la deLa Concha, y tres playas urbanas (La Concha,ZurriolayOndarreta). Donostia / San Sebastián estárodeada de montes y miradores (Igeldo, Urgull, Ulia y la Isla de Santa Clara) y vertebrada por el río Urumea. El centro de la ciudad, que alberga edificios tan característicos como el Teatro Victoria Eugenia, el Hotel María Cristina, la Casa Consistorial, Tabakalera, o la catedral del Buen Pastor, ha mantenido, a lo largo de los años, suaura romántica. No en vano, Donostia / San Sebastián fue un lugar muy frecuentado por la aristocracia europea durante la Belle Epoque. Los edificios antiguos conviven con nuevas y modernas propuestas arquitectónicas, como el centroKursaal, diseñado por Rafael Moneo o el célebrePeine del Vientode Chillida, icono muy ligado a Donostia / San Sebastián. LaParte Viejaes el corazón de la ciudad, reúne numerosos edificios emblemáticos (la basílica de Santa María del Coro, por ejemplo) y es ideal para degustar la prestigiosa gastronomía y los deliciosos pintxos donostiarras. No podemos olvidar que ésta es la urbe con más estrellas Michelín por metro cuadrado. Las mejores materias primas pueblan los mercados tradicionales. Los amantes delcaminarpueden recorrer tanto a pie como a bicicleta los parques y jardines de Donostia / San Sebastián, además de disfrutar de paseos marítimos (del Peine del Viento al Kursaal) en contacto con la naturaleza. La ciudad cuenta con una importante oferta comercial y de ocio, siendo la intensa vida cultural una de sus principales bazas. Rutilantes estrellas acuden cada año alFestival Internacional de Cine, para deleite de los avispados caza-autógrafos. También los museos (San Telmo, el Naval, el Aquarium, el Kutxaespacio de la Ciencia) constituyen otros de los atractivos de Donostia / San Sebastián. A lo largo de los siglos los donostiarras han mantenido vivas sus más multitudinarias tradiciones (desde fiestas como laTamborraday Santo Tomás hasta las regatas de traineras). Donostia / San Sebastián es una ciudad cosmopolita, que se caracteriza por su elegancia de cuento y su continua interacción con el mar. ', 20),
(71, 'Tolosa', 'Situada a orillas de río Oria,Tolosaes una villa de gran importancia histórica, que mira con orgullo a su pasado y que, a la vez, ha sabido adecuarse a los nuevos tiempos. La antigua capital de Gipuzkoa fue un lugar de paso importante en la ruta comercial que comunicaba Navarra con los puertos del Cantábrico y, durante siglos, se beneficióde numerosos privilegios. De aquel glorioso pasado ha heredado un valioso casco histórico jalonado por edificios y monumentos de diversos estilos.\n \nEl núcleo medieval\nEl casco urbano estáemplazado en un llanura formada en la confluencia de los ríos Oria, Araxes y Berastegi, y se distingue claramente en dos zonas: el núcleo medieval y el nuevo ensanche. El casco antiguo estácompuesto por calles estrechas organizadas de forma paralela y separadas por numerosas plazas. Destaca sobremanera la iglesia parroquial de Santa María del siglo XVII, templo del llamado Gótico Vasco, con tres naves de gran altura, bóvedas de crucería y una fachada barroca de gran belleza.\n \nLa iglesia y el convento de Santa Clara, el ayuntamiento barroco, los palacios de Idiakez, Atodo, Aramburu y la Diputación, el Archivo Provincial, asícomo la plaza Euskal Herria (que nos recuerda a la Plaza de la Constitución de San Sebastián) son sólo algunos de los ejemplos delrico patrimonio de Tolosa. El arte contemporáneo vasco también tiene su sitio en Tolosa, en forma de esculturas al aire libre dispuestas en algunas calles y plazas de la villa.\n \nFuera del casco urbano, merece la pena visitar la ermita de Nuestra Señora de Izaskun en la vecina Ibarra, situada al abrigo del monte Uzturre (730 m), desde donde se contemplan bellas panorámicas de la comarca de Tolosaldea.\n \nCultura y gastronomía en  Tolosa\nTolosa es un municipio degran actividad culturalque conserva con esmero muchas de sus tradiciones. Durante el año, alberga numerosas festividades y actividades de todo tipo: los  conocidoscarnavales de Tolosa  (de los más antiguos de Gipuzkoa), las fiestas patronales de San Juan (con el baile de la \" Bordon Dantza\" y la hoguera como elementos reseñables), las jornadas de naturaleza Zumardi y sus certámenes internacionales de masas corales y marionetas. Y es que en Tolosa se encuentra  elCentro Internacional del Títere, Topic, con su  teatro, sus exposiciones permanentes y temporales y su  centro de documentación.\n \nEn el apartado gastronómico, en primer lugar hay que citar su mercado semanal. Todos los sábados, agricultores y ganaderos de la comarca se dan cita en elmercado del Tingladoy en otras plazas para ofrecer productos autóctonos de gran calidad. \n \nTampoco podemos olvidar sus conocidos chuletones de buey y los numerosos asadores (de gran tradición en la villa), ni las famosasalubias de Tolosa. De un color oscuro y, acompañadas, como no, de las guindillas de Ibarra, destacan por su excelente sabor. Como postre, no pueden faltar los \" cigarrillos\" y las \" tejas\" , asícomo los \" Xaxus\" , típicos dulces de la localidad, que seguro harán las delicias de las personas más go', 20),
(71, 'Muskiz', 'Bañado por las aguas del mar Cantábrico, Muskiz se ubica en el extremo más occidental del territorio histórico de Bizkaia, asentado sobre elvalle del río Barbadún. Este enclave costero permite disfrutar de un paisaje encantador.\n \nCon susextensos kilómetros de costa, donde destacan laplaya de La Arenay losabruptos acantilados, Muskiz nos brinda verdaderos caprichos naturales como elparque Itsaslur,hermoso paseo que recorre el acantilado y que une las zonas costeras de Kobarón y Pobeña. Muskiz alberga, asímismo, numerosos encantos y rincones realmente interesantes.\n \nNo en vano, posee unamplio y rico patrimonio cultural, por lo que encontraremos diversos edificios de aspecto señorial. El castillo de Muñatones es una espléndida construcción de la Edad Media que nos trasladarápor un instante a aquella época. Se trata de un conjunto formado por un castillo, un palacio y una ermita, que fue declarado Monumento Histórico-Artístico en 1944.\n \nFerrería El Pobal, interesante conjunto monumental\nPodemos seguir nuestro recorrido por laferrería de El Pobal, puesto que cuenta con una extensa historia en su estructura. Data del siglo XVI y guarda complementos típicos relacionados con la ferrería. Justo al lado, visitaremos una casa-torre del mismo nombre. La fachada principal tiene una puerta de medio punto, además de un escudo con las armas del linaje de los Quadra. \n \nMuskiz ofrece unaextensa agenda festivadurante todo el año. Las fiestas patronales son las de San Juan y tienen lugar a finales de junio. Pero los Carnavales, que se celebran en febrero, también son conocidos. Para finalizar, merece especial mención la feria agrícola que se organiza en el mes de septiembre, de gran relevancia en la zona.', 48),
(73, 'Usurbil', 'Muy conocido por su tradición sidrera y pesca de angulas, este pequeño municipio guipuzcoano se halla a poca distancia de la costa y protegido por los montes Andatza (562 m) y Mendizorrotz (415 m). Usurbil alberga numerosos edificios históricos que atraen la mirada de los visitantes que llegan al municipio. El núcleo histórico se organiza en torno a la iglesia de San Salvador, de una única nave y con bóvedas de crucería. Destacan su torre barroca y el retablo mayor realizado en el siglo XVII. Muy cerca, en la misma calle, encontraremos la casa Saroe, con su fachada barroca rica en ornamentos y presidida por un gran escudo. Sin embargo, entre todos estos edificios, sobresale el palacio barroco de Atxega (s. XVIII), declarado Monumento Histórico-Artístico. Fuera del centro urbano, visitaremos los barrios de San Esteban y Aginaga. En el primero, merece la pena ver la ermita de San Esteban, que ofrece excelentes vistas del entorno. Según cuentan los lugareños, la gente acude hasta esta ermita para aliviar los dolores de cabeza. Siguiendo la carretera de acceso a la ermita, se llega al alto de Andatza, un lugar dotado de bellas explanadas. Por su parte, Aguinaga, de gran tradición pesquera, es famosa por sus preciadísimas angulas.La cultura de la sidraUsurbil es muy conocida por su gran tradición sidrera. Junto con Astigarraga y Hernani, cuenta con la mayor concentración de sidrerías de Euskadi. En estos establecimientos se elabora la sidra y, entre enero y mayo, es costumbre acudir a estos lugares a probar este caldo que mana de las barricas, además de degustar un suculento menú. Por lo demás, este municipio celebra sus fiestas patronales de Santa Isabel a principios de julio. En el calendario festivo, también hay que hacer mención a las fiestas de San Esteban (3 de agosto) y San Francisco de Aguinaga (4 de octubre). Además de ello, Usurbil celebra a mediados de mayo el Sagardo Eguna, fiesta popular que gira en torno a la sidra y que acoge cada año a miles y miles de visitantes.', 20),
(78, 'Portugalete', 'Portugalete, elegante villa marinera, es uno de los principales núcleos urbanos de la margen izquierda de la Ría de Bilbao. Situado en su desembocadura, el Puente Colgante oPuente  Bizkaia, declaradoPatrimonio de la Humanidad por la UNESCO, representa la cara más conocida del municipio.\n \nInaugurado el 28 de julio de 1893 y construido totalmente en hierro, conecta Portugalete con Getxo en la margen derecha de la Ría. Este alarde de ingeniería civil, obra de Alberto de Palacio, suma a subelleza estéticauna funcionalidad innegable, convirtiéndose en parada obligatoria de todo aquel que visite la villa.\n \nEn las estrechas y empinadas calles de sucasco histórico, de origen medieval, encontraremos algunos monumentos de interés. En lo alto se sitúa laTorre Salazardel siglo XIV, uno de los edificios más emblemáticos de Portugalete, y laBasílica de Santa María, templo de estilo gótico-renacentista, que guarda en su interior un retablo mayor con relieves de madera.\n \nEl Convento de Santa Clara, la Plaza de la Ranchería, el Muelle de Hierro y el Ayuntamiento son algunos de los muchos elementos que podemos visitar. La escultura de Don Lope García Salazar, primer historiador de Bizkaia, y el monumento a Víctor Chávarri (ingeniero civil que tuvo gran influencia en el proceso de industrialización de Bizkaia) junto con elMuseo de la Industria(Rialia, que muestra la importancia del proceso de industrialización de la Ría) completan este recorrido por el casco histórico de la villa.\n \nFestivales y fiestas de Portugalete\nAdemás de museos y monumentos, esta localidad cuenta con una amplia oferta cultural, en la que destaca elFestival Internacional de Folklore, que se celebra desde hace más de 40  años coincidiendo con la festividad de Santiago y que congrega a bailarines procedentes de todas partes del mundo.\n \nPor otro lado, Portugalete celebra sus fiestas patronales, en honor aSan Roque, del 14 al 17 de agosto. Entre los numerosos actos festivos destaca la Diana Portugaluja, que tiene lugar el día 15. Sin embargo, una de las fiestas más entrañables para los lugareños es la de laVirgen de la Guía. Esta festividad de origen marinero se celebra el 1 de julio, en el casco antiguo, concretamente en la calle Coscojales. La fiesta comienza a primera hora de la mañana con el chupinazo y la tradicional izada de Dominguines (dos muñecos de trapo) y, a continuación, se realiza la ofrenda floral a la virgen. También debemos hacer mención a las fiestas de San Nicolás y La Cruz.', 48),
(79, 'Zarautz', NULL, 20);
INSERT INTO `municipios` (`CodMunicipio`, `Nombre`, `Descripcion`, `CodProvincia`) VALUES
(80, 'Zumarraga', 'Zumarraga nos embelesa con los muchos lugares de interés que ofrece, tantoculturales, como gastronómicos.\n \nSe halla a los pies delParque Natural de Aizkorri, en la comarca del Alto Urola, valle estrechamente ligado a la cultura del hierro, donde encontraremos restos de antiguas ferrerías, molinos, presas...\n \nUno de los principales atractivos de Zumarraga lo constituye el ricopatrimonio artístico y culturalque alberga. En el centro del núcleo urbano, la hermosa plaza porticada de Euskadi es uno de los ejemplos más bellos de la arquitectura civil del municipio. En ella, encontraremos algunos edificios de interés, como elayuntamientoneoclásico del siglo XIX y las casas Itarte y Uzkanga.\n \nLa plaza estápresidida por la estatua de Miguel López de Legazpi, conquistador de Filipinas, una escultura de bronce sobre un pedestal de piedra realizado por Aniceto Marinas. No muy lejos de este lugar, merece la pena visitar la casa natal del conquistador:la casa-torre Legazpi. Se trata de una fortaleza de la época feudal, declarada monumento histórico-artístico nacional en 1945. Por su parte, laiglesia parroquial de Santa María de la Asunción, del denominado gótico-vasco, fue construida en varias fases desde 1576. Tiene planta de salón y tres naves de igual altura, cubiertas con bóvedas de crucería. Su portada principal es barroca y se accede a ella a través de un hermoso pórtico. Conserva en su interior un retablo del siglo XVIII que mezcla elementos góticos y barrocos.\n \nLa catedral de las ermitas\nA dos kilómetros del centro urbano, en las estribaciones delmonte Beloki(641 m), merece la pena visitarla ermita de La Antigua, más conocida como lacatedral de las ermitas. Rodeada de un bello entorno natural, estajoya de la arquitectura popular religiosafue declarada monumento histórico-artístico nacional por su belleza. Presenta un austero exterior románico con una puerta gótica y un sorprendente interior que llama la atención por la perfecta armonía de su estructura mixta de piedra y madera. Esta ermita, junto a laBasílica de Loiola en Azpeitiay elSantuario de ArantzazuenOñati, forma parte de la conocidaRuta de los Tres templos, recorrido que permite conocer las comarcas de Urola y Alto Deba a través de estos tres monumentos emblemáticos enclavados en lugares de gran belleza natural.\n \nTambién podemos realizar diversas excursiones en los montes que rodean la localidad. Desde la propiaermita de La Antigua, parte un recorrido que nos permite ver los monumentos funerarios megalíticos hallados en Zumarraga.\n \nEl municipio celebra sus fiestas patronales de Santa Isabel a principios del mes de julio, donde se baila la ezpata-dantza en la tradicional romería que tiene lugar en la citada ermita de La Antigua. Tampoco podemos olvidarnos de la multitudinar', 20),
(82, 'Santurtzi', 'Santurtzies una localidad de grantradición marinerasituada en el territorio histórico de Bizkaia. Se halla, más concretamente, en la margen izquierda de la ría del Ibaizabal, a los pies del monteSerantes(451 m).\n \nEs conocida por supuerto pesquero, donde es posible degustar las típicassardinas a la parrilla, y cuenta también con unpuerto deportivo. Merece la pena caminar por el extensopaseo marítimo, o bien disfrutar de las vistas que ofrece la localidad desde el mar, ya que se organizan paseos en barco.\n \nMonumentos y esculturas al aire libre\nTras admirar la zona marítima, podemos adentrarnos en la localidad para conocer de primera mano diversos monumentos que conforman elrico patrimoniode la localidad costera. Entre otros, destacan laiglesia de San Jorge, elayuntamiento, edificio de principios del siglo XX con dos curiosas cúpulas cubiertas de pizarra negra y vidrieras en su escalinata interior, elpalacio Oriol, de estilo residencial, y el monumento a lavirgen del Carmen, patrona de Santurtzi.\n \nCada 16 de julio, los pescadores llevan a hombros la figura de la virgen en una emotiva procesión que rinde homenaje a los arrantzales fallecidos.\n \nMás adelante, en el paseo de Iparraguirre, encontraremos el monumento a la Sardinera, \"con la falda remangada, luciendo la pantorrilla...\" tal y como reza la popular canción.\n \nPor último, destacamos el curiosomuseo de esculturas de Santurtzi. No se trata de ningún edificio específico, sino que estamos hablando de un museo al aire libre que cuenta con catorce esculturas expuestas en diversas zonas del pueblo. Artistas estatales e internacionales han donado sus obras para disfrute de todo aquel que las quiera admirar mientras pasea.', 48),
(84, 'Sestao', 'Encaramado sobre una pequeña meseta paralela a los Montes de Triano y arropado por la cima del Serantes (451 m), la localidad deSestao, situada en la margen izquierda de la Ría de Bilbao, representa un fiel retrato del pasado, presente y futuro de la evolución de la vida en la comarca del Gran Bilbao.\n \nNacida originariamente como asentamiento de pescadores, Sestao comienza a aparecer en los libros de historia como enclave representativo en las luchas banderizas durante el último siglo de la Edad Media. No obstante, es a finales del siglo XIX, de la mano del rápido desarrollo de laindustria siderúrgica y naval, cuando Sestao sufre su mayor evolución demográfica. Este crecimiento se mantuvo hasta la década de los 70 del pasado siglo debido a la implantación de empresas tan representativas del desarrollo industrial de Bizkaia como Altos Hornos de Vizcaya y Astilleros Españoles.\n \nHoy en día, el sector naval y siderúrgico, junto con la metalurgia, la química o el sector eléctrico, siguen siendo las actividades industriales más representativas del municipio. Como vestigio de las desmanteladas instalaciones de Altos Hornos de Vizcaya, podemos ver uno de sushornos altos, declarado monumento histórico por el Gobierno Vasco.\n \nEspacios verdes\nDejando a un lado su industria, Sestao guarda numerosos lugares de interés para el visitante. Es de destacar el Parque de la Iglesia en cuyos jardines encontramos un roble descendiente del propio Árbol de Gernika. Por otra parte, en sus alrededores podemos contemplar la hermosa Iglesia de Santa María, reformada en 1864, la cual redondea uno de los enclaves más bellos del municipio.\n \nEl Parque de Markonzaga, otro de los espacios verdes de Sestao, ubicado cerca del Ayuntamiento, nos ofrece la posibilidad dedisfrutar de largos paseosy de los eventos culturales celebrados en su anfiteatro. El Parque de las Camporras o de Ondéjeda, que dispone de mesas, asadores y zonas de juegos infantiles, y la moderna Plaza de San Pedro, en el centro del municipio, son espacios vivos, áreas de esparcimiento y cultura donde se desarrolla gran parte de la vida social de los vecinos de Sestao. Desde el Parque de la Benedicta, situado junto a la Ría, comienza un precioso paseo que une el municipio con la vecina Portugalete e incluso con el pintoresco puerto de Santurtzi.\n \nEl municipio celebra sus fiestas patronales deSan Pedrolos últimos días del mes de junio. Aunque la festividad de San Pedro tiene lugar el 29 de junio, las verbenas, juegos populares, pasacalles... dan comienzo la noche de San Juan y se mantienen hasta el 30 de junio. Además de las fiestas en honor a ese patrón, los sestaotarras celebran las festividades de San Ignacio, Santiago y Santa Rosa.', 48),
(85, 'Sopela', NULL, 48),
(96, 'Zalla', 'Rodeada de montañas y ocupando una llanura atravesada por el río Cadagua, Zalla recibe al visitante desde el mismo corazón de la comarca de las Encartaciones. Villa de rica historia de litigios fronterizos y antiguas ferrerías, Zalla es paso obligado para aquellos peregrinos que sigan el Camino de Santiago en su vertiente costera, el cual discurre por el mismo centro urbano de la localidad. A pesar de que la mayor parte de las construcciones son modernas, Zalla conserva un valioso legado histórico. Visitaremos algunos edificios singulares como el palacio barroco de los Murga del siglo XVII, actual sede del ayuntamiento que posee un hermoso escudo de armas de los Salcedo y Ayala, y la parroquia San Miguel de Arcángel, fundada en el siglo XII, aunque fue ampliada en el siglo XVIII. La iglesia de una sola nave tiene bóvedas de crucería, dos capillas, siete altares, torre, campanario y pórtico. Entre los edificios religiosos más representativos de la villa también hay que citar la iglesia barroca de Otxaran, la ermita de San Pedro de Zarikete del siglo XVI, junto a la cual se plantóen 1912 un retoño del árbol de Gernika, y la ermita de San Antonio de Mella, que nos aguarda agazapada en un recóndito paraje a la vera del río Cadagua, en el barrio de La Herrera, justo enfrente del palacio Urrutia que conserva una fachada de sillería de finales del siglo XVII. Entre estos dos edificios pasaba el antiguo camino real que desde Bilbao se dirigía a Balmaseda.Torre de TerrerosCerca de esta última ermita, al otro lado del río y rodeada de un entorno rural se sitúa la Torre de Terreros, que se erige en la actualidad como una de las torres mejor conservadas de toda la comarca de las Encartaciones. Ésta, con sus más de 20 metros de altura, es un magnífico ejemplo de construcción defensiva, recordando a quien la contempla la época de las guerras banderizas. En este mismo barrio, cerca del río, encontraremos un área recreativa muy frecuentado por los aficionados a la pesca y que dispone de nueve mesas, bancos y parrillas. No es la única área situada a orillas del Cadagua. En Bolumburu, existe otra zona de esparcimiento equipada con fuentes, mesas, asadores y juegos infantiles. Además, un bidegorri, que recorre el antiguo trazado del ferrocarril de la Robla, ha sido habilitado como paseo para caminantes y cicloturistas. Por otro lado, Zalla celebra sus fiestas patronales en honor a Nuestra Señora del Rosario, a principios de octubre, siendo el 7 el día de la patrona. Tampoco podemos olvidarnos de la popular feria de Gangas que tiene lugar en octubre. Con más de medio siglo de historia, esta fiesta es conocida por los concursos agrícola, ganadero y avícola.', 48),
(902, 'Lasarte-Oria', 'Lasarte-Oria es un municipio modernizado y con mucha vida que se encuentra muy cerca de las playas y que nos ofrece unas vistas increíbles del valle de Oria. Casi todo su terreno es suelo urbano, y este hecho le convierte en el municipio con mayor densidad de población de Gipuzkoa. El río Oria pasa por la localidad, dejando al sur el núcleo de población que lleva su mismo nombre. Ubicado estratégicamente entre las cuencas del Urumea y Oria, ha sido un pueblo muy disputado a lo largo de la historia, puesto que anteriormente formóparte de San Sebastián y más tarde, pasóa ser un barrio de Hernani. Fundado en 1986, se trata de un municipio relativamente nuevo, que posee una amplia infraestructura hostelera, con diversos alojamientos y restaurantes de primer orden. Si nos adentramos en su casco urbano, destacaremos dos edificios: la iglesia de San Pedro del siglo XVI, con planta rectangular y tres naves de distinta altura, y el convento de las Brígidas. Además, en las inmediaciones, en la vecina Hernani, se puede visitar el Museo Chillida-Leku, que muestra parte de la obra del genial escultor Eduardo Chillida.Carreras de caballos y atletismoLasarte-Oria cuenta en su entorno con el Hipódromo Municipal de San Sebastián, inaugurado en 1916. Conocido popularmente como Hipódromo de Lasarte, durante la primera mitad del siglo XX fue punto de encuentro de la alta sociedad. Hoy en día, acoge dos temporadas de carreras, durante la primavera y el verano. Además de las carreras de caballos, otro deporte de gran tradición en Lasarte-Oria es el atletismo. Cada año, el hipódromo acoge el Cross Internacional de Lasarte, importante evento deportivo que congrega a aficionados y atletas profesionales. En el mes de octubre, tiene lugar el cross popular Lasarte-Oria Bai, que sirve de preparatoria para otra gran cita la Behobia San-Sebastián.', 20),
(902, 'Erandio', 'Con una ubicación estratégica, a las orillas de la Ría y entre los montes San Pablo y San Bernabése situa el municipio vizcaíno Erandio. Este cuenta con numerosos elementos de interés que componen su patrimonio histórico y artístico.Hermosas vistas de la ría de BilbaoUna vez de haber visitado los elementos de carácter histórico, tendremos la oportunidad de pasear por los alrededores del municipio y descubrir asísus apacibles rincones y zonas de descanso ajardinadas, desde las cuales podremos observar hermosas vistas de la ría de Bilbao. Asímismo, el barrio Goiherri de Erandio es un lugar idóneo, debido a su carácter rural, para poder disfrutar de la naturaleza. Este municipio vizcaíno celebra numerosas festividades, debido al gran número de núcleos urbanos con los que cuenta. Las fiestas locales más concurridas se celebran en el mes de agosto en honor a San Lorenzo, Andra Mari y San Agustín.', 48),
(904, 'Sondika', 'Situado en Txorierri, un valle de grandes infraestructuras urbanísticas, Sondika vio transformado su carácter rural por el proceso de industrialización que experimentaron la mayoría de los municipios que rodean la capital vizcaína. De hecho, esta localidad es conocida por albergar durante décadas las instalaciones del aeropuerto de Bilbao, que en la actualidad se ubican en la vecina Loiu. Formada por cuatro barrios, Basozabal, Izarza, Landa (Campa) y Zangroiz, Sondika cuenta con algunos edificios de interés arquitectónico. En el casco urbano, por ejemplo, merece la pena visitar el palacio barroco Goiri Erdikoa, que data del siglo XVIII. El palacio Beike, ubicado cerca del aeropuerto, es de la misma época y fue declarado patrimonio artístico. Destacan, asimismo, el conjunto de ermitas que se halla en los alrededores (las ermitas de Santa Cruz, San Martín y San Roque), el molino de Aixerrota del siglo XVIII y un puente romano.Naturaleza y ocioEste municipio de Txorierri se encuentra rodeado de un bello un entorno natural. Tomando el camino de Izarza, en el mismo centro urbano de Sondika, se alcanza el collado de Artxanda, excelente mirador de la capital vizcaína y sus alrededores. También podemos visitar el hermoso parque de Larrabarrena, un lugar que cuenta con amplias zonas verdes. Por otro lado, Sondika dispone de un aeródromo donde se ofrecen vuelos. En prácticamente una hora, es posible sobrevolar todo el territorio histórico y constituye una de las ofertas turísticas más atractivas de la comarca. En cuanto al apartado festivo, la localidad acoge diversas fiestas a lo largo del año. El 24 de junio se celebra el día de San Juan en la campa del mismo nombre. La fiesta de Santa Cruz, por su parte, tiene lugar en el parque Larrabarrena el 14 de septiembre. Tampoco podemos olvidar la feria agrícola, ganadera y artesana que se organiza en noviembre, que incluye exposición de ganado, venta de productos autóctonos y de artesanía, degustación de txakoli y queso Idiazabal y exhibición de actividades relacionadas con el campo.', 48),
(912, 'Alonsotegi', 'En el pasillo que forma el ríoCadaguaentre los montesSasiburu, Ganekogorta y Pagasarriasoma el municipio de Alonsotegi.\n \nEsta es una de las localidades que no se puede perder ningún amante de la naturaleza y el senderismo, ya que el pueblo se encuentra rodeado de montes. Entre éstos destacan el Ganekogorta y el Pagasarri, en el que hay unas neveras  que datan del siglo XVII. Estas edificaciones subterráneas se utilizaban para almacenar la nieve y usarla más tarde para elaborar bebidas, conservar los alimentos o aliviar la fiebre.\n \nAsí, el municipio nos ofrece laposibilidad de realizar diferentes itinerarios, como el de Zamundi y Azordoiaga, a través de los cuales divisaremos paisajes de gran belleza. También se pueden realizar agradables paseos recorriendo las numerosas ermitas que existen en esta localidad, como la de San Martín, Santa Quiteria o Ntra. Sra. de la Guía, que forman parte del patrimonio artístico de Alonsotegi. En el centro urbano destacan, entre otros edificios, la iglesia parroquial de San Bartoloméy el grupo de viviendas obreras de Barrenkalea, construidas en la primera mitad del siglo XX tras del auge minero e industrial de la zona.\n \nLo más llamativo de este municipio es su pronunciada orografía, ya que posee una fuerte diferencia de cotas, siendo la altura mínima de unos 50 m, donde se encuentra el núcleo urbano, y la máxima de casi 1000 m sobre el nivel del mar en el monte Ganekogorta, lo que convierte a Alonsotegi en uno de los municipios más montañosos  de Bizkaia.\n \nAlonsotegi celebra sus fiestas patronales de San Bartoloméla última semana de agosto asímismo, podremos disfrutar del ambiente festivo a principios de septiembre, puesto que se celebra la festividad de San Antolín.', 48),
(913, 'Zierbena', 'Situada en el extremo occidental del litoral vizcaíno, Zierbena es conocida por elsabor marinerode su puerto pesquero.\n \nA pesar de sufrir una importante transformación por la construcción del Puerto de Bilbao, mantiene elencanto de antaño con sus barcos de pesca y de recreo. Junto con lasdos playasde la localidad, constituye el principal atractivo de la villa costera. Así, el visitante se veráinvadido por el aroma de los pescados cocinados a la brasa en los asadores y restaurantes que hay en el puerto.\n \nEn este mismo lugar, se halla una pequeña playa artificial de 100 metros que únicamente se asoma en bajamar. De aguas tranquilas, esideal para el baño infantil, aunque la playa preferida por lugareños y visitantes es la de La Arena. Con 966 metros de longitud, este hermoso arenal estábien equipado y cuenta en sus alrededores con varias zonas recreativas con mesas, bancos, barbacoas...\n \nEn esta playa comienza el bidegorri más largo de Bizkaia, un paseo acondicionado para cicloturistas y peatones de 11 kilómetros de longitud, de los cuales 4 discurren por Zierbena, para continuar después hacia Portugalete. Otra de las excursiones clásicas es la ascensión a Punta Lucero (307 m), impresionante atalaya desde la cual se divisan espectaculares vistas del mar Cantábrico.\n \nPatrimonio y fiestas\nEn cuanto a su patrimonio histórico, la localidad ofrece al visitante varios puntos de interés, como la parroquia de San Román, situada en el barrio de La Cuesta, que se remonta al siglo XII, aunque fue reconstruida en 1880. Anexa a esta parroquia se encuentra la iglesia de Nuestra Señora Virgen del Puerto. También hemos de destacar otros edificios más modernos la ermita de San Ignacio de Loyola, la única que queda en pie, y la Casa Consistorial, inaugurada en 1997.\n \nEn el apartado festivo, tenemos que citar las numerosas fiestas que se celebran en los barrios del municipio. Las festividades de San Ignacio, Virgen del Puerto y San Roque (el 31 de julio y el 15 y 16 de agosto, respectivamente) son las más importantes, aunque no podemos olvidarnos de la feria del marisco (septiembre-octubre) ni del Día de la Independencia de Zierbena (15 de octubre). Entre las aficiones de los lugareños, hay que mencionar lasregatas de traineras, deporte de gran tradición en la villa, dado que Zierbena cuenta con uno de los clubes de remo más antiguos de Bizkaia.', 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `CodProvincia` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`CodProvincia`, `Nombre`) VALUES
(1, 'Araba/Álava'),
(20, 'Gipuzkoa'),
(48, 'Bizkaia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `CodUsuario` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`CodUsuario`, `Nombre`, `password`) VALUES
(1, 'markel', 'q'),
(2, 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`NombreEstacion`,`Fecha`,`Hora`);

--
-- Indices de la tabla `datos_diarios`
--
ALTER TABLE `datos_diarios`
  ADD PRIMARY KEY (`NombreEstacion`,`Dia`);

--
-- Indices de la tabla `espacios_naturales`
--
ALTER TABLE `espacios_naturales`
  ADD PRIMARY KEY (`CodEspacio`);

--
-- Indices de la tabla `estaciones`
--
ALTER TABLE `estaciones`
  ADD PRIMARY KEY (`Nombre`),
  ADD KEY `fk_municipios` (`CodMunicipio`,`CodProvincia`);

--
-- Indices de la tabla `esta_en`
--
ALTER TABLE `esta_en`
  ADD PRIMARY KEY (`CodEspacio`,`CodMunicipio`,`CodProvincia`),
  ADD KEY `fk_municipio` (`CodMunicipio`,`CodProvincia`);

--
-- Indices de la tabla `favoritos_espacios`
--
ALTER TABLE `favoritos_espacios`
  ADD PRIMARY KEY (`CodUsuario`,`CodEspacio`),
  ADD KEY `FKc1xa8aqc0ve7o81t5cidbd4rs` (`CodEspacio`);

--
-- Indices de la tabla `favoritos_municipios`
--
ALTER TABLE `favoritos_municipios`
  ADD PRIMARY KEY (`CodUsuario`,`CodMunicipio`,`CodProvincia`),
  ADD KEY `fk_municipio_favorito` (`CodMunicipio`,`CodProvincia`);

--
-- Indices de la tabla `hashes`
--
ALTER TABLE `hashes`
  ADD PRIMARY KEY (`CodHash`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`CodMunicipio`,`CodProvincia`),
  ADD KEY `Fk_provincia_municipios` (`CodProvincia`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`CodProvincia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`CodUsuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos`
--
ALTER TABLE `datos`
  ADD CONSTRAINT `fk_datos_estacion` FOREIGN KEY (`NombreEstacion`) REFERENCES `estaciones` (`Nombre`);

--
-- Filtros para la tabla `datos_diarios`
--
ALTER TABLE `datos_diarios`
  ADD CONSTRAINT `fk_datos_diarios_estacion` FOREIGN KEY (`NombreEstacion`) REFERENCES `estaciones` (`Nombre`);

--
-- Filtros para la tabla `estaciones`
--
ALTER TABLE `estaciones`
  ADD CONSTRAINT `fk_municipios` FOREIGN KEY (`CodMunicipio`,`CodProvincia`) REFERENCES `municipios` (`CodMunicipio`, `CodProvincia`) ON DELETE CASCADE;

--
-- Filtros para la tabla `esta_en`
--
ALTER TABLE `esta_en`
  ADD CONSTRAINT `fk_espacio_natural` FOREIGN KEY (`CodEspacio`) REFERENCES `espacios_naturales` (`CodEspacio`),
  ADD CONSTRAINT `fk_municipio` FOREIGN KEY (`CodMunicipio`,`CodProvincia`) REFERENCES `municipios` (`CodMunicipio`, `CodProvincia`);

--
-- Filtros para la tabla `favoritos_espacios`
--
ALTER TABLE `favoritos_espacios`
  ADD CONSTRAINT `FKc1xa8aqc0ve7o81t5cidbd4rs` FOREIGN KEY (`CodEspacio`) REFERENCES `espacios_naturales` (`CodEspacio`),
  ADD CONSTRAINT `FKhypoyol94qht21efyqm30oc00` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`CodUsuario`);

--
-- Filtros para la tabla `favoritos_municipios`
--
ALTER TABLE `favoritos_municipios`
  ADD CONSTRAINT `fk_municipio_favorito` FOREIGN KEY (`CodMunicipio`,`CodProvincia`) REFERENCES `municipios` (`CodMunicipio`, `CodProvincia`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_favorito` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`CodUsuario`);

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `FKje5r1km4bp0ixle35q7f5ao1f` FOREIGN KEY (`CodProvincia`) REFERENCES `provincia` (`CodProvincia`),
  ADD CONSTRAINT `Fk_provincia_municipios` FOREIGN KEY (`CodProvincia`) REFERENCES `provincia` (`CodProvincia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
