-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-12-2021 a las 20:12:27
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
  `Precipitaciones` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Temperatura` int(3) NOT NULL,
  `Velocidad viento` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
  `CoordenadaX` double NOT NULL,
  `CoordenadaY` double NOT NULL,
  `CodMunicipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `esta_en`
--

CREATE TABLE `esta_en` (
  `CodMunicipio` int(11) NOT NULL,
  `CodEspacio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos_espacios`
--

CREATE TABLE `favoritos_espacios` (
  `CodUsuario` int(11) NOT NULL,
  `CodEspacio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos_municipios`
--

CREATE TABLE `favoritos_municipios` (
  `CodUsuario` int(11) NOT NULL,
  `CodMunicipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashes`
--

CREATE TABLE `hashes` (
  `CodHash` int(11) NOT NULL,
  `Url` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `CodMunicipio` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` longtext COLLATE utf8_spanish_ci NOT NULL,
  `CodProvincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`CodMunicipio`, `Nombre`, `Descripcion`, `CodProvincia`) VALUES
(1, 'Abadiño', 'Montes y á rboles tiñ en de verde los parajes de esta localidad perteneciente a la comarca del Duranguesado y por los que circulan los rí os Ibaizabal y Urkiola. Una buena opció n para admirar estos parajes es a travé s de diversas rutas que ofrece Abadiñ o y que se pueden realizar a pie, en bicicleta incluso a caballo. Al llegar a esta bella localidad, quedaremos impresionados por sus edificios, con una larga historia en sus cimientos. La Torre de Muntsaratz, por ejemplo, data del siglo IX y se trata de una de las edificaciones renacentistas má s importantes de su gé nero. Otro de los monumentos má s destacables es la Casa de Astola, que fue centro de actividades polí ticas y administrativas. Hoy en dí a, funciona como sede de varias asociaciones de la comarca. Asimismo, fuera del nú cleo urbano, llama la atenció n el Santuario de San Antonio, situado en el corazó n del Parque Natural de Urkiola, rodeado de impresionantes montes y de robledales, hayedos y fresnos.Ferias de gran tradició n: San Blas y San AntonioLas fiestas patronales comienzan el 12 de mayo (Santo Domingo), por lo que todo el que quiera podrá disfrutar del inmejorable ambiente que se respira estos dí as. La mú sica y el baile se apoderan de las calles de este pueblo vizcaí no. En el calendario festivo destacan otras dos ferias: la de San Blas (3 de febrero), con su feria de ganado, y la de San Antonio (13 de junio), que se celebra en las inmediaciones del Santuario de Urkiola. En esta ú ltima romerí a, segú n manda la tradició n, las casaderas que buscan encontrar pronto un marido dan vueltas a la piedra que se encuentra enfrente del Santuario.', 48);

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
(48, 'Bizkaia');

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
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`CodUsuario`, `Nombre`, `password`) VALUES
(1, 11, 212);

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
  ADD KEY `FK_municipios_estaciones` (`CodMunicipio`);

--
-- Indices de la tabla `esta_en`
--
ALTER TABLE `esta_en`
  ADD PRIMARY KEY (`CodMunicipio`,`CodEspacio`),
  ADD KEY `FK_estaciones_esta` (`CodEspacio`);

--
-- Indices de la tabla `favoritos_espacios`
--
ALTER TABLE `favoritos_espacios`
  ADD PRIMARY KEY (`CodUsuario`,`CodEspacio`),
  ADD KEY `Fk_espacios_favesp` (`CodEspacio`);

--
-- Indices de la tabla `favoritos_municipios`
--
ALTER TABLE `favoritos_municipios`
  ADD PRIMARY KEY (`CodUsuario`,`CodMunicipio`),
  ADD KEY `Fk_municipio_favmun` (`CodMunicipio`);

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
  ADD CONSTRAINT `FK_estaciones_datos` FOREIGN KEY (`CodEstacion`) REFERENCES `estaciones` (`CodEstacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estaciones`
--
ALTER TABLE `estaciones`
  ADD CONSTRAINT `FK_municipios_estaciones` FOREIGN KEY (`CodMunicipio`) REFERENCES `municipios` (`CodMunicipio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `esta_en`
--
ALTER TABLE `esta_en`
  ADD CONSTRAINT `FK_estaciones_esta` FOREIGN KEY (`CodEspacio`) REFERENCES `espacios_naturales` (`CodEspacio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_municipios_esta` FOREIGN KEY (`CodMunicipio`) REFERENCES `municipios` (`CodMunicipio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `favoritos_espacios`
--
ALTER TABLE `favoritos_espacios`
  ADD CONSTRAINT `Fk_espacios_favesp` FOREIGN KEY (`CodEspacio`) REFERENCES `espacios_naturales` (`CodEspacio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_usuario_favesp` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`CodUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `favoritos_municipios`
--
ALTER TABLE `favoritos_municipios`
  ADD CONSTRAINT `Fk_municipio_favmun` FOREIGN KEY (`CodMunicipio`) REFERENCES `municipios` (`CodMunicipio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_usuario_favmun` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`CodUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `Fk_provincia_municipios` FOREIGN KEY (`CodProvincia`) REFERENCES `provincia` (`CodProvincia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
