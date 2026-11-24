-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 17:48:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdd_tiendqa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_pro` varchar(50) DEFAULT NULL,
  `categoria_pro` varchar(25) DEFAULT NULL,
  `precio_pro` decimal(20,0) DEFAULT NULL,
  `fecha_de_vecimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedor`
--

CREATE TABLE `provedor` (
  `id_provedor` int(11) NOT NULL,
  `nombre_prov` varchar(15) DEFAULT NULL,
  `telefono_prov` varchar(25) DEFAULT NULL,
  `correo_prov` varchar(50) DEFAULT NULL,
  `direccion_prov` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `NO_doc` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_cliente`
--

INSERT INTO `tb_cliente` (`id_cliente`, `nombre`, `NO_doc`, `telefono`, `direccion`) VALUES
(1, 'Sebastian', '1001001001', '3101111111', 'Calle 10 # 5-20'),
(2, 'Camila', '1001001002', '3102222222', 'Carrera 8 # 10-15'),
(3, 'Andres', '1001001003', '3103333333', 'Calle 12 # 8-30'),
(4, 'Valentina', '1001001004', '3104444444', 'Carrera 9 # 11-20'),
(5, 'Daniel', '1001001005', '3105555555', 'Calle 15 # 6-10'),
(6, 'Laura', '1001001006', '3106666666', 'Carrera 7 # 14-25'),
(7, 'Santiago', '1001001007', '3107777777', 'Calle 18 # 9-12'),
(8, 'Isabella', '1001001008', '3108888888', 'Carrera 10 # 15-30'),
(9, 'Juan', '1001001009', '3109999999', 'Calle 20 # 7-18'),
(10, 'Maria', '1001001010', '3111111111', 'Carrera 12 # 8-22'),
(11, 'David', '1001001011', '3112222222', 'Calle 25 # 10-15'),
(12, 'Gabriela', '1001001012', '3113333333', 'Carrera 6 # 12-20'),
(13, 'Felipe', '1001001013', '3114444444', 'Calle 30 # 9-10'),
(14, 'Natalia', '1001001014', '3115555555', 'Carrera 11 # 16-25'),
(15, 'Mateo', '1001001015', '3116666666', 'Calle 22 # 13-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_factura`
--

CREATE TABLE `tb_detalle_factura` (
  `id_detalle` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_detalle_factura`
--

INSERT INTO `tb_detalle_factura` (`id_detalle`, `cantidad`, `subtotal`, `id_venta`, `id_producto`) VALUES
(1, 2, 5000.00, 1, 1),
(2, 3, 7000.00, 2, 2),
(3, 2, 6000.00, 3, 3),
(4, 4, 10000.00, 4, 4),
(5, 1, 5000.00, 5, 5),
(6, 3, 9000.00, 6, 6),
(7, 2, 8000.00, 7, 7),
(8, 5, 12000.00, 8, 8),
(9, 2, 7000.00, 9, 9),
(10, 3, 8500.00, 10, 10),
(11, 4, 9000.00, 11, 11),
(12, 2, 11000.00, 12, 12),
(13, 1, 6000.00, 13, 13),
(14, 3, 9500.00, 14, 14),
(15, 2, 7500.00, 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_factura`
--

CREATE TABLE `tb_factura` (
  `id_venta` int(11) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_tienda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_factura`
--

INSERT INTO `tb_factura` (`id_venta`, `total`, `fecha_venta`, `id_cliente`, `id_tienda`) VALUES
(1, 15000.00, '2026-11-01', 1, 1),
(2, 22000.00, '2026-11-02', 2, 2),
(3, 18500.00, '2026-11-03', 3, 3),
(4, 30000.00, '2026-11-04', 4, 4),
(5, 12500.00, '2026-11-05', 5, 5),
(6, 27000.00, '2026-11-06', 6, 6),
(7, 19500.00, '2026-11-07', 7, 7),
(8, 35000.00, '2026-11-08', 8, 8),
(9, 16000.00, '2026-11-09', 9, 9),
(10, 24500.00, '2026-11-10', 10, 10),
(11, 18000.00, '2026-11-11', 11, 11),
(12, 32000.00, '2026-11-12', 12, 12),
(13, 14000.00, '2026-11-13', 13, 13),
(14, 28000.00, '2026-11-14', 14, 14),
(15, 21000.00, '2026-11-15', 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_producto`
--

CREATE TABLE `tb_producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `cantidad_producto` int(11) DEFAULT NULL,
  `id_tienda` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_producto`
--

INSERT INTO `tb_producto` (`id_producto`, `nombre`, `categoria`, `cantidad_producto`, `id_tienda`, `id_proveedor`) VALUES
(1, 'Leche', 'Lacteos', 50, 1, 1),
(2, 'Yogur', 'Lacteos', 40, 2, 2),
(3, 'Gaseosa', 'Bebidas', 60, 3, 3),
(4, 'Agua', 'Bebidas', 80, 4, 4),
(5, 'Pasta', 'Granos', 45, 5, 5),
(6, 'Chocolate', 'Dulces', 35, 6, 6),
(7, 'Papel higienico', 'Aseo', 70, 7, 7),
(8, 'Pan tajado', 'Panaderia', 30, 8, 8),
(9, 'Papas fritas', 'Snacks', 55, 9, 9),
(10, 'Ponque', 'Panaderia', 25, 10, 10),
(11, 'Arroz', 'Granos', 90, 11, 11),
(12, 'Salsa tomate', 'Salsas', 40, 12, 12),
(13, 'Huevos', 'Alimentos', 100, 13, 13),
(14, 'Mayonesa', 'Salsas', 30, 14, 14),
(15, 'Azucar', 'Granos', 65, 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_proveedor`
--

CREATE TABLE `tb_proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_proveedor`
--

INSERT INTO `tb_proveedor` (`id_proveedor`, `nombre`, `direccion`) VALUES
(1, 'Alpina', 'Bogota'),
(2, 'Colanta', 'Medellin'),
(3, 'Postobon', 'Bogota'),
(4, 'Coca Cola', 'Bogota'),
(5, 'Doria', 'Mosquera'),
(6, 'Nestle', 'Bogota'),
(7, 'Familia', 'Medellin'),
(8, 'Bimbo', 'Bogota'),
(9, 'Frito Lay', 'Funza'),
(10, 'Ramo', 'Bogota'),
(11, 'Arroz Diana', 'Espinal'),
(12, 'Fruco', 'Bogota'),
(13, 'Acondesa', 'Barranquilla'),
(14, 'La Constancia', 'Bogota'),
(15, 'Incauca', 'Cali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tienda`
--

CREATE TABLE `tb_tienda` (
  `id_tienda` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `horario` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_tienda`
--

INSERT INTO `tb_tienda` (`id_tienda`, `nombre`, `direccion`, `horario`) VALUES
(1, 'Tienda El Ahorro', 'Calle 10 # 15-20', '7AM-9PM'),
(2, 'La Esquina', 'Carrera 5 # 20-10', '6AM-10PM'),
(3, 'Super Central', 'Calle 15 # 8-30', '8AM-8PM'),
(4, 'San Jose', 'Carrera 10 # 12-15', '7AM-9PM'),
(5, 'Buen Precio', 'Calle 20 # 10-25', '6AM-9PM'),
(6, 'Tienda Familiar', 'Carrera 8 # 14-18', '7AM-10PM'),
(7, 'Abarrotes Maria', 'Calle 12 # 9-40', '6AM-8PM'),
(8, 'La Canasta', 'Carrera 15 # 18-20', '7AM-9PM'),
(9, 'Tienda El Sol', 'Calle 18 # 11-30', '8AM-9PM'),
(10, 'Mercado Express', 'Carrera 7 # 16-22', '6AM-10PM'),
(11, 'Tienda Popular', 'Calle 25 # 13-10', '7AM-8PM'),
(12, 'El Descuento', 'Carrera 12 # 19-15', '6AM-9PM'),
(13, 'Abarrotes Luna', 'Calle 30 # 5-20', '7AM-10PM'),
(14, 'Tienda Primavera', 'Carrera 9 # 21-14', '8AM-9PM'),
(15, 'El Granero', 'Calle 22 # 17-12', '6AM-8PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `fecha_ven` date DEFAULT NULL,
  `total_ven` decimal(50,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `provedor`
--
ALTER TABLE `provedor`
  ADD PRIMARY KEY (`id_provedor`);

--
-- Indices de la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `tb_detalle_factura`
--
ALTER TABLE `tb_detalle_factura`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `fk_factura_detalle` (`id_venta`),
  ADD KEY `fk_producto_detalle` (`id_producto`);

--
-- Indices de la tabla `tb_factura`
--
ALTER TABLE `tb_factura`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `fk_cliente_factura` (`id_cliente`),
  ADD KEY `fk_tienda_factura` (`id_tienda`);

--
-- Indices de la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_tienda_producto` (`id_tienda`),
  ADD KEY `fk_proveedor_producto` (`id_proveedor`);

--
-- Indices de la tabla `tb_proveedor`
--
ALTER TABLE `tb_proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `tb_tienda`
--
ALTER TABLE `tb_tienda`
  ADD PRIMARY KEY (`id_tienda`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_detalle_factura`
--
ALTER TABLE `tb_detalle_factura`
  ADD CONSTRAINT `fk_factura_detalle` FOREIGN KEY (`id_venta`) REFERENCES `tb_factura` (`id_venta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_producto_detalle` FOREIGN KEY (`id_producto`) REFERENCES `tb_producto` (`id_producto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_factura`
--
ALTER TABLE `tb_factura`
  ADD CONSTRAINT `fk_cliente_factura` FOREIGN KEY (`id_cliente`) REFERENCES `tb_cliente` (`id_cliente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tienda_factura` FOREIGN KEY (`id_tienda`) REFERENCES `tb_tienda` (`id_tienda`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  ADD CONSTRAINT `fk_proveedor_producto` FOREIGN KEY (`id_proveedor`) REFERENCES `tb_proveedor` (`id_proveedor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tienda_producto` FOREIGN KEY (`id_tienda`) REFERENCES `tb_tienda` (`id_tienda`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
