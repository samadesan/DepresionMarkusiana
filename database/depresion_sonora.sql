-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-04-2026 a las 16:08:39
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
  `cantidad_canciones` int(11) DEFAULT 1,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `discografia`
--

INSERT INTO `discografia` (`id`, `titulo`, `anio`, `tipo`, `portada_url`, `spotify_link`, `duracion`, `cantidad_canciones`, `orden`) VALUES
(1, 'Depresión Sonora', '2020', 'EP', 'DepresionSonora-DepresionSonora.webp', 'https://open.spotify.com/intl-es/album/2Kd0xv0iBYynM0on7es48j', '00:16:00', 5, 1),
(2, 'Historias Tristes para Dormir Bien', '2021', 'EP', 'DepresionSonora-HistoriasTristesParaDormirBien.webp', 'https://open.spotify.com/intl-es/album/1aZHSQui8o38kk6GImuqED', '00:17:06', 5, 5),
(3, 'El Arte de Morir muy Despacio', '2022', 'LP', 'depresion-sonora-el-arte-de-morir-muy-despacio-rocksesion.webp', 'https://open.spotify.com/intl-es/album/2gG6tiHAfxVwPxPe6GL86p', '00:39:40', 11, 12),
(4, 'MAKINAVAJA', '2024', 'EP', 'DepresionSonora-mala.webp', 'https://open.spotify.com/intl-es/album/1fEmyEtKLCZyuZLaVZ6yL2', '00:11:14', 4, 22),
(5, 'Los Perros No Entienden De Internet (...Y Yo No Entiendo De Sentimientos)', '2025', 'LP', 'DepresionSonora-LosPerrosNoEntiendenDeInternet(...YYoNoEntiendoDeSentimientos).webp', 'https://open.spotify.com/intl-es/album/54ioPa0kudt4A9VPR0K3a2', '00:35:29', 12, 30),
(6, 'desorden del sueño - Ghoulajaboy', '2021', 'Colab', 'DepresionSonora-desorden-del-sueno-G.jpeg', 'https://open.spotify.com/intl-es/album/1F7XSWGPOqBPq7UDfR86ZJ', '00:02:26', 1, 6),
(7, 'seguiremos siendo - Bratty', '2022', 'Colab', 'DepresionSonora-seguiremos-siendo-B.jpeg', 'https://open.spotify.com/intl-es/album/4KkPCRsBQnbv25qKv8dkpI', '00:03:14', 1, 7),
(8, 'Ya no te veré - Rojuu', '2022', 'Colab', 'DepresionSonora-Ya-no-te-vere-R.jpeg', 'https://open.spotify.com/intl-es/album/2OFpyAlZb4cnU7FyRAXjuv', '00:03:50', 1, 8),
(9, 'Markusiano - Carolina Durante', '2023', 'Single', 'DepresionSonora-Markusiano-CD.jpeg', 'https://open.spotify.com/intl-es/album/4KuG523Hjd9M5N9waCuwBa', '00:02:31', 1, 13),
(10, 'Ya no hay verano - Carolina Durante', '2023', 'Colab', 'DepresionSonora-Ya-no-hay-verano-CD.jpeg', 'https://open.spotify.com/intl-es/album/6QkJ23aHOXc9QuwgyHw39n', '00:03:17', 1, 14),
(11, 'Camino - Los Punsetes', '2023', 'Colab', 'DepresionSonora-Camino-LP.jpeg', 'https://open.spotify.com/intl-es/album/1cj3JZp8JbGIzRFJYzZhpL', '00:02:50', 1, 15),
(12, 'Odio el verano - Los Punsetes', '2023', 'Colab', 'DepresionSonora-Odio-el-verano-LP.jpeg', 'https://open.spotify.com/intl-es/album/1VQGWcjK6wLkEV4kkQx7nl', '00:02:48', 1, 16),
(13, 'Cámara Lenta - Javiera Mena', '2023', 'Colab', 'DepresionSonora-Camara-Lenta-JM.jpeg', 'https://open.spotify.com/intl-es/album/02Dl37emVo6TB4mO7UOU2Z', '00:03:24', 1, 17),
(14, 'Ya no hay verano - Javiera Mena', '2023', 'Single', 'DepresionSonora-Ya-no-hay-verano-JM.jpeg', 'https://open.spotify.com/intl-es/album/6kvB7253p6n0OAS9PDfgXv', '00:03:14', 1, 18),
(15, 'La Novedad - Margarita Siempre Viva', '2024', 'Colab', 'DepresionSonora-La-Novedad-MSV.jpeg', 'https://open.spotify.com/intl-es/album/1GMQ07qxd5Sxjb1ga4c1sW', '00:03:31', 1, 23),
(16, 'Qué puedo hacer - Los Planetas', '2025', 'Colab', 'DepresionSonora-Que-puedo-hacer-LosPlanetas.jpeg', 'https://open.spotify.com/intl-es/album/1jFHLyxO6ehGJQNXh3cqgo', '00:03:13', 1, 24),
(17, 'DepresionTrickz - BB Trickz', '2025', 'Colab', 'DepresionSonora-DepresionTrickz-BBT.jpeg', 'https://open.spotify.com/intl-es/album/2Wn59zrfT2qdLTZShNZDE6', '00:05:54', 3, 29),
(18, 'Tu No Me Tienes Que Salvar', '2020', 'Single', 'DepresionSonora-TuNoMeTienesQueSalvar.jpeg', 'https://open.spotify.com/intl-es/album/5pzm3qZYdcY2WucocBaTj9', '00:03:50', 1, 2),
(19, 'Gasolina y Mechero', '2021', 'Single', 'DepresionSonora-GasolinayMechero.jpeg', 'https://open.spotify.com/intl-es/album/17rBZRbrNxd3EAXczHCDYk', '00:02:32', 1, 3),
(20, 'Apocalipsis Virtual', '2021', 'Single', 'DepresionSonora-ApocalipsisVirtual.jpeg', 'https://open.spotify.com/intl-es/album/6ysW2nmCWB6xx4g3SHxIwW', '00:03:57', 1, 4),
(21, 'Veo tan Dentro', '2022', 'Single', 'DepresionSonora-VeotanDentro.jpeg', 'https://open.spotify.com/intl-es/album/69MjZjIJ1dmeDF9vjXNtue', '00:04:00', 1, 9),
(22, 'Voy a Explotar', '2022', 'Single', 'DepresionSonora-VoyaExplotar.jpeg', 'https://open.spotify.com/intl-es/album/1rrC0w399CM2o6mv4j09XU', '00:03:42', 1, 10),
(23, 'Dónde Están mis Amigos', '2022', 'Single', 'DepresionSonora-DondeEstanmisAmigos.jpeg', 'https://open.spotify.com/intl-es/album/1dYzayq3To033yo2nikJ0D', '00:03:37', 1, 11),
(24, 'vivo del aire', '2024', 'Single', 'DepresionSonora-mala.webp', 'https://open.spotify.com/intl-es/album/3Pa0BLpFOK8hVg9KqTq035', '00:02:48', 1, 19),
(25, 'estupefacientes', '2024', 'Single', 'DepresionSonora-mala.webp', 'https://open.spotify.com/intl-es/album/5tbHg9Ktqq5aYnsP5xUdO9', '00:03:34', 1, 20),
(26, 'mala', '2024', 'Single', 'DepresionSonora-mala.webp', 'https://open.spotify.com/intl-es/album/12QCRlhGUvo8QXuacOoCjz', '00:09:02', 3, 21),
(27, 'La Balada de los Perros', '2025', 'Single', 'DepresionSonora-LaBaladadelosPerros.jpeg', 'https://open.spotify.com/intl-es/album/289HiVlnq15wKmzQ06LfSH', '00:02:40', 1, 25),
(28, 'Me Va la Vida en Esto', '2025', 'Single', 'DepresionSonora-MeValaVidaenEsto.jpeg', 'https://open.spotify.com/intl-es/album/4mmNwbFWi6iNcILzefXHD1', '00:03:28', 1, 26),
(29, 'Domingo Químico', '2025', 'Single', 'DepresionSonora-DomingoQuimico.jpeg', 'https://open.spotify.com/intl-es/album/5rlrMv8gLMxVEt4m3LSWjv', '00:03:36', 1, 27),
(30, 'Cómo Será Vivir en el Campo', '2025', 'Single', 'DepresionSonora-ComoSeraVivirenelCampo.jpeg', 'https://open.spotify.com/intl-es/album/55LlQx11YMyPb6jd4BhpMO', '00:02:55', 1, 28),
(31, 'Cómo Será Vivir en el Campo - GALLERY SESSION', '2026', 'Single', 'DepresionSonora-ComoSeraVivirenelCampo-GALLERYSESSION.jpeg', 'https://open.spotify.com/intl-es/album/70y19cSuZn1h5T9xgIIFF4', '00:03:00', 1, 31);

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
  `link_entradas` varchar(2048) DEFAULT NULL,
  `estado` enum('disponible','agotado','cancelado') DEFAULT 'disponible',
  `notas` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `ciudad`, `recinto`, `fecha`, `hora`, `link_entradas`, `estado`, `notas`) VALUES
