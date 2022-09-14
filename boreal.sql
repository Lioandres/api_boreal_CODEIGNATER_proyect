-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 14-09-2022 a las 08:02:10
-- Versión del servidor: 5.7.34
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `boreal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `excursion`
--

CREATE TABLE `excursion` (
  `id_excursion` int(8) NOT NULL,
  `excursions_template_id` int(6) NOT NULL,
  `user_id` int(8) NOT NULL,
  `num_max_people` int(2) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `excursion`
--

INSERT INTO `excursion` (`id_excursion`, `excursions_template_id`, `user_id`, `num_max_people`, `price`, `start`, `end`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 30, '30.00', '2022-07-21 09:47:14', '2022-07-21 09:47:14', '2022-07-21 09:48:18', '2022-09-12 19:10:25'),
(2, 2, 0, 30, '30.00', '2022-07-21 09:47:14', '2022-07-21 09:47:14', '2022-07-21 09:48:18', '2022-09-12 19:10:32'),
(3, 2, 0, 30, '120.00', '2022-08-21 09:47:14', '2022-07-25 09:47:14', '2022-08-22 14:18:08', NULL),
(4, 3, 0, 30, '120.00', '2022-08-21 09:47:14', '2022-07-25 09:47:14', '2022-08-22 14:18:44', NULL),
(5, 3, 0, 30, '120.00', '2022-09-21 09:00:00', '2022-09-21 14:00:00', '2022-08-22 14:19:40', NULL),
(6, 4, 0, 30, '120.00', '2022-09-21 09:00:00', '2022-09-21 14:00:00', '2022-08-22 14:19:47', NULL),
(7, 5, 0, 30, '120.00', '2022-09-21 09:00:00', '2022-09-21 14:00:00', '2022-08-22 14:19:51', NULL),
(8, 6, 0, 30, '120.00', '2022-09-21 09:00:00', '2022-09-21 14:00:00', '2022-08-22 14:19:55', NULL),
(9, 7, 0, 30, '120.00', '2022-09-21 09:00:00', '2022-09-21 14:00:00', '2022-08-22 14:19:58', NULL),
(10, 9, 0, 30, '120.00', '2022-09-21 09:00:00', '2022-09-21 14:00:00', '2022-08-22 14:20:04', NULL),
(11, 9, 0, 30, '120.00', '2022-10-21 09:00:00', '2022-10-21 14:00:00', '2022-08-22 14:20:19', NULL),
(12, 19, 0, 30, '120.00', '2023-07-20 09:00:00', '2023-07-21 15:00:00', '2022-08-22 14:20:31', '2022-08-22 14:31:39'),
(13, 11, 0, 30, '120.00', '2022-11-21 09:00:00', '2022-11-21 14:00:00', '2022-08-22 14:20:44', '2022-08-22 14:25:04'),
(14, 12, 0, 30, '120.00', '2022-12-21 09:00:00', '2022-12-21 14:00:00', '2022-08-22 14:21:04', '2022-08-22 14:25:16'),
(15, 13, 0, 30, '120.00', '2023-01-20 09:00:00', '2023-01-21 14:00:00', '2022-08-22 14:21:43', NULL),
(16, 14, 0, 30, '120.00', '2023-02-20 09:00:00', '2023-02-21 14:00:00', '2022-08-22 14:21:55', NULL),
(17, 15, 0, 30, '120.00', '2023-03-20 09:00:00', '2023-03-21 14:00:00', '2022-08-22 14:22:07', NULL),
(18, 16, 0, 30, '120.00', '2023-04-20 09:00:00', '2023-04-21 14:00:00', '2022-08-22 14:22:16', NULL),
(20, 18, 0, 30, '120.00', '2023-06-20 09:00:00', '2023-06-21 14:00:00', '2022-08-22 14:22:36', NULL),
(21, 19, 0, 30, '120.00', '2023-07-20 09:00:00', '2023-07-21 15:00:00', '2022-08-22 14:22:51', '2022-08-25 10:31:56'),
(22, 19, 0, 30, '120.00', '2023-07-20 09:00:00', '2023-07-21 14:00:00', '2022-08-25 10:23:22', NULL),
(23, 19, 0, 30, '120.00', '2023-07-20 09:00:00', '2023-07-21 14:00:00', '2022-08-25 10:43:10', NULL),
(24, 19, 0, 30, '120.00', '2023-07-20 09:00:00', '2023-07-21 14:00:00', '2022-08-25 14:31:49', NULL),
(35, 7, 7, 77, '7.00', '2022-09-06 01:01:00', '2022-09-06 01:01:00', '2022-09-13 13:30:41', NULL),
(36, 7, 7, 77, '7.00', '2022-09-06 01:01:00', '2022-09-06 01:01:00', '2022-09-13 13:31:06', NULL),
(38, 1, 1, 23, '12.00', '2022-09-30 01:01:00', '2022-09-30 01:01:00', '2022-09-13 14:30:48', NULL),
(39, 1, 2, 3, '1.00', '2022-09-30 01:01:00', '2022-09-30 01:02:00', '2022-09-13 14:32:48', NULL),
(40, 9, 1, 30, '120.00', '2022-10-11 07:00:00', '2022-10-11 14:30:00', '2022-09-13 15:35:30', NULL),
(41, 1, 1, 1, '1.00', '2022-09-01 01:01:00', '2022-09-25 01:01:00', '2022-09-13 15:41:39', '2022-09-13 17:12:19'),
(42, 1, 1, 1, '11.00', '2022-09-04 01:01:00', '2022-09-30 01:01:00', '2022-09-13 17:15:12', NULL),
(43, 2, 2, 30, '1.20', '2022-09-30 01:01:00', '2022-09-30 01:01:00', '2022-09-13 18:18:53', '2022-09-13 18:22:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `excursions_template`
--

CREATE TABLE `excursions_template` (
  `id_excursion_template` int(3) NOT NULL,
  `title` text NOT NULL,
  `img` varchar(65) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `price_default` decimal(6,2) NOT NULL,
  `max_num_people_default` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `excursions_template`
--

INSERT INTO `excursions_template` (`id_excursion_template`, `title`, `img`, `type`, `description`, `price_default`, `max_num_people_default`) VALUES
(1, 'Auroral Boreal Tour', 'assets/img/boreal_1.webp', 'boreal', '', '59.00', 30),
(2, 'Auroral Boreal Tour en bote', 'assets/img/boreal_2.webp', 'boreal', '', '89.00', 6),
(3, 'Baño de luces boreales', 'assets/img/boreal_3.webp', 'boreal', 'Conducimos a través del hermoso sitio de la UNESCO Þingvellir Parque Nacional en nuestro camino a Laugarvatn Fontana, donde tiene la opción de comprar la cena en su restaurante por un costo adicional. Fontana tiene tres salas de vapor construidas sobre una fuente termal natural y una sauna tradicional junto con cuatro piscinas calientes diferentes. Los viajeros más aventureros pueden darse un chapuzón en el lago Laugarvatn (cuando sea accesible) y refrescarse entre los baños de vapor y la sauna. Las temperaturas de vapor oscilan entre 40 ° C y 50 ° C (104 ° F y 122 ° F), dependiendo de la temperatura de las aguas termales y el clima. Las salas de vapor crean una experiencia única, ya que se puede oler el agua caliente natural hirviendo debajo de las rejillas en el suelo. La sauna tradicional tiene una humedad más baja que las salas de vapor, pero la temperatura es más alta, entre 80 ° C y 90 ° C (176 ° F y 194 ° F). Los tres baños minerales al aire libre conectados varían en profundidad, tamaño y temperatura. Es el escenario perfecto para relajarse y socializar. Desde los baños, se puede ver una vista panorámica del campo alrededor de Fontana y las auroras boreales bailando en el cielo si tienes suerte y aparecen temprano.El gel de ducha, el champú y el acondicionador de Sóley Organics están disponibles en los vestuarios.Caza de auroras boreales en Islandia   En nuestro camino de regreso a Reikiavik, vamos en una cacería de auroras boreales, una de las vistas más inolvidables de Islandia. Nuestro equipo de expertos estudia las auroras boreales y los pronósticos de nubes para encontrar el mejor lugar para un avistamiento, pero dado que las auroras boreales son un fenómeno natural, no se pueden garantizar los avistamientos.Duración del tour: 18:00 - 00:30.', '90.00', 30),
(4, 'Auroral Boreal Tour-grupos pequeños', 'assets/img/boreal_4.webp', 'boreal', '', '79.00', 8),
(5, 'Tour de exploración Auroral boreal en Super-Jeep', 'assets/img/boreal_5.webp', 'boreal', '', '50.78', 6),
(6, 'Laguna Azul : Translados y admision', 'assets/img/lake_1.webp', 'lake', '', '129.00', 30),
(7, 'Lago Azul- Translados y Admision Premium', 'assets/img/lake_2_webp.webp', 'lake', '', '149.00', 30),
(8, 'Circulo Dorado en Directo', 'assets/img/circle_1webp.webp', 'circle', '', '64.00', 30),
(9, 'Circulo Dorado y Friorheimer', 'assets/img/circle_2.webp', 'circle', '', '69.00', 30),
(10, 'Círculo Dorado y SnowBorad', 'assets/img/circle_3.webp', 'circle', '', '209.00', 30),
(11, 'Círculo dorado y Aurora Boreal', 'assets/img/circle_4.webp', 'circle', '', '113.00', 30),
(12, 'Círculo Dorado y Fuente natural', 'assets/img/circle_5.webp', 'circle', '', '99.00', 30),
(13, 'Círculo Dorado y tunel de lava', 'assets/img/circle_6.webp', 'circle', '', '139.00', 30),
(14, 'Aventura en Þórsmörk', 'assets/img/bus_1.webp', 'bus', '', '59.00', 30),
(15, 'Aventura Landmannalaugar', 'assets/img/bus_2.webp', 'bus', '', '65.00', 30),
(16, 'Aventura Skógar', 'assets/img/bus_3.webp', 'bus', '', '58.00', 30),
(17, 'Aventura Grænihryggur con guias de montaña', 'assets/img/bus_4.webp', 'bus', '', '175.00', 30),
(18, 'Camino desde Reykjavik', 'assets/img/bus_5.webp', 'bus', '', '106.00', 30),
(19, 'Combo tour Laugavegur & Fimmvörðuháls', 'assets/img/bus_6.webp', 'bus', '', '1970.00', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id_payment` int(8) NOT NULL,
  `reservation_id` int(8) NOT NULL,
  `payment_method` varchar(15) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservations`
--

CREATE TABLE `reservations` (
  `id_reservation` int(8) NOT NULL,
  `excursion_id` int(8) NOT NULL,
  `payment_id` int(8) NOT NULL,
  `name` varchar(120) NOT NULL,
  `last_name` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `num_people` tinyint(3) NOT NULL,
  `date_reservation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservations`
--

INSERT INTO `reservations` (`id_reservation`, `excursion_id`, `payment_id`, `name`, `last_name`, `email`, `phone`, `num_people`, `date_reservation`) VALUES
(1, 1, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-08-30 16:33:03'),
(2, 2, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-08-30 16:45:22'),
(3, 3, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-08-30 16:59:11'),
(4, 3, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-08-30 17:01:03'),
(5, 3, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-08-30 17:02:53'),
(6, 3, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-08-30 17:04:25'),
(7, 3, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-08-30 17:08:42'),
(8, 3, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-08-30 17:18:30'),
(9, 3, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-08-30 17:40:25'),
(10, 4, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-01 09:49:06'),
(11, 4, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-01 09:50:29'),
(12, 5, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-01 10:22:54'),
(13, 5, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-01 13:09:31'),
(14, 6, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-01 16:03:02'),
(15, 6, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-01 16:03:59'),
(16, 6, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-01 16:05:04'),
(17, 6, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-06 10:34:56'),
(18, 6, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-06 10:35:50'),
(19, 6, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-06 10:36:03'),
(20, 9, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-06 10:44:21'),
(21, 11, 11111, 'emilio', 'Lagarrigue', '', '12345456789', 1, '2022-09-06 10:47:13'),
(22, 11, 11111, 'emilio', 'Lagarrigue', '', '12345566789', 1, '2022-09-06 11:14:04'),
(23, 5, 11111, 'emilio', 'Lagarrigue', '', '12345566789', 3, '2022-09-06 11:14:04'),
(24, 5, 11111, 'emilio', 'Lagarrigue', '', '12345456789', 4, '2022-09-06 11:29:15'),
(25, 9, 11111, 'emilio', 'Lagarrigue', '', '12345456789', 4, '2022-09-06 11:29:15'),
(26, 5, 11111, 'emilio', 'Lagarrigue', '', '12345456789', 3, '2022-09-08 19:54:26'),
(27, 11, 11111, 'emilio', 'Lagarrigue', '', '12345456789', 3, '2022-09-08 21:22:03'),
(28, 1, 11111, 'EMILIO ', 'Lagarrigue', '', '935143789', 3, '2022-09-12 19:11:28'),
(29, 9, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-12 19:41:35'),
(30, 9, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-12 19:42:04'),
(31, 9, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-12 20:31:01'),
(32, 9, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-12 20:32:13'),
(33, 9, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-12 20:33:00'),
(34, 10, 11111, 'emilio', 'gonzalez', '', '123456789', 2, '2022-09-12 20:34:52'),
(35, 40, 11111, 'em', 'Lagarrigue', '', '123456789', 2, '2022-09-13 18:36:54'),
(36, 2, 11111, 'emilio', 'Lagarrigue', '', '12345456789', 5, '2022-09-14 09:11:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(6) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `user_email` varchar(65) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `user_name`, `user_email`, `user_password`, `user_role`, `created_at`, `updated_at`) VALUES
(1, 'emilio', 'emilio@hotmail.com', '12345678', 'operator', '2022-07-21 10:29:06', '2022-09-12 19:15:45'),
(2, 'andres', 'andres@hotmail.com', '12345678', 'admin', '2022-07-21 10:29:06', '2022-09-10 11:20:33'),
(3, 'juan', 'juan@hotmail.com', '$2y$10$p', 'admin', '2022-09-06 19:09:22', NULL),
(4, 'juan1', 'juan1@hotmail.com', '$2y$10$5', 'admin', '2022-09-06 19:37:09', NULL),
(5, 'juan2', 'juan2@hotmail.com', '$2y$10$PwG7hC74LfBUvSBGP2BHkOniYJOfu66V/a.okiI2WRXMy6MfZ9V3u', 'operator', '2022-09-07 11:28:04', '2022-09-10 11:08:09'),
(6, 'juan3', 'juan3@hotmail.com', '$2y$10$4BkVB9fBHTPYg1A/vKLBjOk.anvIz/sy138qV89O3uVvUZkyz2XHO', 'admin', '2022-09-07 16:58:51', NULL),
(7, 'juan4', 'juan4@hotmail.com', '$2y$10$EpukTlFejF9KRuC0CtZCWeYnKPXN0dhqkjXlChutdQxIGj1pkPPGa', '', '2022-09-07 17:27:36', NULL),
(8, 'juan5', 'juan44@hotmail.com', '$2y$10$uP99y2Cx636lMjlBVWCxqu2AwowRz0FGzOcTWWvk4abiuGeBoj5I6', '', '2022-09-07 18:07:46', '2022-09-09 16:59:40'),
(9, 'juan5', 'juan46@hotmail.com', '$2y$10$d50T4wk.I6oSHGFH/3keCOid0jBNtf21xcUclhCujh5GeawoKlqai', '', '2022-09-07 18:15:22', '2022-09-09 17:00:11'),
(10, 'juan7', 'juan7@hotmail.com', '$2y$10$.XvGjiVLd6L/G7XF3wqApuvVYLEnnPzOThLtv6KdZ.UVn6Zx/z2wK', '', '2022-09-07 18:21:47', NULL),
(11, 'juan8', 'juan8@hotmail.com', '$2y$10$CauNa5BK28jZtfgndjjiV.Pdy8cjd3o9iu1QSgw0.6OV8VJvP5BMe', '', '2022-09-07 18:29:03', NULL),
(12, 'juan9', 'juan9@hotmail.com', '$2y$10$MR.M0kyy7Q.O5Fv3/WV2HO/MCvmPPWkrh4kD/m5SRXy2C1w.5CJlW', '', '2022-09-07 18:55:15', NULL),
(13, 'juan10', 'juan10@hotmail.com', '$2y$10$Xt9COyY.ol3GD/6zxx6/tO8rQKzcKZ95.PNB5OkKYGf9Z0kNKmb9W', '', '2022-09-07 19:11:08', '2022-09-09 19:51:57'),
(14, 'juan11', 'juan11@hotmail.com', '$2y$10$C3vZIxskQihcP2t4qRxhVemU08ceZSQ6k5ME89I7cg16VBuJ7Oj7m', '', '2022-09-07 19:13:55', NULL),
(15, 'juan12', 'juan12@hotmail.com', '$2y$10$GPGVkbgIZbSDT188MDn/LuiuOemzCCEmtksK6v6eQ7uaIGtXB1IW6', '', '2022-09-07 19:29:23', NULL),
(16, 'juan13', 'juan411@hotmail.com', '$2y$10$v/FiKJBoJpL0kMVW3O8QAu3JcYgMmI4Jpw1Mm6B5dzbI5/908JaNq', '', '2022-09-07 19:32:25', '2022-09-09 17:03:31'),
(17, 'emilio1', 'emilio1@hotmail.com', '$2y$10$pGsvHwMhyLLihWOq03aOJu4qqtHINCET6ZOsuLO8d07Xy5//5RJnW', '', '2022-09-07 21:22:07', NULL),
(18, 'emilio11', 'emilio11@hotmail.com', '$2y$10$3dIIJK.xgHuM5OG5OXX.YuaDgxu45wFEVoErmFNbFJtfR4A96LPCO', '', '2022-09-07 21:36:17', NULL),
(19, 'juan16@hotmail.', 'juan16bis@hotmail.com', '$2y$10$0u56CP9yaa5WdncyHMBSD.ogKvCywZxXknHV1rh.Vhdffe.ArMgee', '', '2022-09-08 11:21:39', '2022-09-13 18:29:08'),
(20, 'juan25', 'juan25@hotmail.com', '$2y$10$JVHclJ/ITLLaVJ/EEAwBwuAdhcCtrZFGFPa6ZOMV2.UgLI0ZkXPOC', 'admin', '2022-09-10 16:42:30', NULL),
(21, 'juan26', 'juan26@hotmail.com', '$2y$10$jMKh0GxvXfGpVdyUCHy2vOCKShzprGQDIsdV//xtiNSMrvkaJiUpS', 'admin', '2022-09-10 17:09:11', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `excursion`
--
ALTER TABLE `excursion`
  ADD PRIMARY KEY (`id_excursion`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `excursions_template_id` (`excursions_template_id`);

--
-- Indices de la tabla `excursions_template`
--
ALTER TABLE `excursions_template`
  ADD PRIMARY KEY (`id_excursion_template`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_payment`),
  ADD KEY `reservation_id` (`reservation_id`);

--
-- Indices de la tabla `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `excursion_Id` (`excursion_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `excursion`
--
ALTER TABLE `excursion`
  MODIFY `id_excursion` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `excursions_template`
--
ALTER TABLE `excursions_template`
  MODIFY `id_excursion_template` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id_reservation` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `excursion`
--
ALTER TABLE `excursion`
  ADD CONSTRAINT `excursion_ibfk_1` FOREIGN KEY (`excursions_template_id`) REFERENCES `excursions_template` (`id_excursion_template`);

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id_reservation`);

--
-- Filtros para la tabla `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`excursion_id`) REFERENCES `excursion` (`id_excursion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
