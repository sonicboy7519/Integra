-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-02-2021 a las 00:02:28
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbsistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

DROP TABLE IF EXISTS `articulo`;
CREATE TABLE IF NOT EXISTS `articulo` (
  `idarticulo` int(11) NOT NULL AUTO_INCREMENT,
  `idcategoria` int(11) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `color` varchar(256) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idarticulo`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  KEY `fk_articulo_categoria_idx` (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `codigo`, `nombre`, `stock`, `color`, `imagen`, `condicion`) VALUES
(1, 1, NULL, '801', 0, 'Blanco', NULL, 1),
(2, 1, NULL, '802', 0, 'Hueso', NULL, 1),
(3, 1, NULL, '803', 0, 'Negro', NULL, 1),
(4, 1, NULL, '804', 0, 'Café mink', NULL, 1),
(5, 1, NULL, '805', 0, 'Ladrillo', NULL, 1),
(6, 1, NULL, '806', 0, 'Paja', NULL, 1),
(7, 1, NULL, '807', 0, 'Caqui', NULL, 1),
(8, 1, NULL, '808', 0, 'Gris claro', NULL, 1),
(9, 1, NULL, '809', 0, 'Verde niebla', NULL, 1),
(10, 1, NULL, '810', 0, 'Rosa', NULL, 1),
(11, 1, NULL, '811', 0, 'Rosa viejo', NULL, 1),
(12, 1, NULL, '812', 0, 'Lavanda seco', NULL, 1),
(13, 1, NULL, '813', 0, 'Azul cenizo', NULL, 1),
(14, 1, NULL, '814', 0, 'Marino', NULL, 1),
(15, 1, NULL, '815', 0, 'Jacaranda', NULL, 1),
(16, 1, NULL, '816', 0, 'Azul nórdico', NULL, 1),
(17, 1, NULL, '817', 0, 'Verde cristal', NULL, 1),
(18, 1, NULL, '818', 0, 'Verde pradera', NULL, 1),
(19, 1, NULL, '819', 0, 'Olivo intenso', NULL, 1),
(20, 1, NULL, '820', 0, 'Mango', NULL, 1),
(21, 1, NULL, '821', 0, 'Mandarina', NULL, 1),
(22, 1, NULL, '822', 0, 'Fresa', NULL, 1),
(23, 1, NULL, '823', 0, 'Granate', NULL, 1),
(24, 1, NULL, '824', 0, 'Burdeos', NULL, 1),
(25, 1, NULL, '825', 0, 'Rosa mexicano', NULL, 1),
(26, 1, NULL, '826', 0, 'Azul cielo', NULL, 1),
(27, 1, NULL, '827', 0, 'Rosa tierno', NULL, 1),
(28, 1, NULL, '828', 0, 'Lila', NULL, 1),
(29, 1, NULL, '829', 0, 'Pistache', NULL, 1),
(30, 1, NULL, '830', 0, 'Amarillo vivo', NULL, 1),
(31, 1, NULL, '831', 0, 'Agua fuerte', NULL, 1),
(32, 1, NULL, '832', 0, 'Turquesa', NULL, 1),
(33, 1, NULL, '833', 0, 'Azul rey', NULL, 1),
(34, 1, NULL, '834', 0, 'Amarillo intenso', NULL, 1),
(35, 1, NULL, '835', 0, 'Verde cítrico', NULL, 1),
(36, 1, NULL, '836', 0, 'Morado', NULL, 1),
(37, 1, NULL, '837', 0, 'Morado intenso', NULL, 1),
(38, 1, NULL, '838', 0, 'Café oscuro', NULL, 1),
(39, 1, NULL, '839', 0, 'Verde limón', NULL, 1),
(40, 1, NULL, '840', 0, 'Verde hoja', NULL, 1),
(41, 1, NULL, '842', 0, 'Canela', NULL, 1),
(42, 1, NULL, '843', 0, 'Canela fuerte', NULL, 1),
(43, 1, NULL, '861', 0, 'Arena', NULL, 1),
(44, 1, NULL, '862', 0, 'Trigo', NULL, 1),
(45, 1, NULL, '863', 0, 'Camello', NULL, 1),
(46, 1, NULL, '864', 0, 'Rosado', NULL, 1),
(47, 1, NULL, '865', 0, 'Azul orquidea', NULL, 1),
(48, 1, NULL, '866', 0, 'Verde fresco', NULL, 1),
(49, 1, NULL, '867', 0, 'Amarillo bebé', NULL, 1),
(50, 1, NULL, '868', 0, 'Amarillo medio', NULL, 1),
(51, 1, NULL, '869', 0, 'Oro', NULL, 1),
(52, 1, NULL, '870', 0, 'Calabaza', NULL, 1),
(53, 1, NULL, '872', 0, 'Obispo', NULL, 1),
(54, 1, NULL, '879', 0, 'Morado claro', NULL, 1),
(55, 1, NULL, '880', 0, 'Verde', NULL, 1),
(56, 1, NULL, '881', 0, 'Naranja', NULL, 1),
(57, 1, NULL, '882', 0, 'Salmón', NULL, 1),
(58, 1, NULL, '883', 0, 'Coral', NULL, 1),
(59, 1, NULL, '884', 0, 'Fiusha', NULL, 1),
(60, 1, NULL, '885', 0, 'Palo de rosa', NULL, 1),
(61, 1, NULL, '886', 0, 'Gris', NULL, 1),
(62, 1, NULL, '887', 0, 'Oxford', NULL, 1),
(63, 1, NULL, '888', 0, 'Canela', NULL, 1),
(64, 1, NULL, '889', 0, 'Olivo intenso', NULL, 1),
(65, 1, NULL, '890', 0, 'Carne', NULL, 1),
(66, 2, NULL, '844', 0, 'Frambuesa', NULL, 1),
(67, 2, NULL, '845', 0, 'Azules', NULL, 1),
(68, 2, NULL, '846', 0, 'Bosque', NULL, 1),
(69, 2, NULL, '847', 0, 'Morado-lila', NULL, 1),
(70, 2, NULL, '848', 0, 'Naranjas', NULL, 1),
(71, 2, NULL, '849', 0, 'Cafés', NULL, 1),
(72, 2, NULL, '850', 0, 'Malvas', NULL, 1),
(73, 2, NULL, '851', 0, 'Fresco', NULL, 1),
(74, 2, NULL, '852', 0, 'Alegre', NULL, 1),
(75, 2, NULL, '853', 0, 'Español', NULL, 1),
(76, 2, NULL, '854', 0, 'Primavera', NULL, 1),
(77, 2, NULL, '855', 0, 'Caobas', NULL, 1),
(78, 2, NULL, '856', 0, 'Tinto', NULL, 1),
(79, 2, NULL, '857', 0, 'Beige', NULL, 1),
(80, 2, NULL, '858', 0, 'Melón', NULL, 1),
(81, 2, NULL, '859', 0, 'Rosas', NULL, 1),
(82, 2, NULL, '860', 0, 'Turquesa', NULL, 1),
(83, 2, NULL, '871', 0, 'Caqui', NULL, 1),
(84, 3, '', 'E01', 0, 'Blanco', '1614209548.jpg', 1),
(85, 3, '', 'E02', 0, 'Perla', '1614209911.jpg', 1),
(86, 3, '', 'E04', 0, 'Amarillo', '1614209985.jpg', 1),
(87, 3, '', 'E06', 0, 'Mango', '1614210711.jpg', 1),
(88, 3, '', 'E08', 0, 'Tangerina', '1614210721.jpg', 1),
(89, 3, '', 'E18', 0, 'Manta', '1614210809.jpg', 1),
(90, 3, '', 'E19', 0, 'Crema', '1614210825.jpg', 1),
(91, 3, '', 'E20', 0, 'Carne', '1614210841.jpg', 1),
(92, 3, '', 'E21', 0, 'Arena', '1614210854.jpg', 1),
(93, 3, '', 'E22', 0, 'Beige', '1614210867.jpg', 1),
(94, 3, NULL, 'E25', 0, 'Tabaco claro', NULL, 1),
(95, 3, NULL, 'E28', 0, 'Café', NULL, 1),
(96, 3, NULL, 'E30', 0, 'Rosa', NULL, 1),
(97, 3, NULL, 'E31', 0, 'Salmón', NULL, 1),
(98, 3, NULL, 'E32', 0, 'Coral', NULL, 1),
(99, 3, NULL, 'E33', 0, 'Azalea rosa', NULL, 1),
(100, 3, NULL, 'E35', 0, 'Rosa mexicano', NULL, 1),
(101, 3, NULL, 'E36', 0, 'Orquidea', NULL, 1),
(102, 3, NULL, 'E42', 0, 'Oro', NULL, 1),
(103, 3, NULL, 'E51', 0, 'Lila', NULL, 1),
(104, 3, NULL, 'E54', 0, 'Morado', NULL, 1),
(105, 3, NULL, 'E55', 0, 'Uva', NULL, 1),
(106, 3, NULL, 'E57', 0, 'Bugambilia', NULL, 1),
(107, 3, NULL, 'E60', 0, 'Azul cielo', NULL, 1),
(108, 3, NULL, 'E61', 0, 'Azul bebé', NULL, 1),
(109, 3, NULL, 'E65', 0, 'Azul', NULL, 1),
(110, 3, NULL, 'E68', 0, 'Azul rey', NULL, 1),
(111, 3, NULL, 'E73', 0, 'Marino', NULL, 1),
(112, 3, NULL, 'E75', 0, 'Turquesa', NULL, 1),
(113, 3, NULL, 'E80', 0, 'Menta', NULL, 1),
(114, 3, NULL, 'E82', 0, 'Verde limón', NULL, 1),
(115, 3, NULL, 'E83', 0, 'Cítrico', NULL, 1),
(116, 3, NULL, 'E84', 0, 'Bandera', NULL, 1),
(117, 3, '', 'E86', 0, 'Jade', '1614210965.jpg', 1),
(118, 3, '', 'E91', 0, 'Gris', '1614210951.jpg', 1),
(119, 3, '', 'E92', 0, 'Argento', '1614210931.jpg', 1),
(120, 3, '', 'E94', 0, 'Acero', '1614210920.jpg', 1),
(121, 3, '', 'E99', 0, 'Negro', '1614210891.jpg', 1),
(122, 4, NULL, 'A01', 0, 'Blanco', NULL, 1),
(123, 4, NULL, 'A02', 0, 'Canario', NULL, 1),
(124, 4, NULL, 'A03', 0, 'Paja', NULL, 1),
(125, 4, NULL, 'A04', 0, 'Amarillo', NULL, 1),
(126, 4, NULL, 'A05', 0, 'Mostaza', NULL, 1),
(127, 4, NULL, 'A06', 0, 'Mango', NULL, 1),
(128, 4, NULL, 'A07', 0, 'Salmón', NULL, 1),
(129, 4, NULL, 'A08', 0, 'Melón', NULL, 1),
(130, 4, NULL, 'A09', 0, 'Carne', NULL, 1),
(131, 4, NULL, 'A10', 0, 'Mandarina', NULL, 1),
(132, 4, NULL, 'A18', 0, 'Crudo', NULL, 1),
(133, 4, NULL, 'A20', 0, 'Beige', NULL, 1),
(134, 4, NULL, 'A21', 0, 'Calabaza', NULL, 1),
(135, 4, NULL, 'A22', 0, 'Canela', NULL, 1),
(136, 4, NULL, 'A23', 0, 'Kaki', NULL, 1),
(137, 4, NULL, 'A24', 0, 'Camello', NULL, 1),
(138, 4, NULL, 'A25', 0, 'Tabaco', NULL, 1),
(139, 4, NULL, 'A26', 0, 'Chedrón', NULL, 1),
(140, 4, NULL, 'A27', 0, 'Café', NULL, 1),
(141, 4, NULL, 'A28', 0, 'Chocolate', NULL, 1),
(142, 4, NULL, 'A30', 0, 'Rosa niña', NULL, 1),
(143, 4, NULL, 'A32', 0, 'Rosa', NULL, 1),
(144, 4, NULL, 'A35', 0, 'Fiusha', NULL, 1),
(145, 4, NULL, 'A36', 0, 'Palo de rosa', NULL, 1),
(146, 4, NULL, 'A38', 0, 'Rosa mexicano', NULL, 1),
(147, 4, NULL, 'A40', 0, 'Rojo', NULL, 1),
(148, 4, NULL, 'A41', 0, 'Guinda', NULL, 1),
(149, 4, NULL, 'A42', 0, 'Naranja', NULL, 1),
(150, 4, NULL, 'A43', 0, 'Granada', NULL, 1),
(151, 4, NULL, 'A45', 0, 'Carmín', NULL, 1),
(152, 4, NULL, 'A49', 0, 'Vino', NULL, 1),
(153, 4, NULL, 'A51', 0, 'Violeta', NULL, 1),
(154, 4, NULL, 'A52', 0, 'Bugambilia', NULL, 1),
(155, 4, NULL, 'A53', 0, 'Purpura', NULL, 1),
(156, 4, NULL, 'A54', 0, 'Morado', NULL, 1),
(157, 4, NULL, 'A60', 0, 'Cielo', NULL, 1),
(158, 4, NULL, 'A62', 0, 'Azul', NULL, 1),
(159, 4, NULL, 'A63', 0, 'Pizarra', NULL, 1),
(160, 4, NULL, 'A70', 0, 'Azul marino', NULL, 1),
(161, 4, NULL, 'A71', 0, 'Rey', NULL, 1),
(162, 4, NULL, 'A72', 0, 'Azul francés', NULL, 1),
(163, 4, NULL, 'A73', 0, 'Aqua', NULL, 1),
(164, 4, NULL, 'A74', 0, 'Turquesa', NULL, 1),
(165, 4, NULL, 'A80', 0, 'Menta', NULL, 1),
(166, 4, NULL, 'A81', 0, 'Botella', NULL, 1),
(167, 4, NULL, 'A82', 0, 'Verde', NULL, 1),
(168, 4, NULL, 'A83', 0, 'Verde aguacate', NULL, 1),
(169, 4, NULL, 'A84', 0, 'Verde limón', NULL, 1),
(170, 4, NULL, 'A85', 0, 'Verde pradera', NULL, 1),
(171, 4, NULL, 'A86', 0, 'Esmeralda', NULL, 1),
(172, 4, NULL, 'A87', 0, 'Bandera', NULL, 1),
(173, 4, NULL, 'A88', 0, 'Olivo', NULL, 1),
(174, 4, NULL, 'A91', 0, 'Gris', NULL, 1),
(175, 4, NULL, 'A92', 0, 'Gris oscuro', NULL, 1),
(176, 4, NULL, 'A99', 0, 'Negro', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idcategoria`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `condicion`) VALUES
(1, 'Sinfonía', 'Hilaza Omega 100% Algodón Mercerizado | Hilo Brillante para Manualidades', 1),
(2, 'Sinfonía Matizados', 'Hilaza Omega 100% Algodón Mercerizado | Hilo Brillante para Manualidades', 1),
(3, 'Eulali', 'Hilaza 100% Algodón Egipcio Mercerizado', 1),
(4, 'La Abuelita', 'Hilaza de Algodón no mercerizado ideal para Amigurumi', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ingreso`
--

DROP TABLE IF EXISTS `detalle_ingreso`;
CREATE TABLE IF NOT EXISTS `detalle_ingreso` (
  `iddetalle_ingreso` int(11) NOT NULL AUTO_INCREMENT,
  `idingreso` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` decimal(11,2) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  PRIMARY KEY (`iddetalle_ingreso`),
  KEY `fk_detalle_ingreso_ingreso_idx` (`idingreso`),
  KEY `fk_detalle_ingreso_articulo_idx` (`idarticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Disparadores `detalle_ingreso`
--
DROP TRIGGER IF EXISTS `tr_updStockIngreso`;
DELIMITER $$
CREATE TRIGGER `tr_updStockIngreso` AFTER INSERT ON `detalle_ingreso` FOR EACH ROW BEGIN
 UPDATE articulo SET stock = stock + NEW.cantidad 
 WHERE articulo.idarticulo = NEW.idarticulo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
CREATE TABLE IF NOT EXISTS `detalle_venta` (
  `iddetalle_venta` int(11) NOT NULL AUTO_INCREMENT,
  `idventa` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL,
  PRIMARY KEY (`iddetalle_venta`),
  KEY `fk_detalle_venta_venta_idx` (`idventa`),
  KEY `fk_detalle_venta_articulo_idx` (`idarticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Disparadores `detalle_venta`
--
DROP TRIGGER IF EXISTS `tr_updStockVenta`;
DELIMITER $$
CREATE TRIGGER `tr_updStockVenta` AFTER INSERT ON `detalle_venta` FOR EACH ROW BEGIN
 UPDATE articulo SET stock = stock - NEW.cantidad 
 WHERE articulo.idarticulo = NEW.idarticulo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

DROP TABLE IF EXISTS `ingreso`;
CREATE TABLE IF NOT EXISTS `ingreso` (
  `idingreso` int(11) NOT NULL AUTO_INCREMENT,
  `idproveedor` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total_compra` decimal(11,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`idingreso`),
  KEY `fk_ingreso_persona_idx` (`idproveedor`),
  KEY `fk_ingreso_usuario_idx` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

DROP TABLE IF EXISTS `permiso`;
CREATE TABLE IF NOT EXISTS `permiso` (
  `idpermiso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`idpermiso`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`idpermiso`, `nombre`) VALUES
(1, 'Escritorio'),
(2, 'Almacen'),
(3, 'Compras'),
(4, 'Ventas'),
(5, 'Acceso'),
(6, 'Consulta Compras'),
(7, 'Consulta Ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_persona` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `num_documento` varchar(20) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `tipo_persona`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`) VALUES
(1, 'Proveedor', 'Omega Distribuidora de Hilos, S.A. de C.V.', 'EDOCTA', '123456', 'Callejón San Antonio Abad 23, Tránsito, Cuauhtémoc, CDMX 06820', '55 5522 8660', 'pedidos@hilosomega.com.mx'),
(2, 'Cliente', 'Público en general', 'RFC', 'XAXA000000', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `num_documento` varchar(20) NOT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `clave` varchar(64) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `cargo`, `login`, `clave`, `imagen`, `condicion`) VALUES
(1, 'Salvador Hernández Zúñiga', 'RFC', 'HEZS750330HH2', '1a. cda. Sor Juana Inés de la Cruz 22, CDMX 16450', '5561553316', 'salvadorhz@gmail.com', 'Soporte Técnico', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '1614208063.jpg', 1),
(2, 'Fabiola Hernández Zúñiga', 'RFC', 'HEZF831029', 'Camino Real al Ajusco 47, CDMX 16029', '5523333131', 'fabihdzu@gmail.com', 'Socia', 'faby', '9593c75e08535defab9511dd500ece716d887b7fea0b566955e30cf4d1787c55', '1614208026.jpg', 1),
(3, 'Alejandra Hernández Zúñiga', 'RFC', 'HEZA821005', 'Camino Real al Ajusco 47, CDMX 16029', '5510324454', 'ale.hernandez.zuniga@gmail.com', 'Socia', 'ale', '5c85bb36f3869809fb738a3ba6f990aedbfeca3df2dc1a997fa49c50d0eed8e6', '1614208160.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

DROP TABLE IF EXISTS `usuario_permiso`;
CREATE TABLE IF NOT EXISTS `usuario_permiso` (
  `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `idpermiso` int(11) NOT NULL,
  PRIMARY KEY (`idusuario_permiso`),
  KEY `fk_usuario_permiso_permiso_idx` (`idpermiso`),
  KEY `fk_usuario_permiso_usuario_idx` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`idusuario_permiso`, `idusuario`, `idpermiso`) VALUES
(15, 2, 1),
(16, 2, 2),
(17, 2, 3),
(18, 2, 4),
(19, 2, 6),
(20, 2, 7),
(28, 1, 1),
(29, 1, 2),
(30, 1, 3),
(31, 1, 4),
(32, 1, 5),
(33, 1, 6),
(34, 1, 7),
(35, 3, 1),
(36, 3, 2),
(37, 3, 3),
(38, 3, 4),
(39, 3, 6),
(40, 3, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

DROP TABLE IF EXISTS `venta`;
CREATE TABLE IF NOT EXISTS `venta` (
  `idventa` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total_venta` decimal(11,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`idventa`),
  KEY `fk_venta_persona_idx` (`idcliente`),
  KEY `fk_venta_usuario_idx` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `fk_articulo_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  ADD CONSTRAINT `fk_detalle_ingreso_articulo` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_ingreso_ingreso` FOREIGN KEY (`idingreso`) REFERENCES `ingreso` (`idingreso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_detalle_venta_articulo` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_venta_venta` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD CONSTRAINT `fk_ingreso_persona` FOREIGN KEY (`idproveedor`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ingreso_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD CONSTRAINT `fk_usuario_permiso_permiso` FOREIGN KEY (`idpermiso`) REFERENCES `permiso` (`idpermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_permiso_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_persona` FOREIGN KEY (`idcliente`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