(1, 'BUENOS AIRES', 'LA TANGENTE', '2026-04-09', '21:00:00', NULL, 'agotado', '2ª FECHA'),
(2, 'BUENOS AIRES', 'LA TANGENTE', '2026-04-10', '21:00:00', NULL, 'agotado', NULL),
(3, 'SANTIAGO DE CHILE', 'MATUCANA 100 (EXPLANADA)', '2026-04-11', '21:00:00', 'https://www.bandsintown.com/e/107809512?app_id=ggl_feed&came_from=289&utm_medium=web&utm_source=ggl_feed&utm_campaign=event&source=ea', 'disponible', NULL),
(4, 'LIMA', 'TEATRO LEGUÍA', '2026-04-15', '21:00:00', 'https://www.ticketmaster.pe/event/depresion-sonora-venta-general', 'disponible', NULL),
(5, 'BOGOTÁ', 'BONFIRE', '2026-04-16', '21:00:00', 'https://www.ticketmaster.co/event/depresion-sonora-bogota', 'disponible', NULL),
(6, 'MEDELLÍN', 'LA PASCASIA', '2026-04-17', '21:00:00', 'https://www.ticketmaster.co/event/depresion-sonora-medellin', 'disponible', NULL),
(7, 'SAN JOSÉ', 'MERCADO LA CALI', '2026-04-18', '21:00:00', 'https://starticket.cr/e/depresion-sonora-aterriza-en-costa-rica-con-vacaciones-por-siempre/7905?ref=DepresionSonora', 'disponible', NULL),
(8, 'GUATEMALA', 'ALIANZA FRANCESA', '2026-04-19', '21:00:00', NULL, 'agotado', NULL),
(9, 'CIUDAD DE MÉXICO', 'TEATRO METROPOLITAN', '2026-04-23', '21:00:00', NULL, 'agotado', NULL),
(10, 'QUERÉTARO', 'FORO ARPA', '2026-04-24', '21:00:00', 'https://arema.mx/e/16477', 'disponible', NULL),
(11, 'MONTERREY', 'CAFÉ IGUANA', '2026-04-25', '21:00:00', 'https://arema.mx/e/16478', 'disponible', NULL),
(12, 'DALLAS', 'STUDIO AT THE BOMB FACTORY', '2026-04-27', '21:00:00', 'https://www.axs.com/events/1241620/depresion-sonora-tickets', 'disponible', NULL),
(13, 'SAN FRANCISCO', 'THE CHAPEL', '2026-04-28', '21:00:00', 'https://www.eventim.us/event/depresion-sonora/672519', 'disponible', NULL),
(14, 'LA', 'THE VERMONT HOLLYWOOD', '2026-05-01', '21:00:00', 'https://dice.fm/partner/tickets/event/pyrq9l-depresin-sonora-live-in-los-angeles-with-gvllow-60-juno-and-goth-tio-1st-may-the-vermont-hollywood-los-angeles-tickets?dice_id=7729874&dice_channel=web&dice_tags=organic&dice_campaign=Depresion+Sonora&dice_feature=mio_marketing&utm_source=web&utm_campaign=Depresion+Sonora&utm_medium=mio_marketing', 'disponible', NULL),
(15, 'CHICAGO', 'PARK WEST', '2026-05-02', '21:00:00', 'https://www.axs.com/events/1240833/depresion-sonora-tickets', 'disponible', NULL),
(16, 'NUEVA YORK', 'ELSEWHERE ROOFTOP', '2026-05-05', '21:00:00', 'https://www.eventbrite.com/e/depresion-sonora-tickets-1975358256721?aff=oddtdtcreator', 'disponible', NULL),
(17, 'LA LAGUNA (TENERIFE)', 'VOLCANO FEST (AGUERE CULTURAL)', '2026-05-09', '21:00:00', 'https://canaryticket.com/es/events/vii-volcano-fest', 'disponible', NULL),
(18, 'SEVILLA', 'PANDORA', '2026-05-30', '21:00:00', 'https://entradas.crashmusic.es/event/concierto-de-depresion-sonora-sevilla-pandora-sabado-30-de-mayo', 'disponible', 'CAMBIO DE FECHA'),
(19, 'GRANADA', 'INDUSTRIAL COPERA', '2026-05-31', '21:00:00', 'https://entradas.crashmusic.es/event/concierto-de-depresion-sonora-granada-industrial-copera-domingo-31-de-mayo', 'disponible', 'CAMBIO DE FECHA'),
(20, 'BARCELONA', 'PRIMAVERA SOUND', '2026-06-06', '21:00:00', 'https://www.primaverasound.com/es/barcelona', 'disponible', NULL);

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
(1, 'Marcos Crespo García (Markusiano)', 'Vocalista, Guitarrista, Compositor Principal', 'marcos_crespo.jpg', 'El núcleo creativo de la depresión sonora.');

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `discografia`
--
ALTER TABLE `discografia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
