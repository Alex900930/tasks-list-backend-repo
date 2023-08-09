-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-08-2023 a las 03:51:13
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_list`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `task`) VALUES
(2, 'Hola @Alex #Important www.google.com ahreera@gmail.com'),
(3, 'Hola @Zoila correo zoila@gmail.com link www.google.com'),
(4, 'Hola @Zoila tu correo es zoila@gmail.com y el link de tu pgweb es www.google.com'),
(5, 'hola @alex www.ggogle.com aherr@gmail.com #important'),
(6, 'hola est es una prueba'),
(7, 'Hola @Alex #Important www.google.com ahreera@gmail.com'),
(8, 'Hola'),
(9, 'Hola Mundo desde Cuba'),
(10, 'Hola Mundo desde Cuba'),
(11, 'Hola @Alex #Important www.google.com ahreera@gmail.com'),
(12, 'Hola Mundo desde Cuba'),
(13, 'Hola Mundo desde Cuba'),
(14, 'Hola @Alex #Important www.google.com ahreera@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
