-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           10.2.3-MariaDB-log - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para community_development
CREATE DATABASE IF NOT EXISTS `community_development` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `community_development`;

-- Copiando estrutura para tabela community_development.ar_internal_metadata
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela community_development.ar_internal_metadata: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
	('environment', 'development', '2019-10-02 11:14:56', '2019-10-02 11:14:56');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;

-- Copiando estrutura para tabela community_development.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `likes_counter` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_images_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_19cd822056` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela community_development.images: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `description`, `likes_counter`, `created_at`, `updated_at`, `picture`, `user_id`) VALUES
	(1, 'Roberto Pinheiro', NULL, '2019-10-02 15:08:51', '2019-10-04 14:28:39', 'thumb_310795.jpg', 3),
	(2, 'Teste 1', NULL, '2019-10-02 15:46:19', '2019-10-04 14:28:09', 'thumb_772374.jpg', 3),
	(3, 'Teste 2', NULL, '2019-10-02 15:46:48', '2019-10-04 14:27:37', 'thumb_dragon_ball_z_goku_aggression_guy_102646_3840x2400.jpg', 3),
	(4, 'Teste 3', NULL, '2019-10-03 03:29:49', '2019-10-04 13:57:24', 'thumb_20638307_1888984101356467_8751415984503632124_n.jpg', 3),
	(7, 'Já estamos usando Bootstrap 4 em Rails', NULL, '2019-10-03 14:34:40', '2019-10-04 13:34:24', 'thumb_super_saiyan_god_super_saiyan_vegeta_by_moxie2d-d8p5oi6.jpg', 3),
	(8, 'Teste 4 - editado', NULL, '2019-10-04 04:40:19', '2019-10-04 13:56:44', 'thumb_Super_Saiyan_God_Super_Saiyan.png', 3),
	(10, 'Teste 5', NULL, '2019-10-04 15:28:22', '2019-10-04 15:28:22', 'thumb_4k-cara-delevingne-wallpaper-download.jpg', 3),
	(11, 'Golf R-400', NULL, '2019-10-06 00:14:06', '2019-10-06 00:14:06', 'thumb_003-volkswagen-golf-r-400-concept-1.jpg', 3),
	(12, 'Golf MK7', NULL, '2019-10-06 00:15:41', '2019-10-06 00:15:41', 'thumb_golf_mk7_by_bitfabio-d7enlwj.png', 3),
	(13, 'Golf R400-2', NULL, '2019-10-06 00:16:35', '2019-10-06 00:16:35', 'thumb_Golf-R400-2.jpeg', 3),
	(14, 'Camaro', NULL, '2019-10-06 00:19:11', '2019-10-06 00:19:11', 'thumb_2015-Chevrolet-Camaro1LE-0241409867051.jpg', 2),
	(15, 'Lamborghini Huracan Perfumante', NULL, '2019-10-06 08:12:11', '2019-10-06 08:13:50', 'thumb_Lamborghini-Huracan-Performante-1.jpg', 3),
	(16, 'Actress Cara Delevingne', NULL, '2019-10-06 08:15:32', '2019-10-06 08:15:32', 'thumb_actress_cara_delevingne-HD.jpg', 3),
	(17, 'Camaro ZI1', NULL, '2019-10-06 08:17:10', '2019-10-06 08:17:10', 'thumb_01-2018-chevrolet-camaro-zl1-1le-fd.jpg', 3),
	(18, 'Teste 6', NULL, '2019-10-06 08:20:54', '2019-10-06 08:20:54', 'thumb_6901.jpg', 3),
	(19, 'Vegito super Saiyan Blue', NULL, '2019-10-06 08:22:03', '2019-10-06 08:22:03', 'vegito-super_saiyan_blue-dbs-1841.jpg', 3),
	(20, 'Dragon Ball - Goku', NULL, '2019-10-06 08:22:55', '2019-10-06 08:22:55', 'thumb_dragon_ball_z_goku_aggression_guy_102646_3840x2400.jpg', 3),
	(22, 'Teste 7', NULL, '2019-10-06 08:27:11', '2019-10-06 08:27:11', 'thumb_772374.jpg', 3),
	(24, 'Teste 8', NULL, '2019-10-06 08:28:50', '2019-10-06 08:28:50', 'thumb_1q9kfh.jpg', 3),
	(25, 'Camaro Hot Wheels', NULL, '2019-10-06 08:29:43', '2019-10-06 08:29:43', 'thumb_00-2012-sema-camaro-hot-wheels.jpg', 3),
	(26, 'Camaro preto', NULL, '2019-10-06 08:30:32', '2019-10-06 08:30:32', 'thumb_chevrolet-camaro_100545024_l.jpg', 3),
	(27, 'Teste 9', NULL, '2019-10-06 08:31:16', '2019-10-06 08:31:16', 'zSEFeY1.jpg', 3),
	(28, 'Teste 10', NULL, '2019-10-06 08:32:31', '2019-10-06 08:32:31', 'thumb_AP_498323543483-1280x720.jpg', 3),
	(29, 'Teste 11', NULL, '2019-10-06 08:33:17', '2019-10-06 08:33:17', 'thumb_2017_00052_01.jpg', 3),
	(30, 'Mustang', NULL, '2019-10-06 08:34:14', '2019-10-06 08:34:14', 'thumb_2018_ford_mustang_gt500_by_jhonconnor-dahvv1y.jpg', 3);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Copiando estrutura para tabela community_development.schema_migrations
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela community_development.schema_migrations: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
	('20191002110347'),
	('20191003172602'),
	('20191005155446'),
	('20191005234349');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;

-- Copiando estrutura para tabela community_development.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela community_development.users: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'palacios.raul02@gmail.com', '$2a$11$GiEe6XMFxqxCYKnhGaIgfOUwGIOn1ngS9NkFm7uTDsEOyyvpOmptq', NULL, NULL, NULL, NULL, '2019-10-05 19:38:58', '2019-10-05 19:38:58'),
	(2, 'emma@gmail.com', '$2a$11$XPa9SCPZygRk0Z.jR7sD7epXVdBYKfyVDModBauKHMj9b0EVnL6La', NULL, NULL, NULL, 'Emma', '2019-10-05 22:35:54', '2019-10-05 22:35:54'),
	(3, 'raulpalacios@gmail.com', '$2a$11$mKF1QWwnTkVfdfU4jy21t.Iu2Mdd0mEQSM5hBSlIyNydmCUkldUmS', NULL, NULL, NULL, 'Raul Palacios', '2019-10-05 22:42:07', '2019-10-05 22:42:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
