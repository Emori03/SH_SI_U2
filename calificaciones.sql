-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-02-2024 a las 17:18:10
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `calificaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ivs`
--

CREATE TABLE `ivs` (
  `IV` varchar(100) NOT NULL,
  `UsuarioId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ivs`
--

INSERT INTO `ivs` (`IV`, `UsuarioId`) VALUES
('52f188dc336450090a2d22a14e57da0c', 'M/JPpfQGekQRLncrA7L/6w=='),
('855a5e5cb09d65d079849886a0a4c518', 'aF88qVPClPzMe3WibJnrmQ=='),
('3b8cf86e9a6e287410feb4c402a1a4de', 'RnoVNSXJMx7XMC2Uf0toUA==');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `TrabajoId` int(11) NOT NULL,
  `Trabajo` varchar(100) NOT NULL,
  `DocenteId` varchar(100) NOT NULL,
  `MateriaId` int(11) NOT NULL,
  `FechaEntrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `UsuarioId` varchar(100) NOT NULL,
  `UsuarioNombre` varchar(100) NOT NULL,
  `UsuarioContrasena` varchar(100) NOT NULL,
  `UsuarioRango` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`UsuarioId`, `UsuarioNombre`, `UsuarioContrasena`, `UsuarioRango`) VALUES
('aF88qVPClPzMe3WibJnrmQ==', 'Gabriel', 'Oh+LcaUIP+I+RNej1MqQqw==', 'Docente'),
('M/JPpfQGekQRLncrA7L/6w==', 'Test', 'JrwqO8OvGfYBInypoJyGOg==', 'Alumno'),
('RnoVNSXJMx7XMC2Uf0toUA==', 'Emori', 'cDKmIgiNFD3IhZbp9VcL0Q==', 'Administrador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ivs`
--
ALTER TABLE `ivs`
  ADD KEY `UsuarioId` (`UsuarioId`);

--
-- Indices de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD PRIMARY KEY (`TrabajoId`),
  ADD KEY `DocenteId` (`DocenteId`),
  ADD KEY `MateriaId` (`MateriaId`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`UsuarioId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  MODIFY `TrabajoId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ivs`
--
ALTER TABLE `ivs`
  ADD CONSTRAINT `ivs_ibfk_1` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Filtros para la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD CONSTRAINT `trabajos_ibfk_1` FOREIGN KEY (`DocenteId`) REFERENCES `usuarios` (`UsuarioId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
