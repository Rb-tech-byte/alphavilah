-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2025 at 11:03 AM
-- Server version: 11.6.2-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alphavilah`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'admins');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add choose us', 7, 'add_chooseus'),
(26, 'Can change choose us', 7, 'change_chooseus'),
(27, 'Can delete choose us', 7, 'delete_chooseus'),
(28, 'Can view choose us', 7, 'view_chooseus'),
(29, 'Can add faq', 8, 'add_faq'),
(30, 'Can change faq', 8, 'change_faq'),
(31, 'Can delete faq', 8, 'delete_faq'),
(32, 'Can view faq', 8, 'view_faq'),
(33, 'Can add mission', 9, 'add_mission'),
(34, 'Can change mission', 9, 'change_mission'),
(35, 'Can delete mission', 9, 'delete_mission'),
(36, 'Can view mission', 9, 'view_mission'),
(37, 'Can add news', 10, 'add_news'),
(38, 'Can change news', 10, 'change_news'),
(39, 'Can delete news', 10, 'delete_news'),
(40, 'Can view news', 10, 'view_news'),
(41, 'Can add service', 11, 'add_service'),
(42, 'Can change service', 11, 'change_service'),
(43, 'Can delete service', 11, 'delete_service'),
(44, 'Can view service', 11, 'view_service'),
(45, 'Can add slider', 12, 'add_slider'),
(46, 'Can change slider', 12, 'change_slider'),
(47, 'Can delete slider', 12, 'delete_slider'),
(48, 'Can view slider', 12, 'view_slider'),
(49, 'Can add story', 13, 'add_story'),
(50, 'Can change story', 13, 'change_story'),
(51, 'Can delete story', 13, 'delete_story'),
(52, 'Can view story', 13, 'view_story'),
(53, 'Can add value', 14, 'add_value'),
(54, 'Can change value', 14, 'change_value'),
(55, 'Can delete value', 14, 'delete_value'),
(56, 'Can view value', 14, 'view_value'),
(57, 'Can add vision', 15, 'add_vision'),
(58, 'Can change vision', 15, 'change_vision'),
(59, 'Can delete vision', 15, 'delete_vision'),
(60, 'Can view vision', 15, 'view_vision'),
(61, 'Can add where we are', 16, 'add_whereweare'),
(62, 'Can change where we are', 16, 'change_whereweare'),
(63, 'Can delete where we are', 16, 'delete_whereweare'),
(64, 'Can view where we are', 16, 'view_whereweare'),
(65, 'Can add why us', 17, 'add_whyus'),
(66, 'Can change why us', 17, 'change_whyus'),
(67, 'Can delete why us', 17, 'delete_whyus'),
(68, 'Can view why us', 17, 'view_whyus'),
(69, 'Can add product', 18, 'add_product'),
(70, 'Can change product', 18, 'change_product'),
(71, 'Can delete product', 18, 'delete_product'),
(72, 'Can view product', 18, 'view_product'),
(73, 'Can add contact', 19, 'add_contact'),
(74, 'Can change contact', 19, 'change_contact'),
(75, 'Can delete contact', 19, 'delete_contact'),
(76, 'Can view contact', 19, 'view_contact'),
(77, 'Can add address model', 20, 'add_addressmodel'),
(78, 'Can change address model', 20, 'change_addressmodel'),
(79, 'Can delete address model', 20, 'delete_addressmodel'),
(80, 'Can view address model', 20, 'view_addressmodel'),
(81, 'Can add visitor', 21, 'add_visitor'),
(82, 'Can change visitor', 21, 'change_visitor'),
(83, 'Can delete visitor', 21, 'delete_visitor'),
(84, 'Can view visitor', 21, 'view_visitor');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$7czEOPY3F4Tvafu7qPiKXo$26rBY9WAioe54q7a8Q+OM9ZHphLBjTEljFyCwborTYc=', '2025-04-07 23:44:56.799309', 1, 'admin', '', '', '', 1, 1, '2025-04-07 23:44:36.169798'),
(2, 'pbkdf2_sha256$1000000$WPZhfXw2tAeoRwe12R7wLb$b4CrTklqw2GTOn6EHm7T+bjL11fnVmgnV7B9P8068O0=', '2025-04-08 08:27:25.164481', 0, 'alphavilah', '', '', '', 0, 1, '2025-04-07 23:45:54.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-04-07 23:45:55.885863', '2', 'alphavilah', 1, '[{\"added\": {}}]', 4, 1),
(2, '2025-04-07 23:46:58.816415', '1', 'admins', 1, '[{\"added\": {}}]', 3, 1),
(3, '2025-04-07 23:47:08.533480', '2', 'alphavilah', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(20, 'mainapp', 'addressmodel'),
(7, 'mainapp', 'chooseus'),
(19, 'mainapp', 'contact'),
(8, 'mainapp', 'faq'),
(9, 'mainapp', 'mission'),
(10, 'mainapp', 'news'),
(18, 'mainapp', 'product'),
(11, 'mainapp', 'service'),
(12, 'mainapp', 'slider'),
(13, 'mainapp', 'story'),
(14, 'mainapp', 'value'),
(15, 'mainapp', 'vision'),
(21, 'mainapp', 'visitor'),
(16, 'mainapp', 'whereweare'),
(17, 'mainapp', 'whyus'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-04-07 23:40:40.893872'),
(2, 'auth', '0001_initial', '2025-04-07 23:40:47.094552'),
(3, 'admin', '0001_initial', '2025-04-07 23:40:48.795555'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-04-07 23:40:48.819477'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-07 23:40:48.890699'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-04-07 23:40:49.755054'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-04-07 23:40:50.246426'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-04-07 23:40:50.628062'),
(9, 'auth', '0004_alter_user_username_opts', '2025-04-07 23:40:50.654143'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-04-07 23:40:51.171554'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-04-07 23:40:51.188075'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-04-07 23:40:51.213757'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-04-07 23:40:51.580131'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-04-07 23:40:52.121199'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-04-07 23:40:52.371280'),
(16, 'auth', '0011_update_proxy_permissions', '2025-04-07 23:40:52.391773'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-04-07 23:40:52.657596'),
(18, 'mainapp', '0001_initial', '2025-04-07 23:40:54.730705'),
(19, 'mainapp', '0002_whyus', '2025-04-07 23:40:54.938897'),
(20, 'mainapp', '0003_mission_image_vision_image', '2025-04-07 23:40:55.431228'),
(21, 'mainapp', '0004_product', '2025-04-07 23:40:55.597675'),
(22, 'mainapp', '0005_contact', '2025-04-07 23:40:55.789757'),
(23, 'mainapp', '0006_addressmodel', '2025-04-07 23:40:55.948149'),
(24, 'mainapp', '0007_contact_date', '2025-04-07 23:40:56.298718'),
(25, 'mainapp', '0008_remove_contact_date', '2025-04-07 23:40:56.573710'),
(26, 'mainapp', '0009_contact_date', '2025-04-07 23:40:57.131604'),
(27, 'mainapp', '0010_visitor', '2025-04-07 23:40:57.398184'),
(28, 'sessions', '0001_initial', '2025-04-07 23:40:58.057434');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_addressmodel`
--

