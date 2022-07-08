-- phpMyAdmin SQL Dump
-- version 5.0.4deb2ubuntu5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-07-2022 a las 17:29:49
-- Versión del servidor: 8.0.29-0ubuntu0.21.10.2
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Chofer`
--

CREATE TABLE `Chofer` (
  `ID Chofer` bigint NOT NULL,
  `Vehiculo ID` bigint NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Direccion` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `RFC` varchar(13) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Clave INE` varchar(13) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Telefono` int NOT NULL,
  `CURP` varchar(18) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Licencia` varchar(4) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '4',
  `Tipo` varchar(4) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '4',
  `Vigencia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Control Produccion`
--

CREATE TABLE `Control Produccion` (
  `ID Control` bigint NOT NULL,
  `Introductor ID` bigint NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Tipo Ganado` varchar(60) COLLATE utf8mb4_swedish_ci NOT NULL,
  `No animal` int NOT NULL,
  `Peso Animal` int NOT NULL,
  `Pago` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cumplimiento`
--

CREATE TABLE `Cumplimiento` (
  `ID Cumplimiento` bigint NOT NULL,
  `Vehiculo ID` bigint NOT NULL,
  `Fumigacion` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Documentacion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `Inspección Visual` text COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Guia Traslado`
--

CREATE TABLE `Guia Traslado` (
  `ID Guia` bigint NOT NULL,
  `Introductor ID` bigint NOT NULL,
  `No Vehiculo` int NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Destino` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Producto` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `No Guia` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `introductores`
--

CREATE TABLE `introductores` (
  `ID introductor` bigint NOT NULL,
  `Folio` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Nombre` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Telefono` int NOT NULL,
  `CURP` varchar(18) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Direccion` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Licencia` varchar(4) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '4',
  `Tipo Ganado` int NOT NULL DEFAULT '4',
  `Vigencia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Clave Ine` varchar(13) COLLATE utf8mb4_swedish_ci NOT NULL,
  `RFC` varchar(13) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Vehiculo`
--

CREATE TABLE `Vehiculo` (
  `ID Vehiculo` bigint NOT NULL,
  `No Vehículo` int NOT NULL,
  `Marca` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Submarca` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Modelo` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Color` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `No Motor` int NOT NULL,
  `No Placa` varchar(17) COLLATE utf8mb4_swedish_ci NOT NULL,
  `No serie` varchar(17) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Chofer`
--
ALTER TABLE `Chofer`
  ADD PRIMARY KEY (`ID Chofer`),
  ADD KEY `Vehiculo ID` (`Vehiculo ID`);

--
-- Indices de la tabla `Control Produccion`
--
ALTER TABLE `Control Produccion`
  ADD PRIMARY KEY (`ID Control`),
  ADD KEY `Introductor ID` (`Introductor ID`);

--
-- Indices de la tabla `Cumplimiento`
--
ALTER TABLE `Cumplimiento`
  ADD PRIMARY KEY (`ID Cumplimiento`),
  ADD KEY `Vehiculo ID` (`Vehiculo ID`);

--
-- Indices de la tabla `Guia Traslado`
--
ALTER TABLE `Guia Traslado`
  ADD PRIMARY KEY (`ID Guia`),
  ADD KEY `Introductor ID` (`Introductor ID`);

--
-- Indices de la tabla `introductores`
--
ALTER TABLE `introductores`
  ADD PRIMARY KEY (`ID introductor`);

--
-- Indices de la tabla `Vehiculo`
--
ALTER TABLE `Vehiculo`
  ADD PRIMARY KEY (`ID Vehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Chofer`
--
ALTER TABLE `Chofer`
  MODIFY `ID Chofer` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Control Produccion`
--
ALTER TABLE `Control Produccion`
  MODIFY `ID Control` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Cumplimiento`
--
ALTER TABLE `Cumplimiento`
  MODIFY `ID Cumplimiento` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Guia Traslado`
--
ALTER TABLE `Guia Traslado`
  MODIFY `ID Guia` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `introductores`
--
ALTER TABLE `introductores`
  MODIFY `ID introductor` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Vehiculo`
--
ALTER TABLE `Vehiculo`
  MODIFY `ID Vehiculo` bigint NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Chofer`
--
ALTER TABLE `Chofer`
  ADD CONSTRAINT `Chofer_ibfk_1` FOREIGN KEY (`Vehiculo ID`) REFERENCES `Vehiculo` (`ID Vehiculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Cumplimiento`
--
ALTER TABLE `Cumplimiento`
  ADD CONSTRAINT `Cumplimiento_ibfk_1` FOREIGN KEY (`Vehiculo ID`) REFERENCES `Vehiculo` (`ID Vehiculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Guia Traslado`
--
ALTER TABLE `Guia Traslado`
  ADD CONSTRAINT `Guia Traslado_ibfk_1` FOREIGN KEY (`Introductor ID`) REFERENCES `introductores` (`ID introductor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Guia Traslado_ibfk_2` FOREIGN KEY (`ID Guia`) REFERENCES `Vehiculo` (`ID Vehiculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `introductores`
--
ALTER TABLE `introductores`
  ADD CONSTRAINT `introductores_ibfk_1` FOREIGN KEY (`ID introductor`) REFERENCES `Control Produccion` (`ID Control`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
