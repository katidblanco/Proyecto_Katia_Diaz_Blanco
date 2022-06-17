-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-06-2022 a las 14:16:39
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Titulo`, `Cuerpo`, `img_id`) VALUES
(20, 'El plan de Zuckerberg para salvar a Facebook pasa por copiar a TikTok', 'Facebook quiere ser competitiva a largo plazo, y para conseguirlo, está intentando adaptar su algoritmo para que se comporte de una forma más parecida al de TikTok, la popular aplicación china de vídeos. De acuerdo con \' The Verge\', medio que ha tenido acceso a documentos internos de la red social, la plataforma de Mark Zuckerberg, está trabajando para que los usuarios consuman en su \'feed\' más contenido procedente de sitios que no siguen en lugar de priorizar el contenido compartido por aquellos a los que conoce. La compañía también podría revertir la división del servicio de mensajería Messenger y Facebook.\r\nEl objetivo final de estos cambios es conseguir que Facebook vuelva a convertirse en una plataforma atractiva para el usuario joven, algo que, desde hace tiempo, no se cumple.\r\n\r\nEl servicio ya comenzó a dar pasos en esta dirección con la incorporación de los vídeos Reels a Instagram, que hace apenas unos meses también terminaron desembarcando en Facebook.\r\n\r\nDe acuerdo con el medio estadounidense, en el futuro, la página principal de Facebook será así: «La pestaña principal se convertirá en una combinación de Historias y Reels en la parte superior, seguida de publicaciones que recomienda su motor de descubrimiento tanto de Facebook como de Instagram». ', 'eosefuksfmrdm6exxc18'),
(18, 'Firefox habilita por defecto la protección total contra las cookies', 'Mozilla ha anunciado la habilitación por defecto de la protección total contra las cookies (Total Cookie Protection) para todos los usuarios de Firefox en escritorio más allá de la navegación privada y la configuración en estricto de la protección contra el rastreo.\r\n\r\nFirefox gana aparentemente con Total Cookie Protection un punto importante en su particular batalla frente a los interminables clones de Chromium, los cuales están liderados por Chrome y Edge (ambos privativos). Marshall Erwin, jefe de seguridad en Mozilla, ha dicho que Firefox es ahora “el más seguro y privado entre los mayores navegadores disponibles para Windows y Mac” (Mozilla y su manía de descuidar a los usuarios de Linux, que son los más fieles que tiene).\r\n\r\nLo de Total Cookie Protection suena muy bien, pero, ¿qué es en realidad? Pues se trata de una característica creada para evitar el rastreo cruzado de las cookies por parte de los sitios web. Para ello lo que hace es aislar las cookies empleadas por un sitio web en su propia “jarra”, evitando así que puedan ser rastradas por otros sitio web. De esta manera, por ejemplo, se impide que Facebook tenga acceso a las cookies generadas y almacenadas tras visitar Amazon. El siguiente dibujo publicado por Mozilla explica de manera sencilla el funcionamiento de la protección total contra las cookies.', 'gl7hcxapmvrqvbmbkfom'),
(15, 'Tres aplicaciones de autenticación de doble factor para neutralizar el SIM Swapping y que un ciberdelincuente tenga acceso a tus cuentas', 'De las redes sociales a las aplicaciones móviles de los bancos, de salud o de los gimnasios. En muchas ocasiones, las contraseñas son lo único que se interpone entre los ciberdelincuentes y los datos personales, sanitarios y financieros que los usuarios almacenan en decenas de apps. La autenticación de doble factor es una forma sencilla de agregar una capa adicional de seguridad a las cuentas. Pusimo a prueba algunas aplicaciones, como Authy o Google Authenticator, que utilizan esta técnica para evitar que terceros accedan a información personal.', 'fl4m0bnypg97kny3p6sd'),
(17, 'Adobe actualiza Photoshop para la web y lo ofrecerá gratis para todos', 'Photoshop para la web, la nueva versión de la solución on-line del programa de edición de imágenes, mejorará las prestaciones de la primera versión y estará disponible gratuitamente para todos los usuarios. Adobe la está probando actualmente en Canadá y se espera que se ofrezca en todo el mundo próximamente.\r\n\r\nPhotoshop es el líder mundial en software de edición gráfica. Aunque no faltan alternativas, algunas tan buenas como Gimp, se ha convertido en estándar de facto para edición y retoque profesional de fotografía y gráficos en los 32 años que lleva en el mercado.\r\nPhotoshop para la web, gratis\r\n\r\nEn un esfuerzo para ampliar su alcance al usuario de a pie y convertirlos potencialmente en clientes de pago en el futuro, esta versión gratuita incluirá suficientes herramientas para «realizar lo que Adobe considera que son las funciones principales de Photoshop», explica The Verge en una información que ha sido confirmada por la compañía.\r\n\r\nSe espera una mejora de prestaciones considerable con respecto a la versión web anterior de Photoshop que estrenada el pasado otoño estaba enfocada a la colaboración y solo permite a los usuarios poco más que compartir y comentar documentos a través de un navegador. Un portavoz de Adobe confirmó que «todas las funciones de edición estarán disponibles».', 'jws8cxujuesljqiw6wal'),
(19, 'Cinco problemas frecuentes con Windows 11 y cómo resolverlos', 'Windows 11 es un sistema operativo de nueva generación que todavía tiene muchos detalles por pulir. Es cierto que, con el paso de los meses, ha recibido parches y actualizaciones que han corregido algunos errores y problemas importantes, y que poco a poco cada vez tenemos menos razones para no instalarlo, pero esto no quiere decir que nos encontremos ya en el mejor momento para dar el paso. Yo, personalmente, tengo claro que voy a esperar un poco más, al menos en mi PC personal.\r\n\r\nA día de hoy he probado Windows 11 en diferentes equipos, pero todos han sido sistemas de última generación con configuraciones de hardware más que aceptables, así que es comprensible que la experiencia que he tenido haya sido, en general, bastante buena. No obstante, esto no quiere decir que no haya tenido problemas, de hecho ha ocurrido todo lo contrario.\r\n\r\nPor ejemplo, hace poco una actualización de Windows 11 dejó fuera de juego la conexión Wi-Fi del equipo de pruebas que utilizamos en los análisis, y perdí varias horas para hacer que la conexión volviera. Sí, fue un desastre, y el culpable fue Windows 11 y su sistema de actualizaciones, que generó un conflicto grave y me obligó a trastear durante un buen rato. Un usuario normal no habría podido resolver el problema, y habría tenido que recurrir al servicio técnico, lo que le habría supuesto un gasto considerable.\r\n\r\nPartiendo de todas las experiencias que acumulo con Windows 11, he creído que sería una buena idea recopilar cinco problemas frecuentes que pueden daros más de un quebradero de cabeza con dicho sistema, y mostraros directamente la solución para que no tengáis que perder tiempo buscando «la salida», como me ocurrió a mi en su momento. Como siempre, si tenéis cualquier duda podéis dejarla en los comentarios y os ayudaré a resolverla.', 'khuizbwf8ukjxtulbv7g');

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
