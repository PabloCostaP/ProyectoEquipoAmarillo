-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2019 a las 13:58:36
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `movimientobd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistentes`
--

CREATE TABLE `asistentes` (
  `cod_voluntario` int(11) NOT NULL,
  `cod_evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campanna`
--

CREATE TABLE `campanna` (
  `cod_campanna` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `ambito` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `campanna`
--

INSERT INTO `campanna` (`cod_campanna`, `tipo`, `ambito`) VALUES
(1, 'Nacional', 'Nacional'),
(2, 'Europea', 'EU'),
(3, 'Autonómica', 'Madrid'),
(4, 'Municipal', 'Alcorcón');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `cod_candidato` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `fecha_nac` date NOT NULL,
  `lugar_nac` varchar(20) NOT NULL,
  `municipio` varchar(40) NOT NULL,
  `provincia` varchar(40) NOT NULL,
  `autonomia` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`cod_candidato`, `nombre`, `apellidos`, `fecha_nac`, `lugar_nac`, `municipio`, `provincia`, `autonomia`) VALUES
(1, 'Pedro', 'Iglesias Casado', '2019-05-22', 'Madrid', 'Madrid', 'Madrid', 'Madrid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidaturas`
--

CREATE TABLE `candidaturas` (
  `cod_candidato` int(11) NOT NULL,
  `cod_campanna` int(11) NOT NULL,
  `cabeza_lista` tinyint(1) NOT NULL,
  `posicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `candidaturas`
--

INSERT INTO `candidaturas` (`cod_candidato`, `cod_campanna`, `cabeza_lista`, `posicion`) VALUES
(1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `cod_evento` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `ubicacion` text NOT NULL,
  `dia` int(11) NOT NULL,
  `hora` time NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `municipio` varchar(40) NOT NULL,
  `cod_campanna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `cod_noticia` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `cod_campanna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `cod_punto` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `cod_campanna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voluntariados`
--

CREATE TABLE `voluntariados` (
  `cod_voluntario` int(11) NOT NULL,
  `cod_companna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voluntarios`
--

CREATE TABLE `voluntarios` (
  `cod_voluntario` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `fecha_nac` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `autoriza_com` tinyint(1) NOT NULL,
  `autoriza_gdpd` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistentes`
--
ALTER TABLE `asistentes`
  ADD PRIMARY KEY (`cod_voluntario`,`cod_evento`),
  ADD KEY `foranea_asistentes_eventos` (`cod_evento`);

--
-- Indices de la tabla `campanna`
--
ALTER TABLE `campanna`
  ADD PRIMARY KEY (`cod_campanna`);

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`cod_candidato`);

--
-- Indices de la tabla `candidaturas`
--
ALTER TABLE `candidaturas`
  ADD PRIMARY KEY (`cod_candidato`),
  ADD KEY `foranea_codcampanna` (`cod_campanna`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`cod_evento`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`cod_noticia`),
  ADD KEY `foranea_noticias` (`cod_campanna`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`cod_punto`),
  ADD KEY `foranea_programa` (`cod_campanna`);

--
-- Indices de la tabla `voluntariados`
--
ALTER TABLE `voluntariados`
  ADD PRIMARY KEY (`cod_voluntario`),
  ADD KEY `foranea_voluntariados_campanna` (`cod_companna`);

--
-- Indices de la tabla `voluntarios`
--
ALTER TABLE `voluntarios`
  ADD PRIMARY KEY (`cod_voluntario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistentes`
--
ALTER TABLE `asistentes`
  ADD CONSTRAINT `foranea_asistentes_eventos` FOREIGN KEY (`cod_evento`) REFERENCES `eventos` (`cod_evento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foranea_asistentes_voluntarios` FOREIGN KEY (`cod_voluntario`) REFERENCES `voluntarios` (`cod_voluntario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `candidaturas`
--
ALTER TABLE `candidaturas`
  ADD CONSTRAINT `foranea_candidaturas` FOREIGN KEY (`cod_candidato`) REFERENCES `candidatos` (`cod_candidato`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foranea_codcampanna` FOREIGN KEY (`cod_campanna`) REFERENCES `campanna` (`cod_campanna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `foranea_noticias` FOREIGN KEY (`cod_campanna`) REFERENCES `campanna` (`cod_campanna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `foranea_programa` FOREIGN KEY (`cod_campanna`) REFERENCES `campanna` (`cod_campanna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `voluntariados`
--
ALTER TABLE `voluntariados`
  ADD CONSTRAINT `foranea_voluntariados_campanna` FOREIGN KEY (`cod_companna`) REFERENCES `campanna` (`cod_campanna`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foranea_voluntariados_voluntarios` FOREIGN KEY (`cod_voluntario`) REFERENCES `voluntarios` (`cod_voluntario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
