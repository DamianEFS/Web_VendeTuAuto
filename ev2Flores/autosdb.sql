-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2025 a las 12:46:36
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
-- Base de datos: `autosdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Administradores'),
(1, 'Vendedores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(10, 1, 25),
(11, 1, 26),
(12, 1, 27),
(13, 1, 28),
(14, 1, 29),
(15, 1, 30),
(16, 1, 31),
(1, 1, 32),
(6, 1, 37),
(7, 1, 38),
(8, 1, 39),
(9, 1, 40),
(17, 2, 33),
(18, 2, 34),
(19, 2, 35),
(20, 2, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add marca', 7, 'add_marca'),
(26, 'Can change marca', 7, 'change_marca'),
(27, 'Can delete marca', 7, 'delete_marca'),
(28, 'Can view marca', 7, 'view_marca'),
(29, 'Can add modelo', 8, 'add_modelo'),
(30, 'Can change modelo', 8, 'change_modelo'),
(31, 'Can delete modelo', 8, 'delete_modelo'),
(32, 'Can view modelo', 8, 'view_modelo'),
(33, 'Can add vendedor', 9, 'add_vendedor'),
(34, 'Can change vendedor', 9, 'change_vendedor'),
(35, 'Can delete vendedor', 9, 'delete_vendedor'),
(36, 'Can view vendedor', 9, 'view_vendedor'),
(37, 'Can add auto', 10, 'add_auto'),
(38, 'Can change auto', 10, 'change_auto'),
(39, 'Can delete auto', 10, 'delete_auto'),
(40, 'Can view auto', 10, 'view_auto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$ttLiCTQHMKTJOciaUhRhRn$NVn/R0oXTssK6xlYLsnu0jhTtbOQ3ueRTscSI9eQeNE=', '2025-11-17 10:44:23.000000', 0, 'costalimon', '', '', '', 0, 1, '2025-11-17 08:28:49.000000'),
(2, 'pbkdf2_sha256$1000000$cxWRfE6ynoHPDETxDRwTJS$GcFTYynvJwBoqd6DgK5uKlTEZLlWXQaSsh/swQiT7p4=', '2025-11-17 11:40:09.000000', 1, 'adminVTA', '', '', 'admin@vendetuauto.cl', 1, 1, '2025-11-17 10:34:44.000000'),
(3, 'pbkdf2_sha256$1000000$YiRfrzbfWo0OBErhOxofw2$du30/4MTYO4s752iHypLD9NpEvt3Kt7XTrSAGkiyUwI=', '2025-11-17 11:02:01.000000', 0, 'JuanPablo', 'Juan', 'Matamala', 'juanp.matamala@vendetuauto.cl', 0, 1, '2025-11-17 10:47:35.000000'),
(4, 'pbkdf2_sha256$1000000$YXlgx1O5g0QqhV4Wc9GiNA$XH81VTzyVIVm3jSbVz1qmxU3UDiISxjHwsdW8XhFRwQ=', NULL, 0, 'Mateo', 'Mateo', 'Olate', 'mateo.olate@vendetuauto.cl', 0, 1, '2025-11-17 11:00:48.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 3, 1),
(2, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auto`
--

