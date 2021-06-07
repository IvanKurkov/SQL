#
# TABLE STRUCTURE FOR: communities
#
DROP DATABASE IF EXISTS vk2;
CREATE DATABASE IF NOT EXISTS vk2;
USE vk2;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ФАМ�?Л�?Я',
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` char(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_email_idx` (`email`),
  KEY `users_phone_idx` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('1', 'Efren', 'Hoppe', 'connelly.darrell@example.com', '377.486.301', '96276c497a6931836b2fc553308d34e3820904c2', '2017-09-04 11:03:49');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('2', 'Lila', 'Pollich', 'bashirian.shanna@example.com', '678.564.064', 'ce5f99172424d3274194c13eb90341356ea28aab', '1971-10-09 15:54:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('3', 'Fleta', 'Rodriguez', 'ebailey@example.net', '1-441-449-3', 'ca851ca2758e686ec5bcd9db8653bb1611268f05', '2002-04-15 01:35:54');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('4', 'Simone', 'Miller', 'bogan.geraldine@example.com', '(960)429-94', '784bfb0a367763884823e62204f7308407bd4e75', '1997-12-04 08:34:14');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('5', 'Alejandra', 'Rolfson', 'hilll.samir@example.net', '1-040-765-7', '3dc4ae6fb5ea0ac1a5fc00e3def799b3cb4d0bcd', '2012-11-12 23:08:37');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('6', 'Novella', 'Harvey', 'altenwerth.liza@example.net', '805-834-849', 'a45a9a03b965d7bebca8389b9c05c88a9fb4b914', '1991-07-10 09:13:22');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('7', 'Brandy', 'Ward', 'everette97@example.com', '1-869-335-0', '2475e9f2e19d3d8a41bcfeae0cdad60ccf305bbe', '1987-10-24 12:43:31');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('8', 'Aaron', 'Feest', 'ida75@example.com', '404-169-436', 'd18a04d2b1e06e7de1bea30b5d5280e0620da22c', '1977-06-08 08:10:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('9', 'Fidel', 'Abshire', 'gerlach.reed@example.net', '425.729.777', '6dcaccda90d6e1e2f2296379dcbfbca0a7c1e77e', '2007-03-19 05:35:54');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('10', 'Samara', 'Boyer', 'mathilde.williamson@example.net', '003.397.149', '540c06b826f29a6916473578c1ebea07c66c4806', '1996-09-15 09:03:35');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('11', 'Jettie', 'Haley', 'adela65@example.org', '07023486613', '12e15b1d325eae410cf6c5223ee971f7bbd4b709', '1984-08-23 13:06:05');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('12', 'Arnold', 'Hilpert', 'gulgowski.liliana@example.com', '381-357-739', '6cd37d6985a331cfe15518306d0f119193c8e569', '1981-06-18 16:04:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('13', 'Ara', 'Daugherty', 'bailey.cory@example.com', '744-076-691', '01bfe4922beefab2d2fe3212cb8175e53b626727', '2012-11-12 16:05:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('14', 'Yvonne', 'Considine', 'fay.irma@example.net', '+51(2)18309', '31ac2862cd752babd7fa62f63fe4d4604c03471c', '2012-01-08 00:35:05');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('15', 'Madaline', 'Beahan', 'addison66@example.org', '07378370926', '12d1449cb1941b28f0f5b70beaa9370930631551', '1975-10-27 05:29:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('16', 'Tracey', 'Rogahn', 'mcglynn.donato@example.net', '(678)716-41', '01f5677252bb05d35f1705aa1805153cc5c44030', '1996-09-11 08:25:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('17', 'Devan', 'Prosacco', 'collier.devan@example.net', '08005680118', '8f20e9607de63743f6a9d332f24924210e45a587', '2004-02-12 22:17:30');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('18', 'Evert', 'Barrows', 'ken63@example.net', '+55(0)08734', '2e48638c4f566755c955ddc963b62803cc61a114', '1989-01-27 13:48:07');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('19', 'Jadyn', 'Schultz', 'jboehm@example.com', '281.335.314', '23813d20edd350f9e8aa84d1e41cab32e68b5e41', '2000-01-05 15:11:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('20', 'Ottis', 'Johnston', 'cielo88@example.org', '07959848089', 'ca53b6ecd5feb392e54e0aa4df1eede84e1eba31', '1971-11-27 21:16:14');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('21', 'Royce', 'Auer', 'gilda32@example.com', '465-786-505', '8330e1263732fe17a4e870bdae1a0e37344f7f1c', '1989-10-12 11:16:04');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('22', 'Justice', 'Tremblay', 'veum.mikel@example.org', '1-086-092-0', 'd4b9c3d039a9ff5461568b3057966bfbd40ee405', '1989-07-04 08:10:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('23', 'Travon', 'Feest', 'giovani.fahey@example.org', '149.037.505', 'afb18e3f95b4c0d248d9e7cb38a8a0c64f9b4d38', '1973-03-22 03:59:17');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('24', 'Elizabeth', 'Predovic', 'ufay@example.com', '628-132-132', 'a5b7306d2fba79c4c2d197d3bb004213f5aecf44', '2008-07-18 15:04:43');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('25', 'Sophie', 'Swift', 'christiansen.ivy@example.net', '(251)540-85', 'cb839b4609a408081488e2d98e72c864df0215ec', '2014-12-04 08:10:58');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('26', 'Eulalia', 'Bauch', 'pouros.martin@example.com', '679-828-342', 'e25c18903b656cae943a6e7bc18f476e582e0550', '1997-09-26 16:47:11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('27', 'Jennings', 'Halvorson', 'sonya.flatley@example.com', '1-674-562-6', 'b1ca7c22afb593a39225ccfccef89fd724c39461', '2009-11-05 06:15:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('28', 'Kole', 'Wilderman', 'leif40@example.org', '+28(2)08109', '400a245506b5a6374807be2b94c8fded1c988392', '1995-12-26 17:18:31');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('29', 'Jo', 'McLaughlin', 'carmella.casper@example.com', '1-573-484-8', 'b6273f98ee7f8fe8d9a9478a587884834c29b690', '1997-11-04 13:16:14');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('30', 'Jordane', 'Reilly', 'nannie.nader@example.net', '312.582.574', '30ddaee83f5e4c1da4c644bcb08ecbab22765bd1', '1983-06-18 09:35:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('31', 'Shawn', 'Pfannerstill', 'hettinger.randall@example.com', '(905)288-62', 'ae40a75dc8e86c164ece32bd488d2e5cf810a394', '1994-02-01 21:41:16');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('32', 'Malcolm', 'Gusikowski', 'cormier.xavier@example.org', '906.105.522', 'a8050c4b4ff936b561c5872807026a82278ed75a', '1976-02-26 06:37:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('33', 'Montana', 'Metz', 'o\'keefe.branson@example.org', '03520175934', 'c596a872e9d44677aed5a79d45d6f6d490eb8f53', '1972-02-18 05:17:57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('34', 'June', 'Koss', 'arturo47@example.org', '1-242-583-3', 'ffd68cb153322d2296dcc3db1f5a356c6e7f71d7', '1995-12-18 19:57:01');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('35', 'Kendra', 'Kilback', 'rdouglas@example.org', '186-111-665', '191f99ed938bb8ceb4b7df87230168264172f974', '2005-02-02 11:55:15');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('36', 'Norene', 'Shields', 'miguel12@example.com', '02214271219', 'b52e4bfe2291b6dbaba8f0cc92ced4741a3b547e', '1991-05-09 08:53:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('37', 'Coralie', 'Daugherty', 'iziemann@example.com', '+82(3)24700', '6a526f983568acdcb51ead8f0e8c7dfcf27cca13', '2004-06-15 01:43:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('38', 'Kattie', 'Marvin', 'spinka.katharina@example.net', '08161167835', 'c0d00333fcbfb1ef1e3906e4866145dec6b0e46e', '2001-11-08 21:54:48');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('39', 'Cyrus', 'McDermott', 'shields.haskell@example.net', '(568)206-03', '70c2c8793b49408c2f732bf44d520b52c851ebfc', '2011-06-15 03:41:46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('40', 'Phoebe', 'Hoeger', 'dking@example.net', '089-801-387', 'fe6acd74993f1b2ffaf8a5a30c91de4c7e051597', '1979-02-28 19:29:57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('41', 'Kristy', 'Konopelski', 'juvenal.kerluke@example.org', '1-628-085-3', 'e5fbd7fb7a074f23993c70a2ef3198cfb925069b', '1978-09-15 18:07:26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('42', 'Maida', 'Shanahan', 'ryann05@example.com', '(197)530-36', 'dd4b8f8691e564c4ddca6b314fcc723ec49f4f65', '1988-11-21 01:24:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('43', 'Sonia', 'Hudson', 'ikub@example.org', '+36(7)23051', '89c232f6c169b17a484a4f6a873d1ce77e157fb3', '2018-11-09 03:14:04');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('44', 'Viva', 'Heidenreich', 'lucie48@example.com', '1-289-415-8', 'a29efcabf45ebb998a7f5c819dfb32cf57f0e90c', '1973-07-29 23:40:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('45', 'Vilma', 'Leuschke', 'dpagac@example.org', '699.331.312', '69cf3c40b4b11b18cf124ed3063145cfbd9f297d', '1982-09-06 02:48:12');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('46', 'Celestino', 'Braun', 'mohammed.gibson@example.org', '(420)531-39', '50cdf901b16f74c13e067f70422833df2b1bc05c', '2006-10-29 04:16:46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('47', 'Delilah', 'Jones', 'bailey.kadin@example.org', '944.573.383', 'cbff61e713535652f0d47e0fdbbafa7a73d658b6', '1999-08-26 08:25:52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('48', 'Bernadette', 'Mitchell', 'rosanna72@example.net', '(907)787-07', '2030d68d18c201686955ee5f418efe26af92a23a', '1981-02-14 15:58:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('49', 'Ari', 'Parisian', 'finn.barton@example.com', '(161)762-91', '5ce399682efc62ba5b02308213aad6d94c5db998', '2013-11-28 18:37:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('50', 'Hilario', 'Wolff', 'urippin@example.com', '992.043.612', '96e4f425670a030fe4c3da7d326d99be2a13c2f1', '2001-03-04 09:19:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('51', 'Garry', 'Carter', 'sandrine20@example.com', '938-404-393', '0c561a468d2ae6dbc5f81dc2ef847705fd10d1cb', '2008-07-17 19:27:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('52', 'Kathryn', 'Senger', 'lamar.kovacek@example.com', '+05(7)66460', 'f0bb9f2339e4aa09ed474aebaf5e19a49cc31678', '2012-05-03 05:22:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('53', 'Valentine', 'O\'Hara', 'jschaefer@example.net', '457-262-017', '054ab20d4ca97f4c848435f487a3ce2a2f0fcd89', '2012-07-29 23:36:27');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('54', 'Teagan', 'Schneider', 'bmcglynn@example.org', '324.331.233', '73cfba21cfe83e2feda9989d4b77570f27f70ce6', '1979-02-19 19:42:57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('55', 'Samson', 'Roob', 'cdouglas@example.org', '1-028-176-7', '9b858641c76a2d4e00ff207e9decbdd96b5d5ec3', '1971-06-26 05:38:39');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('56', 'Clarissa', 'Wisozk', 'owilkinson@example.com', '(274)226-50', 'abb1f4c8c8f4b7d1dfe73067a717c1f7fc78f9eb', '1996-08-27 21:41:46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('57', 'Kathryne', 'Hudson', 'vleannon@example.com', '(090)618-33', '1c9d5455cc4dbc643ec956f45172813fbdf67ec3', '2007-05-30 03:03:57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('58', 'Hertha', 'Rempel', 'kristian14@example.net', '062-976-736', 'c336ef678110f2a1100f5cafb486a804ae54828f', '1997-08-19 12:58:06');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('59', 'Cortney', 'Olson', 'leonel59@example.com', '03746832135', '9e5328379af8aa9fa74a7a8ec6003bef15072892', '1974-08-04 02:28:21');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('60', 'Rosalind', 'Ankunding', 'florida35@example.com', '1-598-870-2', '09645735c07473e562ad0f4ccfd59a9546173ee6', '1980-11-10 13:30:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('61', 'Lori', 'McDermott', 'amelie.jaskolski@example.com', '1-930-808-0', '8d8301ae4a621193ab8ea1ccfd8e62b2d1453a09', '1986-09-13 15:48:02');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('62', 'Vance', 'Jones', 'loyce.bechtelar@example.net', '1-602-585-2', 'b936319677ccca9a892aa50dafaa940b27b0a592', '2004-01-29 09:54:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('63', 'Corrine', 'Tremblay', 'zherman@example.net', '1-322-509-7', '53da40a51d35a5122f9b5201fb517a696b4f5cc3', '2020-09-04 17:02:23');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('64', 'Kian', 'Murphy', 'jerrold40@example.org', '763-506-273', 'fd7849cb8c485cbbe770f4d5000e81f830362f4c', '2001-03-13 09:19:15');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('65', 'Marcelina', 'Schimmel', 'dspencer@example.org', '01374180369', '4f8ec449f6bb0bdee80e97651980fde28558bdc1', '1992-11-18 16:42:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('66', 'Florine', 'Frami', 'wskiles@example.com', '481.843.712', '590fb6c9be335d490a083cad807807e18532aa2b', '2014-01-21 22:59:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('67', 'Amara', 'Cremin', 'powlowski.augusta@example.com', '1-448-221-8', '147fe23edb00d531e3101492d5edc1c1a79c8348', '2019-08-22 16:12:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('68', 'Elwyn', 'Stroman', 'lakin.van@example.org', '356.423.128', 'c1bcbf6411550b7a018c892fd6c4e61b7471ee7a', '1996-06-17 23:38:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('69', 'Ezequiel', 'Littel', 'tatyana45@example.org', '(094)684-71', '81c4b1c54ead71670815679bd841f34a13c76a18', '2009-03-12 18:49:39');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('70', 'Kirsten', 'Abernathy', 'psmith@example.com', '1-007-646-9', '4196251b7c658b932d096c0163988364ce74ebe9', '1991-06-14 04:00:35');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('71', 'Guadalupe', 'Waters', 'madie.brown@example.com', '933.641.719', '392b417338b52072822668a97ac7ff212806c084', '1981-11-18 21:04:47');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('72', 'Vidal', 'Berge', 'gutkowski.micah@example.net', '(194)647-67', 'b45cb4acae14a0f9b3e74cbae4149efefa45e590', '2015-09-23 23:35:59');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('73', 'Kristian', 'Grimes', 'ljakubowski@example.net', '1-925-056-2', 'd45cf0065b6f613490d6c36e1cce048d422777bb', '1985-03-25 03:09:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('74', 'Darryl', 'Hettinger', 'geraldine.rosenbaum@example.com', '+65(0)37997', '8db30dd975f9d8ed90cc2a479b8880f365804f1b', '2005-01-13 16:29:46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('75', 'Kaleb', 'Jones', 'dmoen@example.net', '1-083-944-0', '7f24496be69e35ccca092b9636c4d05b1e36b653', '2017-01-02 17:36:57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('76', 'Kip', 'Towne', 'dallas99@example.org', '(530)571-94', 'e524b8c5c6d9c75d6c7764fc61232a7287877841', '1989-03-18 06:24:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('77', 'Shaylee', 'Davis', 'waino01@example.org', '07134442899', 'f8e444ef6fff372c1648c6b5fd733abd5e63b6af', '1978-12-23 15:35:40');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('78', 'Domenic', 'Kemmer', 'ara.dubuque@example.net', '480.582.128', '02107d2eefea9d3f1ef7da531ed317a4b6813e76', '1981-07-30 01:18:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('79', 'Chauncey', 'Breitenberg', 'layne.considine@example.net', '177.785.159', '866e43cf96f30137cbded1261f4fb22bc542ade2', '1985-12-12 14:07:24');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('80', 'Sydnee', 'Hilpert', 'ulittel@example.org', '089.644.487', 'a8b5dfae03bbba93f0e85ac9d5544c3989d72d70', '1985-05-04 01:33:02');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('81', 'Lauretta', 'Pollich', 'kayla81@example.net', '(764)705-61', 'ddfcace95d2408c2448f413a23a931c823edf8b0', '1976-05-23 22:21:23');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('82', 'Raina', 'Hauck', 'volkman.maximillia@example.net', '(439)481-71', '1f14dfac0afd84db2340202f0db0afe5d1e1d723', '2017-02-10 12:37:45');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('83', 'Chase', 'Upton', 'uyost@example.org', '468.851.081', '3a397f9374d34f5120d0024ae94992ff09379c58', '1974-01-06 02:14:15');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('84', 'Linda', 'Medhurst', 'cheaney@example.net', '(350)760-53', '5ca7e5bb76459c8abf664edcc69403b47b300cea', '1980-09-06 22:31:22');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('85', 'Marlee', 'Dare', 'roosevelt.schowalter@example.org', '(024)688-44', 'b931382ca736ff8a720ce4984f0339e5550cc658', '2010-05-18 22:54:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('86', 'Bradford', 'Gusikowski', 'zella03@example.org', '805.629.514', '1809d636bf37c6dec9a619f67090ad1e2e712f2d', '1977-12-06 04:47:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('87', 'Camren', 'Moore', 'mharber@example.com', '(754)031-45', 'e6f5804148194c1bfc2ae0f789f7e40e1105911e', '1970-01-29 06:44:52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('88', 'Shania', 'Metz', 'hermiston.veda@example.net', '297-399-193', '8588a234701f76b9397772b1b1b2111a733b4b38', '1976-03-15 04:42:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('89', 'Mattie', 'Christiansen', 'antonina22@example.com', '312-936-269', 'd33f7bab916beffa630b994d5f81e69dd7224335', '2016-12-18 18:10:40');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('90', 'Vaughn', 'Senger', 'block.emil@example.org', '098-603-936', '3faaa91f86c770a96340d5d1135b12edd2de0df5', '2010-12-18 18:09:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('91', 'Anya', 'Collins', 'ukiehn@example.org', '+04(1)93557', '0e9ebb3b2c87b02535419dcbce71bd31b40aaec6', '1997-07-09 23:58:35');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('92', 'Zelda', 'Rosenbaum', 'betsy04@example.net', '602.269.800', 'f07c67b854a8e9e8128e8ccdd35020ba42889c4b', '2013-07-15 08:44:04');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('93', 'Danika', 'Bergstrom', 'modesta47@example.com', '(250)287-30', '0abc80e8184354d5b4d402e0f892af45a520f321', '1991-07-17 18:40:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('94', 'Antwon', 'Wiza', 'mervin.greenholt@example.com', '+52(4)66519', '370966588815553bfea211d3b6633f2118fc542c', '1982-07-10 12:07:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('95', 'Araceli', 'Hegmann', 'walter75@example.org', '+19(0)98315', '03a55ca705899d9778a42dc171bc63eec32d55af', '1991-12-28 21:38:43');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('96', 'Colleen', 'Hilpert', 'sawayn.verda@example.com', '02386718390', '9f17ff72022fe5e07956d687744d393f36024561', '1986-03-30 08:17:15');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('97', 'Eugene', 'Klocko', 'jswift@example.com', '+19(0)75067', '242e2733eca7f096e4ac581de9dc0235b004d046', '1975-11-12 21:52:27');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('98', 'Kevon', 'Kiehn', 'viola93@example.com', '423.304.172', '2b44ede7fbbfb0a6216dcbe91956be2ac3d9aea4', '1999-04-03 16:22:11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('99', 'Dortha', 'Conroy', 'abechtelar@example.org', '907.665.907', 'def573a2d90ebcb549620760a9168391400ad36e', '2006-04-10 11:33:54');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('100', 'Okey', 'Durgan', 'waylon.bernhard@example.org', '327.940.270', '2a05a0e70fec0672a91909524ffb39c13536ea66', '1973-06-16 10:10:08');




DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `communities_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`community_id`,`user_id`),
  KEY `communities_users_comm_idx` (`community_id`),
  KEY `communities_users_users_idx` (`user_id`),
  CONSTRAINT `communities_users_ibfk_1` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `communities_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: friend_requests
#

DROP TABLE IF EXISTS `friend_requests`;

CREATE TABLE `friend_requests` (
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `accepted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`from_user_id`,`to_user_id`),
  KEY `fk_friend_requests_from_user_idx` (`from_user_id`),
  KEY `fk_friend_requests_to_user_idx` (`to_user_id`),
  CONSTRAINT `fk_friend_requests_users_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friend_requests_users_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('1', '57', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('1', '66', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('2', '21', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('2', '80', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('3', '38', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('3', '54', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('4', '39', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('7', '58', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('7', '73', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('9', '41', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('11', '35', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('16', '58', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('17', '7', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('17', '46', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('18', '2', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('18', '36', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('18', '50', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('19', '100', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('21', '17', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('21', '48', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('25', '70', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('25', '72', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('26', '25', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('26', '35', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('27', '11', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('29', '86', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('29', '91', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('31', '54', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('32', '26', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('33', '77', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('35', '68', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('39', '10', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('39', '51', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('40', '14', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('40', '61', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('41', '27', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('41', '28', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('44', '25', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('44', '55', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('45', '86', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('45', '100', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('47', '93', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('49', '20', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('53', '60', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('54', '4', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('55', '68', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('57', '27', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('57', '66', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('58', '79', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('60', '7', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('61', '58', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('62', '23', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('62', '41', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('63', '51', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('64', '34', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('65', '80', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('65', '83', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('66', '33', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('66', '51', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('67', '50', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('67', '92', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('68', '10', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('68', '29', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('68', '89', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('69', '72', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('70', '18', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('70', '60', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('73', '62', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('74', '23', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('76', '5', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('76', '90', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('77', '78', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('77', '100', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('78', '10', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('78', '50', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('78', '63', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('80', '79', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('81', '4', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('82', '74', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('83', '33', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('84', '86', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('85', '58', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('87', '78', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('88', '38', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('90', '65', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('91', '94', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('92', '28', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('93', '78', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('94', '32', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('94', '40', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('95', '61', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('95', '79', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('98', '16', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('98', '69', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('100', '28', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('100', '53', 0);
INSERT INTO `friend_requests` (`from_user_id`, `to_user_id`, `accepted`) VALUES ('100', '84', 0);


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'accusantium');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'animi');
INSERT INTO `media_types` (`id`, `name`) VALUES (4, 'enim');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'praesentium');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_types_id` int(10) unsigned NOT NULL,
  `file_name` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '/files/folder/img.png',
  `file_size` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `media_users_idx` (`user_id`),
  KEY `media_media_types_idx` (`media_types_id`),
  CONSTRAINT `fk_media_media_types` FOREIGN KEY (`media_types_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `fk_media_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('1', '1', 1, 'sint', '270007438', '1979-09-05 21:38:40');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('2', '2', 2, 'quod', '0', '2008-08-15 07:22:24');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('3', '3', 3, 'praesentium', '8895894', '1974-07-23 16:20:57');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('4', '4', 4, 'maiores', '3518', '1997-07-23 19:27:37');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('5', '5', 1, 'officia', '341', '1982-12-06 03:28:06');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('6', '6', 2, 'vel', '56', '2013-10-15 00:45:04');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('7', '7', 3, 'id', '7272744', '2021-03-25 03:51:46');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('8', '8', 4, 'quo', '68367478', '1987-03-27 13:23:31');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('9', '9', 1, 'voluptates', '235448306', '2002-02-16 00:09:22');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('10', '10', 2, 'aperiam', '2', '2001-09-11 14:07:56');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('11', '11', 3, 'soluta', '78459', '1989-03-15 01:33:31');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('12', '12', 4, 'impedit', '7', '1986-09-02 01:43:59');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('13', '13', 1, 'aut', '963291560', '1984-08-19 06:17:33');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('14', '14', 2, 'labore', '94281', '1990-04-22 21:16:03');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('15', '15', 3, 'adipisci', '43', '2011-11-24 13:38:12');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('16', '16', 4, 'cumque', '9241516', '1979-07-02 01:17:41');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('17', '17', 1, 'earum', '9997', '1988-07-10 10:37:01');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('18', '18', 2, 'qui', '5129376', '2018-04-23 13:05:30');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('19', '19', 3, 'nulla', '789694310', '1988-06-28 20:54:46');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('20', '20', 4, 'blanditiis', '858830718', '1973-08-07 22:44:12');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('21', '21', 1, 'sunt', '2947', '2020-07-29 15:11:40');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('22', '22', 2, 'quia', '59344', '1978-08-06 13:12:44');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('23', '23', 3, 'dolore', '20', '1970-07-29 02:59:03');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('24', '24', 4, 'et', '2', '2018-09-23 16:44:49');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('25', '25', 1, 'perspiciatis', '798693', '2010-10-18 23:49:09');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('26', '26', 2, 'quidem', '2', '1971-07-08 01:49:08');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('27', '27', 3, 'quis', '670293', '1978-01-19 21:35:42');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('28', '28', 4, 'dolores', '580', '1978-12-26 01:46:07');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('29', '29', 1, 'voluptatem', '5219', '1971-07-01 02:11:20');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('30', '30', 2, 'eum', '79717', '1973-06-08 07:08:13');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('31', '31', 3, 'est', '2', '2006-06-17 23:39:02');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('32', '32', 4, 'ad', '47', '1978-07-09 22:28:39');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('33', '33', 1, 'officia', '7', '2010-07-14 21:55:31');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('34', '34', 2, 'nihil', '708', '2004-03-15 02:16:36');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('35', '35', 3, 'possimus', '0', '1997-09-26 08:35:04');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('36', '36', 4, 'excepturi', '238118', '2014-01-23 01:11:56');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('37', '37', 1, 'inventore', '536513139', '2017-08-19 19:05:21');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('38', '38', 2, 'non', '65190971', '1997-08-06 15:17:42');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('39', '39', 3, 'illo', '24', '1991-12-15 17:42:36');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('40', '40', 4, 'dolorum', '5', '1984-07-10 20:39:06');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('41', '41', 1, 'saepe', '832171', '1971-02-11 04:30:38');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('42', '42', 2, 'in', '35677361', '1971-05-27 03:26:27');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('43', '43', 3, 'quos', '60681408', '1985-11-26 04:12:23');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('44', '44', 4, 'sint', '0', '1980-09-13 18:34:46');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('45', '45', 1, 'eius', '533', '2016-07-25 01:07:50');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('46', '46', 2, 'id', '19942868', '1989-08-14 12:37:36');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('47', '47', 3, 'impedit', '84895', '2013-01-24 03:36:12');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('48', '48', 4, 'illum', '0', '1978-01-12 22:12:45');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('49', '49', 1, 'necessitatibus', '38743071', '1999-06-22 13:27:07');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('50', '50', 2, 'totam', '86', '2013-09-17 22:25:35');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('51', '51', 3, 'fuga', '8', '2015-03-31 02:10:41');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('52', '52', 4, 'a', '243684', '1987-04-24 02:54:55');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('53', '53', 1, 'perferendis', '742591937', '1976-07-05 05:33:18');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('54', '54', 2, 'dolores', '733', '1996-03-12 01:12:31');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('55', '55', 3, 'exercitationem', '3', '1977-07-21 17:39:11');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('56', '56', 4, 'sunt', '44', '1974-09-06 13:20:22');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('57', '57', 1, 'fugit', '72568659', '1988-11-21 13:49:44');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('58', '58', 2, 'vitae', '1819', '1992-06-04 20:10:19');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('59', '59', 3, 'sit', '61', '1998-10-13 19:22:23');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('60', '60', 4, 'qui', '0', '2002-09-13 16:32:08');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('61', '61', 1, 'earum', '0', '2002-08-01 00:29:31');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('62', '62', 2, 'ut', '0', '1973-07-28 09:12:36');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('63', '63', 3, 'pariatur', '9904', '2013-04-11 01:19:36');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('64', '64', 4, 'ut', '2096', '1986-05-03 21:02:32');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('65', '65', 1, 'ut', '250', '2009-01-30 00:51:10');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('66', '66', 2, 'veritatis', '72653', '1974-10-05 19:05:26');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('67', '67', 3, 'voluptates', '314041807', '1984-07-16 01:16:53');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('68', '68', 4, 'omnis', '6965', '2015-01-19 23:05:24');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('69', '69', 1, 'quibusdam', '217338', '1993-01-27 06:06:22');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('70', '70', 2, 'consequatur', '5623698', '2005-03-03 18:42:55');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('71', '71', 3, 'odio', '689532724', '1996-09-27 04:51:59');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('72', '72', 4, 'enim', '0', '2005-06-05 19:36:47');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('73', '73', 1, 'delectus', '0', '2016-12-21 09:18:12');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('74', '74', 2, 'dolores', '8', '2008-04-15 12:41:29');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('75', '75', 3, 'impedit', '582254', '2010-09-16 04:38:16');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('76', '76', 4, 'ab', '58473', '1988-06-09 11:26:36');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('77', '77', 1, 'qui', '744964', '2008-03-23 14:59:55');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('78', '78', 2, 'doloribus', '55261627', '1986-11-06 13:08:50');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('79', '79', 3, 'neque', '6015198', '2020-02-17 11:44:52');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('80', '80', 4, 'quod', '1', '1981-06-02 16:25:00');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('81', '81', 1, 'et', '91108', '2004-11-11 09:51:49');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('82', '82', 2, 'corporis', '8559', '2008-02-08 02:30:20');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('83', '83', 3, 'quidem', '99235', '1974-12-06 07:03:00');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('84', '84', 4, 'officia', '3', '2002-05-04 04:55:22');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('85', '85', 1, 'sint', '237', '2005-08-20 18:05:08');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('86', '86', 2, 'omnis', '65129', '2019-01-06 14:32:44');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('87', '87', 3, 'quis', '570779', '1992-08-01 22:57:28');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('88', '88', 4, 'pariatur', '3326', '1995-05-09 01:39:22');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('89', '89', 1, 'autem', '70', '1986-08-23 16:06:17');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('90', '90', 2, 'repellendus', '42108', '1980-04-19 21:27:48');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('91', '91', 3, 'molestias', '64', '1974-07-05 20:53:33');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('92', '92', 4, 'expedita', '0', '1973-04-11 19:26:21');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('93', '93', 1, 'consequatur', '99118200', '1971-07-10 10:41:29');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('94', '94', 2, 'illo', '985735', '1992-05-01 15:23:05');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('95', '95', 3, 'ratione', '68895', '1993-01-02 08:34:06');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('96', '96', 4, 'itaque', '290119', '1980-04-18 05:44:31');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('97', '97', 1, 'deleniti', '21870644', '1982-06-22 09:30:14');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('98', '98', 2, 'libero', '6', '1976-12-16 18:19:25');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('99', '99', 3, 'excepturi', '30', '1982-05-10 03:13:23');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('100', '100', 4, 'nisi', '38313', '2002-07-23 07:29:48');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `txt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delivered` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `fk_messages_from_user_idx` (`from_user_id`),
  KEY `fk_messages_to_user_idx` (`to_user_id`),
  CONSTRAINT `fk_messages_users_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_messages_users_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('1', '40', '40', 'necessitatibus', 1, '1982-02-13 03:53:23', '1979-02-10 15:40:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('2', '1', '70', 'expedita', 1, '1979-11-10 11:48:10', '1973-05-25 11:10:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('3', '46', '42', 'debitis', 0, '2010-03-10 05:44:14', '1995-02-10 20:36:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('4', '1', '95', 'rerum', 0, '1973-05-09 05:58:58', '2012-01-15 01:58:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('5', '97', '54', 'distinctio', 0, '1990-12-20 01:39:35', '1986-07-21 15:40:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('6', '78', '74', 'aspernatur', 0, '1978-01-05 17:01:22', '1990-04-23 07:53:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('7', '65', '100', 'nihil', 0, '1979-12-22 20:42:27', '1991-07-03 03:14:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('8', '26', '88', 'et', 0, '1976-05-14 01:45:21', '2007-01-27 22:08:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('9', '48', '88', 'sapiente', 1, '1986-11-10 15:55:08', '1987-01-19 17:13:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('10', '14', '61', 'neque', 0, '1972-02-06 03:23:22', '2014-11-21 17:13:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('11', '49', '1', 'non', 0, '2002-12-14 20:38:38', '2016-02-17 06:01:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('12', '58', '37', 'ut', 0, '1975-09-23 06:04:12', '1979-01-21 13:00:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('13', '90', '83', 'unde', 1, '2002-06-13 15:57:57', '1976-04-24 16:59:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('14', '71', '19', 'expedita', 0, '2013-12-19 00:31:50', '1983-05-11 06:27:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('15', '73', '44', 'in', 1, '2006-08-30 18:46:16', '1980-04-13 01:39:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('16', '45', '13', 'voluptas', 1, '1984-10-28 10:49:35', '2012-10-15 02:54:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('17', '84', '46', 'nam', 0, '1992-06-20 23:41:05', '2006-10-10 12:53:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('18', '82', '30', 'quam', 0, '1999-12-08 05:37:50', '1990-07-10 15:02:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('19', '87', '83', 'perspiciatis', 0, '1986-08-21 18:13:41', '1984-10-03 17:06:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('20', '24', '84', 'dicta', 0, '2014-04-27 09:57:08', '2016-08-02 02:06:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('21', '36', '2', 'est', 1, '1976-04-30 18:14:58', '1970-11-28 18:48:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('22', '58', '1', 'impedit', 1, '1971-07-05 09:54:55', '1972-05-01 14:05:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('23', '1', '83', 'in', 1, '1977-07-29 06:00:50', '1977-08-18 13:49:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('24', '88', '49', 'veniam', 1, '2004-03-27 02:20:46', '2014-04-18 07:27:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('25', '71', '2', 'consectetur', 0, '1993-03-23 06:48:34', '2016-01-01 18:19:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('26', '9', '19', 'minus', 1, '2002-10-14 04:47:57', '1975-12-10 12:14:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('27', '2', '67', 'mollitia', 1, '1988-07-12 01:32:53', '1997-08-13 01:52:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('28', '56', '92', 'amet', 0, '2016-06-19 10:51:36', '2011-10-15 10:10:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('29', '50', '27', 'est', 0, '2001-08-14 00:14:55', '1972-05-16 04:58:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('30', '11', '22', 'aut', 1, '2021-02-12 20:41:47', '2019-01-05 08:10:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('31', '71', '55', 'qui', 1, '2008-06-16 15:47:39', '2018-10-01 02:35:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('32', '34', '54', 'nihil', 1, '2007-03-16 04:00:36', '2020-11-30 22:52:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('33', '100', '16', 'dolorem', 1, '1998-04-05 06:38:52', '1983-12-20 20:38:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('34', '83', '87', 'tempore', 0, '1984-12-27 17:46:09', '1979-06-27 07:51:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('35', '98', '7', 'voluptatem', 1, '2002-07-31 15:24:47', '1990-10-05 14:37:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('36', '70', '34', 'modi', 0, '2000-04-25 01:52:51', '1977-04-27 05:42:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('37', '8', '28', 'sed', 0, '2005-04-19 16:54:04', '1998-05-31 02:21:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('38', '34', '9', 'rerum', 1, '2010-08-02 15:27:29', '1996-03-13 12:43:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('39', '10', '22', 'est', 1, '1974-08-14 11:59:46', '1994-08-03 10:28:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('40', '58', '81', 'voluptatem', 1, '1980-01-09 00:21:00', '1993-11-15 07:04:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('41', '23', '66', 'quo', 1, '1988-10-22 03:08:46', '1999-09-02 22:44:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('42', '99', '25', 'vero', 1, '1993-10-25 20:32:02', '1990-03-06 06:18:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('43', '32', '55', 'doloribus', 1, '1972-05-27 10:12:15', '1974-01-12 17:36:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('44', '16', '82', 'commodi', 0, '2012-03-26 11:59:24', '2012-10-05 10:38:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('45', '81', '27', 'alias', 0, '1990-11-03 14:55:28', '1988-05-04 11:17:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('46', '3', '51', 'expedita', 1, '1975-01-02 08:23:04', '2015-08-02 20:01:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('47', '81', '37', 'id', 0, '1987-08-14 00:14:49', '1975-02-01 16:57:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('48', '5', '81', 'vitae', 0, '2012-11-07 23:29:56', '1980-06-04 17:35:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('49', '52', '87', 'corporis', 1, '1996-01-13 03:20:19', '2011-09-19 18:42:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('50', '68', '50', 'id', 0, '1976-06-04 09:53:27', '2013-02-11 18:34:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('51', '93', '38', 'excepturi', 1, '1980-06-11 23:27:31', '1980-05-22 19:30:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('52', '83', '1', 'esse', 0, '1987-03-23 10:47:55', '1985-09-17 09:08:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('53', '65', '17', 'optio', 0, '1985-03-19 07:33:31', '2017-01-03 07:22:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('54', '10', '75', 'ex', 1, '2019-12-29 01:09:39', '1995-04-17 03:28:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('55', '38', '67', 'quisquam', 0, '2015-10-10 21:33:45', '1989-12-21 09:27:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('56', '55', '60', 'et', 0, '2010-06-06 21:15:58', '2004-12-31 03:34:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('57', '33', '54', 'sed', 0, '1980-07-22 06:08:05', '1977-09-16 18:24:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('58', '84', '65', 'labore', 1, '2002-01-26 13:36:17', '1982-05-22 08:11:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('59', '8', '100', 'atque', 1, '2007-06-06 02:12:37', '1991-04-23 13:48:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('60', '46', '89', 'nam', 1, '1980-12-11 15:48:28', '1971-05-04 19:24:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('61', '26', '48', 'doloribus', 1, '1976-01-05 20:23:57', '1993-12-26 03:04:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('62', '39', '7', 'labore', 1, '1971-06-05 10:37:33', '2002-07-20 07:20:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('63', '85', '44', 'autem', 0, '1994-04-27 05:14:26', '2020-10-11 21:15:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('64', '88', '36', 'corporis', 1, '1980-02-21 19:31:30', '2011-07-21 06:51:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('65', '30', '56', 'illum', 0, '2015-08-14 14:14:48', '1971-03-21 11:44:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('66', '85', '23', 'blanditiis', 0, '2003-05-14 00:15:03', '1995-03-18 14:01:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('67', '93', '68', 'soluta', 0, '1984-07-19 05:41:21', '2006-08-23 01:49:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('68', '24', '58', 'dignissimos', 0, '2019-09-11 10:48:48', '1974-11-27 22:59:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('69', '84', '34', 'unde', 1, '1974-02-16 05:43:12', '2018-06-25 10:16:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('70', '32', '21', 'non', 0, '2016-12-14 05:37:30', '2012-10-04 03:22:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('71', '1', '87', 'voluptatem', 1, '1971-04-25 05:16:33', '2008-09-03 22:56:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('72', '80', '33', 'ut', 1, '1984-11-02 04:00:32', '1997-03-16 12:52:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('73', '40', '64', 'aspernatur', 1, '1971-07-14 12:05:22', '1971-11-02 23:22:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('74', '97', '48', 'sint', 1, '1990-01-18 04:43:36', '2007-03-11 06:52:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('75', '64', '43', 'aut', 1, '2015-07-22 05:26:17', '1984-05-14 11:23:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('76', '36', '90', 'nesciunt', 0, '2010-05-22 11:05:08', '1993-02-14 20:13:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('77', '91', '75', 'molestiae', 1, '2013-09-08 05:48:54', '1985-08-12 11:00:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('78', '96', '75', 'animi', 1, '1998-12-06 00:45:21', '1986-03-08 07:06:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('79', '18', '84', 'consequatur', 1, '1989-12-14 07:42:00', '1995-10-27 08:38:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('80', '10', '48', 'exercitationem', 0, '1999-06-28 09:21:30', '2008-05-06 06:38:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('81', '40', '95', 'qui', 1, '1985-10-10 12:54:09', '1996-04-23 01:35:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('82', '70', '33', 'ea', 0, '1972-04-14 21:52:53', '1990-01-12 06:27:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('83', '62', '94', 'eum', 0, '2016-09-29 12:37:14', '2017-10-21 09:36:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('84', '90', '45', 'praesentium', 0, '2016-06-09 14:31:09', '2008-11-25 09:14:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('85', '27', '22', 'molestias', 0, '1970-01-06 21:39:41', '1975-11-05 21:09:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('86', '66', '27', 'non', 1, '2011-10-10 11:17:13', '1994-12-05 03:36:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('87', '9', '46', 'nihil', 1, '1970-12-28 17:47:25', '2007-12-30 05:42:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('88', '60', '49', 'cum', 0, '1985-08-17 20:25:44', '1971-04-06 12:45:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('89', '9', '57', 'sit', 0, '1993-09-18 05:33:47', '1980-01-01 11:39:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('90', '96', '72', 'et', 0, '1997-06-08 04:44:24', '1983-02-10 12:51:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('91', '99', '32', 'quo', 1, '1982-11-25 16:54:30', '2019-07-21 10:40:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('92', '62', '89', 'et', 1, '1976-06-21 04:59:38', '1985-05-18 06:54:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('93', '7', '58', 'et', 0, '2017-07-29 17:46:25', '1994-02-09 15:12:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('94', '63', '24', 'qui', 1, '1998-04-10 22:54:31', '1973-05-18 11:44:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('95', '41', '73', 'tempore', 0, '1982-03-23 14:01:07', '1977-12-08 01:15:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('96', '72', '81', 'necessitatibus', 0, '2010-10-05 07:03:43', '2019-03-16 05:38:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('97', '67', '42', 'voluptas', 1, '1974-06-03 03:11:51', '1993-11-09 16:52:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('98', '13', '29', 'aut', 1, '1971-01-28 22:13:10', '1986-11-12 15:11:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('99', '35', '2', 'deleniti', 0, '1980-01-15 09:14:48', '1991-12-17 22:04:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('100', '74', '62', 'numquam', 0, '1991-08-07 05:50:01', '1982-02-25 14:37:33');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `gender` enum('f','m','x') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date NOT NULL,
  `photo_id` int(10) unsigned DEFAULT NULL,
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('1', 'm', '1998-04-28', 1, 'Parkerburgh', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('2', 'm', '2016-08-15', 2, 'Lake Lillaville', '481902689');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('3', 'f', '1981-01-24', 3, 'Langburgh', '13332');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('4', 'x', '1973-11-20', 4, 'New Trace', '78465807');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('5', 'x', '2008-07-31', 5, 'Jeannemouth', '77124334');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('6', 'x', '2000-12-11', 6, 'West Zulaport', '44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('7', 'f', '1995-07-04', 7, 'New Jamesonmouth', '78');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('8', 'x', '2006-10-29', 8, 'West Bessiestad', '9573');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('9', 'm', '1990-06-30', 9, 'Gleasonborough', '912090');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('10', 'f', '2014-08-13', 10, 'West Pricebury', '26482913');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('11', 'm', '1998-09-21', 11, 'Kaiaside', '17304');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('12', 'm', '1983-06-29', 12, 'Port Abrahamburgh', '435848');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('13', 'x', '1993-01-13', 13, 'New Luz', '2153751');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('14', 'm', '1991-09-03', 14, 'Caspershire', '69051134');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('15', 'm', '1975-08-03', 15, 'New Janelle', '6994');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('16', 'x', '1999-11-02', 16, 'Sammieborough', '76826597');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('17', 'f', '1997-11-05', 17, 'Kilbackberg', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('18', 'f', '2007-12-03', 18, 'Hoegerfurt', '70259');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('19', 'f', '2010-12-01', 19, 'South Merlinport', '739');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('20', 'm', '1987-02-17', 20, 'Koelpinburgh', '1789267');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('21', 'f', '1970-10-24', 21, 'Earlland', '3318');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('22', 'm', '2003-08-02', 22, 'Mohrland', '2688');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('23', 'm', '2008-08-23', 23, 'West Blazemouth', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('24', 'x', '2009-07-13', 24, 'New Cierra', '5318');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('25', 'x', '2000-05-26', 25, 'North Wymanton', '290');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('26', 'x', '1976-03-24', 26, 'Port Bennyhaven', '8');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('27', 'f', '1983-09-14', 27, 'Ziemannside', '52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('28', 'm', '1980-07-18', 28, 'New Issac', '506034763');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('29', 'x', '1997-07-23', 29, 'Kohlertown', '16054');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('30', 'x', '2014-10-28', 30, 'Brendonview', '90739');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('31', 'f', '2013-11-01', 31, 'Hayleyshire', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('32', 'x', '1973-02-03', 32, 'East Alfonzo', '803');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('33', 'x', '2015-05-26', 33, 'Rahulport', '8');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('34', 'x', '1990-05-02', 34, 'Torranceberg', '66471791');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('35', 'x', '2019-03-16', 35, 'East Patburgh', '79406121');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('36', 'f', '2014-12-04', 36, 'Ferryshire', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('37', 'm', '1972-10-13', 37, 'Ryannville', '94136');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('38', 'm', '2013-03-27', 38, 'Lake Gabe', '40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('39', 'x', '1973-02-11', 39, 'Kennedystad', '400');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('40', 'm', '1997-09-10', 40, 'Clotildetown', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('41', 'f', '2003-12-22', 41, 'West Cathryn', '56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('42', 'f', '2001-04-07', 42, 'New Janessashire', '79187');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('43', 'f', '1997-07-01', 43, 'Reillyfurt', '7');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('44', 'f', '2009-11-26', 44, 'Hettiemouth', '899');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('45', 'm', '2007-09-03', 45, 'South Keely', '32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('46', 'x', '2021-04-22', 46, 'Roosevelttown', '7479');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('47', 'f', '2011-11-28', 47, 'North Tavaresmouth', '91261');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('48', 'm', '1980-02-11', 48, 'North Alicia', '3365');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('49', 'f', '2010-09-16', 49, 'East Gina', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('50', 'm', '1990-05-17', 50, 'Port Kellyland', '18402');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('51', 'm', '2002-09-22', 51, 'Gerlachhaven', '678');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('52', 'f', '1975-10-24', 52, 'Sporerville', '497044');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('53', 'x', '1982-10-30', 53, 'North Louveniabury', '6044199');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('54', 'x', '2016-12-07', 54, 'New Carli', '81076');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('55', 'f', '1986-03-13', 55, 'West Lawrence', '236');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('56', 'm', '1972-04-20', 56, 'Davismouth', '953252436');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('57', 'f', '1999-02-19', 57, 'Guadalupefurt', '116677');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('58', 'm', '1982-04-27', 58, 'Vidachester', '4');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('59', 'x', '2004-10-19', 59, 'New Marcelinamouth', '143502');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('60', 'x', '1976-10-16', 60, 'West Kellichester', '31744439');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('61', 'm', '1990-12-10', 61, 'Bergstromton', '104290891');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('62', 'x', '2013-02-01', 62, 'Ornside', '36286');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('63', 'm', '1979-05-13', 63, 'North Lydia', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('64', 'm', '1990-09-08', 64, 'Ephraimmouth', '46154');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('65', 'f', '1992-11-15', 65, 'New Eula', '45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('66', 'x', '1985-11-23', 66, 'Naomiefort', '27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('67', 'f', '1991-01-09', 67, 'Rutheburgh', '295224166');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('68', 'f', '1998-02-03', 68, 'Wolfffurt', '9291');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('69', 'f', '1988-07-28', 69, 'North Kacieburgh', '443848');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('70', 'f', '2007-12-27', 70, 'Bobbybury', '464851637');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('71', 'x', '1975-03-09', 71, 'West Thad', '7');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('72', 'x', '2020-08-03', 72, 'New Maximillia', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('73', 'm', '1977-10-27', 73, 'Fritschville', '52460');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('74', 'x', '1981-02-25', 74, 'Harrismouth', '2');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('75', 'x', '2007-06-23', 75, 'East Giovanni', '657');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('76', 'x', '1985-05-26', 76, 'Emeryburgh', '75400');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('77', 'm', '2014-03-23', 77, 'North Deshawn', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('78', 'f', '1975-04-29', 78, 'East Waltertown', '9');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('79', 'm', '2009-02-15', 79, 'West Santiago', '52492757');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('80', 'f', '1999-04-27', 80, 'Streichbury', '48000');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('81', 'f', '1980-10-15', 81, 'Lake Anibal', '4705');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('82', 'x', '1978-09-28', 82, 'New Kassandra', '497');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('83', 'f', '1992-01-06', 83, 'Laneychester', '5660613');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('84', 'm', '1988-07-28', 84, 'Turcotteland', '7872163');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('85', 'f', '2016-09-21', 85, 'Filomenatown', '516');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('86', 'x', '2021-01-20', 86, 'O\'Haraside', '3999');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('87', 'f', '1978-12-15', 87, 'Fabianbury', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('88', 'f', '2007-11-07', 88, 'North Ozella', '431842');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('89', 'f', '1984-09-11', 89, 'New Hunter', '387');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('90', 'm', '1998-05-14', 90, 'Alfonsoshire', '20683');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('91', 'm', '1993-05-02', 91, 'South Ezekielport', '4141643');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('92', 'm', '2008-11-21', 92, 'Bogisichchester', '2614');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('93', 'm', '2019-10-26', 93, 'Naderstad', '640610654');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('94', 'm', '1977-02-16', 94, 'Mertzborough', '9151239');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('95', 'x', '2009-05-27', 95, 'Markusland', '6');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('96', 'f', '2015-10-09', 96, 'McGlynnburgh', '368344');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('97', 'f', '1971-06-26', 97, 'East Edaborough', '');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('98', 'f', '2019-01-01', 98, 'Rosamondview', '6716496');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('99', 'x', '2002-04-03', 99, 'Lake Malachi', '7748449');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('100', 'm', '2014-07-12', 100, 'Dibbertfurt', '49694');


