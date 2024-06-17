-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2024 a las 14:18:21
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vete2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_admin` int(22) NOT NULL,
  `nombre_usuario` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contrasena` varchar(200) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `telefono` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_admin`, `nombre_usuario`, `email`, `contrasena`, `nombre`, `apellido`, `telefono`) VALUES
(1, 'admin', '', 'admin', '', '', ''),
(2, 'admin_aux', '', 'admin', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(22) NOT NULL,
  `id_admin` int(22) DEFAULT NULL,
  `id_dueno` int(22) DEFAULT NULL,
  `nombre_animal` varchar(100) NOT NULL,
  `especie` varchar(100) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `castrado` tinyint(1) NOT NULL,
  `img_animal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `animal`
--

INSERT INTO `animal` (`id_animal`, `id_admin`, `id_dueno`, `nombre_animal`, `especie`, `sexo`, `castrado`, `img_animal`) VALUES
(1, NULL, 9, 'Ruca', 'Canino', 'Hembra', 1, ''),
(2, NULL, 1, 'Lana', 'Canino  ', 'Hembra', 1, ''),
(3, NULL, 34, 'Panchi', 'Canino', 'Hembra', 1, ''),
(4, NULL, 7, 'Madi', 'Felino', 'Hembra', 1, ''),
(5, NULL, 7, 'Rayitas', 'Felino', 'Macho', 1, ''),
(6, NULL, 7, 'Caleb', 'Felino', 'Macho', 1, ''),
(7, NULL, 4, 'Andrea', 'Canino', 'Hembra', 1, ''),
(8, NULL, 12, 'Manzanita', 'Felino', 'Hembra', 1, ''),
(9, NULL, 21, 'Lola', 'Canino', 'Hembra', 1, ''),
(10, NULL, 21, 'Fiona', 'Canino', 'Hembra', 1, ''),
(11, NULL, 21, 'Lulu', 'Canino', 'Hembra', 1, ''),
(12, NULL, 30, 'Toto', 'Canino', 'Hembra', 1, ''),
(13, NULL, 21, 'Mishi', 'Felino', 'Hembra', 1, ''),
(14, NULL, 32, 'Machungo', 'Felino', 'Hembra', 1, ''),
(15, NULL, 21, 'Michi', 'Felino', 'Macho', 1, ''),
(16, NULL, 37, 'Peter', 'Canino', 'Macho', 1, ''),
(17, NULL, 6, 'Chimuelo', 'Felino', 'Macho', 1, ''),
(18, NULL, 28, 'Pancho', 'Felino', 'Macho', 1, ''),
(19, NULL, 28, 'Pipi', 'Felino', 'Hembra', 1, ''),
(20, NULL, 28, 'Mancha', 'Felino', 'Hembra', 1, ''),
(21, NULL, 28, 'Toto', 'Canino', 'Hembra', 1, ''),
(22, NULL, 35, 'Maica', 'Felino', 'Macho', 1, ''),
(71, NULL, 4, 'Chiquita', 'Canino', 'Hembra', 1, ''),
(72, NULL, 4, 'Mancha', 'Canino', 'Hembra', 1, ''),
(229, NULL, 24, 'Gordi', 'Canino', 'Hembra', 0, ''),
(230, NULL, 15, 'Princesa', 'Felino', 'Hembra', 0, ''),
(231, NULL, 10, 'Cuca', 'Canino', 'Hembra', 1, ''),
(232, NULL, 10, 'Roke', 'Canino', 'Macho', 0, ''),
(233, NULL, 11, 'Garfield', 'Felino', 'Macho', 1, ''),
(234, NULL, 11, 'Meme', 'Felino', 'Macho', 1, ''),
(235, NULL, 11, 'Blanquita', 'Felino', 'Hembra', 0, ''),
(236, NULL, 10, 'Tomas', 'Felino', 'Macho', 1, ''),
(237, NULL, 27, 'Timon', 'Canino', 'Macho', 1, ''),
(238, NULL, 29, 'Homero', 'Canino', 'Macho', 0, ''),
(239, NULL, 29, 'Rocco', 'Canino', 'Macho', 0, ''),
(240, NULL, 29, 'Simon', 'Canino', 'Macho', 0, ''),
(241, NULL, 29, 'Renato', 'Canino', 'Macho', 0, ''),
(242, NULL, 29, 'Luna', 'Canino', 'Hembra', 1, ''),
(243, NULL, 26, 'Romeo', 'Canino', 'Macho', 0, ''),
(244, NULL, 26, 'Coco', 'Canino', 'Macho', 0, ''),
(245, NULL, 26, 'Lissa', 'Canino', 'Hembra', 1, ''),
(246, NULL, 26, 'Luna', 'Canino', 'Hembra', 1, ''),
(247, NULL, 26, 'Bethoveen', 'Canino', 'Macho', 0, ''),
(248, NULL, 26, 'Corcho', 'Canino', 'Macho', 0, ''),
(249, NULL, 26, 'Leyla', 'Canino', 'Hembra', 1, ''),
(250, NULL, 26, 'Gorda', 'Canino', 'Hembra', 1, ''),
(251, NULL, 36, 'Kity', 'Canino', 'Hembra', 1, ''),
(252, NULL, 36, 'Picha', 'Canino', 'Hembra', 1, ''),
(1123, NULL, 23, 'lono', 'Felino', 'Macho', 1, ''),
(2123, NULL, 23, 'Nono', 'Felino', 'Macho', 1, ''),
(2124, NULL, 14, '[SIN NOMBRE]', 'Felino', 'Macho', 1, ''),
(2125, NULL, 5, 'Nishita', 'Canino', 'Hembra', 1, ''),
(2126, NULL, 5, 'Gorda', 'Canino', 'Hembra', 1, ''),
(2127, NULL, 5, 'Sofi', 'Canino', 'Hembra', 1, ''),
(2128, NULL, 18, 'Grisa', 'Felino', 'Hembra', 1, ''),
(2129, NULL, 33, 'Garfield', 'Felino', 'Hembra', 1, ''),
(2130, NULL, 38, 'Chocolate', 'Felino', 'Hembra', 1, ''),
(2201, NULL, 2, 'Milo', 'Canino', 'Macho', 1, ''),
(2202, NULL, 22, 'Miti', 'Felino', 'Hembra', 1, ''),
(2203, NULL, 3, 'Pichulo', 'Canino', 'Macho', 1, ''),
(2204, NULL, 13, 'Mauchito', 'Felino', 'Hembra', 1, ''),
(2205, NULL, 17, 'Ema', 'Felino', 'Hembra', 1, ''),
(2206, NULL, 2, 'Moyeja', 'Canino', 'Macho', 1, ''),
(2207, NULL, 2, 'Quesito', 'Canino', 'Macho', 1, ''),
(2208, NULL, 25, 'Barcino', 'Canino', 'Hembra', 1, ''),
(2209, NULL, 8, 'Mauricio', 'Felino', 'Macho', 1, ''),
(2210, NULL, 22, 'Chicha', 'Canino', 'Hembra', 1, ''),
(2211, NULL, 2, 'Hamburgesa', 'Canino', 'Macho', 1, ''),
(2212, NULL, 20, 'Puqui', 'Canino', 'Hembra', 1, ''),
(2213, NULL, 31, 'Lola', 'Canino', 'Hembra', 1, ''),
(2214, NULL, 19, 'Lili', 'Canino', 'Hembra', 1, ''),
(2215, NULL, 16, 'Quira', 'Canino', 'Hembra', 1, ''),
(9999, NULL, NULL, 'pedro', 'tucan', 'gay', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueno`
--

CREATE TABLE `dueno` (
  `Id_dueno` int(22) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dueno`
--

INSERT INTO `dueno` (`Id_dueno`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'Acosta Rocio', '', '2952-403180'),
(2, 'Acosta, Julio', '9 de julio 160', '2954-645610'),
(3, 'Acosta, Susana', '18 de Mayo', '2954-331201'),
(4, 'Alfaro Jorge', '9 de julio 435', '2954-392113'),
(5, 'Astudillo, Paula', '1 de Mayo  296', '2954-818147'),
(6, 'Barroso, Veronica', '1 de Mayo 334', '2954-371737'),
(7, 'Beloqui Delia', 'Roque Saenz Pena 433', '2954-839151'),
(8, 'Beloqui, Vanesa', '1 de Mayo 644', '2954-317702'),
(9, 'Biancucci Virginia', 'Mitre 80', '2954-272291'),
(10, 'Carina Mendive', 'Av Centenario 417', ''),
(11, 'Carolina San Martin', 'Lorenzo Molina 286', ''),
(12, 'Casal Marcelo', 'Centenario 635', '2954-519763'),
(13, 'Chavez, Magali', '1 de mayo 414', '2954-404256'),
(14, 'Comunitario', 'S/D', 'S/D'),
(15, 'Coria Lumnila', '1 de Mayo 246', ''),
(16, 'Diaz, Carla', '6 de enero 165', '2954-223202'),
(17, 'Diaz, Enzo', 'Avda Circu 364', '2954-324334'),
(18, 'Diaz, Ines', '1 de Mayo  y Molina', '2954-600374'),
(19, 'Dos Santo, Jose', 'Estrecho de Magallanes 160', '2954-499095'),
(20, 'Fetter, Julio', 'Pasaje 2 abril 158', '2954-589750'),
(21, 'Folmez, Fernando', '30 de Agosto S/N', '2954-670578'),
(22, 'Fredez, Abigail', '1 de Mayo 414', '2954-464822'),
(23, 'Gallardo, Analia', '6 De Enero S/N', '2955-227848'),
(24, 'Griselda Sangiento', 'Roque Saenz Pena 131', ''),
(25, 'Herrera, Fabio', 'Figeroa Alcorta 47', '2954-468372'),
(26, 'Inchauzu Claudia', 'Calle de Estacion S/N', ''),
(27, 'Jimena Silva', 'Estrecho de Magallanes 239', ''),
(28, 'Leme, Soledad', '1 de Mayo 401', '2954-586940'),
(29, 'Luis La Menza', 'Estrecho de Magallanes 183', ''),
(30, 'Madami, Bibiani', '18 de Mayo', '2954-317707'),
(31, 'Madami, Franco', '1 de Mayo 427', '2954-291107'),
(32, 'Madami, Santos', '18 de Mayo', '2954-553612'),
(33, 'San Marin, Ricardo', 'S/D', '2954-582122'),
(34, 'Saravia Nora', 'Tomas Luths S/N', '2954-673298'),
(35, 'Seitz, Carmen', 'Zona Rural', '2954-312798'),
(36, 'Silvia Lavarol', 'Estrecho de Magallanes 375', ''),
(37, 'Surez, Silvana', '1 de Mayo 444', '2954-714308'),
(38, 'Tellado, Rosa', 'S/D', '2954-591889'),
(9999, 'melchor', 'asd', '9999');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listado_vacuna`
--

CREATE TABLE `listado_vacuna` (
  `id_vacuna` int(22) NOT NULL,
  `nombre_vacuna` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `listado_vacuna`
--

INSERT INTO `listado_vacuna` (`id_vacuna`, `nombre_vacuna`) VALUES
(999999, 'rabia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacuna`
--

CREATE TABLE `vacuna` (
  `fecha_vacuna` date NOT NULL,
  `id_vacuna` int(22) NOT NULL,
  `id_animal` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vacuna`
--

INSERT INTO `vacuna` (`fecha_vacuna`, `id_vacuna`, `id_animal`) VALUES
('2024-05-10', 999999, 9999);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`),
  ADD KEY `animal_fk_dueno` (`id_dueno`),
  ADD KEY `animal_fk_admin` (`id_admin`);

--
-- Indices de la tabla `dueno`
--
ALTER TABLE `dueno`
  ADD PRIMARY KEY (`Id_dueno`);

--
-- Indices de la tabla `listado_vacuna`
--
ALTER TABLE `listado_vacuna`
  ADD PRIMARY KEY (`id_vacuna`);

--
-- Indices de la tabla `vacuna`
--
ALTER TABLE `vacuna`
  ADD KEY `vacuna_fk_listado_vacuna` (`id_vacuna`),
  ADD KEY `vacuna_fk_animal` (`id_animal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_admin` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `dueno`
--
ALTER TABLE `dueno`
  MODIFY `Id_dueno` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99993;

--
-- AUTO_INCREMENT de la tabla `listado_vacuna`
--
ALTER TABLE `listado_vacuna`
  MODIFY `id_vacuna` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_fk_admin` FOREIGN KEY (`id_admin`) REFERENCES `administrador` (`Id_admin`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `vacuna`
--
ALTER TABLE `vacuna`
  ADD CONSTRAINT `vacuna_fk_animal` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`Id_animal`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `vacuna_fk_listado_vacuna` FOREIGN KEY (`id_vacuna`) REFERENCES `listado_vacuna` (`id_vacuna`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

-- Actualizaciones 14/6/2024 -- 

ALTER TABLE `animal`
ADD `fecha_castracion` VARCHAR(255);

CREATE TABLE `desparasitaciones` (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`id_animal` INT,
`fecha_desparasitacion` VARCHAR(255),
`tipo_desparasitante` VARCHAR(255),
FOREIGN KEY (`id_animal`) REFERENCES animal(`id`));

UPDATE `animal`
SET `fecha_castracion` = '20-04-2024'
WHERE id_animal IN (229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252);

UPDATE `animal`
SET `fecha_castracion` = '12-10-2021'
WHERE id_animal IN (1, 2, 3, 4, 5, 6, 7, 71, 72, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22);

UPDATE `animal`
SET `fecha_castracion` = '12-11-2021'
WHERE id_animal IN (1123, 2123, 2124, 2125, 2126, 2127, 2128, 2129, 2130);

UPDATE `animal`
SET `fecha_castracion` = '12-16-2022'
WHERE id_animal IN (2201, 2202, 2203, 2204, 2205, 2206, 2207, 2208, 2209, 2210, 2211, 2212, 2213, 2214, 2215); 

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
