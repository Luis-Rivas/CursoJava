-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2021 a las 17:49:53
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `curso_java`
--
CREATE DATABASE IF NOT EXISTS `curso_java` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `curso_java`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `nivel_curso` varchar(11) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id_curso`, `nivel_curso`) VALUES
(1, 'Basico'),
(2, 'Intermedio'),
(3, 'Avanzado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `id_inscripcion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `avance_curso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`id_inscripcion`, `id_usuario`, `id_curso`, `avance_curso`) VALUES
(3, 1, 1, 0),
(4, 1, 2, 37.5),
(5, 2, 3, 100),
(6, 2, 2, 62.5),
(12, 2, 1, 50),
(13, 1, 3, 40),
(14, 3, 1, 12.5),
(15, 3, 2, 25),
(16, 3, 3, 40),
(17, 4, 1, 12.5),
(18, 4, 2, 12.5),
(19, 4, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `id_tema` int(11) NOT NULL,
  `nombre_tema` varchar(75) COLLATE utf8mb4_bin NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`id_tema`, `nombre_tema`, `id_curso`) VALUES
(7, 'Hola mundo, comentarios java', 1),
(8, 'Tipos de datos e inicializar variables', 1),
(9, 'Conversión de tipos de datos', 1),
(10, 'Tipos de operadores', 1),
(11, 'Ingresar caracteres desde el teclado', 1),
(12, 'Manejo de String', 1),
(13, 'Estructuras condicionales', 1),
(14, 'Bucles', 1),
(15, 'Matrices y funciones básicas(Arreglos)', 2),
(16, 'Introducción a la POO', 2),
(17, 'Atributos', 2),
(18, 'Métodos', 2),
(19, 'Validaciones(try-catch)', 2),
(20, 'Clases y Objetos', 2),
(21, 'Herencia', 2),
(22, 'Interfaces y sus métodos', 2),
(23, 'Creando aplicación con Java Swing', 3),
(24, 'JButton, JPanel, JDialog', 3),
(25, 'JComboBox, JList', 3),
(26, 'JOptionPane, JCheckBox, JLabel', 3),
(27, 'Generando ejecutable Jar', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas_finalizados`
--

CREATE TABLE `temas_finalizados` (
  `id_finalizado` int(11) NOT NULL,
  `id_tema` int(11) NOT NULL,
  `id_inscripcion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `temas_finalizados`
--

INSERT INTO `temas_finalizados` (`id_finalizado`, `id_tema`, `id_inscripcion`) VALUES
(59, 8, 12),
(95, 23, 13),
(101, 24, 13),
(102, 7, 12),
(103, 9, 12),
(104, 10, 12),
(105, 15, 6),
(106, 16, 6),
(107, 23, 5),
(108, 24, 5),
(109, 25, 5),
(110, 26, 5),
(111, 27, 5),
(113, 9, 14),
(125, 15, 15),
(126, 16, 15),
(127, 23, 16),
(128, 24, 16),
(129, 7, 17),
(134, 19, 18),
(136, 19, 6),
(137, 18, 6),
(138, 17, 6),
(150, 16, 4),
(151, 15, 4),
(152, 17, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `correo_usuario` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `nombre_usuario` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `apellido_usuario` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(12) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `correo_usuario`, `nombre_usuario`, `apellido_usuario`, `password`) VALUES
(1, 'luifran2199@gmail.com', 'Luis', 'Rivas', 'grupo4'),
(2, 'luis.rivas.moz@gmail.com', 'Francisco', 'Moz', 'grupo4'),
(3, 'rm18029@ues.edu.sv', 'Francisco', 'Moz', 'grupo4'),
(4, 'fcomoz21@gmail.com', 'Juan', 'Ventura', 'grupo4'),
(5, 'Juan@gmail.com', 'Juan', 'Morales', 'grupo4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`id_inscripcion`),
  ADD KEY `usuario_inscripcion` (`id_usuario`),
  ADD KEY `curso_inscripcion` (`id_curso`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id_tema`),
  ADD KEY `tema_curso` (`id_curso`);

--
-- Indices de la tabla `temas_finalizados`
--
ALTER TABLE `temas_finalizados`
  ADD PRIMARY KEY (`id_finalizado`),
  ADD KEY `finalizado_tema` (`id_tema`),
  ADD KEY `finalizado_progreso` (`id_inscripcion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `id_inscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `tema`
--
ALTER TABLE `tema`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `temas_finalizados`
--
ALTER TABLE `temas_finalizados`
  MODIFY `id_finalizado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `curso_inscripcion` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_inscripcion` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tema`
--
ALTER TABLE `tema`
  ADD CONSTRAINT `tema_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `temas_finalizados`
--
ALTER TABLE `temas_finalizados`
  ADD CONSTRAINT `finalizado_progreso` FOREIGN KEY (`id_inscripcion`) REFERENCES `inscripcion` (`id_inscripcion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `finalizado_tema` FOREIGN KEY (`id_tema`) REFERENCES `tema` (`id_tema`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
