-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-04-2026 a las 16:05:45
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
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `disco_id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `archivo_mp3` varchar(255) NOT NULL,
  `duracion_track` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `disco_id`, `titulo`, `archivo_mp3`, `duracion_track`) VALUES
(1, 1, 'Hasta que llegue la muerte', 'Hasta que llegue la muerte.mp3', '03:40'),
(2, 1, 'Mira Mis Ojos', 'Mira Mis Ojos.mp3', '02:56'),
(3, 1, 'Hay que abandonar este lugar', 'Hay que abandonar este lugar.mp3', '03:00'),
(4, 1, 'Ya No Hay Verano', 'Ya No Hay Verano - Depresión Sonora.mp3', '02:54'),
(5, 1, 'Dime Que Me Odias', 'Dime Que Me Odias.mp3', '03:28'),
(6, 18, 'Tú No Me Tienes Que Salvar', 'Tú No Me Tienes Que Salvar.mp3', '03:50'),
(7, 19, 'Gasolina y Mechero', 'Gasolina y Mechero.mp3', '02:32'),
(8, 20, 'Apocalipsis Virtual', 'Apocalipsis Virtual.mp3', '03:57'),
(9, 2, 'Apocalipsis Virtual', 'Apocalipsis Virtual.mp3', '03:57'),
(10, 2, 'Generación Perdida, Diversión Prohibida', 'Generación Perdida, Diversión Prohibida.mp3', '03:21'),
(11, 2, 'La Casa del Árbol', 'La Casa del Árbol.mp3', '03:24'),
(12, 2, 'Gasolina y Mechero', 'Gasolina y Mechero.mp3', '02:32'),
(13, 2, 'Tú No Me Tienes Que Salvar', 'Tú No Me Tienes Que Salvar.mp3', '03:50'),
(14, 6, 'desorden del sueño', 'desorden del sueño.mp3', '02:26'),
(15, 7, 'seguiremos siendo - Depresión Sonora, Bratty', 'seguiremos siendo - Bratty.mp3', '03:14'),
(16, 8, 'ya no te veré - Depresión Sonora, Rojuu.mp3', 'ya no te veré - Rojuu.mp3', '03:50'),
(17, 21, 'Veo tan Dentro', 'Veo tan Dentro.mp3', '04:00'),
(18, 22, 'Voy a Explotar', 'Voy a Explotar.mp3', '03:42'),
(19, 23, 'Dónde Están mis Amigos', 'Dónde Están mis Amigos.mp3', '03:37'),
(20, 3, 'Parte I: Introducción a la Entropía', 'Parte I_ Introducción a la Entropía.mp3', '02:11'),
(21, 3, 'Bienvenido al Caos', 'Bienvenido al Caos.mp3', '04:37'),
(22, 3, 'Veo tan Dentro', 'Veo tan Dentro.mp3', '04:00'),
(23, 3, 'Dos Adolescentes y su Primer Amor', 'Dos Adolescentes y su Primer Amor.mp3', '03:54'),
(24, 3, 'Parte II: La Abrazo con Fuerza (Carta a la Soledad)', 'Parte II_ La Abrazo con Fuerza (Carta a la Soledad).mp3', '02:32'),
(25, 3, 'Te Mientes a ti mismo para Ser Feliz', 'Te Mientes a ti mismo para Ser Feliz.mp3', '03:34'),
(26, 3, 'Voy a Explotar', 'Voy a Explotar.mp3', '03:42'),
(27, 3, 'Parte III: Muerte y Resurrección', 'Parte III_ Muerte y Resurrección.mp3', '03:53'),
(28, 3, 'Fumando en mi Funeral', 'Fumando en mi Funeral.mp3', '03:46'),
(29, 3, 'Dónde Están mis Amigos', 'Dónde Están mis Amigos.mp3', '03:37'),
(30, 3, 'Como Todo el Mundo', 'Como Todo el Mundo.mp3', '03:51'),
(31, 9, 'Markusiano - Depresión Sonora, Carolina Durante.mp3', 'Markusiano - Carolina Durante.mp3', '02:31'),
(32, 10, 'Ya no hay Verano - Depresión Sonora, Carolina Durante', 'Ya no hay Verano - Carolina Durante.mp3', '03:17'),
(33, 11, 'Camino - Depresión Sonora, Los Punsetes', 'Camino - Los Punsetes.mp3', '02:50'),
(34, 12, 'Odio el Verano - Depresión Sonora, Los Punsetes', 'Odio el Verano - Los Punsetes.mp3', '02:48'),
(35, 13, 'Cámara Lenta - Depresión Sonora, Javiera Mena', 'Cámara Lenta - Javiera Mena.mp3', '03:24'),
(36, 14, 'Ya no hay Verano - Depresión Sonora, Javiera Mena', 'Ya no hay Verano - Javiera Mena.mp3', '03:14'),
(37, 24, 'vivo del aire', 'vivo del aire.mp3', '02:48'),
(38, 25, 'estupefacientes', 'estupefacientes.mp3', '03:34'),
(39, 26, 'mala', 'mala.mp3', '02:43'),
(40, 26, 'estupefacientes', 'estupefacientes.mp3', '03:34'),
(41, 26, 'vivo del aire', 'vivo del aire.mp3', '02:48'),
(42, 4, 'mala', 'mala.mp3', '02:43'),
(43, 4, 'vivo del aire', 'vivo del aire.mp3', '02:48'),
(44, 4, 'nada importa', 'nada importa.mp3', '02:08'),
(45, 4, 'estupefacientes', 'estupefacientes', '03:34'),
(46, 15, 'La Novedad - Depresión Sonora, Magarita Siempre Viva', 'La Novedad - Magarita Siempre Viva.mp3', '03:31'),
(47, 16, 'Qué puedo hacer - Depresión Sonora, Los Planetas', 'Qué puedo hacer - Los Planetas.mp3', '03:13'),
(48, 27, 'La Balada de los Perros', 'La Balada de los Perros.mp3', '02:40'),
(49, 28, 'Me Va la Vida en Esto', 'Me Va la Vida en Esto.mp3', '03:28'),
(50, 29, 'Domingo Químico', 'Domingo Químico.mp3', '03:06'),
(51, 30, 'Cómo Será Vivir en el Campo', 'Cómo Será Vivir en el Campo.mp3', '02:55'),
(52, 17, 'Soy Lo Peor - Depresión Sonora, BB Trickz', 'Soy Lo Peor - BB Trickz.mp3', '01:53'),
(53, 17, 'Todo Da Igual - Depresión Sonora, BB Trickz', 'Todo Da Igual - BB Trickz.mp3', '01:42'),
(54, 17, 'Es Verano y Qué - Depresión Sonora, BB Trickz', 'Es Verano y Qué - BB Trickz.mp3', '02:19'),
(55, 5, 'La Balada de los Perros', 'La Balada de los Perros.mp3', '02:40'),
(56, 5, 'Sin Volverme Loco', 'Sin Volverme Loco.mp3', '02:43'),
(57, 5, 'La Ley del Pobre', 'La Ley del Pobre.mp3', '02:52'),
(58, 5, 'Guárdame este Secreto', 'Guárdame este Secreto.mp3', '03:31'),
(59, 5, 'Domingo Químico', 'Domingo Químico.mp3', '03:06'),
(60, 5, 'No te Hables Mal', 'No te Hables Mal.mp3', '03:10'),
(61, 5, 'Éxodo 32: 15-28', 'Éxodo 32_ 15-28.mp3', '01:47'),
(62, 5, 'Desordenarlo Todo', 'Desordenarlo Todo.mp3', '02:51'),
(63, 5, 'Me Va la Vida en Esto', 'Me Va la Vida en Esto.mp3', '03:27'),
(64, 5, 'Vacaciones para Siempre', 'Vacaciones para Siempre.mp3', '04:33'),
(65, 5, 'Qué Pena que nos Vayamos a Olvidar', 'Qué Pena que nos Vayamos a Olvidar.mp3', '01:49'),
(66, 31, 'Cómo Será Vivir en el Campo - GALLERY SESSION', 'Cómo Será Vivir en el Campo - GALLERY SESSION.mp3', '03:00');

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
  `audio` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `duracion` time DEFAULT '00:00:00',
  `cantidad_canciones` int(11) DEFAULT 1,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `discografia`
--

INSERT INTO `discografia` (`id`, `titulo`, `anio`, `tipo`, `portada_url`, `spotify_link`, `audio`, `video`, `duracion`, `cantidad_canciones`, `orden`) VALUES
(1, 'Depresión Sonora', '2020', 'EP', 'DepresionSonora-DepresionSonora.webp', 'https://open.spotify.com/intl-es/album/2Kd0xv0iBYynM0on7es48j', '', '', '00:16:00', 5, 1),
(2, 'Historias Tristes para Dormir Bien', '2021', 'EP', 'DepresionSonora-HistoriasTristesParaDormirBien.webp', 'https://open.spotify.com/intl-es/album/1aZHSQui8o38kk6GImuqED', '', '', '00:17:06', 5, 5),
(3, 'El Arte de Morir muy Despacio', '2022', 'LP', 'DepresionSonora-ElArtedeMorirmuyDespacio.jpeg', 'https://open.spotify.com/intl-es/album/2gG6tiHAfxVwPxPe6GL86p', '', '', '00:39:40', 11, 12),
(4, 'MAKINAVAJA', '2024', 'EP', 'DepresionSonora-mala.webp', 'https://open.spotify.com/intl-es/album/1fEmyEtKLCZyuZLaVZ6yL2', '', '', '00:11:14', 4, 22),
(5, 'Los Perros No Entienden De Internet (...Y Yo No Entiendo De Sentimientos)', '2025', 'LP', 'DepresionSonora-LosPerrosNoEntiendenDeInternet(...YYoNoEntiendoDeSentimientos).webp', 'https://open.spotify.com/intl-es/album/54ioPa0kudt4A9VPR0K3a2', '', '', '00:35:29', 12, 30),
(6, 'desorden del sueño - Ghoulajaboy', '2021', 'Colab', 'DepresionSonora-desorden-del-sueno-G.jpeg', 'https://open.spotify.com/intl-es/album/1F7XSWGPOqBPq7UDfR86ZJ', '', '', '00:02:26', 1, 6),
(7, 'seguiremos siendo - Bratty', '2022', 'Colab', 'DepresionSonora-seguiremos-siendo-B.jpeg', 'https://open.spotify.com/intl-es/album/4KkPCRsBQnbv25qKv8dkpI', '', '', '00:03:14', 1, 7),
(8, 'Ya no te veré - Rojuu', '2022', 'Colab', 'DepresionSonora-Ya-no-te-vere-R.jpeg', 'https://open.spotify.com/intl-es/album/2OFpyAlZb4cnU7FyRAXjuv', '', '', '00:03:50', 1, 8),
(9, 'Markusiano - Carolina Durante', '2023', 'Colab', 'DepresionSonora-Markusiano-CD.jpeg', 'https://open.spotify.com/intl-es/album/4KuG523Hjd9M5N9waCuwBa', '', '', '00:02:31', 1, 13),
(10, 'Ya no hay verano - Carolina Durante', '2023', 'Colab', 'DepresionSonora-Ya-no-hay-verano-CD.jpeg', 'https://open.spotify.com/intl-es/album/6QkJ23aHOXc9QuwgyHw39n', '', '', '00:03:17', 1, 14),
(11, 'Camino - Los Punsetes', '2023', 'Colab', 'DepresionSonora-Camino-LP.jpeg', 'https://open.spotify.com/intl-es/album/1cj3JZp8JbGIzRFJYzZhpL', '', '', '00:02:50', 1, 15),
(12, 'Odio el verano - Los Punsetes', '2023', 'Colab', 'DepresionSonora-Odio-el-verano-LP.jpeg', 'https://open.spotify.com/intl-es/album/1VQGWcjK6wLkEV4kkQx7nl', '', '', '00:02:48', 1, 16),
(13, 'Cámara Lenta - Javiera Mena', '2023', 'Colab', 'DepresionSonora-Camara-Lenta-JM.jpeg', 'https://open.spotify.com/intl-es/album/02Dl37emVo6TB4mO7UOU2Z', '', '', '00:03:24', 1, 17),
(14, 'Ya no hay verano - Javiera Mena', '2023', 'Colab', 'DepresionSonora-Ya-no-hay-verano-JM.jpeg', 'https://open.spotify.com/intl-es/album/6kvB7253p6n0OAS9PDfgXv', '', '', '00:03:14', 1, 18),
(15, 'La Novedad - Margarita Siempre Viva', '2024', 'Colab', 'DepresionSonora-La-Novedad-MSV.jpeg', 'https://open.spotify.com/intl-es/album/1GMQ07qxd5Sxjb1ga4c1sW', '', '', '00:03:31', 1, 23),
(16, 'Qué puedo hacer - Los Planetas', '2025', 'Colab', 'DepresionSonora-Que-puedo-hacer-LosPlanetas.jpeg', 'https://open.spotify.com/intl-es/album/1jFHLyxO6ehGJQNXh3cqgo', '', '', '00:03:13', 1, 24),
(17, 'DepresionTrickz - BB Trickz', '2025', 'Colab', 'DepresionSonora-DepresionTrickz-BBT.jpeg', 'https://open.spotify.com/intl-es/album/2Wn59zrfT2qdLTZShNZDE6', '', '', '00:05:54', 3, 29),
(18, 'Tu No Me Tienes Que Salvar', '2020', 'Single', 'DepresionSonora-TuNoMeTienesQueSalvar.jpeg', 'https://open.spotify.com/intl-es/album/5pzm3qZYdcY2WucocBaTj9', '', '', '00:03:50', 1, 2),
(19, 'Gasolina y Mechero', '2021', 'Single', 'DepresionSonora-GasolinayMechero.jpeg', 'https://open.spotify.com/intl-es/album/17rBZRbrNxd3EAXczHCDYk', '', '', '00:02:32', 1, 3),
(20, 'Apocalipsis Virtual', '2021', 'Single', 'DepresionSonora-ApocalipsisVirtual.jpeg', 'https://open.spotify.com/intl-es/album/6ysW2nmCWB6xx4g3SHxIwW', '', '', '00:03:57', 1, 4),
(21, 'Veo tan Dentro', '2022', 'Single', 'DepresionSonora-VeotanDentro.jpeg', 'https://open.spotify.com/intl-es/album/69MjZjIJ1dmeDF9vjXNtue', '', '', '00:04:00', 1, 9),
(22, 'Voy a Explotar', '2022', 'Single', 'DepresionSonora-VoyaExplotar.jpeg', 'https://open.spotify.com/intl-es/album/1rrC0w399CM2o6mv4j09XU', '', '', '00:03:42', 1, 10),
(23, 'Dónde Están mis Amigos', '2022', 'Single', 'DepresionSonora-DondeEstanmisAmigos.jpeg', 'https://open.spotify.com/intl-es/album/1dYzayq3To033yo2nikJ0D', '', '', '00:03:37', 1, 11),
(24, 'vivo del aire', '2024', 'Single', 'DepresionSonora-mala.webp', 'https://open.spotify.com/intl-es/album/3Pa0BLpFOK8hVg9KqTq035', '', '', '00:02:48', 1, 19),
(25, 'estupefacientes', '2024', 'Single', 'DepresionSonora-mala.webp', 'https://open.spotify.com/intl-es/album/5tbHg9Ktqq5aYnsP5xUdO9', '', '', '00:03:34', 1, 20),
(26, 'mala', '2024', 'Single', 'DepresionSonora-mala.webp', 'https://open.spotify.com/intl-es/album/12QCRlhGUvo8QXuacOoCjz', '', '', '00:09:02', 3, 21),
(27, 'La Balada de los Perros', '2025', 'Single', 'DepresionSonora-LaBaladadelosPerros.jpeg', 'https://open.spotify.com/intl-es/album/289HiVlnq15wKmzQ06LfSH', '', '', '00:02:40', 1, 25),
(28, 'Me Va la Vida en Esto', '2025', 'Single', 'DepresionSonora-MeValaVidaenEsto.jpeg', 'https://open.spotify.com/intl-es/album/4mmNwbFWi6iNcILzefXHD1', '', '', '00:03:28', 1, 26),
(29, 'Domingo Químico', '2025', 'Single', 'DepresionSonora-DomingoQuimico.jpeg', 'https://open.spotify.com/intl-es/album/5rlrMv8gLMxVEt4m3LSWjv', '', '', '00:03:36', 1, 27),
(30, 'Cómo Será Vivir en el Campo', '2025', 'Single', 'DepresionSonora-ComoSeraVivirenelCampo.jpeg', 'https://open.spotify.com/intl-es/album/55LlQx11YMyPb6jd4BhpMO', '', '', '00:02:55', 1, 28),
(31, 'Cómo Será Vivir en el Campo - GALLERY SESSION', '2026', 'Single', 'DepresionSonora-ComoSeraVivirenelCampo-GALLERYSESSION.jpeg', 'https://open.spotify.com/intl-es/album/70y19cSuZn1h5T9xgIIFF4', '', '', '00:03:00', 1, 31);

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
(4, 'LIMA', 'TEATRO LEGUÍA', '2026-04-15', '21:00:00', 'https://www.ticketmaster.pe/event/depresion-sonora-venta-general', 'disponible', NULL),
(5, 'BOGOTÁ', 'BONFIRE', '2026-04-16', '21:00:00', 'https://www.ticketmaster.co/event/depresion-sonora-bogota', 'agotado', NULL),
(6, 'MEDELLÍN', 'LA PASCASIA', '2026-04-17', '21:00:00', 'https://www.ticketmaster.co/event/depresion-sonora-medellin', 'agotado', NULL),
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
(20, 'BARCELONA', 'PRIMAVERA SOUND', '2026-06-06', '21:00:00', 'https://www.primaverasound.com/es/barcelona', 'disponible', NULL),
(21, 'SIERRA DE TRAMONTANA, ESPAÑA', 'MALLORCA LIVE FESTIVAL', '2026-06-12', '18:00:00', 'https://www.bandsintown.com/e/1037505764?app_id=ggl_feed&came_from=289&utm_medium=web&utm_source=ggl_feed&utm_campaign=event&source=ea', 'disponible', NULL),
(22, 'ALICANTE, ESPAÑA', 'LOW FESTIVAL - TORREVIEJA', '2026-07-31', '18:00:00', NULL, 'disponible', 'NO COLGADO AÚN EN LA WEB OFICIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumentos`
--

