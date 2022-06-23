-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2019 a las 03:52:37
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carritocompras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `Id` int(11) NOT NULL,
  `numeroventa` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` text COLLATE utf8_spanish_ci NOT NULL,
  `subtotal` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`Id`, `numeroventa`, `nombre`, `imagen`, `precio`, `cantidad`, `subtotal`) VALUES
(43, 1, 'Telefono Huawei Mate 20 Lite ', 'HM20L.jpg', '7800', '8', '62400'),
(44, 2, 'Telefono Huawei Mate 20 Lite ', 'HM20L.jpg', '7800', '55', '429000'),
(45, 2, 'Computadora HP', 'computadora.jpg', '5600', '10', '56000'),
(46, 3, 'Huawei mate 20 Pro ', 'HM20P.jpg', '24000', '1', '24000'),
(47, 4, 'Huawei mate 20 Pro ', 'HM20P.jpg', '24000', '2', '48000'),
(48, 4, 'Laptop LG ', 'LG.jpg', '17800', '1', '17800'),
(49, 5, 'Huawei mate 20 Pro ', 'HM20P.jpg', '24000', '10', '240000'),
(50, 6, 'Smart Tv', 'SmartTv.jpeg', '6500', '100', '650000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `imagen`, `precio`) VALUES
(9, 'Computadora HP', 'Computadora HP sencilla ', 'computadora.jpg', 5600),
(10, 'Telefono Huawei Mate 20 Lite ', 'Telefono Inteligente de Huawei ', 'HM20L.jpg', 7800),
(11, 'Huawei mate 20 Pro ', 'Telefono Super Inteligente de Huawei', 'HM20P.jpg', 24000),
(12, 'Laptop Huawei MateBook X', 'Laptop de la Marca Huawei Ultra poderosa', 'HMBX.jpg', 27000),
(13, 'Huawei P20 Lite', 'Telefono de Gama media marca Huawei', 'HP20L.jpg', 6500),
(14, 'Hp Omen ', 'Laptop de la marca HP', 'HPOmen.jpg', 12500),
(15, 'Huawei P Smart ', 'Telefono de Gama media de la marca Huawei ', 'HPS.jpg', 2500),
(16, 'Huawei P Smart 2019 ', 'Telefono de Gama media del año 2019', 'HPS2k19.jpg', 3500),
(17, 'Samsung S9', 'Telefono de Gama alta de la marca Samsung', 'img2.jpg', 13600),
(18, 'Iphone 6', 'Telefono de Gama media De la Marca Apple', 'img11.jpg', 9900),
(19, 'Iphone X', 'Telefono de Gama Alta de la marca Apple ', 'img14.jpg', 32000),
(20, 'Laptop LG ', 'Laptop ultra flexible con pantalla tactil', 'LG.jpg', 17800),
(22, 'One plus 6T ', 'Telefono de gama alta importado desde Europa ', 'OnePlus6T.jpg', 10200),
(23, 'Smart Tv', 'Pantalla inteligente de origen desconocido', 'SmartTv.jpeg', 6500),
(24, 'Xiaomi Mi 9T', 'Telefono de gama alta importado desde Asia', 'XiaomiMi9T.jpg', 12000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
