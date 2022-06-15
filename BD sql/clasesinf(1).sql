-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-06-2022 a las 02:28:27
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
  `imagen_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Titulo`, `Cuerpo`, `imagen_id`) VALUES
(13, 'Los Premios de Informática reconocen a investigadores que han impulsado avances en inteligencia artificial', 'Nueve científicos que han impulsado avances en campos de vanguardia como la inteligencia artificial, la computación de altas prestaciones, el procesamiento de imágenes y el Internet de las Cosas han sido galardonados en la VI edición de los Premios de Investigación concedidos por la Sociedad Científica Informática de España (SCIE) y la Fundación BBVA. Además, se ha reconocido el trabajo de Code.org, una ONG dedicada a fomentar la educación en informática a escala global, cuyo objetivo es que los alumnos de todo el planeta aprendan a programar en la escuela, al igual que estudian otras asignaturas troncales como matemáticas, física o biología.\r\n\r\nEstos galardones fueron creados en 2017 por la SCIE y la Fundación BBVA para reconocer la creatividad, originalidad y excelencia de los científicos de España que están impulsando la investigación en este campo tan fundamental de nuestro tiempo. Esta alianza con la SCIE –que aglutina a 10 asociaciones y sociedades científicas en el campo de la Informática– que surge para reconocer y visibilizar el talento de los investigadores en esta disciplina, se une a las otras tres familias de galardones que la Fundación BBVA otorga, también anualmente, en colaboración con otras tantas sociedades científicas españolas: los Premios de Investigación Matemática Vicent Caselles con la Real Sociedad Matemática Española (RSME), los Premios de Física con la Real Sociedad Española de Física (RSEF) y los Premios de Estadística con la Sociedad Española de Estadística e Investigación Operativa (SEIO).\r\n\r\nLos Premios de Investigación SCIE-Fundación BBVA comprenden dos modalidades. La modalidad Investigadores Jóvenes Informáticos reconoce a los autores de las tesis doctorales más innovadoras y relevantes: se conceden hasta seis premios, cada uno dotado con 5.000 euros, a investigadores menores de 30 años que trabajen en España. La otra modalidad son los Premios Nacionales de Informática, que la SCIE concede desde 2005 y se incorporaron a los galardones entregados conjuntamente con la Fundación BBVA en 2018. Estos galardones reconocen a investigadores, entidades públicas y privadas que han dedicado su labor al estudio, fortalecimiento y divulgación de la informática.', NULL),
(11, 'El extraordinario descubrimiento del barco de guerra hundido en 1682 cuando llevaba a un futuro rey de Inglaterra', 'El Gloucester encalló frente a la costa de Great Yarmouth, Norfolk -este de Inglaterra-, casi cobrando la vida del duque de York, quien más tarde sería coronado como Jacobo II\r\nEl descubrimiento de un buque de guerra que se hundió hace 340 años cuando transportaba a un futuro rey de Inglaterra ha sido declarado el hallazgo marítimo más importante desde que se encontrara el Mary Rose (la imponente embarcación de Enrique VIII que se recuperó del fondo del mar en 1982).\r\nEl Gloucester encalló frente a la costa de Great Yarmouth, Norfolk -este de Inglaterra- en 1682, casi cobrando la vida del duque de York, quien más tarde sería coronado como rey Jacobo II de Inglaterra.\r\nLos restos del barco fueron descubiertos por buzos en 2007, pero solo se reveló hasta ahora por razones de seguridad.\r\n\r\nClaire Jowitt, profesora y experta marítima catalogó el descubrimiento de “importancia internacional”.', NULL),
(8, 'Reunión que mantuvo junto a sus pares, de fuerte tono crítico hacia el rol de la OEA y al vínc', 'El presidente Alberto Fernández terminó de dar los últimos retoques aquí en Los Angeles, junto al canciller Santiago Cafiero y el embajador Jorge Argüello, al discurso que dará por la tarde en la reunión plenaria de la Cumbre de las Américas, a la que asistirá en calidad de presidente Pro Témpore de la Celac. Se abre la pregunta por el tono que adquirirá su mensaje, y el cuánto y el cómo pondrá en palabras un rechazo concreto a las exclusiones y bloqueos que expone abiertamente esta cumbre, como todo un síntoma del tipo de relación que propone el gran país del norte. Una pista podría estar en el discurso que dio el martes el canciller, en la reunión que mantuvo junto a sus pares, de fuerte tono crítico hacia el rol de la OEA y al vínculo geopolítico que sostiene Washington con Latinoamérica. En el juego de las diplomacias, hay margen sin embargo para el posicionamiento y eso hace la diferencia. Fuentes de la Presidencia adelantaron que ese margen será estrecho: \"Será muy fuerte\", definieron algunos. \"Durísimo\", evaluaron otros entre la comitiva.  ', NULL);

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