CREATE TABLE `mainapp_addressmodel` (
  `id` bigint(20) NOT NULL,
  `address` longtext NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_addressmodel`
--

INSERT INTO `mainapp_addressmodel` (`id`, `address`, `phone_number`, `email`) VALUES
(1, '<p>P.O.Box 16520</p>\r\n\r\n<p>Arusha Tanzania</p>', '+255756682706', 'alphavilah23@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_chooseus`
--

CREATE TABLE `mainapp_chooseus` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_chooseus`
--

INSERT INTO `mainapp_chooseus` (`id`, `title`, `description`, `image`, `date`) VALUES
(1, 'Why Choose Us', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>ALPHAVILAH LTD</strong>&nbsp;is a Tanzania-based agricultural export company specializing in tropical fruits and vegetables. We work closely with local farmers to ensure quality production and maintain a reliable supply chain. The company operates in the Arusha and Kilimanjaro regions, focusing on the production of melons, watermelons, and sweet potatoes.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Operational Plan</strong></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Sourcing:</strong>&nbsp;100% of the production comes from privately held farms.</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Processing &amp; Packaging:</strong>&nbsp;We establish a processing facility for cleaning, sorting, and packaging fresh produce in accordance with international standards.</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Logistics &amp; Shipping:</strong>&nbsp;We collaborate with logistics companies for air and sea freight to ensure efficient and timely delivery.</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Legal and Regulatory Considerations</strong></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Export Licensing:</strong>&nbsp;We comply with Tanzania&rsquo;s export regulations and obtain all necessary permits.</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>International Standards:</strong>&nbsp;We pursue certifications such as GlobalG.A.P, SMETA, and HACCP to meet international food safety requirements.</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Trade Agreements:</strong>&nbsp;We leverage trade agreements, including the EU&rsquo;s Economic Partnership Agreement (EPA), to benefit from preferential market access.</span></p>\r\n	</li>\r\n</ul>', 'images/passion_fruits3.jpg', '2025-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_contact`
--

CREATE TABLE `mainapp_contact` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_contact`
--

INSERT INTO `mainapp_contact` (`id`, `full_name`, `email`, `subject`, `message`, `date`) VALUES
(1, 'Gideon Magaita', 'gideonmagaita2020@gmail.com', 'sample subject', 'sample message', '2025-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_faq`
--

CREATE TABLE `mainapp_faq` (
  `id` bigint(20) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_faq`
--

INSERT INTO `mainapp_faq` (`id`, `question`, `answer`, `date`) VALUES
(1, 'What products does ALPHAVILAH LTD export?', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Answer:</strong><br />\r\nALPHAVILAH LTD specializes in the export of high-quality tropical fruits and vegetables from Tanzania. Our main products include melons, watermelons, and sweet potatoes, sourced from private farms in the Arusha and Kilimanjaro regions.</span></p>', '2025-04-08'),
(2, 'How does ALPHAVILAH LTD ensure the quality and safety of its produce?', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Answer:</strong><br />\r\nWe work closely with local farmers and operate a processing facility where produce is cleaned, sorted, and packaged under strict international standards. Our operations are aligned with certifications such as GlobalG.A.P, SMETA, and HACCP to ensure food safety, sustainability, and ethical practices.</span></p>', '2025-04-08'),
(3, 'Which countries does ALPHAVILAH LTD export to?', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Answer:</strong><br />\r\nOur primary export markets include countries in the European Union (Germany, Netherlands, UK), the Middle East (UAE, Saudi Arabia), Asia (India, China), and Africa (Kenya, Tanzania, South Africa, and other regionally accessible countries).</span></p>', '2025-04-08'),
(4, 'How can international buyers partner with ALPHAVILAH LTD?', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Answer:</strong><br />\r\nBuyers can contact us directly through our official communication channels to discuss sourcing options, volumes, pricing, and logistics. We prioritize building long-term, transparent relationships with international partners by offering high-quality produce and reliable supply chain solutions.<br />\r\n&nbsp;</span></p>', '2025-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_mission`
--

CREATE TABLE `mainapp_mission` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_mission`
--

INSERT INTO `mainapp_mission` (`id`, `title`, `description`, `date`, `image`) VALUES
(1, 'Mission', '<h2 style=\"text-align:justify\"><span style=\"font-size:16px\">Our mission is to satisfy and delight customers in Tanzania and around the world with fresh, healthy melons grown with care. Through sustainable farming and reliable distribution, we enhance well-being and improve lives</span></h2>', '2025-04-08', 'images/mission_edkec7V.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_news`
--

CREATE TABLE `mainapp_news` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_news`
--

INSERT INTO `mainapp_news` (`id`, `title`, `description`, `image`, `status`, `date`) VALUES
(1, 'Melon Planting and harvesting', '<p style=\"text-align:justify\"><span style=\"font-size:16px\">Harvesting watermelons involves waiting until the fruit reaches full maturity, which is typically 70 to 90 days after planting, depending on the variety. You&rsquo;ll know it&#39;s time to harvest when the melon&rsquo;s skin changes to a deep, vibrant color (usually green to yellow, depending on the type), and the tendril closest to the fruit turns brown and dry. The watermelon should sound hollow when tapped, and there may be a dull spot on the bottom where it has been resting on the ground. To harvest, use a sharp knife or garden shears to cut the melon from the vine, leaving about 2 inches of stem attached. Handle the melons carefully to avoid bruising or cutting them</span></p>', 'images/p9_ZtSqWGc.jpg', 'publish', '2025-04-08'),
(2, 'Harvesting Potatoes', '<p style=\"text-align:justify\"><span style=\"font-size:16px\">Harvesting sweet potatoes is a relatively simple process, but timing and technique are important to ensure a good yield. Here are the general steps for harvesting sweet potatoes:</span></p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:16px\">1.&nbsp;<strong>Timing the Harvest</strong></span></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>When to Harvest</strong>: Sweet potatoes are typically ready for harvest about 90-170 days after planting, depending on the variety and growing conditions. You&rsquo;ll know they&rsquo;re ready when the vines start to yellow and die back. This often happens in late summer or fall, and you should harvest before the first frost.</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Signs to Watch For</strong>: The leaves turning yellow and wilting is a signal that the sweet potatoes have matured. You can also test by gently digging around the base of a plant to check the size of the tubers.</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:16px\">2.&nbsp;<strong>Preparing the Area</strong></span></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Watering</strong>: Stop watering sweet potatoes about a week before you plan to harvest. This helps prevent excess moisture in the tubers, making them less likely to rot in storage.</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Clear the Vines</strong>: Before you start digging, clear away any dead vines and foliage, but be careful not to damage the tubers.</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:16px\">3.&nbsp;<strong>Digging Up the Sweet Potatoes</strong></span></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Use a Fork or Shovel</strong>: To avoid damaging the tubers, use a garden fork or shovel to gently lift the soil around the sweet potato plant. Start about 6 inches away from the base of the plant and dig deep enough to avoid breaking the tubers.</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Lift Carefully</strong>: After loosening the soil, gently lift the plant and shake off the soil to reveal the sweet potatoes.</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:16px\">4.&nbsp;<strong>Handling the Harvest</strong></span></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Cure the Tubers</strong>: Once harvested, sweet potatoes need to cure. This involves letting them sit in a warm, humid environment for 10-14 days (ideally around 80-85&deg;F with 85-90% humidity). Curing helps to improve the flavor and healing of any small cuts.</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Storage</strong>: After curing, store sweet potatoes in a cool, dry, and dark place at around 55-60&deg;F. If stored correctly, sweet potatoes can last for several months.</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:16px\">5.&nbsp;<strong>Post-Harvest Care</strong></span></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Inspect for Damage</strong>: Check each sweet potato for signs of damage, such as cuts or bruising. Any damaged ones should be used quickly or discarded to prevent rot from spreading.</span></p>\r\n	</li>\r\n</ul>', 'images/p7.jpg', 'publish', '2025-04-08'),
(3, 'Passion fruit farming', '<p style=\"text-align:justify\"><span style=\"font-size:16px\">Passion fruit farming requires a warm, tropical or subtropical climate with plenty of sunlight and well-drained, fertile soil. The plant thrives in soil with a pH between 6.5 and 7.5 and can be grown from seeds or cuttings, with cuttings often producing quicker results. Passion fruit vines are typically planted on trellises or fences to support their climbing nature. Regular watering is essential, but the soil must never become waterlogged. Fertilizing the plants with organic matter or balanced fertilizers helps boost growth, and it&#39;s crucial to monitor for pests and diseases. Harvesting typically occurs 12 to 18 months after planting, when the fruit turns a deep color and falls from the vine, indicating ripeness.</span></p>', 'images/p6_FRzTP0Z.jpg', 'publish', '2025-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_product`
--

CREATE TABLE `mainapp_product` (
  `id` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_product`
--

INSERT INTO `mainapp_product` (`id`, `description`, `image`, `date`) VALUES
(1, '<h2 style=\"text-align:justify\"><span style=\"font-size:16px\">Watermelon Fruits</span></h2>', 'images/p10_bMvt5o2.jpg', '2025-04-08'),
(2, '<h3><span style=\"font-size:16px\">Passion Fruits</span></h3>', 'images/passion_fruits2.webp', '2025-04-08'),
(3, '<h3 style=\"text-align:justify\"><span style=\"font-size:16px\">Avocadoes</span></h3>', 'images/p3_nbgrVqt.jpg', '2025-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_service`
--

CREATE TABLE `mainapp_service` (
  `id` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_service`
--

INSERT INTO `mainapp_service` (`id`, `description`, `image`, `date`) VALUES
(1, '<p><span style=\"font-size:16px\">Agricultural Export Services</span></p>', 'images/flour_9RTJ2Af.jpg', '2025-04-08'),
(2, '<p><span style=\"font-size:16px\">Farmer Partnership &amp; Capacity Building</span></p>', 'images/p1_TYLPR3l.jpg', '2025-04-08'),
(3, '<p><span style=\"font-size:16px\">Processing &amp; Packaging Services</span></p>', 'images/p3_YZq8mr3.jpg', '2025-04-08'),
(4, '<p><span style=\"font-size:16px\">Compliance &amp; Certification Support</span></p>', 'images/p2_hoAi2wU.jpg', '2025-04-08'),
(5, '<p><span style=\"font-size:16px\">Market Access &amp; Trade Facilitation</span></p>', 'images/p5_tWn9mF4.jpg', '2025-04-08'),
(6, '<p><span style=\"font-size:16px\">Logistics &amp; Supply Chain Management</span></p>', 'images/p4_HQHKtu6.jpg', '2025-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_slider`
--

CREATE TABLE `mainapp_slider` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `sub_title` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_slider`
--

INSERT INTO `mainapp_slider` (`id`, `title`, `sub_title`, `image`, `date`) VALUES
(1, 'Products and Services', '<p style=\"text-align:center\"><span style=\"font-size:16px\">Our core products include:</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\">Fruits: Melon, watermelons, sweet potatoes, passion fruits, and others on the long term plan production.<br />\r\nValue-Added Services: Packaging, quality control, and logistics support for international buyers.</span></p>', 'images/slider3_Qau1Hsr.jpg', '2025-04-08'),
(2, 'Competitive Advantages', '<p style=\"text-align:center\"><span style=\"font-size:16px\">We focus on professional production, uphold ethical and natural stewardship standards, and establish direct relationships with international buyers to eliminate middlemen.</span></p>', 'images/slider4_RHfVsjP.jpg', '2025-04-08'),
(3, 'Target Markets', '<p style=\"text-align:center\"><span style=\"font-size:16px\">Our primary markets are the European Union (Germany, Netherlands, UK), Middle Eastern countries (UAE, Saudi Arabia), Asia (India, China), and Africa (Kenya, Tanzania, South Africa, and other countries with regional access).</span></p>', 'images/slider2_JFYGirh.jpg', '2025-04-08'),
(4, 'Industry Overview', '<p style=\"text-align:center\"><span style=\"font-size:16px\">The global demand for fresh, organic, and sustainably sourced produce is growing, creating opportunities for African exporters.</span></p>', 'images/slider1_0TroOx1.jpg', '2025-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_story`
--

CREATE TABLE `mainapp_story` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_story`
--

INSERT INTO `mainapp_story` (`id`, `title`, `description`, `image`, `date`) VALUES
(1, 'Our Story', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>ALPHAVILAH LTD</strong>&nbsp;aims to become a leading exporter of high-quality fruits and vegetables from Tanzania to international markets. We leverage Tanzania&#39;s rich agricultural resources and favorable climate to supply fresh produce to Europe, the Middle East, and Asia. Our business prioritizes sustainability, fair trade practices, and compliance with international food safety standards.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>ALPHAVILAH LTD&nbsp;</strong>is well-positioned to capitalize on Tanzania&rsquo;s agricultural potential and the growing international demand for fresh produce. With a strategic focus on quality, sustainability, and efficient supply chains, we establish a strong presence in the global market while supporting local farmers and contributing to the Tanzanian economy.</span></p>', 'images/1715078182547.jpg', '2025-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_value`
--

CREATE TABLE `mainapp_value` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_value`
--

INSERT INTO `mainapp_value` (`id`, `title`, `description`, `date`) VALUES
(4, 'Values', '<p style=\"text-align:center\"><span style=\"font-size:16px\">Our purpose is to provide safe, healthy, and delicious melons to consumers, generating prosperity and progress in return</span></p>', '2025-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_vision`
--

CREATE TABLE `mainapp_vision` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_vision`
--

INSERT INTO `mainapp_vision` (`id`, `title`, `description`, `date`, `image`) VALUES
(1, 'Vision', '<h2 style=\"text-align:justify\"><span style=\"font-size:16px\">To be Tanzania&rsquo;s most trusted supplier of high-quality melons and other produce, delivering freshness and excellence through sustainable farming practices, reliable distribution, and exceptional customer service ensuring satisfaction from local markets to global buyers</span></h2>', '2025-04-08', 'images/Vision_ftPOvet.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_visitor`
--

CREATE TABLE `mainapp_visitor` (
  `id` bigint(20) NOT NULL,
  `ip_address` char(39) NOT NULL,
  `visit_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_visitor`
--

INSERT INTO `mainapp_visitor` (`id`, `ip_address`, `visit_time`) VALUES
(1, '127.0.0.1', '2025-04-07 23:42:09.278207'),
(2, '127.0.0.1', '2025-04-08 00:04:37.398731');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_whereweare`
--

CREATE TABLE `mainapp_whereweare` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_whereweare`
--

INSERT INTO `mainapp_whereweare` (`id`, `title`, `description`, `date`) VALUES
(1, 'Where we are', '<p style=\"text-align:center\"><span style=\"font-size:16px\">The company operates from Arusha and Kilimanjaro areas for the main melon, watermelon and sweet potatoe production</span></p>', '2025-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `mainapp_whyus`
--

CREATE TABLE `mainapp_whyus` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `mainapp_whyus`
--

INSERT INTO `mainapp_whyus` (`id`, `title`, `description`, `image`, `date`) VALUES
(1, 'Why Alphavilah', '<h2 style=\"text-align:justify\"><span style=\"font-size:16px\">We pursue excellence by continuously evaluating our performance to measure growth. Teamwork is at the heart of our success guided by humility, responsibility, leadership, and respect to meet and exceed customer expectations. Our customers are our reason for being, and we listen with empathy to understand their needs and take meaningful action.<br />\r\nThrough continuous improvement, we embrace perseverance, innovation, and creativity to drive progress. We uphold integrity in all our relationships with employees and their families, business partners, local communities, and the environment.</span></h2>', 'images/p8_6qQwRFg.jpg', '2025-04-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `mainapp_addressmodel`
--
ALTER TABLE `mainapp_addressmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_chooseus`
--
ALTER TABLE `mainapp_chooseus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_contact`
--
ALTER TABLE `mainapp_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `mainapp_faq`
--
ALTER TABLE `mainapp_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_mission`
--
ALTER TABLE `mainapp_mission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_news`
--
ALTER TABLE `mainapp_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_product`
--
ALTER TABLE `mainapp_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_service`
--
ALTER TABLE `mainapp_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_slider`
--
ALTER TABLE `mainapp_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_story`
--
ALTER TABLE `mainapp_story`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_value`
--
ALTER TABLE `mainapp_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_vision`
--
ALTER TABLE `mainapp_vision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_visitor`
--
ALTER TABLE `mainapp_visitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_whereweare`
--
ALTER TABLE `mainapp_whereweare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainapp_whyus`
--
ALTER TABLE `mainapp_whyus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `mainapp_addressmodel`
--
ALTER TABLE `mainapp_addressmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mainapp_chooseus`
--
ALTER TABLE `mainapp_chooseus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mainapp_contact`
--
ALTER TABLE `mainapp_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mainapp_faq`
--
ALTER TABLE `mainapp_faq`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mainapp_mission`
--
ALTER TABLE `mainapp_mission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mainapp_news`
--
ALTER TABLE `mainapp_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mainapp_product`
--
ALTER TABLE `mainapp_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mainapp_service`
--
ALTER TABLE `mainapp_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mainapp_slider`
--
ALTER TABLE `mainapp_slider`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mainapp_story`
--
ALTER TABLE `mainapp_story`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mainapp_value`
--
ALTER TABLE `mainapp_value`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mainapp_vision`
--
ALTER TABLE `mainapp_vision`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mainapp_visitor`
--
ALTER TABLE `mainapp_visitor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mainapp_whereweare`
--
ALTER TABLE `mainapp_whereweare`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mainapp_whyus`
--
ALTER TABLE `mainapp_whyus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
