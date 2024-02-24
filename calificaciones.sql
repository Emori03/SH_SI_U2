-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-02-2024 a las 03:31:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

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

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `nombre`, `comentario`, `fecha`) VALUES
(7, 'Cigladi', 'Comentario de prueba', '2024-02-21 20:34:39'),
(8, 'emori', 'hola', '2024-02-22 00:41:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `calificacion` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `apellido`, `calificacion`) VALUES
(1, 'jorge', 'neira', 8),
(2, 'emori', 'alvarado', 8);

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `trabajoId` int(11) NOT NULL,
  `calificacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `trabajoId`, `calificacion`) VALUES
(6, 'cigladi', 0, 'ef2d127de37b942baad06145e54b0c619a1f22327b2ebbcfbec78f5564afe39d'),
(7, 'si', 0, '2c624232cdd221771294dfbb310aca000a0df6ac8b66b696d90ef06fdefb64a3'),
(8, '', 0, 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'),
(9, '', 0, 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'),
(10, 'chamba', 1, '4e07408562bedb8b60ce05c1decfe3ad16b72230967de01f640b7e4729b49fce'),
(11, 'lo que quiera', 4, '4a44dc15364204a80fe80e9039455cc1608281820fe2b24f1e5233ade6af1dd5');

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
('855a5e5cb09d65d079849886a0a4c518', 'aF88qVPClPzMe3WibJnrmQ=='),
('3b8cf86e9a6e287410feb4c402a1a4de', 'RnoVNSXJMx7XMC2Uf0toUA=='),
('31509bb03f08a6e2d3b02dcc0fda1b37', 'SwSpR9m6JZLDqNd9Whbl8g=='),
('7d4a0aaa5bcae7efeafbc655068b5383', 'fwngpNOtAlpEm8yTSyJ1vA=='),
('347bb323ff707107850b71a48ec9212d', 'DWP+DCnTpwzNL2Tw0/yGfiPeK6Xjak4bXejJakpAXx4='),
('8e18907b1cd6dbd9e68467b3ebd798ba', 'AkcrD8Rat5P8TZu00HYbPQ=='),
('7b2f4e2182c7cd902fc48c4354a670b3', '35nWsvWkZGhc3gYt/u6vPg=='),
('b4e974b760aa4a6ab051e0fb936ecc7e', 'kYMIXmFJdYVxRUO7jSbSyQ=='),
('83baaae95c3469b40da7b4896eea81e6', 'NGohozBWGXQQVvVHH9zXVw=='),
('314d8bb3711b88ec2defc6d4df0ed7d2', 'dWCJepgVP89VxIVXmc7pp5B2ZBgk6mH0ZDHq2Swi6vc='),
('f7243caec1c4f73b8a52d3c2c19785ac', '98r1XMDSqg7M447fUJWKww=='),
('26a228fcd51ac702178a012ffd52b111', '6vtN4Obp2WwYR742YJwqOQ=='),
('39489176afe6e7c09f230183a4e46f4e', 'okJSTMoihec1Z6EM1C2kfA=='),
('435d94e49374541448205ecc672d6d49', 'rMGftzfl0TrxKsG0crc4QA=='),
('72c26b2aef483b6f8c547189f9e56162', 'G81hcw/ucHVPo0c3ITgzlg=='),
('d873a2de9f301dff8e7346df2fa7d7c4', 'aKcOO/d02Ykqo+gJv18CBw=='),
('52f8b9180f8daf93fa7b8a78f1a82a51', 'pj6PkHawQI/h0d4hi0UlIA=='),
('4c6aeedd500ea5fb234b2b7993e2b617', 'fQuxssJngVF0bR8xnAj2KA=='),
('70944ef8b1ae08762321839893ab6a93', '6Cv0fNUcPaC8+6Dl/khIuQ=='),
('ccbb70aae23d8c7224bbdb2df71e1e0c', 'iHFk7WcQCrFdSYUF/kMJ1g=='),
('4d59ca33486b48d2975eae96dfc28a2a', 'S48lIcY0OtTZdfYqV3OAiA=='),
('4991069091e4f9cb35091e8356ee1e0c', 'Pa41jGW3T7uncTihMm/Fzg=='),
('8befe3592752673f022ba07df6830b4a', '40nb0us/7xWMyBFKFfcdBw=='),
('9312af5c99d7a5a5cc619c5f30a81801', 'JBBCMyeFG147kyFeMKPjGQ==');

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
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `MateriaId` int(100) NOT NULL,
  `Nombre` int(100) NOT NULL,
  `DocenteId` varchar(100) NOT NULL
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
('35nWsvWkZGhc3gYt/u6vPg==', 'Hernandes Angel', 'gWwkYeINlh/ZaP2uPB5+EQ==', 'Alumno'),
('40nb0us/7xWMyBFKFfcdBw==', 'Valero Fatima', 'vogh0gv1toIBgqMBjiyiNA==', 'Alumno'),
('6Cv0fNUcPaC8+6Dl/khIuQ==', 'Rivas Armando', 'x3MZbs3MFtsLdgZFYm8PHA==', 'Alumno'),
('6vtN4Obp2WwYR742YJwqOQ==', 'Najera Ivan', 'kZ+6rJ3ZKLC6miDGlugMnw==', 'Alumno'),
('98r1XMDSqg7M447fUJWKww==', 'Mendoza Mitchel', 'FC0zqArGt/ohiRVkSARe0Q==', 'Alumno'),
('aF88qVPClPzMe3WibJnrmQ==', 'Gabriel', 'Oh+LcaUIP+I+RNej1MqQqw==', 'Docente'),
('aKcOO/d02Ykqo+gJv18CBw==', 'Quitero Gael', 'Jkiaakx0kryDMrIVV7QKpg==', 'Alumno'),
('AkcrD8Rat5P8TZu00HYbPQ==', 'Histroza irwing', '+I4SuMTEshHWd9dpPbwUXw==', 'Alumno'),
('dWCJepgVP89VxIVXmc7pp5B2ZBgk6mH0ZDHq2Swi6vc=', 'Martinez Sebastian', 'RvCvJBsW4fiTIEXs5xfw6Q==', 'Alumno'),
('DWP+DCnTpwzNL2Tw0/yGfiPeK6Xjak4bXejJakpAXx4=', 'Domingues Grettel', 'bFUfwSTSPhPy1z6mwDBzLw==', 'Alumno'),
('fQuxssJngVF0bR8xnAj2KA==', 'Reyes Antonios', 'DclTDXfntPfr50WmAZE0VQ==', 'Alumno'),
('fwngpNOtAlpEm8yTSyJ1vA==', 'Leon Alejandra', 'nD62N+KUR3lyRADqkAme8w==', 'Alumno'),
('G81hcw/ucHVPo0c3ITgzlg==', 'Peña Javier', 'Q4coz2wJqLbBydFi+Sh9EA==', 'Alumno'),
('iHFk7WcQCrFdSYUF/kMJ1g==', 'Romero Nataly', 'XJnNYBzNxoGegGK/UTFcZw==', 'Alumno'),
('JBBCMyeFG147kyFeMKPjGQ==', 'Vasquez Vannesa', 'Gw1Krwh6NCQeHuPZkTQw0A==', 'Alumno'),
('kYMIXmFJdYVxRUO7jSbSyQ==', 'Lara Edgar', 'yaUGeW1rYjYHXq5DK0OIVA==', 'Alumno'),
('NGohozBWGXQQVvVHH9zXVw==', 'Llanas Antonio', 'uA61xgmB9SUgnKntQgqBpg==', 'Alumno'),
('okJSTMoihec1Z6EM1C2kfA==', 'Neira Wichp', '9XVMm+FYZ/P+NE1V649Jog==', 'Alumno'),
('Pa41jGW3T7uncTihMm/Fzg==', 'Torres Andres ', 'q20tEtg40OypC2mU5B6hug==', 'Alumno'),
('pj6PkHawQI/h0d4hi0UlIA==', 'Ramirez Hugo', 'Wk1x8M+qCKP4A1taFp3xww==', 'Alumno'),
('rMGftzfl0TrxKsG0crc4QA==', 'Padilla Marcela', 'AWicuVUOPobqpnamwkd01g==', 'Alumno'),
('RnoVNSXJMx7XMC2Uf0toUA==', 'Emori', 'cDKmIgiNFD3IhZbp9VcL0Q==', 'Administrador'),
('S48lIcY0OtTZdfYqV3OAiA==', 'Sauzedo Mitchel', '/1h9KBY3/tY5q/cDraLNLg==', 'Alumno'),
('SwSpR9m6JZLDqNd9Whbl8g==', 'Jarek Alvarado', 'cwx+jXIpJ1hBa2lEXjYHbw==', 'Alumno');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ivs`
--
ALTER TABLE `ivs`
  ADD KEY `UsuarioId` (`UsuarioId`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`MateriaId`),
  ADD KEY `DocenteId` (`DocenteId`);

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
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  MODIFY `TrabajoId` int(11) NOT NULL AUTO_INCREMENT;

  --
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `MateriaId` int(100) NOT NULL AUTO_INCREMENT;


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