CREATE TABLE `auto` (
  `id` bigint(20) NOT NULL,
  `patente` varchar(10) NOT NULL,
  `kilometraje` int(11) NOT NULL,
  `km_por_litro` float DEFAULT NULL,
  `año` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `disponibilidad` tinyint(1) NOT NULL,
  `marca_id` bigint(20) NOT NULL,
  `modelo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auto`
--

INSERT INTO `auto` (`id`, `patente`, `kilometraje`, `km_por_litro`, `año`, `estado`, `foto`, `disponibilidad`, `marca_id`, `modelo_id`) VALUES
(1, 'KJYB-42', 132500, 14, 2018, 'Bueno', 'autos/Hyundai_tucson.jpg', 1, 7, 2),
(2, 'PTRL-93', 188200, 10, 2016, 'Bueno', 'autos/Ford_ranger.jpg', 1, 6, 5),
(3, 'YZRF-08', 145800, 12, 2019, 'Exelente', 'autos/subaru_outback.jpg', 1, 4, 18),
(4, 'CRXJ-71', 210400, 9, 2017, 'Bueno', 'autos/Toyota_Hilux.jpg', 0, 3, 12),
(5, 'GHBV-54', 98300, 13, 2018, 'Muy bueno', 'autos/Mitsubishi_outliander.jpg', 1, 2, 14),
(6, 'STWF-29', 167900, 11, 2019, 'Bueno', 'autos/volvo_xc60.jpg', 1, 1, 19),
(7, 'BDRW-67', 196000, 12, 1999, 'Regular', 'autos/Daewoo_Lanos.jpg', 1, 8, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-11-17 10:38:42.000000', '1', 'Vendedores', 1, '[{\"added\": {}}]', 3, 2),
(2, '2025-11-17 10:39:32.000000', '2', 'Administradores', 1, '[{\"added\": {}}]', 3, 2),
(3, '2025-11-17 10:39:43.000000', '1', 'Vendedores', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 2),
(4, '2025-11-17 10:48:30.000000', '3', 'JuanPablo', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 2),
(5, '2025-11-17 10:59:19.000000', '3', 'JuanPablo', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 2),
(6, '2025-11-17 11:00:48.000000', '4', 'Mateo', 1, '[{\"added\": {}}]', 4, 2),
(7, '2025-11-17 11:01:08.000000', '4', 'Mateo', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 2),
(8, '2025-11-17 11:01:15.000000', '4', 'Mateo', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'DamianApp', 'auto'),
(7, 'DamianApp', 'marca'),
(8, 'DamianApp', 'modelo'),
(9, 'DamianApp', 'vendedor'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'DamianApp', '0001_initial', '2025-11-14 17:27:44.000000'),
(2, 'contenttypes', '0001_initial', '2025-11-14 17:27:44.000000'),
(3, 'auth', '0001_initial', '2025-11-14 17:27:44.000000'),
(4, 'admin', '0001_initial', '2025-11-14 17:27:44.000000'),
(5, 'admin', '0002_logentry_remove_auto_add', '2025-11-14 17:27:44.000000'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2025-11-14 17:27:44.000000'),
(7, 'contenttypes', '0002_remove_content_type_name', '2025-11-14 17:27:44.000000'),
(8, 'auth', '0002_alter_permission_name_max_length', '2025-11-14 17:27:44.000000'),
(9, 'auth', '0003_alter_user_email_max_length', '2025-11-14 17:27:44.000000'),
(10, 'auth', '0004_alter_user_username_opts', '2025-11-14 17:27:44.000000'),
(11, 'auth', '0005_alter_user_last_login_null', '2025-11-14 17:27:45.000000'),
(12, 'auth', '0006_require_contenttypes_0002', '2025-11-14 17:27:45.000000'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2025-11-14 17:27:45.000000'),
(14, 'auth', '0008_alter_user_username_max_length', '2025-11-14 17:27:45.000000'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2025-11-14 17:27:45.000000'),
(16, 'auth', '0010_alter_group_name_max_length', '2025-11-14 17:27:45.000000'),
(17, 'auth', '0011_update_proxy_permissions', '2025-11-14 17:27:45.000000'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2025-11-14 17:27:45.000000'),
(19, 'sessions', '0001_initial', '2025-11-14 17:27:45.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('yft1sgsy1dzsjhgh4fn7hc8goarjoggv', '.eJxVjDEOgzAMAP_iuYoSK5jC2L1vQE5sN7QVSAQm1L9XSAztene6HQbe1jJsVZdhFOgB4fLLEueXToeQJ0-P2eV5WpcxuSNxp63uPou-b2f7NyhcC_QQKWblwNeYVISDkQkFEmtMVCzE6MkjdYzoreNsISFS60Ub5DZE-HwBD3Q4fg:1vKxab:H_GCZL2T4cUb8PipigWvFN918342DWO8ud2fuI9wz68', '2025-12-01 11:40:09.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `nombre`, `logo`, `descripcion`) VALUES
(1, 'Volvo', 'marcas/volvologo.png', 'Origen: Suecia.\r\nQué tipo de autos hace: Autos premium centrados en la seguridad, el confort y el diseño minimalista escandinavo. Fuerte presencia en SUVs, sedanes y modelos híbridos/eléctricos'),
(2, 'Mitsubishi', 'marcas/mitsubishilogo.png', 'Origen: Japón.\r\nQué tipo de autos hace: SUVs y crossovers accesibles, vehículos económicos y algunos modelos orientados al rendimiento (históricamente, el Lancer Evolution). Enfocada en 4x4, eficiencia y precios competitivos.'),
(3, 'Toyota', 'marcas/toyotalogo.png', 'Origen: Japón.\r\nQué tipo de autos hace: Líder mundial en fiabilidad. Produce desde compactos hasta SUVs grandes y pickups. Son pioneros en híbridos (Prius) y destacan por su bajo mantenimiento y larga vida útil.'),
(4, 'Subaru', 'marcas/Subarulogo.png', 'Origen: Japón.\r\nQué tipo de autos hace: Autos con tracción integral (AWD) de serie en la mayoría de sus modelos. Enfocados en seguridad, estabilidad y conducción en terrenos difíciles. También tienen modelos deportivos (WRX, BRZ).'),
(5, 'Honda', 'marcas/hondalogo.png', 'Origen: Japón.\r\nQué tipo de autos hace: Autos fiables, eficientes y duraderos. Muchas berlinas y hatchbacks económicos (Civic), SUVs familiares y una fuerte presencia en híbridos. También es conocida por sus motores de alta calidad.'),
(6, 'Ford', 'marcas/fordlogo.png', 'Origen: Estados Unidos.\r\nQué tipo de autos hace: Especialistas en pickups (como la serie F), SUVs y autos de rendimiento (Mustang). Combina vehículos utilitarios y potentes con versiones híbridas y eléctricas.'),
(7, 'Hyundai', 'marcas/hyundailogo.png', 'Origen: Corea del Sur.\r\nQué tipo de autos hace: Vehículos económicos y confiables, desde compactos hasta SUVs. Fuerte enfoque en tecnología, eficiencia y diseños modernos. También destaca en autos eléctricos (línea Ioniq).'),
(8, 'Daewoo', 'marcas/daewoologo.png', 'Origen: Corea del Sur.\r\n\r\nQué tipo de autos hace: Fabricaba autos económicos, simples y accesibles, orientados principalmente al uso urbano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `version` varchar(50) NOT NULL,
  `tipo_motor` varchar(50) NOT NULL,
  `años_fabricacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`id`, `nombre`, `tipo`, `version`, `tipo_motor`, `años_fabricacion`) VALUES
(2, 'Hyundai Tucson', 'SUV', '4X4', 'Gasolina y Diesel', '2004-2025'),
(3, 'Hyundai Santa Fe', 'SUV mediano', 'Santa Fe Sport', 'Gasolina', '2013-2018'),
(4, 'Ford Fiesta', 'Hatchback', 'Fiesta Titanium', 'Gasolina', '2013-2019'),
(5, 'Ford Ranger', 'Pickup', 'Ranger XLT', 'Diésel', '2012–2021'),
(6, 'Ford Mustang', 'Coupé deportivo', 'Mustang GT', 'Gasolina', '2015–2023'),
(7, 'Honda Civic', 'Sedán/Hatchback', 'Civic EX', 'Gasolina', '2016–2021'),
(8, 'Honda CR-V', 'SUV compacto', 'CR-V Touring', 'Gasolina', '2017–2022'),
(9, 'Honda Accord', 'Sedán mediano', 'Accord Sport', 'Gasolina', '2013–2020'),
(10, 'Toyota Corolla', 'Sedán', 'Corolla LE', 'Gasolina', '2014–2020'),
(11, 'Toyota RAV4', 'SUV compacto', 'RAV4 Adventure', 'Gasolina', '2016–2022'),
(12, 'Toyota Hilux', 'Pickup', 'Hilux SR5', 'Diésel', '2015–2023'),
(13, 'Mitsubishi Lancer', 'Sedán', 'Lancer GT', 'Gasolina', '2008–2017'),
(14, 'Mitsubishi Outlander', 'SUV', 'Outlander GLS', 'Gasolina', '2014–2020'),
(15, 'Mitsubishi Montero', 'SUV todoterreno', 'Montero Limited', 'Diésel', '2006–2021'),
(16, 'Subaru Impreza', 'Hatchback/Sedán', 'Impreza Premium', 'Gasolina', '2012–2019'),
(17, 'Subaru Forester', 'SUV', 'Forester XT', 'Gasolina', '2013–2018'),
(18, 'Subaru Outback', 'Crossover', 'Outback Limited', 'Gasolina', '2015–2022'),
(19, 'Volvo XC60', 'SUV', 'XC60 Momentum', 'Gasolina', '2011–2018'),
(20, 'Volvo V40', 'Hatchback', 'V40 R-Design', 'Gasolina', '2012–2019'),
(21, 'Hyundai Elantra', 'Sedan compacto', 'Elantra GLS', 'Gasolina', '2011–2016'),
(22, 'Daewoo Lanos', 'Sedán/Hatchback compacto', 'Lanos SX', 'Gasolina', '1997–2002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `run` varchar(12) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`run`, `nombre`, `email`, `telefono`) VALUES
('12.458.739-5', 'Sebastián Rivera Seguel', 'sebastian.rivera@vendetuauto.cl', '9 5039 4478'),
('13.520.841-7', 'Pedro Salazar', 'pedro.salazar@vendetuauto.cl', '9 9341 5802'),
('15.839.472-6', 'Bastián Jara Jara', 'bastian.jara@vendetuauto.cl', '9 8412 5037'),
('16.402.891-3', 'Claudio Castro', 'claudio.castro@vendetuauto.cl', '9 7843 1192'),
('16.947.280-9', 'Mateo Andrés Olate', 'mateo.olate@vendetuauto.cl', '9 6220 1334'),
('18.203.915-4', 'Juan Pablo Matamala Pérez', 'juanp.matamala@vendetuauto.cl', '9 7154 9098');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patente` (`patente`),
  ADD KEY `auto_marca_id_5673451c_fk_marca_id` (`marca_id`),
  ADD KEY `auto_modelo_id_b45b15d7_fk_modelo_id` (`modelo_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`run`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auto`
--
ALTER TABLE `auto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auto`
--
ALTER TABLE `auto`
  ADD CONSTRAINT `auto_marca_id_5673451c_fk_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`),
  ADD CONSTRAINT `auto_modelo_id_b45b15d7_fk_modelo_id` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
