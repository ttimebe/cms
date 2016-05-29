INSERT INTO `application_language` (`locale`, `enabledForAdmin`, `enabledForPublic`) VALUES
('en', 1, 0),
('fr', 1, 0);

INSERT INTO `application_config`
(`id`, `alreadyInstall`, `default_admin_locale`, `default_public_locale`, `forcedLangInUrl`, `siteName`, `url`, `seoDescription` )
VALUES (1, 0, 'en', 'en', 0, '', '', '');

INSERT INTO `message` (`id`, `domain`, `messageKey`) VALUES
(1, 'admin', 'admin.dropFilesHere'),
(2, 'admin', 'admin.handCrafted'),
(3, 'admin', 'admin.madeWithLove'),
(4, 'admin', 'admin.blocks'),
(5, 'admin', 'admin.blockEdit'),
(6, 'admin', 'admin.blocksManagement'),
(7, 'admin', 'admin.newBlock'),
(8, 'admin', 'admin.newPage'),
(9, 'admin', 'admin.pages'),
(10, 'admin', 'admin.pagesManagement'),
(11, 'admin', 'admin.pagesList'),
(12, 'admin', 'admin.pageDeleteMessage'),
(13, 'admin', 'admin.pageEdit'),
(14, 'admin', 'admin.pageParam'),
(15, 'admin', 'admin.pageTemplate'),
(16, 'admin', 'admin.pageTitle'),
(17, 'admin', 'admin.rootPage'),
(18, 'admin', 'admin.tree'),
(19, 'error', 'error.general'),
(20, 'error', 'error.notFound'),
(21, 'error', 'error.auth.userNotFound'),
(22, 'error', 'error.auth.userExist'),
(23, 'error', 'error.auth.invalidOldPassword'),
(24, 'error', 'error.mail.config'),
(25, 'error', 'error.auth.disabled'),
(26, 'error', 'error.auth.expired'),
(27, 'error', 'error.auth.invalidUser'),
(28, 'error', 'error.auth.invalidToken'),
(29, 'error', 'error.auth.ipBlocked'),
(30, 'general', 'success.general'),
(31, 'general', 'active'),
(32, 'general', 'administration'),
(33, 'general', 'add'),
(34, 'general', 'allRightsReserved'),
(35, 'general', 'cacheable'),
(36, 'general', 'cancel'),
(37, 'general', 'confirm'),
(38, 'general', 'content'),
(39, 'general', 'delete'),
(40, 'general', 'description'),
(41, 'general', 'dynamic'),
(42, 'general', 'edit'),
(43, 'general', 'enabled'),
(44, 'general', 'fieldset'),
(45, 'general', 'file'),
(46, 'general', 'general'),
(47, 'general', 'level'),
(48, 'general', 'link'),
(49, 'general', 'loading'),
(50, 'general', 'log in'),
(51, 'general', 'log out'),
(52, 'general', 'main'),
(53, 'general', 'menu'),
(54, 'general', 'name'),
(55, 'general', 'navigation'),
(56, 'general', 'no'),
(57, 'general', 'operation'),
(58, 'general', 'page'),
(59, 'general', 'results'),
(60, 'general', 'save'),
(61, 'general', 'settings'),
(62, 'general', 'parameters'),
(63, 'general', 'size'),
(64, 'general', 'static'),
(65, 'general', 'template'),
(66, 'general', 'warning'),
(67, 'general', 'yes'),
(68, 'error', 'error.auth.badCredentials'),
(69, 'general', 'rememberMe'),
(70, 'general', 'pleaseWait'),
(71, 'general', 'username'),
(72, 'general', 'password'),
(73, 'general', 'user'),
(74, 'general', 'firstname'),
(75, 'general', 'street'),
(76, 'general', 'search'),
(77, 'general', 'contact'),
(78, 'general', 'online'),
(79, 'general', 'offline'),
(80, 'general', 'policy'),
(81, 'general', 'news'),
(82, 'general', 'phone'),
(83, 'general', 'first'),
(84, 'general', 'last'),
(85, 'general', 'new'),
(86, 'general', 'company'),
(87, 'general', 'previous'),
(88, 'general', 'next'),
(89, 'general', 'download'),
(90, 'general', 'upload'),
(91, 'general', 'sign in'),
(92, 'general', 'register'),
(93, 'general', 'send'),
(94, 'general', 'resetPassword'),
(95, 'general', 'preference'),
(96, 'general', 'help'),
(97, 'general', 'birthday'),
(98, 'general', 'nationality'),
(99, 'general', 'country'),
(100, 'general', 'zip'),
(101, 'general', 'state'),
(102, 'general', 'myAccount'),
(103, 'admin', 'admin.userManagement'),
(104, 'admin', 'admin.templatesManagement'),
(105, 'admin', 'admin.fieldManagement'),
(106, 'general', 'forgotPassword');

