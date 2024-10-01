-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2024 a las 04:38:17
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_productos`
--

CREATE TABLE `t_productos` (
  `id_producto` int(9) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_productos`
--

INSERT INTO `t_productos` (`id_producto`, `descripcion`, `precio`, `imagen`) VALUES
(1, 'Café', 180000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMnX7Vuq-zHwutgT5-izJifxLMhGkJFwPC8Q&s'),
(2, 'kz', 50000, 'https://kz.com.pe/wp-content/uploads/2023/04/kz-pr1-pro-img15-p-500.webp'),
(3, 'kz', 560000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH_IZeiWb18ZjzZqF5rtZLLKQLrx-FY_-OIw&s'),
(4, 'cafe', 50000, 'https://kz.com.pe/wp-content/uploads/2023/04/kz-pr1-pro-img15-p-500.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usuarios`
--

CREATE TABLE `t_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `clave_usuario` text NOT NULL,
  `token` varchar(100) NOT NULL,
  `fecha_hora_creacion` datetime NOT NULL,
  `fecha_hora_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_usuarios`
--

INSERT INTO `t_usuarios` (`id_usuario`, `nombres`, `email`, `clave_usuario`, `token`, `fecha_hora_creacion`, `fecha_hora_actualizacion`) VALUES
(1, 'Leinad Odreiuqzi', 'sherdanialex159357@gmail.com', '123456789', '', '2024-07-25 02:51:46', '2024-07-25 02:51:46'),
(2, 'Alex', 'alex@gmail.com', '123456', '', '2024-08-30 02:47:30', '2024-08-30 02:47:30'),
(3, 'Juan', 'juan@gmail.com', '123456', '', '2024-08-31 02:21:40', '2024-08-31 02:21:40'),
(4, 'Daniel', 'asdasdasd@gmail.com', '12345', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'pepito', 'pepito@gmail.com', '123', '', '2024-08-30 20:06:20', '0000-00-00 00:00:00'),
(6, 'pepito', 'pepito@gmail.com', '123', '', '2024-09-09 10:42:44', '0000-00-00 00:00:00'),
(7, 'Jane', 'jane@gmail.com', '123456789', '', '2024-09-27 19:58:56', '0000-00-00 00:00:00'),
(8, 'Jane', 'jane@gmail.com', '123456789', '', '2024-09-27 19:59:04', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_productos`
--
ALTER TABLE `t_productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_productos`
--
ALTER TABLE `t_productos`
  MODIFY `id_producto` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
