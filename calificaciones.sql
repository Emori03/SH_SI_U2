-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2024 a las 23:07:22
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
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `TrabajoId` int(11) NOT NULL,
  `UsuarioId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `nombre`, `comentario`, `fecha`, `TrabajoId`, `UsuarioId`) VALUES
(9, 'Jarek Alvarado', 't5/Hel8/QPSD8GTDhUspIk+RpQJHK4EfWcA3KDgIlB4=', '2024-02-24 15:23:41', 1, 'SwSpR9m6JZLDqNd9Whbl8g==');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

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
(6, 'cigladi', 1, 'ef2d127de37b942baad06145e54b0c619a1f22327b2ebbcfbec78f5564afe39d'),
(7, 'si', 1, '2c624232cdd221771294dfbb310aca000a0df6ac8b66b696d90ef06fdefb64a3'),
(10, 'chamba', 1, '4e07408562bedb8b60ce05c1decfe3ad16b72230967de01f640b7e4729b49fce'),
(11, 'lo que quiera', 1, '4a44dc15364204a80fe80e9039455cc1608281820fe2b24f1e5233ade6af1dd5');

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
('3b8cf86e9a6e287410feb4c402a1a4de', 'RnoVNSXJMx7XMC2Uf0toUA=='),
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
('9312af5c99d7a5a5cc619c5f30a81801', 'JBBCMyeFG147kyFeMKPjGQ=='),
('59916e5851fc99d73ab671f5d04ea7e1', 'cn0brZhq94vUwjRIlzoD8g=='),
('4ee63812656ba7f2614d24f92bb4ba8a', 'fziZKC+hse/VGlS5wlI/sA=='),
('0362529c0f6f1412dc32321e1b021eaa', 'twUEBUwLfvdBnBJL3MNc8g==');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `MateriaId` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `DocenteId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`MateriaId`, `Nombre`, `DocenteId`) VALUES
(1, 'Matematicas para la ingeneria', 'twUEBUwLfvdBnBJL3MNc8g=='),
(2, 'Administracion del tiempo', 'cn0brZhq94vUwjRIlzoD8g=='),
(3, 'Seguridad informatica', 'aF88qVPClPzMe3WibJnrmQ=='),
(4, 'Desarrollo de aplicaciones moviles', 'fziZKC+hse/VGlS5wlI/sA==');

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

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`TrabajoId`, `Trabajo`, `DocenteId`, `MateriaId`, `FechaEntrega`) VALUES
(1, 'Saber Hacer Unidad', 'twUEBUwLfvdBnBJL3MNc8g==', 1, '2024-02-29'),
(2, 'Saber Unidad 3', 'cn0brZhq94vUwjRIlzoD8g==', 2, '2024-02-27');

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
('cn0brZhq94vUwjRIlzoD8g==', 'Gabriela', 'XBLhhdQglnIxNilbjvZ6/g==', 'Docente'),
('dWCJepgVP89VxIVXmc7pp5B2ZBgk6mH0ZDHq2Swi6vc=', 'Martinez Sebastian', 'RvCvJBsW4fiTIEXs5xfw6Q==', 'Alumno'),
('DWP+DCnTpwzNL2Tw0/yGfiPeK6Xjak4bXejJakpAXx4=', 'Domingues Grettel', 'bFUfwSTSPhPy1z6mwDBzLw==', 'Alumno'),
('fQuxssJngVF0bR8xnAj2KA==', 'Reyes Antonios', 'DclTDXfntPfr50WmAZE0VQ==', 'Alumno'),
('fwngpNOtAlpEm8yTSyJ1vA==', 'Leon Alejandra', 'nD62N+KUR3lyRADqkAme8w==', 'Alumno'),
('fziZKC+hse/VGlS5wlI/sA==', 'Patricia', '5HTZ5A2YBa/jA96mYKKoug==', 'Docente'),
('G81hcw/ucHVPo0c3ITgzlg==', 'Peña Javier', 'Q4coz2wJqLbBydFi+Sh9EA==', 'Alumno'),
('iHFk7WcQCrFdSYUF/kMJ1g==', 'Romero Nataly', 'XJnNYBzNxoGegGK/UTFcZw==', 'Alumno'),
('JBBCMyeFG147kyFeMKPjGQ==', 'Vasquez Vannesa', 'Gw1Krwh6NCQeHuPZkTQw0A==', 'Alumno'),
('kYMIXmFJdYVxRUO7jSbSyQ==', 'Lara Edgar', 'yaUGeW1rYjYHXq5DK0OIVA==', 'Alumno'),
('M/JPpfQGekQRLncrA7L/6w==', 'Test', 'JrwqO8OvGfYBInypoJyGOg==', 'Alumno'),
('NGohozBWGXQQVvVHH9zXVw==', 'Llanas Antonio', 'uA61xgmB9SUgnKntQgqBpg==', 'Alumno'),
('okJSTMoihec1Z6EM1C2kfA==', 'Neira Wichp', '9XVMm+FYZ/P+NE1V649Jog==', 'Alumno'),
('Pa41jGW3T7uncTihMm/Fzg==', 'Torres Andres ', 'q20tEtg40OypC2mU5B6hug==', 'Alumno'),
('pj6PkHawQI/h0d4hi0UlIA==', 'Ramirez Hugo', 'Wk1x8M+qCKP4A1taFp3xww==', 'Alumno'),
('rMGftzfl0TrxKsG0crc4QA==', 'Padilla Marcela', 'AWicuVUOPobqpnamwkd01g==', 'Alumno'),
('RnoVNSXJMx7XMC2Uf0toUA==', 'Emori', 'cDKmIgiNFD3IhZbp9VcL0Q==', 'Administrador'),
('S48lIcY0OtTZdfYqV3OAiA==', 'Sauzedo Mitchel', '/1h9KBY3/tY5q/cDraLNLg==', 'Alumno'),
('SwSpR9m6JZLDqNd9Whbl8g==', 'Jarek Alvarado', 'cwx+jXIpJ1hBa2lEXjYHbw==', 'Alumno'),
('twUEBUwLfvdBnBJL3MNc8g==', 'Olga', '4IupVLPM658pOPeJ9GxlGw==', 'Docente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TrabajosId` (`TrabajoId`,`UsuarioId`),
  ADD KEY `UsuarioId` (`UsuarioId`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trabajoId` (`trabajoId`);

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
  ADD KEY `MateriaId` (`MateriaId`),
  ADD KEY `MateriaId_2` (`MateriaId`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `MateriaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  MODIFY `TrabajoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`TrabajoId`) REFERENCES `trabajos` (`TrabajoId`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`trabajoId`) REFERENCES `trabajos` (`TrabajoId`);

--
-- Filtros para la tabla `ivs`
--
ALTER TABLE `ivs`
  ADD CONSTRAINT `ivs_ibfk_1` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`DocenteId`) REFERENCES `usuarios` (`UsuarioId`);

--
-- Filtros para la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD CONSTRAINT `trabajos_ibfk_1` FOREIGN KEY (`DocenteId`) REFERENCES `usuarios` (`UsuarioId`),
  ADD CONSTRAINT `trabajos_ibfk_2` FOREIGN KEY (`MateriaId`) REFERENCES `materia` (`MateriaId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
