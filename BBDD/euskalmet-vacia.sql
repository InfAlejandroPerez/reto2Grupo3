-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2021 a las 10:52:38
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

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
  `CodEstacion` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Precipitaciones` varchar(50) DEFAULT NULL,
  `Temperatura` int(11) DEFAULT NULL,
  `Velocidad viento` int(11) DEFAULT NULL,
  `COmgm3` float DEFAULT NULL,
  `CO8hmgm3` float DEFAULT NULL,
  `NOgm3` float DEFAULT NULL,
  `NOXgm3` float DEFAULT NULL,
  `PM10gm3` float DEFAULT NULL,
  `PM25gm3` float DEFAULT NULL,
  `SO2gm3` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacios_naturales`
--

CREATE TABLE `espacios_naturales` (
  `CodEspacio` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estaciones`
--

CREATE TABLE `estaciones` (
  `CodEstacion` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `CodMunicipio` int(11) NOT NULL,
  `CoordenadaX` double NOT NULL,
  `CoordenadaY` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `esta_en`
--

CREATE TABLE `esta_en` (
  `CodEspacio` int(11) NOT NULL,
  `CodMunicipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos_espacios`
--

CREATE TABLE `favoritos_espacios` (
  `CodUsuario` int(11) NOT NULL,
  `CodEspacio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos_municipios`
--

CREATE TABLE `favoritos_municipios` (
  `CodUsuario` int(11) NOT NULL,
  `CodMunicipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashes`
--

CREATE TABLE `hashes` (
  `CodHash` int(11) NOT NULL,
  `Url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `CodProvincia` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `CodUsuario` int(11) NOT NULL,
  `Nombre` int(50) NOT NULL,
  `password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`CodEstacion`,`Fecha`,`Hora`);

--
-- Indices de la tabla `espacios_naturales`
--
ALTER TABLE `espacios_naturales`
  ADD PRIMARY KEY (`CodEspacio`);

--
-- Indices de la tabla `estaciones`
--
ALTER TABLE `estaciones`
  ADD PRIMARY KEY (`CodEstacion`),
  ADD KEY `FKbqk5xdvocjjw6e46ook1diyqf` (`CodMunicipio`);

--
-- Indices de la tabla `esta_en`
--
ALTER TABLE `esta_en`
  ADD PRIMARY KEY (`CodMunicipio`,`CodEspacio`),
  ADD KEY `FK86oqk96gjmb1g4o8889dd21f5` (`CodEspacio`);

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
  ADD PRIMARY KEY (`CodUsuario`,`CodMunicipio`),
  ADD KEY `FKlncs5g8lqg4hgh0c9ojkybc2x` (`CodMunicipio`);

--
-- Indices de la tabla `hashes`
--
ALTER TABLE `hashes`
  ADD PRIMARY KEY (`CodHash`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`CodMunicipio`),
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
  ADD CONSTRAINT `FKh1q6p36ejtxhtme7v8vem66x4` FOREIGN KEY (`CodEstacion`) REFERENCES `estaciones` (`CodEstacion`);

--
-- Filtros para la tabla `estaciones`
--
ALTER TABLE `estaciones`
  ADD CONSTRAINT `FKbqk5xdvocjjw6e46ook1diyqf` FOREIGN KEY (`CodMunicipio`) REFERENCES `municipios` (`CodMunicipio`);

--
-- Filtros para la tabla `esta_en`
--
ALTER TABLE `esta_en`
  ADD CONSTRAINT `FK86oqk96gjmb1g4o8889dd21f5` FOREIGN KEY (`CodEspacio`) REFERENCES `espacios_naturales` (`CodEspacio`),
  ADD CONSTRAINT `FKoqkwfuv4rynap9myvrcunrgbw` FOREIGN KEY (`CodMunicipio`) REFERENCES `municipios` (`CodMunicipio`);

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
  ADD CONSTRAINT `FK4oo8cxsa4kecfrb5q9oog8jlg` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`CodUsuario`),
  ADD CONSTRAINT `FKlncs5g8lqg4hgh0c9ojkybc2x` FOREIGN KEY (`CodMunicipio`) REFERENCES `municipios` (`CodMunicipio`);

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
