-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-03-2026 a las 16:01:24
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `depresion_sonora`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discografia`
--

CREATE TABLE `discografia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `anio` year(4) NOT NULL,
  `tipo` enum('EP','LP','Single','Colab') DEFAULT 'Single',
  `portada_url` varchar(255) DEFAULT NULL,
  `spotify_link` varchar(255) DEFAULT NULL,
  `duracion` time DEFAULT '00:00:00',
  `cantidad_canciones` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `discografia`
--

INSERT INTO `discografia` (`id`, `titulo`, `anio`, `tipo`, `portada_url`, `spotify_link`, `duracion`, `cantidad_canciones`) VALUES
(1, 'Depresión Sonora', '2020', 'EP', 'DepresionSonora-DepresionSonora.webp', 'https://open.spotify.com/intl-es/album/2Kd0xv0iBYynM0on7es48j', '00:00:00', 1),
(2, 'Historias Tristes para Dormir Bien', '2021', 'EP', 'DepresionSonora-HistoriasTristesParaDormirBien.webp', 'https://open.spotify.com/intl-es/album/1aZHSQui8o38kk6GImuqED', '00:00:00', 1),
(3, 'El Arte de Morir muy Despacio', '2022', 'LP', 'depresion-sonora-el-arte-de-morir-muy-despacio-rocksesion.webp', 'https://open.spotify.com/intl-es/album/2gG6tiHAfxVwPxPe6GL86p', '00:00:00', 1),
(4, 'MAKINAVAJA', '2024', 'EP', 'DepresionSonora-mala.webp', 'https://open.spotify.com/intl-es/album/1fEmyEtKLCZyuZLaVZ6yL2', '00:00:00', 1),
(5, 'Los Perros No Entienden De Internet (...Y Yo No Entiendo De Sentimientos)', '2025', 'EP', 'DepresionSonora-LosPerrosNoEntiendenDeInternet(...YYoNoEntiendoDeSentimientos).webp', 'https://open.spotify.com/intl-es/album/54ioPa0kudt4A9VPR0K3a2', '00:00:00', 1),
(7, 'Ya no hay ganas de bailar', '2020', 'Single', NULL, NULL, '00:02:45', 1),
(8, 'Como todo el mundo', '2020', 'Single', NULL, NULL, '00:03:12', 1),
(9, 'Tú no me tienes que salvar', '2021', 'Single', NULL, NULL, '00:02:58', 1),
(10, 'Lo que no fue (con VVV [Trippin\'you])', '2022', 'Colab', NULL, NULL, '00:03:20', 1),
(11, 'La grieta (con Carolina Durante)', '2023', 'Colab', NULL, NULL, '00:03:15', 1),
(12, 'Mala Sangre', '2024', 'Single', NULL, NULL, '00:02:50', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `recinto` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '21:00:00',
  `link_entradas` varchar(255) DEFAULT NULL,
  `estado` enum('disponible','agotado','cancelado') DEFAULT 'disponible',
  `notas` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `ciudad`, `recinto`, `fecha`, `hora`, `link_entradas`, `estado`, `notas`) VALUES
(1, 'BUENOS AIRES', 'LA TANGENTE', '2026-04-09', '21:00:00', NULL, 'agotado', '2ª FECHA'),
(2, 'BUENOS AIRES', 'LA TANGENTE', '2026-04-10', '21:00:00', NULL, 'agotado', NULL),
(3, 'SANTIAGO DE CHILE', 'MATUCANA 100 (EXPLANADA)', '2026-04-11', '21:00:00', NULL, 'disponible', NULL),
(4, 'LIMA', 'TEATRO LEGUÍA', '2026-04-15', '21:00:00', NULL, 'disponible', NULL),
(5, 'BOGOTÁ', 'BONFIRE', '2026-04-16', '21:00:00', NULL, 'disponible', NULL),
(6, 'MEDELLÍN', 'LA PASCASIA', '2026-04-17', '21:00:00', NULL, 'disponible', NULL),
(7, 'SAN JOSÉ', 'MERCADO LA CALI', '2026-04-18', '21:00:00', NULL, 'disponible', NULL),
(8, 'GUATEMALA', 'ALIANZA FRANCESA', '2026-04-19', '21:00:00', NULL, 'disponible', NULL),
(9, 'CIUDAD DE MÉXICO', 'TEATRO METROPOLITAN', '2026-04-23', '21:00:00', NULL, 'disponible', NULL),
(10, 'QUERÉTARO', 'FORO ARPA', '2026-04-24', '21:00:00', NULL, 'disponible', NULL),
(11, 'MONTERREY', 'CAFÉ IGUANA', '2026-04-25', '21:00:00', NULL, 'disponible', NULL),
(12, 'DALLAS', 'STUDIO AT THE BOMB FACTORY', '2026-04-27', '21:00:00', NULL, 'disponible', NULL),
(13, 'SAN FRANCISCO', 'THE CHAPEL', '2026-04-28', '21:00:00', NULL, 'disponible', NULL),
(14, 'LA', 'THE VERMONT HOLLYWOOD', '2026-05-01', '21:00:00', NULL, 'disponible', NULL),
(15, 'CHICAGO', 'PARK WEST', '2026-05-02', '21:00:00', NULL, 'disponible', NULL),
(16, 'NUEVA YORK', 'ELSEWHERE ROOFTOP', '2026-05-05', '21:00:00', NULL, 'disponible', NULL),
(17, 'LA LAGUNA (TENERIFE)', 'VOLCANO FEST (AGUERE CULTURAL)', '2026-05-09', '21:00:00', NULL, 'disponible', NULL),
(18, 'SEVILLA', 'PANDORA', '2026-05-30', '21:00:00', NULL, 'disponible', 'CAMBIO DE FECHA'),
(19, 'GRANADA', 'INDUSTRIAL COPERA', '2026-05-31', '21:00:00', NULL, 'disponible', 'CAMBIO DE FECHA'),
(20, 'BARCELONA', 'PRIMAVERA SOUND', '2026-06-06', '21:00:00', NULL, 'disponible', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumentos`
--

CREATE TABLE `instrumentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `instrumentos`
--

INSERT INTO `instrumentos` (`id`, `nombre`, `tipo`, `modelo`, `descripcion`, `imagen_url`) VALUES
(1, 'Squier Jazzmaster', 'Guitarra', 'Modificada para obtener ese brillo post-punk.', NULL, NULL),
(2, 'Roland TR-808 (Emulación)', 'Caja de ritmos', 'El latido industrial de los primeros temas.', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miembros`
--

CREATE TABLE `miembros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `rol_banda` varchar(100) DEFAULT NULL,
  `foto_url` varchar(255) DEFAULT 'placeholder_member.jpg',
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `miembros`
--

INSERT INTO `miembros` (`id`, `nombre`, `rol_banda`, `foto_url`, `descripcion`) VALUES
(1, 'Marcos Crespo', 'Voz, Guitarra, Composición', 'placeholder_member.jpg', 'El núcleo creativo del proyecto.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('admin','fan') DEFAULT 'fan',
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `discografia`
--
ALTER TABLE `discografia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `miembros`
--
ALTER TABLE `miembros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `discografia`
--
ALTER TABLE `discografia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `miembros`
--
ALTER TABLE `miembros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
