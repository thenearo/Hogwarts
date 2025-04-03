-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-04-2025 a las 02:24:14
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
-- Base de datos: `sisnuniversitario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(3, 'Defensa Contra las Artes Oscuras', '2025-04-02 23:47:14', '2025-04-02 23:47:14'),
(4, 'Pociones y Alquimia', '2025-04-02 23:47:34', '2025-04-02 23:47:34'),
(5, 'Adivinación y Estudios Místicos', '2025-04-02 23:48:23', '2025-04-02 23:48:23'),
(6, 'Transformaciones y Metamorfosis', '2025-04-02 23:48:43', '2025-04-02 23:48:43'),
(7, 'Encantamientos y Hechicería Avanzada', '2025-04-02 23:49:07', '2025-04-02 23:49:07'),
(8, 'Historia de la Magia y Runas Antiguas', '2025-04-02 23:49:21', '2025-04-02 23:49:21'),
(9, 'Astronomía Mágica', '2025-04-02 23:49:40', '2025-04-02 23:49:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracions`
--

CREATE TABLE `configuracions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `web` varchar(255) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configuracions`
--

INSERT INTO `configuracions` (`id`, `nombre`, `descripcion`, `direccion`, `telefono`, `email`, `web`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Hogwarts', 'Escuela de Magia y Hechicería', 'Hogsmeade', '69457787', 'libbay123@gmail.com', 'https://www.harrypotter.com/es', 'uploads/logos/1743637516_hogwarts.jpg', '2025-04-02 23:45:16', '2025-04-02 23:45:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestions`
--

CREATE TABLE `gestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `gestions`
--

INSERT INTO `gestions` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'II-2027', '2025-03-31 04:12:02', '2025-03-31 04:12:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carrera_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `carrera_id`, `nombre`, `codigo`, `created_at`, `updated_at`) VALUES
(6, 3, 'Cuidado de Criaturas Mágicas', 'DFO-1', '2025-04-03 00:12:09', '2025-04-03 00:12:09'),
(7, 4, 'Herbología', 'PA-1', '2025-04-03 00:13:20', '2025-04-03 00:13:20'),
(8, 5, 'Adivinación', 'AEM-1', '2025-04-03 00:14:44', '2025-04-03 00:14:44'),
(9, 6, 'Pociones', 'TM-1', '2025-04-03 00:15:32', '2025-04-03 00:15:32'),
(10, 7, 'Encantamientos', 'EHA-1', '2025-04-03 00:16:25', '2025-04-03 00:16:25'),
(11, 8, 'Historia de la Magia', 'HMRA-1', '2025-04-03 00:17:09', '2025-04-03 00:17:09'),
(12, 8, 'Cuidado de Criaturas Mágicas', 'HMRA-1', '2025-04-03 00:19:09', '2025-04-03 00:19:09'),
(13, 9, 'Astronomía', 'AM-1', '2025-04-03 00:19:50', '2025-04-03 00:19:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2025_03_09_205132_create_configuracions_table', 1),
(7, '2025_03_30_205015_create_gestions_table', 1),
(8, '2025_03_30_213510_create_carreras_table', 1),
(9, '2025_03_30_220907_create_nivels_table', 2),
(10, '2025_04_02_002418_create_turnos_table', 3),
(11, '2025_04_02_010315_create_paralelos_table', 3),
(12, '2025_04_02_013254_create_periodos_table', 3),
(13, '2025_04_02_103428_create_materias_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivels`
--

CREATE TABLE `nivels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `nivels`
--

INSERT INTO `nivels` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(2, 'Equivalente Muggle', '2025-04-02 23:51:16', '2025-04-02 23:51:16'),
(3, 'Primaria	1° a 5° año', '2025-04-02 23:51:47', '2025-04-02 23:51:47'),
(4, 'Bachillerato/Preparatoria	6° y 7° año', '2025-04-02 23:52:17', '2025-04-02 23:52:17'),
(5, 'Universidad	Post-Hogwarts', '2025-04-02 23:52:38', '2025-04-02 23:52:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paralelos`
--

CREATE TABLE `paralelos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paralelos`
--

INSERT INTO `paralelos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Casa de Godric Gryffindor', '2025-04-02 23:57:17', '2025-04-02 23:57:17'),
(2, 'Casa de Helga Hufflepuff', '2025-04-02 23:57:36', '2025-04-02 23:57:36'),
(3, 'Casa de Rowena Ravenclaw', '2025-04-02 23:58:00', '2025-04-02 23:58:00'),
(4, 'Casa de Salazar Slytherin', '2025-04-02 23:58:18', '2025-04-02 23:58:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE `periodos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `periodos`
--

INSERT INTO `periodos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, '7:00 AM☀️ Toque de despertador (por los elfos o el sonido de lechuzas)', '2025-04-03 00:01:56', '2025-04-03 00:01:56'),
(2, '7:30 - 8:30 AM	🍳 Desayuno (con platos que aparecen mágicamente)', '2025-04-03 00:02:23', '2025-04-03 00:02:23'),
(3, '9:00 - 11:00 AM	📖 Clase matutina 1 (Ej: Transformaciones con McGonagall)', '2025-04-03 00:02:53', '2025-04-03 00:02:53'),
(4, '11:15 - 1:00 PM	✨ Clase matutina 2 (Ej: Pociones en los calabozos)', '2025-04-03 00:03:16', '2025-04-03 00:03:16'),
(5, '1:00 - 2:00 PM	🥪 Almuerzo (con conversaciones sobre aventuras)', '2025-04-03 00:04:04', '2025-04-03 00:04:04'),
(6, '2:15 - 4:00 PM	🌿 Clase vespertina 1 (Ej: Herbología o Cuidado de Criaturas)', '2025-04-03 00:04:27', '2025-04-03 00:04:27'),
(7, '4:15 - 6:00 PM	🏃 Actividades extracurriculares (Quidditch, clubes, estudio en biblioteca)', '2025-04-03 00:04:46', '2025-04-03 00:04:46'),
(8, '6:00 - 7:30 PM	🍗 Cena (con anuncios del director)', '2025-04-03 00:05:26', '2025-04-03 00:05:26'),
(9, '7:30 - 9:00 PM	📚 Tiempo libre (deberes en la Sala Común o exploración no permitida)', '2025-04-03 00:05:45', '2025-04-03 00:05:45'),
(10, '9:00 PM	🔔 Toque de queda (prefectos vigilan; infracciones restan puntos)', '2025-04-03 00:06:01', '2025-04-03 00:06:01'),
(11, '12:00 AM	🌌 Clase de Astronomía (los días correspondientes)', '2025-04-03 00:06:42', '2025-04-03 00:06:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Mañana', '2025-04-02 23:54:32', '2025-04-02 23:54:32'),
(2, 'Tarde', '2025-04-02 23:55:49', '2025-04-02 23:55:49'),
(3, 'Noche', '2025-04-02 23:56:01', '2025-04-02 23:56:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'EDILBERTO', 'libbay123@gmail.com', NULL, '$2y$12$6RVq0vE0qdrMBaBAYhAGcupHozIaEn0RXgluL6cWBHBMwvpVNa1TO', NULL, '2025-03-31 02:04:41', '2025-03-31 02:04:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracions`
--
ALTER TABLE `configuracions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `gestions`
--
ALTER TABLE `gestions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materias_carrera_id_foreign` (`carrera_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nivels`
--
ALTER TABLE `nivels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paralelos`
--
ALTER TABLE `paralelos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `configuracions`
--
ALTER TABLE `configuracions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gestions`
--
ALTER TABLE `gestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `nivels`
--
ALTER TABLE `nivels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `paralelos`
--
ALTER TABLE `paralelos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
