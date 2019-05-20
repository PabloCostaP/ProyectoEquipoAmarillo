-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2019 a las 03:49:00
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

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
(3, 'Autonomica', 'Madrid'),
(4, 'Autonomica', 'Caceres'),
(5, 'Autonomica', 'Barcelona'),
(6, 'Autonomica', 'Sevilla'),
(7, 'Autonomica', 'Soria'),
(8, 'Municipal', 'Alcorcon'),
(9, 'Municipal', 'Getafe'),
(10, 'Municipal', 'Manresa'),
(11, 'Municipal', 'Mostoles'),
(12, 'Municipal', 'Soto del Real');

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
(1, 'Jose', 'Antonio Perico', '1972-07-13', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(2, 'Federico', 'Garcia Orta', '1987-07-16', 'Valladolid', 'Valladolid', 'Valladolid', 'Valladolid'),
(3, 'Sara', 'Velazquez Rodriguez', '1992-05-08', 'Barcelona', 'Barcelona', 'Barcelona', 'Barcelona'),
(4, 'Asmaldo', 'Firuli Perez', '1982-09-16', 'Sevilla', 'Sevilla', 'Sevilla', 'Sevilla'),
(5, 'Natalia', 'Perez Hernandez', '1984-08-15', 'Soria', 'Soria', 'Soria', 'Soria'),
(6, 'Eduardo', 'Velazco Sanchez', '1978-06-13', 'Caceres', 'Caceres', 'Caceres', 'Caceres'),
(7, 'Leonardo', 'Mayorquin Alvarez', '1985-09-10', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(8, 'Axel', 'Salazar Predaza', '1985-12-12', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(9, 'Araceli', 'Lopez', '1987-12-17', 'Segovia', 'Segovia', 'Segovia', 'Segovia'),
(10, 'Elizabeth', 'Hernandez Martin', '1983-07-13', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(11, 'Guillen', 'Fraga', '1989-07-13', 'Barcelona', 'Barcelona', 'Barcelona', 'Barcelona'),
(12, 'Francisco', 'Palacio Peret', '1979-03-15', 'Barcelona', 'Barcelona', 'Barcelona', 'Barcelona'),
(13, 'Javier', 'Lacer Sanchez', '1983-09-12', 'Barcelona', 'Barcelona', 'Barcelona', 'Barcelona'),
(14, 'Ana', 'Noboa Lacasa', '1987-01-30', 'Caceres', 'Caceres', 'Caceres', 'Caceres'),
(15, 'Ximena', 'Davalos Cadaval', '1986-08-16', 'Caceres', 'Caceres', 'Caceres', 'Caceres'),
(16, 'Rafael', 'Secada Fernan', '1989-10-05', 'Caceres', 'Caceres', 'Caceres', 'Caceres'),
(17, 'Antonio', 'Martinez Lopez', '1986-04-19', 'Sevilla', 'Sevilla', 'Sevilla', 'Sevilla'),
(18, 'Francisco', 'Ruiz MuÃ±oz', '1982-03-25', 'Sevilla', 'Sevilla', 'Sevilla', 'Sevilla'),
(19, 'Isabel', 'Hernandez Moreno', '1986-03-21', 'Soria', 'Soria', 'Soria', 'Soria'),
(20, 'Carlos', 'Gomez Gonzalez', '1985-05-30', 'Avila', 'Avila', 'Avila', 'Avila'),
(21, 'Felipe', 'Antonio Jesus', '1982-08-14', 'Badajoz', 'Badajoz', 'Badajoz', 'Badajoz'),
(22, 'Carla', 'Ferreira Calvo', '1989-02-22', 'Sevilla', 'Sevilla', 'Sevilla', 'Sevilla'),
(23, 'Maria', 'De la Torre', '1985-05-13', 'Burgos', 'Burgos', 'Burgos', 'Burgos'),
(24, 'Adrian', 'Serrano Aguilar', '1975-07-17', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(25, 'Saul', 'Medina Jimenez', '1980-04-19', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(26, 'Lucia', 'Hidalgo Vicente', '1986-04-17', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(27, 'Alexia', 'Marin Blanco', '1990-02-23', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(28, 'Celia', 'Leon Marin', '1981-07-29', 'Barcelona', 'Barcelona', 'Barcelona', 'Barcelona'),
(29, 'Mar', 'Campos Jimenez', '1971-08-21', 'Barcelona', 'Barcelona', 'Barcelona', 'Barcelona'),
(30, 'Gerard', 'Sanchez Iglesias', '1985-07-18', 'Barcelona', 'Barcelona', 'Barcelona', 'Barcelona'),
(31, 'Angel', 'Gimenez Ramos', '1987-04-15', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(32, 'Juan', 'Sola IbaÃ±ez', '1979-07-10', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(33, 'Eduardo', 'Gallardo Blanco', '1977-05-12', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(34, 'Jorge', 'Marin Carrasco', '1988-03-18', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(35, 'Clara', 'Duran Diaz', '1980-07-16', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(36, 'Rocio', 'Delgado Ruiz', '1987-08-20', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(37, 'Rodrigo', 'Molina Cuesta', '1984-07-17', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(38, 'Santiago', 'Garrido Herrero', '1988-07-19', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(39, 'Gerard', 'Reyes Guerrero', '1980-10-20', 'Barcelona', 'Barcelona', 'Barcelona', 'Barcelona'),
(40, 'Joel', 'Gutierrez Vicente', '1981-07-14', 'Barcelona', 'Barcelona', 'Barcelona', 'Barcelona'),
(41, 'Alejandro', 'Hernandez Pastor', '1979-06-18', 'Barcelona', 'Barcelona', 'Barcelona', 'Barcelona'),
(42, 'Laia', 'Font Guerrero', '1981-10-20', 'Barcelona', 'Barcelona', 'Barcelona', 'Barcelona'),
(43, 'Julia', 'Ortega Martinez', '1989-06-20', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(44, 'Beatriz', 'Gutierrez Cruz', '1980-07-22', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(45, 'Pablo', 'Leon Castillo', '1990-02-14', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(46, 'Mikel', 'Pascual Garrido', '1989-06-27', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(47, 'Hugo', 'Vidal Fuentes', '1979-07-18', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(48, 'Ivan', 'Serrano Guerrero', '1986-07-16', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(49, 'Adrian', 'Lopez Serrano', '1990-07-17', 'Madrid', 'Madrid', 'Madrid', 'Madrid'),
(50, 'Alba', 'NuÃ±ez Blanco', '1990-07-17', 'Madrid', 'Madrid', 'Madrid', 'Madrid');

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
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 5, 1, 1),
(4, 6, 1, 1),
(5, 7, 1, 1),
(6, 8, 1, 1),
(7, 3, 1, 1),
(8, 3, 0, 2),
(9, 3, 0, 3),
(10, 3, 0, 4),
(11, 5, 0, 2),
(12, 5, 0, 3),
(13, 5, 0, 4),
(14, 4, 1, 1),
(15, 4, 0, 2),
(16, 4, 0, 3),
(17, 6, 0, 2),
(18, 6, 0, 3),
(19, 7, 0, 2),
(20, 7, 0, 3),
(21, 4, 0, 4),
(22, 6, 0, 4),
(23, 7, 0, 4),
(24, 1, 0, 2),
(25, 1, 0, 3),
(26, 1, 0, 4),
(27, 1, 0, 5),
(28, 2, 0, 2),
(29, 2, 0, 3),
(30, 2, 0, 4),
(31, 2, 0, 5),
(32, 8, 0, 2),
(33, 8, 0, 3),
(34, 8, 0, 4),
(35, 9, 1, 1),
(36, 9, 0, 2),
(37, 9, 0, 3),
(38, 9, 0, 4),
(39, 10, 1, 1),
(40, 10, 0, 2),
(41, 10, 0, 3),
(42, 10, 0, 4),
(43, 11, 1, 1),
(44, 11, 0, 2),
(45, 11, 0, 3),
(46, 11, 0, 4),
(47, 12, 1, 1),
(48, 12, 0, 2),
(49, 12, 0, 3),
(50, 12, 0, 4);

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

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`cod_noticia`, `titulo`, `cuerpo`, `cod_campanna`) VALUES
(1, 'Modificaremos la Ley de Víctimas del Terrorismo', '“Modificaremos la Ley de Víctimas del Terrorismo para que no se puedan realizar homenajes a ningún terrorista en ningún pueblo de España”. Así lo ha dicho el Presidente de Movimiento Centro, Jose Antonio Perico, en el acto “En marcha por la libertad” realizado en Estella junto a Maria Sanchez, candidata al Parlamento Europeo, y Rodrigo Garcia.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `cod_punto` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `cod_campanna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`cod_punto`, `descripcion`, `cod_campanna`) VALUES
(1, 'Aplicaremos el artículo 155 hasta asegurar el restablecimiento de la Constitución en Cataluña para garantizar la convivencia entre todos los catalanes', 1),
(2, 'Mejoraremos los instrumentos para proteger a los españoles de los golpes de Estado en el siglo XXI. ', 1),
(3, 'Impediremos que quienes se fuguen de la justicia puedan presentarse a las elecciones y/o beneficiarse del dinero de todos.', 1),
(4, 'Garantizaremos que se pueda estudiar, trabajar y rotular tu negocio en español en toda España.', 1),
(5, 'El conocimiento de una lengua cooficial autonómica nunca será una barrera para acceder a un empleo público en España.', 1),
(6, 'Incluiremos una asignatura sobre la Constitución española, troncal y evaluable en toda España.', 1),
(7, 'Reformaremos el Tribunal Constitucional para reforzar su capacidad de actuación a la hora de asegurar el respeto a la Constitución', 1),
(8, 'Impulsaremos la actualización de nuestra Constitución para garantizar que España sea una nación de ciudadanos libres e iguales.', 1),
(9, 'Reformaremos la Ley Electoral para que sea más justa e igualitaria para que España no dependa de los que quieren romperla.', 1),
(10, 'Impulsaremos la reforma de la financiación autonómica con el objetivo de conseguir un modelo más justo, equitativo y transparente.', 1),
(11, 'Acabaremos con el privilegio que supone el actual cálculo arbitrario e insolidario del cupo vasco.', 1),
(12, 'Luchar contra la corrupción, proteger a los denunciantes y acabar con los privilegios políticos.', 3),
(13, 'Suprimiremos los aforamientos políticos para acabar con los privilegios de los políticos corruptos.', 3),
(14, 'Tolerancia cero con la corrupción: los corruptos se irán a su casa.', 3),
(15, 'Incluiremos en el Código Penal el delito de enriquecimiento injustificado de los cargos públicos.', 3),
(16, 'Prohibiremos los indultos a políticos condenados por corrupción, rebelión y sedición para acabar con la impunidad.', 3),
(17, 'Acabaremos con los enchufes de ‘amiguetes’ políticos incompetentes en las Administraciones Públicas.', 4),
(18, 'Limitaremos al mínimo los supuestos de libre designación.', 4),
(19, 'Desarrollaremos el Estatuto del Directivo Público para acabar con los dedazos.', 4),
(20, 'Aprobaremos una Ley ‘Antidedazos’ en los Organismos Reguladores.', 4),
(21, 'Actualizaremos la Ley de Defensa de la Competencia para asegurarnos de que las prácticas abusivas sean sancionadas. ', 4),
(22, 'Aprobaremos una Ley Orgánica de Transparencia y Participación que refuerce la transparencia y el acceso a toda la información pública.', 5),
(23, 'Regularemos la actividad de los lobbies o grupos de interés para garantizar la transparencia.', 5),
(24, 'Pondremos fin a los contratos y subvenciones ‘a dedo’, los amaños y los sobrecostes para acabar con los agujeros por donde se cuela la corrupción.', 5),
(25, 'Convertiremos la Oficina de Regulación y Supervisión de la Contratación Pública en una autoridad independiente.', 5),
(26, 'Impulsaremos marcos de integridad en la contratación pública y la detección preventiva de conductas irregulares.', 5),
(27, 'Garantizaremos la independencia y pluralidad de Radiotelevisión Española (RTVE).', 6),
(28, 'Garantizaremos un Poder Judicial independiente y libre de injerencias políticas.', 6),
(29, 'Incrementaremos los recursos de la Administración de Justicia para asegurar la tutela judicial efectiva de todos los ciudadanos.', 6),
(30, 'Aprobaremos una Ley de Lucha contra el Fraude y la Evasión Fiscal para cerrar los agujeros legales que alientan estas prácticas.', 6),
(31, 'Promoveremos una reforma en la UE que armonice las bases imponibles del Impuesto de Sociedades', 6),
(32, 'Eliminaremos el régimen especial de Entidades de Tenencia de Valores Extranjeros (ETVE).', 7),
(33, 'Reforzaremos el Servicio de Prevención del Blanqueo de Capitales (SEPBLAC).', 7),
(34, 'Prohibiremos los programas informáticos de ‘doble uso’ que permiten la manipulación de la contabilidad.', 7),
(35, 'Pondremos la lupa sobre las monedas virtuales para asegurar que no se utilicen para encubrir ingresos de origen ilícito.', 7),
(36, 'Garantizaremos el derecho de los consumidores a pagar cualquier bien o servicio con tarjeta de crédito, limitando las comisiones.', 7),
(37, 'Reformaremos con urgencia el delito fiscal haciendo cumplir las sentencias y endureciendo las penas.', 8),
(38, 'Incrementaremos los medios y la autonomía de la Agencia Tributaria.', 8),
(39, 'Bajaremos el Impuesto sobre la Renta a las familias.', 8),
(40, 'Nadie tendrá que renunciar nunca más a una herencia por no poder pagar el Impuesto de Sucesiones y Donaciones.', 8),
(41, 'Reformaremos el Impuesto de Sociedades para cerrar agujeros y eliminar trampas que facilitan la ‘ingeniería fiscal’.', 8),
(42, 'Todos los trámites administrativos podrán hacerse a través del teléfono móvil.', 9),
(43, 'Una regulación y no 17: armonizaremos y simplificaremos la maraña de normas autonómicas que lastran a nuestras empresas.', 9),
(44, 'Eliminaremos todas las barreras regulatorias que frenan el crecimiento empresarial.', 9),
(45, 'Cerraremos todos y cada uno de los ‘chiringuitos’ políticos que el bipartidismo ha usado para colocar a sus amiguetes.', 9),
(46, 'Suprimiremos las diputaciones provinciales, garantizando unos mejores servicios públicos, más baratos y sin corrupción.', 9),
(47, 'Elevaremos el presupuesto en I+D+i para alcanzar el 2% del PIB al final de la legislatura.', 10),
(48, 'Más incentivos fiscales para fomentar la inversión y la atracción de talento en startups.', 10),
(49, 'Mejoraremos la financiación pública de sectores estratégicos a través de la creación de fondos de inversión públicos de coinversión (match-funding)', 10),
(50, 'Potenciaremos fórmulas de financiación participativa (crowdfunding, crowdlending, etc.) para incrementar la captación de fondos por las startups.', 10),
(51, 'Promoveremos el uso de las opciones sobre acciones para que las startups puedan atraer el mejor talento en las fases iniciales.', 10),
(52, 'Apoyaremos la excelencia y acabaremos con la precariedad de nuestros investigadores. ', 11),
(53, 'Conectaremos la investigación con la empresa poniendo en marcha la Red Cervera de Transferencia Tecnológica.', 11),
(54, 'Aprobaremos un nuevo Plan Naranja de Reformas para los Autónomos.', 11),
(55, 'Ampliaremos a 2 años la tarifa plana para nuevos autónomos.', 11),
(56, 'Los autónomos y las pymes no tendrán que adelantar nunca más el IVA por facturas que no hayan cobrado.', 11),
(57, 'Los autónomos con ingresos reales inferiores al salario mínimo anual no pagarán cuotas.', 12),
(58, 'Garantizaremos que los proveedores cobren en un máximo de 30 días en los contratos con la Administración o de 60 días en el resto de casos.', 12),
(59, 'Eliminaremos los contratos temporales: todos los contratos serán indefinidos.', 12),
(60, 'Garantizaremos que sea compatible tener un trabajo asalariado y percibir el 100% de la pensión de jubilación.', 12),
(61, 'Revolucionaremos las políticas de empleo y formación para que realmente ayuden a los desempleados a encontrar un trabajo.', 12);

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