INSERT INTO `translation` (`id`, `value`, `language_locale`, `message_id`) VALUES
(1, 'déposez vos fichiers ici', 'fr', 1),
(2, 'drop files here', 'en', 1),
(3, 'à la main', 'fr', 2),
(4, 'hand-crafted', 'en', 2),
(5, 'conçu avec amour', 'fr', 3),
(6, 'made with love', 'en', 3),
(7, 'blocs', 'fr', 4),
(8, 'blocks', 'en', 4),
(9, 'éditer un bloc', 'fr', 5),
(10, 'edit block', 'en', 5),
(11, 'gestion des blocs', 'fr', 6),
(12, 'block manager', 'en', 6),
(13, 'nouveau bloc', 'fr', 7),
(14, 'new block', 'en', 7),
(15, 'nouvelle page', 'fr', 8),
(16, 'new page', 'en', 8),
(17, 'pages', 'fr', 9),
(18, 'pages', 'en', 9),
(19, 'gestion des pages', 'fr', 10),
(20, 'page manager', 'en', 10),
(21, 'liste des pages', 'fr', 11),
(22, 'pages list', 'en', 11),
(23, 'cette page va être supprimée', 'fr', 12),
(24, 'this page will be deleted', 'en', 12),
(25, 'éditer une page', 'fr', 13),
(26, 'edit a page', 'en', 13),
(27, 'paramètres de la page', 'fr', 14),
(28, 'page parameters', 'en', 14),
(29, 'modèle de page', 'fr', 15),
(30, 'page template', 'en', 15),
(31, 'titre de la page', 'fr', 16),
(32, 'page title', 'en', 16),
(33, 'page racine', 'fr', 17),
(34, 'root page', 'en', 17),
(35, 'arborescence', 'fr', 18),
(36, 'tree', 'en', 18),
(37, 'Une erreur s''est produite, veuillez réessayer plus tard.', 'fr', 19),
(38, 'Oops! Something went wrong. Please try again later.', 'en', 19),
(39, 'L''URL demandée n''a pas été trouvée sur le serveur.', 'fr', 20),
(40, 'The requested URL was not found on this server.', 'en', 20),
(41, 'Utilisateur non trouvé.', 'fr', 21),
(42, 'User not Found.', 'en', 21),
(43, 'Un compte pour ce nom d''utilisateur / email existe déjà. Indiquez un nom d''utilisateur différent.', 'fr', 22),
(44, 'An account for that username/email already exists. Please enter a different username.', 'en', 22),
(45, 'L''ancien mot de passe est incorrect.', 'fr', 23),
(46, 'Invalid Old Password.', 'en', 23),
(47, 'Erreur dans la configuration de JavaMail.', 'fr', 24),
(48, 'Error in java mail configuration.', 'en', 24),
(49, 'Votre compte est désactivé, merci de vérifier votre courrier et cliquer sur le lien de confirmation.', 'fr', 25),
(50, 'Your account is disabled please check your mail and click on the confirmation link.', 'en', 25),
(51, 'Votre jeton d''inscription a expiré. Merci de vous réinscrire.', 'fr', 26),
(52, 'Your registration token has expired. Please register again.', 'en', 26),
(53, 'Ce nom d''utilisateur est valide, ou n''existe pas.', 'fr', 27),
(54, 'This username is invalid, or does not exist.', 'en', 27),
(55, 'Jeton de confirmation invalide.', 'fr', 28),
(56, 'Invalid account confirmation token.', 'en', 28),
(57, 'Cette adresse IP a été bloquée pour 24 heures.', 'fr', 29),
(58, 'This IP was blocked for 24 hours.', 'en', 29),
(59, 'opération réussie', 'fr', 30),
(60, 'operation performed successfully', 'en', 30),
(61, 'actif', 'fr', 31),
(62, 'active', 'en', 31),
(63, 'administration', 'fr', 32),
(64, 'administration', 'en', 32),
(65, 'ajouter', 'fr', 33),
(66, 'add', 'en', 33),
(67, 'tous droits réservés', 'fr', 34),
(68, 'all rights reserved', 'en', 34),
(69, 'en cache', 'fr', 35),
(70, 'cacheable', 'en', 35),
(71, 'annuler', 'fr', 36),
(72, 'cancel', 'en', 36),
(73, 'confirmer', 'fr', 37),
(74, 'confirm', 'en', 37),
(75, 'contenu', 'fr', 38),
(76, 'content', 'en', 38),
(77, 'supprimer', 'fr', 39),
(78, 'delete', 'en', 39),
(79, 'description', 'fr', 40),
(80, 'description', 'en', 40),
(81, 'dynamique', 'fr', 41),
(82, 'dynamic', 'en', 41),
(83, 'éditer', 'fr', 42),
(84, 'edit', 'en', 42),
(85, 'activé', 'fr', 43),
(86, 'enabled', 'en', 43),
(87, 'groupe de champs', 'fr', 44),
(88, 'fieldset', 'en', 44),
(89, 'fichier', 'fr', 45),
(90, 'file', 'en', 45),
(91, 'général', 'fr', 46),
(92, 'general', 'en', 46),
(93, 'niveau', 'fr', 47),
(94, 'level', 'en', 47),
(95, 'lien', 'fr', 48),
(96, 'link', 'en', 48),
(97, 'chargement', 'fr', 49),
(98, 'loading', 'en', 49),
(99, 'connexion', 'fr', 50),
(100, 'login', 'en', 50),
(101, 'déconnexion', 'fr', 51),
(102, 'logout', 'en', 51),
(103, 'principal', 'fr', 52),
(104, 'main', 'en', 52),
(105, 'menu', 'fr', 53),
(106, 'menu', 'en', 53),
(107, 'nom', 'fr', 54),
(108, 'name', 'en', 54),
(109, 'navigation', 'fr', 55),
(110, 'navigation', 'en', 55),
(111, 'non', 'fr', 56),
(112, 'no', 'en', 56),
(113, 'opération', 'fr', 57),
(114, 'operation', 'en', 57),
(115, 'page', 'fr', 58),
(116, 'page', 'en', 58),
(117, 'résultat(s)', 'fr', 59),
(118, 'result(s)', 'en', 59),
(119, 'enregistrer', 'fr', 60),
(120, 'save', 'en', 60),
(121, 'options', 'fr', 61),
(122, 'settings', 'en', 61),
(123, 'paramètres', 'fr', 62),
(124, 'parameters', 'en', 62),
(125, 'taille', 'fr', 63),
(126, 'size', 'en', 63),
(127, 'statique', 'fr', 64),
(128, 'static', 'en', 64),
(129, 'modèle', 'fr', 65),
(130, 'template', 'en', 65),
(131, 'attention', 'fr', 66),
(132, 'warning', 'en', 66),
(133, 'oui', 'fr', 67),
(134, 'yes', 'en', 67),
(135, 'nom d''utilisateur ou mot de passe incorrect', 'fr', 68),
(136, 'bad credentials', 'en', 68),
(137, 'se souvenir de moi', 'fr', 69),
(138, 'remember me ', 'en', 69),
(139, 'veuillez patienter', 'fr', 70),
(140, 'please wait', 'en', 70),
(141, 'nom d''utilisateur', 'fr', 71),
(142, 'username', 'en', 71),
(143, 'mot de passe', 'fr', 72),
(144, 'password', 'en', 72),
(145, 'utilisateur', 'fr', 73),
(146, 'user', 'en', 73),
(147, 'prénom', 'fr', 74),
(148, 'firstname', 'en', 74),
(149, 'rue', 'fr', 75),
(150, 'street', 'en', 75),
(151, 'recherche', 'fr', 76),
(152, 'search', 'en', 76),
(153, 'contact', 'fr', 77),
(154, 'contact', 'en', 77),
(155, 'en ligne', 'fr', 78),
(156, 'online', 'en', 78),
(157, 'hors ligne', 'fr', 79),
(158, 'offline', 'en', 79),
(159, 'politique', 'fr', 80),
(160, 'policy', 'en', 80),
(161, 'actualités', 'fr', 81),
(162, 'news', 'en', 81),
(163, 'téléphone', 'fr', 82),
(164, 'phone', 'en', 82),
(165, 'premier', 'fr', 83),
(166, 'first', 'en', 83),
(167, 'dernier', 'fr', 84),
(168, 'last', 'en', 84),
(169, 'nouveau', 'fr', 85),
(170, 'new', 'en', 85),
(171, 'entreprise', 'fr', 86),
(172, 'company', 'en', 86),
(173, 'précédent', 'fr', 87),
(174, 'previous', 'en', 87),
(175, 'suivant', 'fr', 88),
(176, 'next', 'en', 88),
(177, 'télécharger', 'fr', 89),
(178, 'download', 'en', 89),
(179, 'télécharger vers le serveur', 'fr', 90),
(180, 'upload', 'en', 90),
(181, 'se connecter', 'fr', 91),
(182, 'sign in', 'en', 91),
(183, 's''enregistrer', 'fr', 92),
(184, 'register', 'en', 92),
(185, 'envoyer', 'fr', 93),
(186, 'send', 'en', 93),
(187, 'réinitialiser le mot de passe', 'fr', 94),
(188, 'reset password', 'en', 94),
(189, 'préférence', 'fr', 95),
(190, 'preference', 'en', 95),
(191, 'aide', 'fr', 96),
(192, 'help', 'en', 96),
(193, 'anniversaire', 'fr', 97),
(194, 'birthday', 'en', 97),
(195, 'nationalité', 'fr', 98),
(196, 'nationality', 'en', 98),
(197, 'pays', 'fr', 99),
(198, 'country', 'en', 99),
(199, 'code postal', 'fr', 100),
(200, 'zip', 'en', 100),
(201, 'province', 'fr', 101),
(202, 'state', 'en', 101),
(203, 'mon compte', 'fr', 102),
(204, 'my account', 'en', 102),
(205, 'gestion des utilisateurs', 'fr', 103),
(206, 'user management', 'en', 103),
(207, 'gestion des modèles', 'fr', 104),
(208, 'template management', 'en', 104),
(209, 'gestion des champs', 'fr', 105),
(210, 'field Management', 'en', 105),
(211, 'Mot de passe oublié?', 'fr', 106),
(212, 'Forgot your password?', 'en', 106);

