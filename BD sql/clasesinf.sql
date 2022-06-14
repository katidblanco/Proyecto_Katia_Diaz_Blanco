-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-06-2022 a las 23:07:06
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clasesinf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE IF NOT EXISTS `administrador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` text NOT NULL,
  `Cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Titulo`, `Cuerpo`) VALUES
(10, 'Escapadas: cinco lugares únicos en la Argentina para acampar en la naturaleza sin resignar confort', 'Dormir bajo las estrellas no tiene precio y nunca ha sido tan elegante y exclusivo. La tendencia del glamping (término que nace de la unión de glamour y camping), crece a pasos agigantados y es una de las más elegidas a la hora de disfrutar de unas vacaciones disruptivas, ya que permite un contacto único con la naturaleza.\r\n\r\nEsta novedosa propuesta invita a alojarse en domos (estructuras semi-esféricas con paredes transparentes), que brindan una experiencia agreste como los campamentos tradicionales, pero con servicios de lujo que marcan la diferencia: camas confortables como en los mejores hoteles, amenities, pileta climatizada al aire libre y un servicio de gastronomía gourmet con la impronta del lugar que se visita.\r\n\r\nOtro gran atractivo del glamping es el foco en el cuidado del medio ambiente y la sustentabilidad, ya que se trata de un tipo de turismo de triple impacto que logra una perfecta simbiosis entre el medio ambiente y sus actores.\r\nPropuestas con glamour\r\n\r\nLos distintos paisajes son los protagonistas de estos alojamientos: un desierto blanco lleno de magia en Jujuy ; bosques verdes y sierras cordobesas donde se disfruta el canto de los pájaros y el sonido de los arroyos; vastos cañadones, valles y praderas en Mendoza y hasta la inmensidad de la Patagonia con sus lagos y montañas.'),
(11, 'El extraordinario descubrimiento del barco de guerra hundido en 1682 cuando llevaba a un futuro rey de Inglaterra', 'El Gloucester encalló frente a la costa de Great Yarmouth, Norfolk -este de Inglaterra-, casi cobrando la vida del duque de York, quien más tarde sería coronado como Jacobo II\r\nEl descubrimiento de un buque de guerra que se hundió hace 340 años cuando transportaba a un futuro rey de Inglaterra ha sido declarado el hallazgo marítimo más importante desde que se encontrara el Mary Rose (la imponente embarcación de Enrique VIII que se recuperó del fondo del mar en 1982).\r\nEl Gloucester encalló frente a la costa de Great Yarmouth, Norfolk -este de Inglaterra- en 1682, casi cobrando la vida del duque de York, quien más tarde sería coronado como rey Jacobo II de Inglaterra.\r\nLos restos del barco fueron descubiertos por buzos en 2007, pero solo se reveló hasta ahora por razones de seguridad.\r\n\r\nClaire Jowitt, profesora y experta marítima catalogó el descubrimiento de “importancia internacional”.'),
(8, 'Reunión que mantuvo junto a sus pares, de fuerte tono crítico hacia el rol de la OEA y al vínc', 'El presidente Alberto Fernández terminó de dar los últimos retoques aquí en Los Angeles, junto al canciller Santiago Cafiero y el embajador Jorge Argüello, al discurso que dará por la tarde en la reunión plenaria de la Cumbre de las Américas, a la que asistirá en calidad de presidente Pro Témpore de la Celac. Se abre la pregunta por el tono que adquirirá su mensaje, y el cuánto y el cómo pondrá en palabras un rechazo concreto a las exclusiones y bloqueos que expone abiertamente esta cumbre, como todo un síntoma del tipo de relación que propone el gran país del norte. Una pista podría estar en el discurso que dio el martes el canciller, en la reunión que mantuvo junto a sus pares, de fuerte tono crítico hacia el rol de la OEA y al vínculo geopolítico que sostiene Washington con Latinoamérica. En el juego de las diplomacias, hay margen sin embargo para el posicionamiento y eso hace la diferencia. Fuentes de la Presidencia adelantaron que ese margen será estrecho: \"Será muy fuerte\", definieron algunos. \"Durísimo\", evaluaron otros entre la comitiva.  ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Katia', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Katia', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'Laura', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'Laura', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