CREATE TABLE `instrumentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `imagen_url` varchar(255) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `instrumentos`
--

INSERT INTO `instrumentos` (`id`, `nombre`, `imagen_url`, `descripcion`) VALUES
(1, 'Fender Johnny Marr Jaguar', '1.-Fender-Johnny-Marr-Jaguar.png', '\"Guitarra eléctrica\" de la marca \"Fender\" que aporta el brillo característico en los arpegios.'),
(2, 'Rickenbacker 4003 JG', '2.-Rickenbacker-4003-JG.png', '\"Bajo eléctrico\" de la marca \"Rickenbacker\" que define las líneas post-punk profundas.'),
(3, 'Hofner Parlor 522', '3.-Hofner-Parlor-522.png', '\"Guitarra acústica\" de la marca \"Hofner\" usada para texturas más orgánicas.'),
(4, 'Fender Mustang Bass', '4.-Fender-Mustang-Bass-Competition-Red.png', '\"Bajo eléctrico\" de la marca \"Fender\" en acabado Competition Red.'),
(5, 'Fender Mustang', '5.-Fender-Mustang.png', '\"Guitarra eléctrica\" de la marca \"Fender\" de escala corta y sonido garajero.'),
(6, 'Gibson SG Standard', '6.-Gibson-SG-Standard-Maestro.png', '\"Guitarra eléctrica\" de la marca \"Gibson\" con puente Maestro para vibratos clásicos.'),
(7, 'Fender Electric XII', '7.-Fender-electric-XII.png', '\"Guitarra eléctrica\" de la marca \"Fender\" de doce cuerdas para sonidos envolventes.'),
(8, 'Gibson ES-335', '8.-Gibson-ES-335-e1757597855252.png', '\"Guitarra semi-hueca\" de la marca \"Gibson\" que aporta calidez a las grabaciones.'),
(9, 'Eastwood Saturn 63', '9.-Eastwood-Saturn-63-e1757597870744.png', '\"Guitarra eléctrica\" de la marca \"Eastwood\" con una estética y sonido retro.'),
(10, 'Fender Jaguar Baritone', '10.-Fender-Jaguar-baritone-e1757597863916.png', '\"Guitarra barítono\" de la marca \"Fender\" para las afinaciones más bajas.'),
(11, 'Yamaha BB-1000S', '12.-Yamaha-BB-1000S-e1757597885494.png', '\"Bajo eléctrico\" de la marca \"Yamaha\" conocido por su pegada en el punk.'),
(12, 'Martin 000-15M', '13.-Martin-000-15M.png', '\"Guitarra acústica\" de la marca \"Martin\" construida íntegramente en caoba.'),
(13, 'Fender Stratocaster', '14.-Fender-Stratocaster-e1757597891789.png', '\"Guitarra eléctrica\" de la marca \"Fender\" usada en los primeros temas de Marcos.'),
(14, 'Eventide TIMEFACTOR', '15.-Eventide-TIMEFACTOR.png', '\"Pedal de delay\" de la marca \"Eventide\" para crear ecos digitales complejos.'),
(15, 'ProCo The Rat', '16.-ProCo-The-Rat.png', '\"Pedal de distorsión\" de la marca \"ProCo\" que ensucia la señal de forma agresiva.'),
(16, 'POG Polyphonic Octave', '17.-POG-Polyphonic-Octave-Generator.png', '\"Pedal de efecto\" de la marca \"EHX\" para generar octavas y texturas.'),
(17, 'REUSS SW-01', '18.-REUSS-SW-01-‘Wine-and-Roses-Steve-Wynn-Signature-Pedal.png', '\"Pedal de efectos\" de la marca \"REUSS\" basado en el sonido de Steve Wynn.'),
(18, 'EHX POLY CHORUS', '19.-Electro-harmonix-POLY-CHORUS.png', '\"Pedal de chorus\" de la marca \"EHX\" para ese sonido acuoso de los 80.'),
(19, 'Otari MTR-10', '20.-Otari-MTR-10.png', '\"Grabadora de cinta\" de la marca \"Otari\" para dar calor analógico.'),
(20, 'RCA 74B', '21.-RCA-74B-e1757603693504.png', '\"Micrófono de cinta\" de la marca \"RCA\" con un sonido vintage muy marcado.'),
(21, 'Neumann U87', '22.-Neumann-U87-Neumann-CMV3-e1757603721862.png', '\"Micrófono de condensador\" de la marca \"Neumann\" el estándar de calidad.'),
(22, 'Roland Jazz Chorus 120', '23.-Roland-Jazz-Chorus-120.png', '\"Amplificador de guitarra\" de la marca \"Roland\" famoso por su chorus.'),
(23, 'Fender Bassman 135', '24.-Fender-Bassman-135.png', '\"Amplificador de válvulas\" de la marca \"Fender\" para bajo y guitarra.'),
(24, 'Fender Twin Reverb', '25.-Fender-Twin-reverb.png', '\"Amplificador de válvulas\" de la marca \"Fender\" para el sonido limpio.'),
(25, 'Gretsch G5222', '26.-Gretsch-G5222-Electromatic.png', '\"Amplificador compacto\" de la marca \"Gretsch\" perfecto para saturaciones.'),
(26, 'Organelle', '27.-Critter-Guitari-Organelle.png', '\"Sintetizador programable\" de la marca \"Critter & Guitari\" experimental.'),
(27, 'Sequential Prophet-6', '28.-Sequential-Prophet-6.png', '\"Sintetizador analógico\" de la marca \"Sequential\" que aporta polifonía clásica.'),
(28, 'Moog SubSequent 37', '29.-Moog-SubSequent-37.png', '\"Sintetizador analógico\" de la marca \"Moog\" para bajos monofónicos.'),
(29, 'Suzuki Omnichord', '30.-Suzuki-Omnichord.png', '\"Instrumento electrónico\" de la marca \"Suzuki\" para texturas únicas.'),
(30, 'Yamaha KX-670', '31.-Yamaha-KX-670.png', '\"Pletina de cassette\" de la marca \"Yamaha\" usada para grabaciones en cinta.'),
(31, 'Tascam Porta One', '32.-Tascam-Porta-One.png', '\"Portastudio\" de la marca \"Tascam\" icónico para la grabación lo-fi.'),
(32, 'Alesis Midiverb III', '33.-Alesis-Midiverb-III.png', '\"Procesador de efectos\" de la marca \"Alesis\" para reverbs vintage.'),
(33, 'Simmons Pads', '34.-Pads-SIMMONS.png', '\"Pads electrónicos\" de la marca \"Simmons\" para disparar sonidos.'),
(34, 'Moog Subharmonicon', '35.-Moog-Subharmonicon.png', '\"Sintetizador semi-modular\" de la marca \"Moog\" para secuencias.'),
(35, 'Mellotron M4000D', '36.-Mellotron-M4000D-Rack.png', '\"Teclado digital\" de la marca \"Mellotron\" que recrea sonidos de flautas.'),
(36, 'Korg MicroKorg', '37.-Korg-MicroKorg.png', '\"Sintetizador con vocoder\" de la marca \"Korg\" un clásico moderno.'),
(37, 'Strymon & MXR Set', '38.-Strymon-Big-Sky-Strymon-Dec...e-MXR-PITCH-SHIFT-DOUBLER.png', '\"Set de efectos\" de las marcas \"Strymon\" y \"MXR\" para manipulación.'),
(38, 'Simmons Clap Trap', '39.-SIMMONS-Digital-Clap-Trap.png', '\"Caja de efectos\" de la marca \"Simmons\" para sonidos de palmas.'),
(39, 'Placid Audio Copperphone', '40.-Placid-Audio-Copperphone.png', '\"Micrófono de efecto\" de la marca \"Placid Audio\" para sonido de radio.'),
(40, 'LAB Series L9', '41.-LAB-Series-L9-312A.png', '\"Amplificador\" de la marca \"LAB Series\" para un tono limpio y quirúrgico.'),
(41, 'Sansui WS-X1', '42.-Sansui-WS-X1.png', '\"Grabador multicanal\" de la marca \"Sansui\" para producciones en cassette.'),
(42, 'Roland TR-707', '43.-Roland-TR-707.png', '\"Caja de ritmos\" de la marca \"Roland\" con sonidos digitales clásicos.'),
(43, 'Roland JV-1080', '44.-Roland-JV-1080.png', '\"Módulo de sonido\" de la marca \"Roland\" que define el sonido de los 90.'),
(44, 'Simmons SDS-8', '45.-SIMMONS-SDS-8.png', '\"Sintetizador de batería\" de la marca \"Simmons\" para bombos electrónicos.'),
(45, 'Simmons SDS-9', '46.-SIMMONS-SDS-9.png', '\"Sintetizador de batería\" de la marca \"Simmons\" con parches mejorados.'),
(46, 'Hohner Performer 37', '47.-Hohner-Performer-37.png', '\"Melódica\" de la marca \"Hohner\" para añadir soplos melódicos.'),
(47, 'Eventide H910', '48.-Eventide-H910-Ursa-Major-SpaceStation-STT-282.png', '\"Armonizador\" de la marca \"Eventide\" para efectos de Pitch.'),
(48, 'Eventide H3000', '49.-Eventide-H3000-Eventide-SPD4000.png', '\"Procesador de efectos\" de la marca \"Eventide\" famoso por sus delays.'),
(49, 'Genz Benz Black Pearl', '50.-GENZ-BENZ-Black-Pearl-30-e1757603831702.png', '\"Amplificador\" de la marca \"Genz Benz\" con tono valvular puro.'),
(50, 'Krumar Multiman-S', '51.-Krumar-Multiman-S.png', '\"Sintetizador de cuerdas\" de la marca \"Krumar\" para texturas analógicas.'),
(51, 'Revox B215', '52.-Revox-B215.png', '\"Pletina de cassette\" de la marca \"Revox\" para masterización.'),
(52, 'Set batería Gretsch', '53.-Set-de-bateria-Gretsch.png', '\"Batería acústica\" de la marca \"Gretsch\" que aporta la base rítmica.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen_url` varchar(255) NOT NULL,
  `categoria` enum('Ropa','Accesorios','Vinilos','Otros') DEFAULT 'Ropa',
  `stock` int(11) DEFAULT 10,
  `link_compra` varchar(255) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen_url`, `categoria`, `stock`, `link_compra`, `estado`, `fecha_creacion`) VALUES
(1, 'Camiseta Antianémico', 'Algodón 100% orgánico. Serigrafía delantera.', 25.00, 'merch_camiseta_1.jpg', 'Ropa', 15, 'https://sonidomuchacho.com/tienda/', 'NUEVO', '2026-04-02 14:40:21'),
(2, 'Vinilo El Arte de Morir...', 'Edición limitada en color negro.', 22.00, 'merch_vinilo_1.jpg', 'Vinilos', 0, 'https://sonidomuchacho.com/tienda/', 'SOLD OUT', '2026-04-02 14:40:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disco_id` (`disco_id`);

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
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `discografia`
--
ALTER TABLE `discografia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`disco_id`) REFERENCES `discografia` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