INSERT INTO `privilege` (`id`, `name`) VALUES
(1, 'USER_PRIVILEGE'),
(2, 'ADMIN_PRIVILEGE'),
(3, 'SEO_PRIVILEGE'),
(4, 'SUPER_ADMIN_PRIVILEGE');

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN'),
(3, 'ROLE_SUPER_ADMIN');

INSERT INTO `roles_privileges` (`role_id`, `privilege_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(3, 4);

INSERT INTO `content_type` (`name`) VALUES
('PAGE'),
('PAGE_LINK'),
('NEWS'),
('EVENT'),
('ARTICLE');

INSERT INTO `block_type` (`name`) VALUES
('CONTENT'),
('NAVIGATION'),
('PAGE_TEMPLATE'),
('SYSTEM'),
('FIELDSET');

INSERT INTO `block` (`name`, `cacheable`, `content`, `deletable`, `displayName`, `dynamic`, `enabled`, `blockType_name`, `language_locale`) VALUES
('FIELD_DATEPICKER', 0, '', 0, 'block for field datepicker',1, 1, 'FIELDSET', NULL),
('FIELD_TEXT', 0, '', 0, 'block for field simple text', 1, 1, 'FIELDSET', NULL),
('FIELD_TINYMCE', 0, '', 0, 'block for field tinymce', 1, 1, 'FIELDSET', NULL),
('TEMPLATE_BASIC_PAGE', 0, '', 0, 'Basic Page', 1, 1, 'PAGE_TEMPLATE', NULL);

INSERT INTO `fieldset` (`id`, `array`, `deletable`, `description`, `name`, `blockEntity_name`) VALUES
(1, 0, 1, 'Un éditeur de texte', 'tinymce', 'FIELD_TINYMCE'),
(2, 1, 1, 'Date picker', 'date picker', 'FIELD_DATEPICKER'),
(3, 1, 1, 'simple text', 'simple text', 'FIELD_TEXT');

INSERT INTO `content_template` (`id`, `active`, `deletable`, `description`, `name`, `block_name`, `contentType_name`) VALUES
(1, 1, 0, NULL, 'Basic page', 'TEMPLATE_BASIC_PAGE', 'PAGE');

INSERT INTO `content_template_fieldset` (`id`, `array`, `name`, `namespace`, `position`, `page_template_id`, `fieldset_id`) VALUES
(1, 0, 'tinymce', 'main', 0, 1, 1);

INSERT INTO `content` (`id`, `beginDate`, `createdDate`, `enabled`, `endDate`, `menuItem`, `modifiedDate`, `name`, `pos`, `contentParent_id`, `contentTemplate_id`, `contentType_name`) VALUES
(1, NULL, '2016-05-26', b'1', NULL, 1, '2016-05-27', 'Accueil', 0, NULL, 1, 'PAGE');

INSERT INTO `content_data` (`id`, `computedSlug`, `createdDate`, `data`, `modifiedDate`, `position`, `slug`, `title`, `version`, `content_id`, `language_locale`) VALUES
(1, '/home', '2016-05-26', '', '2016-05-27', 0, '/home', 'Home', 9, 1, 'en');

INSERT INTO `input_definition` (`id`, `name`, `sort`, `type`, `validation`, `fieldset_id`) VALUES
(1, 'editor', 1, 'string', NULL, 1),
(2, 'date', 1, 'date', NULL, 2),
(3, 'text', 1, 'string', NULL, 3);

INSERT INTO `input_data` (`id`, `defaultValue`, `hint`, `title`, `validation`, `contentTemplateFieldsetEntity_id`, `fieldset_id`, `inputDefinition_id`) VALUES
(1, '', '', 'main editor', '', 1, 1, 1);