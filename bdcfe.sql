-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2021 a las 23:07:22
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdcfe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Nombre` varchar(50) NOT NULL,
  `Apellido paterno` varchar(50) NOT NULL,
  `Apellido materno` varchar(50) NOT NULL,
  `No. de cliente` int(50) NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Fecha de nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `No. de empleado` int(15) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido paterno` varchar(50) NOT NULL,
  `Apellido materno` varchar(50) NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Fecha de nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Nombre del cliente` varchar(50) NOT NULL,
  `No. de factura` int(50) NOT NULL,
  `Fecha de facturacion` date NOT NULL,
  `No. de servicio` int(50) NOT NULL,
  `No. de medidor` int(50) NOT NULL,
  `Total a pagar` double NOT NULL,
  `Dirección` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `Telefono` int(10) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Tipo de servicio` varchar(100) NOT NULL,
  `Especificacion del servicio` text NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Propietario` varchar(100) NOT NULL,
  `Sugerencia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`No. de cliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`No. de empleado`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`No. de factura`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`Telefono`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
