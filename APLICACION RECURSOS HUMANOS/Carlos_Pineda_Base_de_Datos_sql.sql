-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-06-2021 a las 05:08:48
-- Versión del servidor: 8.0.22
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `recursoshumanos`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `listadoNomina` ()  select idNom, nomNom, apeNom, cedNom, diaslabNom, novNom, descleyNom, auxtranspNom from Nomina$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listadoPersonal` ()  select * from Personal$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinadorarrhh`
--

CREATE TABLE `coordinadorarrhh` (
  `idCoor` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nomCoor` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apeCoor` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `correoCoor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coordinadorarrhh`
--

INSERT INTO `coordinadorarrhh` (`idCoor`, `nomCoor`, `apeCoor`, `correoCoor`) VALUES
('67890', 'Lolita', 'Lopez', 'lolita@lopez.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jeferrhh`
--

CREATE TABLE `jeferrhh` (
  `idJefe` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nomJefe` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apeJefe` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `correoJefe` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `jeferrhh`
--

INSERT INTO `jeferrhh` (`idJefe`, `nomJefe`, `apeJefe`, `correoJefe`) VALUES
('12345', 'Pepita', 'Perez', 'pepita@perez.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE `nomina` (
  `idNom` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nomNom` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apeNom` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cedNom` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `diaslabNom` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `novNom` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descleyNom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `auxtranspNom` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nomina`
--

INSERT INTO `nomina` (`idNom`, `nomNom`, `apeNom`, `cedNom`, `diaslabNom`, `novNom`, `descleyNom`, `auxtranspNom`) VALUES
('0101', 'Juan', 'Perez', '1002345678', '15', 'Incapacidad 3 dias', '60000', '877803'),
('0102', 'Maria', 'Sanchez', '812345678', '25', 'Sin novedad', '60000', '877803'),
('0103', 'Luis', 'Suarez', '37895220', '30', '6 Horas Extras', '60000', '877803'),
('0104', 'Sofia', 'Marquez', '7894561', '30', 'Sin novedad', '60000', '877803'),
('0105', 'Gabriela', 'Trujillo', '1000321654', '20', 'Licencia 10 dias', '60000', '877803');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `cedPer` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nomPer` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apePer` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dirPer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telPer` int NOT NULL,
  `edadPer` int NOT NULL,
  `correoPer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `salPer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cargoPer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `epsPer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `afpPer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `arlPer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`cedPer`, `nomPer`, `apePer`, `dirPer`, `telPer`, `edadPer`, `correoPer`, `salPer`, `cargoPer`, `epsPer`, `afpPer`, `arlPer`) VALUES
('1000321654', 'Gabriela', 'Trujillo', 'Diagonal 5 # 6-07', 2304567, 23, 'gabrielat@gmail.com', '1000000', 'Auxiliar', 'Compensar', 'Porvenir', 'Sura'),
('1002345678', 'Juan', 'Perez', 'Calle 1 # 2-03', 300123456, 30, 'juan123@gmail.com', '1800000', 'Director de Proyecto', 'Compensar', 'Colpensiones', 'Sura'),
('37895220', 'Luis', 'Suarez', 'Carrera 3 # 4-05', 5556291, 48, 'luissz@hotmail.com', '2500000', 'Contador', 'Sanitas', 'Horizonte', 'Sura'),
('7894561', 'Sofia', 'Marquez', 'Carrera 4 # 5-06', 5557894, 40, 'sofiam@gmail.com', '3000000', 'Gerente', 'Compensar', 'Horizonte', 'Sura'),
('812345678', 'Maria', 'Sanchez', 'Calle 2 # 3-04', 2627788, 35, 'mariasan@yahoo.com', '2000000', 'Directora', 'Sanitas', 'Porvenir', 'Sura');

--
-- Disparadores `personal`
--
DELIMITER $$
CREATE TRIGGER `Personalupdate` BEFORE UPDATE ON `personal` FOR EACH ROW INSERT 
       INTO trigger_personal 
(CedulaAnterior, NombreAnterior, ApellidoAnterior, DireccionAnterior, TelefonoAnterior, EdadAnterior, CorreoAnterior, SalarioAnterior, CargoAnterior, EpsAnterior, AfpAnterior, ArlAnterior, CedulaNuevo, NombreNuevo, ApellidoNuevo, DireccionNuevo, TelefonoNuevo, EdadNuevo, CorreoNuevo, SalarioNuevo, CargoNuevo, EpsNuevo, AfpNuevo, ArlNuevo) 
Values (OLD.cedPer, OLD.nomPer, OLD.apePer,OLD.dirPer, OLD.telPer, OLD.edadPer, OLD.correoPer, OLD.salPer, OLD.cargoPer, OLD.epsPer, OLD.afpPer, OLD.arlPer, NEW.cedPer, NEW.nomPer, NEW.apePer, NEW.dirPer, NEW.telPer, NEW.edadPer, NEW.correoPer, NEW.salPer, NEW.cargoPer, NEW.epsPer, NEW.afpPer, NEW.arlPer)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `personaldelete` AFTER DELETE ON `personal` FOR EACH ROW INSERT INTO trigger_personal (CedulaAnterior, NombreAnterior, ApellidoAnterior, DireccionAnterior, TelefonoAnterior, EdadAnterior, CorreoAnterior, SalarioAnterior, CargoAnterior, EpsAnterior, AfpAnterior, ArlAnterior, CedulaNuevo, NombreNuevo, ApellidoNuevo, DireccionNuevo, TelefonoNuevo, EdadNuevo, CorreoNuevo, SalarioNuevo, CargoNuevo, EpsNuevo, AfpNuevo, ArlNuevo) Values (OLD.cedPer, OLD.nomPer, OLD.apePer,OLD.dirPer, OLD.telPer, OLD.edadPer, OLD.correoPer, OLD.salPer, OLD.cargoPer, OLD.epsPer, OLD.afpPer, OLD.arlPer)
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coordinadorarrhh`
--
ALTER TABLE `coordinadorarrhh`
  ADD PRIMARY KEY (`idCoor`);

--
-- Indices de la tabla `jeferrhh`
--
ALTER TABLE `jeferrhh`
  ADD PRIMARY KEY (`idJefe`);

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`idNom`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`cedPer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
