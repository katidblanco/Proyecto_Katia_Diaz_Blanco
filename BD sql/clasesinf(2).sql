-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-06-2022 a las 14:07:35
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
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Titulo`, `Cuerpo`, `img_id`) VALUES
(13, 'Los Premios de Informática reconocen a investigadores que han impulsado avances en inteligencia artificial', 'Nueve científicos que han impulsado avances en campos de vanguardia como la inteligencia artificial, la computación de altas prestaciones, el procesamiento de imágenes y el Internet de las Cosas han sido galardonados en la VI edición de los Premios de Investigación concedidos por la Sociedad Científica Informática de España (SCIE) y la Fundación BBVA. Además, se ha reconocido el trabajo de Code.org, una ONG dedicada a fomentar la educación en informática a escala global, cuyo objetivo es que los alumnos de todo el planeta aprendan a programar en la escuela, al igual que estudian otras asignaturas troncales como matemáticas, física o biología.\r\n\r\n', NULL),
(11, 'El extraordinario descubrimiento del barco de guerra hundido en 1682 cuando llevaba a un futuro rey de Inglaterra', 'El Gloucester encalló frente a la costa de Great Yarmouth, Norfolk -este de Inglaterra-, casi cobrando la vida del duque de York, quien más tarde sería coronado como Jacobo II\r\nEl descubrimiento de un buque de guerra que se hundió hace 340 años cuando transportaba a un futuro rey de Inglaterra ha sido declarado el hallazgo marítimo más importante desde que se encontrara el Mary Rose (la imponente embarcación de Enrique VIII que se recuperó del fondo del mar en 1982).\r\nEl Gloucester encalló frente a la costa de Great Yarmouth, Norfolk -este de Inglaterra- en 1682, casi cobrando la vida del duque de York, quien más tarde sería coronado como rey Jacobo II de Inglaterra.\r\nLos restos del barco fueron descubiertos por buzos en 2007, pero solo se reveló hasta ahora por razones de seguridad.\r\n\r\nClaire Jowitt, profesora y experta marítima catalogó el descubrimiento de “importancia internacional”.', NULL),
(8, 'Reunión que mantuvo junto a sus pares, de fuerte tono crítico hacia el rol de la OEA y al vínc', 'El presidente Alberto Fernández terminó de dar los últimos retoques aquí en Los Angeles, junto al canciller Santiago Cafiero y el embajador Jorge Argüello, al discurso que dará por la tarde en la reunión plenaria de la Cumbre de las Américas, a la que asistirá en calidad de presidente Pro Témpore de la Celac. Se abre la pregunta por el tono que adquirirá su mensaje, y el cuánto y el cómo pondrá en palabras un rechazo concreto a las exclusiones y bloqueos que expone abiertamente esta cumbre, como todo un síntoma del tipo de relación que propone el gran país del ', NULL),
(15, 'Tres aplicaciones de autenticación de doble factor para neutralizar el SIM Swapping y que un ciberdelincuente tenga acceso a tus cuentas', 'De las redes sociales a las aplicaciones móviles de los bancos, de salud o de los gimnasios. En muchas ocasiones, las contraseñas son lo único que se interpone entre los ciberdelincuentes y los datos personales, sanitarios y financieros que los usuarios almacenan en decenas de apps. La autenticación de doble factor es una forma sencilla de agregar una capa adicional de seguridad a las cuentas. Pusimo a prueba algunas aplicaciones, como Authy o Google Authenticator, que utilizan esta técnica para evitar que terceros accedan a información personal.', 'fl4m0bnypg97kny3p6sd'),
(16, 'Nueva', 'lkhjhsxuigwsicg', 'ieh6uummrn0mocqcqwdo');

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
