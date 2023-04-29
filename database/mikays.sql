-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 03:53 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mikays`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `username`, `email`, `first_name`, `last_name`, `image`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'admin@gmail.com', 'Bin', 'Akilan', '63e3502e08836.jpg', '$2y$10$UmZ3nP0JIUOI0CxLG/175efcigYJDbfg45Ga4cYz/YdZOshZ0GPMm', 1, NULL, '2023-02-08 05:33:02'),
(10, 7, 'delivery', 'delivery@gmail.com', 'Delivery', 'Manager', '5f6c395833e14.jpg', '$2y$10$658kJ38abUEn.d46DmYhQ.wNIy9fRE2TPDrNzeMODbxDWHWOwrqRS', 1, '2020-09-24 00:14:48', '2020-09-28 11:24:32'),
(11, 8, 'kitchen', 'kitchen@gmail.com', 'Kitchen', 'Manager', '60a934a18ff49.jpg', '$2y$10$PTTKwbg5AEHm4BBVUaes1uhlx1eZKeTJzD7M5pIQjPrDmGYaVzul2', 1, '2020-09-28 11:23:39', '2021-05-23 01:43:13'),
(12, 8, 'maria', 'mariaqt666@gmail.com', 'Maria', 'Amador', '64072eb772710.png', '$2y$10$ePPGELgvKAgMF.jX5VJJROe2K72QBtom802884KHa7Ic.Up7W4z6.', 1, '2023-03-07 01:31:51', '2023-03-07 01:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backups`
--

INSERT INTO `backups` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(3, '2022-04-24-121935-dump-superv.sql', '2022-04-24 06:19:35', '2022-04-24 06:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `basic_extendeds`
--

CREATE TABLE `basic_extendeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `cookie_alert_status` tinyint(4) NOT NULL DEFAULT 1,
  `cookie_alert_text` blob DEFAULT NULL,
  `cookie_alert_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_language_direction` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr' COMMENT 'ltr / rtl',
  `blogs_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blogs_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_facebook_pexel` tinyint(4) NOT NULL DEFAULT 0,
  `facebook_pexel_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_version` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT 'default_service_category',
  `from_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(4) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_shape_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_bottom_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_bottom_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_bg_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_section_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_section_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_symbol` blob DEFAULT NULL,
  `base_currency_symbol_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `base_currency_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_text_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'right',
  `base_currency_rate` decimal(8,2) NOT NULL DEFAULT 0.00,
  `hero_bg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_bold_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_bold_text_font_size` int(11) NOT NULL DEFAULT 60,
  `hero_section_bold_text_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_text_font_size` int(11) NOT NULL DEFAULT 18,
  `hero_section_text_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_text` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_text_font_size` int(11) NOT NULL DEFAULT 14,
  `hero_section_button_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button2_text` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button2_text_font_size` int(11) NOT NULL DEFAULT 14,
  `hero_section_button2_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_shape_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_bottom_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_side_img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_bg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_version` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - menu with col-6, 2 - menu with col-12',
  `qrcode_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qrcode_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_id` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_key` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_secret` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_cluster` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_facebook_login` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - Active, 0 - Deactive',
  `facebook_app_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_app_secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_google_login` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - Active, 0 - Deactive',
  `google_client_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT 'UTC',
  `delivery_date_time_status` tinyint(4) NOT NULL DEFAULT 0,
  `delivery_date_time_required` tinyint(4) NOT NULL DEFAULT 0,
  `qr_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `qr_size` int(11) NOT NULL DEFAULT 250,
  `qr_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_eye_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_margin` int(11) NOT NULL DEFAULT 0,
  `qr_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_text_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `qr_text_size` int(11) NOT NULL DEFAULT 15,
  `qr_text_x` int(11) NOT NULL DEFAULT 50,
  `qr_text_y` int(11) NOT NULL DEFAULT 50,
  `qr_inserted_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_inserted_image_size` int(11) NOT NULL DEFAULT 20,
  `qr_inserted_image_x` int(11) NOT NULL DEFAULT 50,
  `qr_inserted_image_y` int(11) NOT NULL DEFAULT 50,
  `qr_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'default, image, text',
  `order_close` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - order closed, 0 - order open',
  `order_close_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Order is closed now!'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_extendeds`
--

INSERT INTO `basic_extendeds` (`id`, `language_id`, `cookie_alert_status`, `cookie_alert_text`, `cookie_alert_button_text`, `to_mail`, `default_language_direction`, `blogs_meta_keywords`, `blogs_meta_description`, `is_facebook_pexel`, `facebook_pexel_script`, `theme_version`, `from_mail`, `from_name`, `is_smtp`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `slider_shape_img`, `slider_bottom_img`, `footer_bottom_img`, `menu_section_title`, `menu_section_subtitle`, `menu_section_img`, `special_section_title`, `special_section_subtitle`, `testimonial_bg_img`, `table_section_title`, `table_section_subtitle`, `table_section_img`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`, `hero_bg`, `hero_section_bold_text`, `hero_section_bold_text_font_size`, `hero_section_bold_text_color`, `hero_section_text`, `hero_section_text_font_size`, `hero_section_text_color`, `hero_section_button_text`, `hero_section_button_text_font_size`, `hero_section_button_color`, `hero_section_button_url`, `hero_section_button2_text`, `hero_section_button2_text_font_size`, `hero_section_button2_url`, `hero_shape_img`, `hero_bottom_img`, `hero_section_video_link`, `hero_side_img`, `faq_title`, `career_title`, `career_details_title`, `special_section_bg`, `menu_version`, `qrcode_url`, `qrcode_color`, `pusher_app_id`, `pusher_app_key`, `pusher_app_secret`, `pusher_app_cluster`, `is_facebook_login`, `facebook_app_id`, `facebook_app_secret`, `is_google_login`, `google_client_id`, `google_client_secret`, `timezone`, `delivery_date_time_status`, `delivery_date_time_required`, `qr_image`, `qr_color`, `qr_size`, `qr_style`, `qr_eye_style`, `qr_margin`, `qr_text`, `qr_text_color`, `qr_text_size`, `qr_text_x`, `qr_text_y`, `qr_inserted_image`, `qr_inserted_image_size`, `qr_inserted_image_x`, `qr_inserted_image_y`, `qr_type`, `order_close`, `order_close_message`) VALUES
(147, 176, 0, 0x596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e, 'Allow Cookies', 'mikaysupport@mikayskitchen.store', 'ltr', 'lorem, dolor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s)\r\n{if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};\r\nif(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\r\nn.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];\r\ns.parentNode.insertBefore(t,s)}(window, document,\'script\',\r\n\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'2723323421236702\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=2723323421236702&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- End Facebook Pixel Code -->', 'default_service_category', 'mikaysupport@mikayskitchen.store', 'Mikay\'s Kitchen', 1, 'smtp.hostinger.com', '587', 'TLS', 'mikaysupport@mikayskitchen.store', 'Akilan#12345', '5f5a03b9351d9.png', '5fec644e710b9.png', NULL, 'Our Menus', 'Discover Food Menus', NULL, 'Our Special Offered Items Price', 'VIEW ALL MENU LIST', '1598017091.jpg', 'Table Reservation', 'Reserve Your Table', '1599811746.jpg', 0xe282b1, 'left', 'PHP', 'right', '1.00', '5fec6276501e4.jpg', 'Mexican Chicken Cheese Toaster Pizza', 60, 'FFFFFF', 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 18, 'FFFFFF', 'View Details', 14, 'FFFFFF', 'https://codecanyon.megasoft.biz/superv/menu/Beef-Cheese-Burger/25', 'Book a Table', 14, 'https://codecanyon.megasoft.biz/superv/reservation/form', '5f59fc0874b33.png', '5fec641428443.png', 'https://www.youtube.com/watch?v=ZDQn-9cdx9Q', '5fec638b9a614.png', 'F.A.Q.', 'Career', 'Job Details', '1677597070.png', 1, 'https://codecanyon.kreativdev.com/superv/qr-menu', '3851FF', '1080494', 'bd457a6ed0c247922b06', '019547a8751eec9b83af', 'ap2', 0, '188100859706337', '73dc84a95f12657de1b1ebaa6cc7ba94', 1, '123297355892-mjh8co6jlop7vtrju0c6ddjmgci60tia.apps.googleusercontent.com', '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', 'America/Asuncion', 1, 1, '6227763c961f8.png', '3D0F29', 263, 'square', 'circle', 0, 'KreativQR', '114C05', 14, 50, 50, '60a92611aca0a.png', 20, 50, 50, 'image', 0, 'Order is closed now!');

-- --------------------------------------------------------

--
-- Table structure for table `basic_extras`
--

CREATE TABLE `basic_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `whatsapp_order_status_notification` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - disable, 1 - enable',
  `whatsapp_home_delivery` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - enabled, 1 - disabled',
  `whatsapp_pickup` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - enabled, 1 - disabled',
  `whatsapp_on_table` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - enabled, 1 - disabled',
  `twilio_sid` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_extras`
--

INSERT INTO `basic_extras` (`id`, `whatsapp_order_status_notification`, `whatsapp_home_delivery`, `whatsapp_pickup`, `whatsapp_on_table`, `twilio_sid`, `twilio_token`, `twilio_phone_number`) VALUES
(1, 0, 0, 0, 0, 'AC87db7baafc84b106f2d59eee812b8f7e', '8a938c87f06427109910fde8a5794b5f', '+14155238886');

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `favicon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preloader_status` tinyint(4) NOT NULL COMMENT '0 - deactive, 1 - active',
  `preloader` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_base_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` blob DEFAULT NULL,
  `intro_section_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_contact_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_mails` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) NOT NULL DEFAULT 10,
  `contact_info_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_to_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_recaptcha` tinyint(4) NOT NULL DEFAULT 0,
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tawkto` tinyint(4) NOT NULL DEFAULT 1,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 1,
  `disqus_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_analytics` tinyint(4) NOT NULL DEFAULT 1,
  `maintainance_mode` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - active, 0 - deactive',
  `maintainance_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ips` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_details_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_version` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_section` tinyint(4) NOT NULL DEFAULT 1,
  `intro_section` tinyint(4) NOT NULL DEFAULT 1,
  `testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `team_section` tinyint(4) NOT NULL DEFAULT 1,
  `news_section` tinyint(4) NOT NULL DEFAULT 1,
  `menu_section` int(11) NOT NULL DEFAULT 1,
  `special_section` int(11) NOT NULL DEFAULT 1,
  `instagram_section` int(11) NOT NULL DEFAULT 1,
  `table_section` int(11) NOT NULL DEFAULT 1,
  `top_footer_section` tinyint(4) NOT NULL DEFAULT 1,
  `copyright_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_quote` tinyint(4) NOT NULL DEFAULT 1,
  `office_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_appzi` tinyint(4) NOT NULL DEFAULT 0,
  `appzi_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_addthis` tinyint(4) NOT NULL DEFAULT 0,
  `addthis_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_no_start` int(11) NOT NULL DEFAULT 1,
  `token_no` int(11) NOT NULL DEFAULT 0,
  `postal_code` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - enabled, 0 - disabled',
  `qr_call_waiter` tinyint(4) NOT NULL DEFAULT 1,
  `website_call_waiter` tinyint(4) NOT NULL DEFAULT 1,
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - enable, 0 - disable',
  `whatsapp_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_header_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Chat with us on WhatsApp!',
  `whatsapp_popup_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_popup` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - enable, 0 - disable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `language_id`, `favicon`, `logo`, `preloader_status`, `preloader`, `website_title`, `base_color`, `secondary_base_color`, `support_email`, `support_phone`, `breadcrumb`, `footer_logo`, `footer_text`, `newsletter_text`, `copyright_text`, `intro_section_title`, `intro_title`, `intro_text`, `intro_contact_text`, `intro_contact_number`, `intro_video_image`, `intro_signature`, `intro_video_link`, `intro_main_image`, `team_section_title`, `team_section_subtitle`, `contact_form_title`, `contact_address`, `contact_number`, `contact_mails`, `contact_text`, `latitude`, `longitude`, `map_zoom`, `contact_info_title`, `tawk_to_script`, `google_analytics_script`, `is_recaptcha`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_tawkto`, `is_disqus`, `disqus_script`, `is_analytics`, `maintainance_mode`, `maintainance_text`, `ips`, `testimonial_title`, `blog_section_title`, `blog_section_subtitle`, `blog_title`, `blog_details_title`, `gallery_title`, `team_title`, `contact_title`, `menu_title`, `reservation_title`, `items_title`, `menu_details_title`, `cart_title`, `checkout_title`, `error_title`, `home_version`, `feature_section`, `intro_section`, `testimonial_section`, `team_section`, `news_section`, `menu_section`, `special_section`, `instagram_section`, `table_section`, `top_footer_section`, `copyright_section`, `is_quote`, `office_time`, `is_appzi`, `appzi_script`, `is_addthis`, `addthis_script`, `token_no_start`, `token_no`, `postal_code`, `qr_call_waiter`, `website_call_waiter`, `is_whatsapp`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_message`, `whatsapp_popup`) VALUES
(153, 176, '63d29be036b36.png', '63d1232739949.png', 0, '5fed71d9ebc96.gif', 'Mikay\'s Kitchen', 'D3A971', '0A3041', 'mikaysupport@mikayskitchen.store', '09261006969', '6242eeb240b73.jpg', '63cffa5c1151a.png', 'Delicious and Affordable foodies delivered right at your doorstep! #ToTasteistoBelieve', 'Subscribe to gate Latest News, Offer and connect With Us.', 0x436f7079726967687420c2a920323032332e20416c6c20726967687473207265736572766564206279204d696b61792773204b69746368656e2e, 'Our Story', 'Our Cafe 20 years working experience.', 'Donec scelerisque dolor id nunc dictum, interdum gravida mauris rhoncus. Aliquam at ultrices nunc. In sem leo, fermentum at lorem in, porta finibus mauris. Aliquam consectetur, ex in gravida porttitor,', 'Our 24/7 Phone Services', '555 666 999 00', '5f3b83bbf0042.jpg', '5f5b0ee606923.png', 'https://www.youtube.com/watch?v=GlrxcuEDyF8', '5f3b83bbef74e.png', 'Our Team', 'Our Expert Members', 'Leave Reply', 'Sto Niño Village, Putik, Zamboanga City, Philippines', '+63 908-959-9193', 'mikaelagawat7@gmail.com,mikaysupport@mikayskitchen.store', 'If you have any questions or concerns, please don\'t hesitate to contact us. Thank you for choosing us as your preferred provider. We look forward to serving you!', '6.935034632915212', '122.09556597475856', 20, 'CONTACT INFO', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5f5e445f4704467e89ee918d/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-137437974-2\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-137437974-2\');\r\n</script>', 1, '6Ldm6yYkAAAAADH8ZSZ6L6E4IQVZWszz46-DjiUS', '6Ldm6yYkAAAAAJ9dqnfmR3VbakIHyFKgBwiXtzbr', 0, 1, '<script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://superv-1.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n</script>', 0, 0, 'Our website is undergoing an upgrade, and we will return shortly. Please continue to be patient with us during this time. We appreciate your cooperation and thank you for your understanding.', NULL, 'What Our client Saying ?', 'Our Blog', 'Latest News Feeds', 'Latest Blog', 'Blog Details', 'Our Gallery', 'Team Members', 'Contact Us', 'Our Menu', 'Reserve Table', 'Our Items', 'Item Details', 'Cart', 'Checkout', '404 Not Found', 'slider', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 'Mon to Sunday 9AM - 5PM', 0, '<!-- Appzi: Capture Insightful Feedback -->\r\n<script async src=\"https://w.appzi.io/w.js?token=p5cpm\"></script>\r\n<!-- End Appzi -->', 0, '<!-- Go to www.addthis.com/dashboard to customize your tools -->\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5e74e0cf10c08cfa\"></script>', 1, 45, 0, 0, 0, 0, '+8801689583182', 'Chat with us on WhatsApp!', 'Admin can also disable WhatsApp Chat\r\n& enable Tawk.to chat\r\n(Admin can set any message here)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `language_id`, `name`, `status`, `serial_number`) VALUES
(1, 176, 'Cooking', 1, 1),
(3, 176, 'Foods', 1, 2),
(4, 176, 'Burgers', 1, 3),
(5, 176, 'Fun & Jamming', 1, 4),
(6, 176, 'Recipes', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `bcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` blob DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `main_image`, `content`, `tags`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(66, 176, 1, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', '1598694784.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 1, '2020-08-29 03:47:49', '2020-08-29 03:53:04'),
(67, 176, 3, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', '1598694802.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 2, '2020-08-29 03:50:37', '2020-08-29 03:53:22'),
(68, 176, 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor', 'Lorem-ipsum-dolor-sit-amet,-consectetur-adipiscing-elit,-sed-do-eiusmod-tempor', '1598694694.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 3, '2020-08-29 03:51:34', '2020-08-29 03:51:34'),
(69, 176, 3, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', '1598694769.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 4, '2020-08-29 03:52:49', '2020-08-29 03:52:49'),
(70, 176, 1, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', '1598694837.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 5, '2020-08-29 03:53:57', '2020-08-29 03:53:57'),
(71, 176, 5, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', '1598694875.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 6, '2020-08-29 03:54:35', '2020-08-29 03:54:35'),
(72, 176, 3, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', '1598694928.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 7, '2020-08-29 03:55:28', '2020-08-29 03:55:28'),
(73, 176, 3, 'Non magna pharetra facilisis. lacus nulla dignissim.', 'Non-magna-pharetra-facilisis.-lacus-nulla-dignissim.', '1598694962.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 8, '2020-08-29 03:56:02', '2020-08-29 03:56:02'),
(74, 176, 1, 'Fusce convallis enim non magna Duis lacus dignissim.', 'Fusce-convallis-enim-non-magna-Duis-lacus-dignissim.', '1598695007.jpg', 0x69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e, NULL, NULL, NULL, 9, '2020-08-29 03:56:47', '2020-08-29 03:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `bottomlinks`
--

CREATE TABLE `bottomlinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bottomlinks`
--

INSERT INTO `bottomlinks` (`id`, `language_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(11, 169, 'Career', 'https://megasoft.biz/plusagency/services?category=9', NULL, NULL),
(12, 169, 'Terms of service', 'https://megasoft.biz/plusagency/services?category=9', NULL, NULL),
(13, 169, 'Refund policy', 'https://megasoft.biz/plusagency/services?category=9', NULL, NULL),
(14, 176, 'Privacy Policy', 'http://localhost/mikays%20v2/Privacy-Policy/4/page', NULL, NULL),
(15, 176, 'Terms & Conditions', 'http://localhost/mikays%20v2/Terms-&-Conditions/3/page', NULL, NULL),
(16, 176, 'About', 'http://localhost/mikays%20v2/About-Us/1/page', NULL, NULL),
(17, 177, 'link 1', 'https://megasoft.biz/alphasoft/', NULL, NULL),
(18, 177, 'link 2', 'https://megasoft.biz/alphasoft/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'percentage, fixed',
  `value` decimal(11,2) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `minimum_spend` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `start_date`, `end_date`, `minimum_spend`, `created_at`, `updated_at`) VALUES
(5, 'Valentine\'s Day', 'BREAK RAMU', 'fixed', '250.00', '02/01/2023', '02/05/2023', '1000.00', '2023-02-08 06:30:02', '2023-02-08 11:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(8, 'Drake', 'drake@gmail.com', '47347348', 'CA, USA', '2021-04-11 02:52:49', '2021-04-11 02:52:49'),
(9, 'Tom', 'tom@gmail.com', '4734734819', NULL, '2021-04-11 02:52:59', '2021-04-11 02:52:59'),
(10, 'jhon', 'jhon@gmail.com', '017200000', 'America', '2021-05-09 09:48:47', '2022-04-17 11:52:57'),
(11, 'jhon', 'jhon@gmail.com', '0172000001', NULL, '2021-05-09 09:51:58', '2021-05-09 09:51:58'),
(12, 'Doe', NULL, '0172000002', NULL, '2021-05-10 07:46:44', '2021-05-10 07:46:44'),
(14, 'John', 'geniustest11@gmail.com', '262332', NULL, '2021-05-18 06:07:14', '2021-05-18 06:07:14'),
(15, 'aEcAxb7Qci', 'X2fxRZNfqB', '9614210741', NULL, '2022-03-16 14:07:51', '2022-03-16 14:07:51'),
(16, 'C4nUY0uymI', 'ss9h5A8I4Q', '6637339057', NULL, '2022-03-16 14:09:18', '2022-03-16 14:09:18'),
(17, NULL, NULL, NULL, NULL, '2022-03-16 14:15:47', '2022-03-16 14:15:47'),
(18, 'genius test', NULL, '3262034463', NULL, '2022-03-17 04:28:55', '2022-03-17 04:28:55'),
(19, 'genius test', NULL, '9149941104', NULL, '2022-03-17 12:07:40', '2022-03-17 12:07:40'),
(20, 'genius test', NULL, '4227336455', NULL, '2022-03-17 15:13:45', '2022-03-17 15:13:45'),
(21, 'jhon', 'jhon@gmail.com', '+8801689583182', NULL, '2022-04-17 11:51:39', '2022-04-17 11:51:39'),
(22, 'jhon', 'jhon@gmail.com', '1689583182', 'America', '2022-04-21 06:19:04', '2022-04-21 09:27:00'),
(23, 'jhon', 'jhon@gmail.com', '16895831821', 'America', '2022-04-21 06:38:21', '2022-04-21 07:01:35'),
(24, 'Jaydee Ballaho', 'jaydee.test@gmail.com', '9261014618', NULL, '2023-02-08 05:44:17', '2023-02-26 03:31:55'),
(25, 'Jaydee Ballaho', 'tigenaj277@jobsfeel.com', '9261013618', NULL, '2023-02-25 13:54:16', '2023-02-26 03:29:23'),
(26, 'Bin Akilan', NULL, '09261013619', NULL, '2023-02-26 04:21:11', '2023-02-26 04:21:11'),
(27, 'Bin', 'tigenaj277@jobsfeel.com', '956898898', 'sah', '2023-03-01 03:38:49', '2023-03-01 03:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_body` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`) VALUES
(2, 'email_verification', 'Verify Your Email', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f3c623e207b637573746f6d65725f6e616d657d3c2f623e2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e506c6561736520636c69636b20746865206c696e6b2062656c6f7720746f2076657269667920796f757220656d61696c2e3c2f703e3c703e7b766572696669636174696f6e5f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c2f703e3c703e7b776562736974655f7469746c657d3c2f703e),
(3, 'order_received', 'Order Received', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220686173206265656e2072656365697665642e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(4, 'order_preparing', 'Preparing Your Order', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e4368656620686173207374617274656420707265706172696e6720796f7572206f72646572656420666f6f64732e3c62723e4f72646572204e756d6265723a266e6273703b20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(5, 'order_ready_to_pickup', 'Your Order is Ready to Pickup', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220697320726561647920746f207069636b75702e204f75722064656c6976657279206d616e2077696c6c207069636b20757020746865206f7264657220736f6f6e2e3c62723e4f72646572204e756d6265723a266e6273703b20237b6f726465725f6e756d6265727d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(6, 'order_ready_to_pickup_pick_up', 'Your order is ready to pick up', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220697320726561647920746f207069636b75702e20506c65617365207069636b757020796f7572206f7264657220617420796f75722063686f73656e206461746520262074696d652e3c62723e4f72646572204e756d6265723a266e6273703b20237b6f726465725f6e756d6265727d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(7, 'order_pickedup', 'Order has been pickedup', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f7572206f72646572206973207069636b656420757020666f722064656c69766572792e2049742077696c6c206265206172726976656420696e206120666577206d6f6d656e74732e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(8, 'order_pickedup_pick_up', 'You have picked up Ordered Food', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f75722068617665207069636b656420757020796f7572206f72646572656420466f6f642e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(9, 'order_delivered', 'Order has been Delivered', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220686173206265656e2064656c6976657265642e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(10, 'order_cancelled', 'Order is Cancelled', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f203c623e7b637573746f6d65725f6e616d657d3c2f623e2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220686173206265656e2063616e63656c6c65642e3c62723e4f72646572204e756d6265723a207b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e3c623e7b776562736974655f7469746c657d3c2f623e3c2f703e),
(11, 'order_ready_to_serve', 'Your order is ready to serve on table', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f7572206f7264657220697320726561647920746f207365727665206f6e207461626c652e205761697465722077696c6c2073657276657220746865206f7264657220696e2061206d6f6d656e742e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(12, 'order_served', 'You order is served on table', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f7572206f7264657220697320736572766564206f6e20796f7572207461626c652e20456e6a6f7920796f757220466f6f642e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(13, 'food_checkout', 'Order has been placed', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f7572206f7264657220686173206265656e20706c61636564207375636365737366756c6c792e205765206861766520617474616368656420616e20696e766f69636520696e2074686973206d61696c2e3c62723e4f72646572204e756d6265723a20237b6f726465725f6e756d6265727d3c2f703e3c703e3c62723e506c6561736520636c69636b206f6e207468652062656c6f77206c696e6b20746f2073656520796f7572206f726465722064657461696c732e3c62723e7b6f726465725f6c696e6b7d3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(14, 'reservation_accept', 'Reservation Request Accepted', 0x3c703e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c703e3c62723e596f75207265736572766174696f6e207265717565737420686173206265656e2061636365707465642e3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e),
(15, 'reservation_reject', 'Reservation Request Rejected', 0x3c70207374796c653d226c696e652d6865696768743a20312e363b223e48656c6c6f207b637573746f6d65725f6e616d657d2c3c2f703e3c70207374796c653d226c696e652d6865696768743a20312e363b223e3c62723e596f75207265736572766174696f6e207265717565737420686173206265656e2072656a65637465642e3c2f703e3c703e3c62723e3c2f703e3c703e4265737420526567617264732c3c62723e7b776562736974655f7469746c657d3c2f703e);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `question`, `answer`, `serial_number`) VALUES
(20, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 1),
(21, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 2),
(22, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 3),
(23, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 4),
(24, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 5),
(25, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 6),
(26, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 7),
(27, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 8),
(28, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 9),
(29, 176, 'Why this app is so awesome', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.', 10);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `image`, `title`, `serial_number`, `created_at`, `updated_at`) VALUES
(61, 176, '1677597379.png', 'Giveaway Winner', 1, NULL, NULL),
(63, 176, '1677599777.jpg', 'Giveaway Winner', 2, NULL, NULL),
(64, 176, '1677599962.jpg', 'Giveaway Winner', 3, NULL, NULL),
(65, 176, '1677600168.png', 'Giveaway Winner', 5, NULL, NULL),
(66, 176, '1677600289.jpg', 'Giveaway Winner', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `language_id`, `title`, `image`, `serial_number`, `created_at`, `updated_at`) VALUES
(78, 176, 'Boti Kabab', '1598075956.jpg', 1, '2020-08-21 23:59:16', '2020-08-21 23:59:16'),
(79, 176, 'Chef Cooking', '1598076003.jpg', 2, '2020-08-22 00:00:03', '2020-08-22 00:00:03'),
(80, 176, 'Blackberry', '1598076734.jpg', 3, '2020-08-22 00:12:14', '2020-08-22 00:12:14'),
(81, 176, 'Cutting Vegetables', '1598076779.jpg', 4, '2020-08-22 00:12:59', '2020-08-22 00:12:59'),
(82, 176, 'Black Burger', '1598076815.jpg', 5, '2020-08-22 00:13:35', '2020-08-22 00:13:35'),
(83, 176, 'Wine Glasses', '1598076856.jpg', 6, '2020-08-22 00:14:16', '2020-08-22 00:14:16'),
(84, 176, 'Tomatoes', '1598076946.jpg', 7, '2020-08-22 00:15:46', '2020-08-22 00:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `endpoint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `endpoint`, `created_at`, `updated_at`) VALUES
(3, 'https://fcm.googleapis.com/fcm/send/dRDyV7OmiFg:APA91bHVyRIr4Fex43DVFIM_CC6Ldo9hieQFcgewtgoLNGfK_fpIzFgGAAP_INoOTjnmOzSjg5K1qJUKKLefZuz5uQBj3YFFuyREw5YqWVQt7AJTeAfo-bfiFEz6-BytS3JoYseML_wt', '2020-12-26 07:38:28', '2020-12-26 07:38:28'),
(4, 'https://fcm.googleapis.com/fcm/send/dt--VeNXQpk:APA91bEXROqytusuQiBN-WidokRxoe_IH7kR6Qi6zXD1Ajx-XyQ4EtEoJxg62WwI-j0RFq2xUjBe-Is7h17zlUMntaf4mgCUeDFtLiW98h8xoOfL3ynutkpMHmyqoldRHVZDZGOQY98X', '2020-12-26 10:04:17', '2020-12-26 10:04:17'),
(5, 'https://fcm.googleapis.com/fcm/send/fetLuDtmxNg:APA91bHqqBZBZzCuFd8Ae3hGHo5q972ktIjfZuRzek59nJXiwdn88UBtnuU9IwaxVznCJGxn1SdhlOFZ8sIsGyVBoK-GIm6KCk0iTuvwc1e3o0H4hfunWZe-o98HQpIXpYDAkan0DiAy', '2021-03-24 07:37:03', '2021-03-24 07:37:03'),
(6, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABgXhAyYoUVkJ8ymIaucMN78o9LdNIJ2ZhWATCMTUa79O7Q_6IWuwZlWOkNi33elgKb73GjntPc0ErLR7FF9b0UU0BNiDpJdsEv0uqcGKdNWkiYlAdlmNPaR0rKI8VivAkeCPzjYhykXGdYpXVpR3TxceTSpWBzxivvTpCTLQlUq72QNO8', '2021-03-26 11:47:44', '2021-03-26 11:47:44'),
(7, 'https://fcm.googleapis.com/fcm/send/cmWvhqu3tv8:APA91bFobMGJpxJvuqHpFU7Y5vtVZNcvsykv_So9xDDoCqKLewXINW8QbmIkpha9i7CJZPAoaZjST1cJPnwwa0rbp-VCk8LOWRoxcuIyyUlsOIFCMCOwysBSFZm_1eBbVV9aeyLSENGc', '2021-04-03 00:02:31', '2021-04-03 00:02:31'),
(8, 'https://fcm.googleapis.com/fcm/send/eh4uTNYjL8g:APA91bEX1UoNIWd9wkORCAREAofoRcvvbmRdDNMQwd1d-EZ0lbfCU5CUXewaZucNBK81XO0z6h0LnUaBFPHRlEDrUGm90vu_GHDd5lrndy3l6Otqf5i921YWUa-Xwn4i0MSW5uoPAeMQ', '2021-04-16 11:36:28', '2021-04-16 11:36:28'),
(9, 'https://fcm.googleapis.com/fcm/send/dObB80OmAaw:APA91bFv7cirSdv3z2G0IU7AlDsIylsVt5C2Z3q53ZUNLMlvlOIfQiOshMF-xKknu8706NDLq9PJyhl7eCdOZlzw-pxRrgsW-p2PjU9N1bePkHnYSIPnTp5a4g1N1tDQQQQWNDjy9slX', '2021-05-06 09:40:57', '2021-05-06 09:40:57'),
(10, 'https://fcm.googleapis.com/fcm/send/eZKf01giLZc:APA91bH4tmbQ3s4Lv-B9nztPSZW3yd7Y2uXC-60sHsGIhKkOlUxP6oC68n37Vtq-FBk-OlTVlU76weuJ_vrW0BliQoqvrNRb8xstdCONgBIs47-5fgbphTiuONZgUp1nDtX8LfcFM-Iy', '2021-05-23 00:31:34', '2021-05-23 00:31:34'),
(11, 'https://fcm.googleapis.com/fcm/send/cPVrToqh8P0:APA91bEiMbgqN8bDAhr0mbdzXPcFOvc77t1WzG17LnxbEo7shs1OJ-UhjuXbKMj71Nx0_EjBlZNmj4Nl44WiksfgkV3COShKvj02S_ZpkTe5fD6WFwtIlPZ6LO-IrH57t-lVOinUQkHw', '2022-03-08 11:07:58', '2022-03-08 11:07:58'),
(12, 'https://fcm.googleapis.com/fcm/send/eSdjeQS-6ec:APA91bFUxeQX0vknYUYO5cF4Bau2chgFvbcNkVDiWxQzJFCC-koRWSuqHWlB-CNygN8YDUgGxCLD5EVEx8MpSGHTxkTpypT7lCxo9MiYVJdRjmLkxlLilJmyI2277FKumLhLbQM55CmZ', '2022-03-25 09:37:15', '2022-03-25 09:37:15'),
(13, 'https://fcm.googleapis.com/fcm/send/fVC8cace-fw:APA91bEWCMtj2rRSwKQ1q6JQKrdw5X4JAk8FKP6kbWS9Zr7koUH_yRlG7mVwaycVt20EO7UYs0xe3DP26Xba3xGo4tPhS3Rjapa3i-2MNewsDloDPsDppAFkm-X4FKqpWqS_Vk6L9XMS', '2022-03-25 15:10:08', '2022-03-25 15:10:08'),
(14, 'https://fcm.googleapis.com/fcm/send/eAFjl2NwK-s:APA91bEp8b2PiBhmwX_zmnbBUTHukeW5vNABILeBOl5rsDHvN95kgd_3ywilHH9NfNnYpm7a7aJgNPXUc0gJ_7uaFuYjitNc-QRbXz7ys5ZGdtfSKOnGpiuyegInmd4Gzk2SpknKc4wc', '2022-03-26 05:55:51', '2022-03-26 05:55:51'),
(15, 'https://fcm.googleapis.com/fcm/send/cYxO9t_xdXE:APA91bGQ1gBBBwp_ci8cdd_QyMhpiNn_YQHz5T7jYq_Rpy361fJn38T1n4_JepcLWvTVcWKS0_rKSxDZwj98j4tcKJ4WDTYftcpmHSOwzZ_wHMo-DbmOg7OCmo1H5bmM_qzs1JwSsKq3', '2022-03-26 06:11:44', '2022-03-26 06:11:44'),
(16, 'https://fcm.googleapis.com/fcm/send/fL9PPVT6jlM:APA91bF1dsI1uMzo_fGgOiP-6G_LSRBmOpdao8C9sSPUtd4Pu9bvcJbOcFmiCbEKxdD2TGk6elsRlMa44pw4m73kcZy1Z6dWdk4uFxoqwF542pO4ZgneVD6DT1-2cCiMcadxvdHmQAQv', '2022-03-26 06:11:59', '2022-03-26 06:11:59'),
(17, 'https://fcm.googleapis.com/fcm/send/dvFmtOYkKOE:APA91bHpWKVtET2wBSGnEvLtLXpy5S150lRksdlSMTIDfiUNahnnOsJErkgga8EjvraIjSHkSe_epQEiN7naxS7w8vz9PmnOURQi4Bu4dBQj--WhHTyH50BPXBF_ZIVKcaOIlo3KVadt', '2022-03-26 06:33:01', '2022-03-26 06:33:01'),
(18, 'https://fcm.googleapis.com/fcm/send/fVc8RLnHZ6M:APA91bG2us8fW833NzlJ1ilqh8kkVoNrbKck6JZezNXegKjw8NwAm8vDovgpLndAmHNJA6gRfznPD_Rc8vwJ7XXOE3pE0KBokTaozkMq5M4UbPp8MReZ3ho6_iyqx9FrnXjnpxR9wxpa', '2022-03-28 13:24:40', '2022-03-28 13:24:40'),
(19, 'https://fcm.googleapis.com/fcm/send/fgbnPkwsCU8:APA91bGJfLBxkTgEtJePLRIsyfSu2BIPQ22BYwHpAhVrA4whhAdsiHpOSOVr4Vcmp_pTLgRfP2PisJm_fG7so9YU0lNjbXEYHQJ24RkHcDf2eI3mP_5_BM9ALtjdM78nUxodMPYY4k5x', '2022-03-29 07:23:02', '2022-03-29 07:23:02'),
(20, 'https://fcm.googleapis.com/fcm/send/ePVbno9kWtA:APA91bHQi13UwmBnf_z9erJ2VBB78MK_hfeRvQ2tDeLiDgHC4Sl71dDktuhYtjOEamBq_w75T9_Nu0tJqw3YPRPqKW09ObMCn9LiA6pbQKWNYnJujatjDFL0VzZAhB_RLPo8KAdadkqz', '2022-03-29 07:26:21', '2022-03-29 07:26:21'),
(21, 'https://fcm.googleapis.com/fcm/send/dgvxW5cNw5g:APA91bH8Au63veVx1bkKpGB0g_MxoQICgJ3bWaP-QtyowdorZUGcayo5xASkTEFjJri6IjOyvRP7WKCv4jbr4RxT4PD_zr-3AwHlpG00d8rDd-bTvzyvTK2Aj0r59zpKtNSEw8a99VlZ', '2022-03-29 09:33:41', '2022-03-29 09:33:41'),
(22, 'https://fcm.googleapis.com/fcm/send/dH8KnORYEVQ:APA91bEJFuFWl1iloiH44Fuot4Gnoh5p0aUxs_mtrPVsm7O3Dkjd8vELa2DeW9ETdHFcSBkyZt8g0dERLI7jZU3sz5Kv0UP8S2UuDgkRGHC3hRIDp9PdYR8srv-7y_EitmUEY8kBhE9M', '2022-03-29 09:49:54', '2022-03-29 09:49:54'),
(23, 'https://fcm.googleapis.com/fcm/send/eV2Fy6cICFg:APA91bH64deQsEs8og6oMqWSN0IV80-6IJtBR0MmRHwpm6vNvyY1Q-mVU8IK9x_BvxPuTNje_k1Ur6G1WhNqi_kmlCXQZoikKjkeOuLzQ0JjcoT5enML53YCw__PX9i_yathf5ajux8x', '2022-03-29 11:31:26', '2022-03-29 11:31:26'),
(24, 'https://fcm.googleapis.com/fcm/send/fjhrX4tX4Cc:APA91bGSxATfx2askizSwnj_XEEe1dirC38jMXFsCL-Nip69CVioMNbApRMS8_A3RzlWDBXI1sUm2DdSq0-OnXsqO1fror-THjD3R107bF_OBsJWSy4YfrBCdlqD_KZVP_MO3FJbIyIO', '2022-04-04 14:22:56', '2022-04-04 14:22:56'),
(25, 'https://fcm.googleapis.com/fcm/send/dMfJBWeK59g:APA91bHVx8OoUaqqaZROwpYLGi0oL_hpP27-BHhKWcsb_Cf3JhO_0nfblhoeyZWsntig9h4yIv20-lwaiIUVaKQcZ_GtyC1P4DWizrLSkGtYLUtO1Erv9Q5SN1gPfGFy9BN9-J9M17Qi', '2022-04-06 14:45:27', '2022-04-06 14:45:27'),
(26, 'https://fcm.googleapis.com/fcm/send/eFLG-3oEzKI:APA91bF934GtVfeJ3I-0pekZ3k2uYGQyExkei8SLug9CuMb0uXNj8p0kkc_kGPuzAbW0oVt3hlOWdNKmChP2aAWkPRwfGtkxgnDodUhkEZamoo92yi50N6Q65AOOGJVrydcjfVmWFoWF', '2022-05-25 12:10:23', '2022-05-25 12:10:23'),
(27, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj0RuOa7aBP6CWUx1o17wmhVpcqdQKyt8wlYx0MJ1EfVbWCXEuPu1MTRpia9cRxejBBx9UeMwWUfedETBwT1U-FwH629Phn_bHGrsP81mSFYKjYIFkHGW4EvKCvosgmeUH2ma8JC57WQE4cRLvaxeH3Axf71NE1UmlJBVMb5mCehLZ9FE', '2023-01-25 10:07:42', '2023-01-25 10:07:42'),
(28, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj0TYp7oZdLe_y9wHV-MhB8RdmYXlBHUZRnknbRxXT9kwgwrZDI5jTTIEbLFrQ_RXIHffzKCfKG1Ok6lG1mWXdqZC0_U5j5RknK4lAzPhcFi9ZN3PIxPujhTqhjtDY8fNvDZUqO4G6aL4tzf9sPtQup3K0FTu8QIjsJCFPdvtxMWkELWk', '2023-01-25 21:29:01', '2023-01-25 21:29:01'),
(29, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj1Stv7ymAKqzjZo61omEWlpTpEyz01vCgniKosz0QQEYwXi1jIC_b1lMfotjVYEmFnkhFRO44tJG8lOJq9NUYDGf-Dr4AGTjSmNitd_ezMYLk8COKA4cz1UL_7w0zn9DV3omSFd2kGdTA0B5eYHa_GP-SUshw2Vio_aW9xJ_ujcxdrJE', '2023-01-28 12:04:32', '2023-01-28 12:04:32'),
(30, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj27GX3iNeXwu1etdvOKZB4TOKl_rVbI-Nmy-uowT54WaeRB0pTO5W8VkwnpoXH0RQ56TgSN8dkYuk_ba2vYAb_BfsrIBFeweunGbPUoQqU_1JaSO2TRMsUGlo1MTSR_nBCpZ2v9ZRsTfuMZ1vSvmw3GSn29_bDVOj0EFhVggPXnCTef8', '2023-02-02 10:50:32', '2023-02-02 10:50:32'),
(31, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj405bcqVxFYGypAY2iUP2tCtyIDs1pDCkma5IOffNzoAHUEpxZtsMayl6RsD4dyjGI4iaaSc1uSfBLO6jcCa_Zywx0EsZ30jYwJf-cpz145N4qx2r2YW4bSsxFypndoeLySjRcNAuODpV5XiAH2mv0n1_Ns5Dl89cZrinh0pUml-F3rc', '2023-02-08 05:25:15', '2023-02-08 05:25:15'),
(32, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj6mLLxrmVre-2sBBLQjLEELE9WCOGYopL8y9beV6e-svOEqC7N5C2tVMul4ZxxZeoJbzlk9ChWiwadRY9vM-CSGeR2EeyvzUnvGznvhOiMEFIrMDC6zOiNcZ95zkLfxKaarnmErl1OTwSBPOKEfKDJ6BQitTANNHdp0KCtjTnwtv_xRQ', '2023-02-28 15:44:47', '2023-02-28 15:44:47'),
(33, 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj_2-IrOPSRM4s_vapetvjV4W-L-4q6eTwAKSPMQBfVBlsnSypYevXYerNHQkKizAG2b6R-KlPR9-1ALEnzBncFdMoDADPDO1ZXFcF78U5wlv3sB_GzcyKv0Q5bmX4Kc_TCWuMW_r19yo2-pbOu30coTOWrCN9ttPBVMxNEK49S_5GDd8', '2023-03-01 04:30:17', '2023-03-01 04:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `jcategories`
--

CREATE TABLE `jcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jcategories`
--

INSERT INTO `jcategories` (`id`, `language_id`, `name`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(22, 176, 'Web Developer', 1, 1, '2019-12-21 20:34:11', '2020-02-10 21:01:36'),
(23, 176, 'Web Designer', 1, 2, '2019-12-21 20:34:22', '2020-02-10 21:01:30'),
(24, 176, 'Team Leader', 1, 3, '2019-12-21 20:35:02', '2020-02-10 21:39:34'),
(25, 176, 'IOS Developer', 1, 4, NULL, NULL),
(26, 176, 'Andriod Developer', 1, 5, '2019-12-21 20:35:27', '2020-02-10 21:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jcategory_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` int(11) DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_responsibilities` blob DEFAULT NULL,
  `employment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educational_requirements` blob DEFAULT NULL,
  `experience_requirements` blob DEFAULT NULL,
  `additional_requirements` blob DEFAULT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` blob DEFAULT NULL,
  `benefits` blob DEFAULT NULL,
  `read_before_apply` blob DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `jcategory_id`, `language_id`, `title`, `slug`, `vacancy`, `deadline`, `experience`, `job_responsibilities`, `employment_status`, `educational_requirements`, `experience_requirements`, `additional_requirements`, `job_location`, `salary`, `benefits`, `read_before_apply`, `email`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(17, 22, 176, 'Software Engineer - Laravel, Vue JS', 'software-engineer-laravel-vue-js', 3, '12/31/2019', '3 to 4 year(s)', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'Full-time', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'Remote Job', 0x3c7370616e207374796c653d22666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e24323030303c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3c62723e, 'drop_your_cv@plusagency.com', 1, NULL, NULL, '2019-12-21 20:44:00', '2020-02-10 21:49:54'),
(18, 22, 176, 'PHP Developer - Laravel, Codeigniter', 'php-developer-laravel-codeigniter', 2, '12/31/2019', '2 to 3 year(s)', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'Full-time', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'California, USA', 0x3c7370616e207374796c653d22666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e2431303030202d2024313530303c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3c666f6e7420636f6c6f723d2223666633623330223e2a50686f746f67726170683c2f666f6e743e266e6273703b6d75737420626520656e636c6f73656420776974682074686520726573756d652e3c62723e, 'drop_your_cv@plusagency.com', 2, NULL, NULL, '2019-12-21 21:14:03', '2020-02-10 21:49:54');
INSERT INTO `jobs` (`id`, `jcategory_id`, `language_id`, `title`, `slug`, `vacancy`, `deadline`, `experience`, `job_responsibilities`, `employment_status`, `educational_requirements`, `experience_requirements`, `additional_requirements`, `job_location`, `salary`, `benefits`, `read_before_apply`, `email`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(19, 23, 176, 'Front End Software Engineer', 'Front-End-Software-Engineer', 5, '12/27/2019', '2 to 5 year(s)', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'Full-time', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3120746f20332079656172733c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c62723e, 'Paris, France', 0x3c7370616e207374796c653d22666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269662c20736f6c61696d616e6c6970693b223e4e65676f746961626c653c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c7370616e207374796c653d226261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c62723e3c7370616e207374796c653d226261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c62723e3c7370616e207374796c653d226261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c62723e3c7370616e207374796c653d226261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c62723e, 'drop_your_cv@plusagency.com', 3, NULL, NULL, '2019-12-21 21:15:20', '2020-02-10 21:49:54'),
(20, 24, 176, 'Agriculture Market Systems Leader', 'agriculture-market-systems-leader', 4, '12/28/2019', 'At least 7 year(s)', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206d75737420686176652070726163746963616c20657870657269656e6365206f6e204e6f64652e6a732c20547970655363726970742c207765627061636b20616e64205468697264207061727479206c6962726172792e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'Full-time', 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e6365642077697468205549206672616d65776f726b7320696e2067656e6572616c3b207765206c6f76652074686520416e67756c617220616e6420416e67756c6172206d6174657269616c2e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520746f20626520657870657269656e63656420696e206275696c64696e672053696e676c652050616765204170706c69636174696f6e732028535041292026616d703b20696e746567726174696e672057656220285265737429204150492e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e57656c6c20766572736564207769746820416e67756c6172206d6f64756c6573206f7220796f752068617665206372656174656420637573746f6d20616e642077656220636f6d706f6e656e747320627920796f757273656c662e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 'California, USA', 0x2431303030202d2024313530303c62723e, 0x3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f75206861766520616e20696e2d646570746820756e6465727374616e64696e67206f662063726f73732062726f7773657220636f6d7061746962696c69747920616e6420796f7520646f206e6f7420637265617465206275677320666f72207375636820726561736f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752061726520706978656c2d7065726665637420696e2064657369676e20636f6e76657273696f6e7320616e6420796f75207468696e6b206f66206d6f62696c652d666972737420696d706c656d656e746174696f6e732e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e3c62723e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a2031302e3570743b206261636b67726f756e642d696d6167653a20696e697469616c3b206261636b67726f756e642d706f736974696f6e3a20696e697469616c3b206261636b67726f756e642d73697a653a20696e697469616c3b206261636b67726f756e642d7265706561743a20696e697469616c3b206261636b67726f756e642d6174746163686d656e743a20696e697469616c3b206261636b67726f756e642d6f726967696e3a20696e697469616c3b206261636b67726f756e642d636c69703a20696e697469616c3b206c696e652d6865696768743a20323870783b20666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b223e596f752073686f756c642068617665206b6e6f776c65646765206f66204353532070726570726f636573736f72732c204d6564696120717565726965732c20496d61676520636f6d7072657373696f6e20616e6420626520676f6f64207769746820646562756767696e672e3c2f7370616e3e3c62723e, 0x3c62723e, 'drop_your_cv@plusagency.com', 4, NULL, NULL, '2019-12-21 21:16:28', '2020-02-10 21:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 1,
  `rtl` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - LTR, 1- RTL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `rtl`, `created_at`, `updated_at`) VALUES
(176, 'English', 'en', 1, 0, '2020-08-07 04:43:05', '2020-12-31 09:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `language_id`, `name`, `rank`, `image`, `twitter`, `facebook`, `instagram`, `linkedin`, `feature`, `created_at`, `updated_at`) VALUES
(53, 176, 'Selina Gomez', 'CEO & Founder', '1597736037.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(54, 176, 'Andress Pirlo', 'Manager, Superv', '1597749461.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(55, 176, 'Christina Grimmie', 'Master Chef', '1597749478.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(56, 176, 'Roza Bela', 'Burger Chef', '1597749496.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 0, NULL, NULL),
(57, 176, 'Cesc Fabrigus', 'Set Menu Chef', '1597749511.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 0, NULL, NULL),
(62, 176, 'Gondon Ramsay', 'Dessert Chef', '1598691630.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 0, NULL, NULL),
(63, 176, 'Frank Lampard', 'Beverage Chef', '1598691925.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 0, NULL, NULL),
(64, 176, 'Chistopher Helen', 'Waiter, Superv', '1598691992.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 0, NULL, NULL),
(65, 176, 'Chrissy Costanza', 'Waiter, Superv', '1598692028.jpg', 'https://twitter.com/', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.instagram.com/', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `menus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(116, 176, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Menu\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu_1\"},{\"text\":\"Items\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"Foods\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"items\"}]},{\"text\":\"Checkout\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"checkout\"},{\"text\":\"About\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]}]', '2023-02-25 12:14:33', '2023-02-25 12:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_04_10_155226_add_pos_to_serving_methods', 1),
(5, '2021_04_10_161129_create_pos_payment_methods', 2),
(6, '2021_04_11_075502_create_customers_table', 3),
(7, '2021_04_11_151305_create_tables_table', 4),
(8, '2021_04_16_175547_add_qr_image_to_tables', 5),
(10, '2021_04_16_184950_add_qr_cols_to_table', 6),
(11, '2021_05_06_172702_add_image_to_tables', 7),
(12, '2021_05_06_182658_add_image_size_to_tables', 8),
(13, '2021_05_07_141846_change_defailt_image_size', 9),
(14, '2021_05_07_165729_drop_background_color_from_tables', 10),
(15, '2021_05_07_170622_add_image_position_cols_to_tables', 11),
(17, '2021_05_08_104914_add_type_and_text_cols_to_tables', 12),
(18, '2021_05_08_113457_add_default_value_to_text_color_in_tables', 13),
(19, '2021_05_08_174437_add_default_value_to_text_size_in_tables', 14),
(20, '2021_05_08_194033_add_qr_image_cols_to_basic_extendeds', 15),
(21, '2021_05_10_155349_add_gateway_type_to_product_orders', 16),
(24, '2021_05_11_180827_add_token_no_in_basic_settings', 17),
(25, '2021_05_11_181941_add_token_no_after_order_number_in_product_orders', 17),
(28, '2021_05_13_083313_create_postal_codes_table', 18),
(29, '2021_05_13_101831_add_postal_code_to_basic_settings', 19),
(32, '2021_05_16_105019_add_postal_code_to_product_orders', 20),
(33, '2021_05_18_130916_add_call_waiter_status_to_basic_settings', 21),
(34, '2021_05_18_194729_add_contact_infos_to_basic_settings', 22),
(36, '2021_05_19_081335_create_popups_table', 23),
(37, '2021_05_19_122217_drop_announcement_cols_from_basic_settings', 24),
(38, '2021_05_19_125220_drop_parent_link_col_from_basic_settings', 25),
(40, '2021_05_19_125534_add_whatsapp_chat_cols_to_basic_settings', 26),
(41, '2021_05_20_120604_add_order_close_cols_to_basic_extendeds', 27),
(42, '2022_03_13_165621_create_psub_categories_table', 28),
(43, '2022_03_13_180650_add_subcategory_id_to_products_table', 28),
(44, '2022_03_17_131144_add_free_delivery_amount_to_postal_codes', 29),
(45, '2022_03_17_194525_add_free_delivery_amount_to_shipping_charges', 30),
(46, '2022_04_18_133021_create_basic_extras', 31),
(49, '2022_04_19_155032_add_country_code_to_users_table', 32),
(51, '2022_04_21_120742_add_country_code_in_product_orders', 33),
(52, '2022_04_23_124847_add_whatsapp_order_notification_based_on_serving_methods', 34),
(53, '2022_04_23_144354_add_twilio_credentials_in_basic_extras', 35),
(54, '2022_05_25_195401_add_is_feature_in_psub_categories', 36);

-- --------------------------------------------------------

--
-- Table structure for table `offline_gateways`
--

CREATE TABLE `offline_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructions` blob DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `is_receipt` tinyint(4) NOT NULL DEFAULT 1,
  `receipt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_gateways`
--

INSERT INTO `offline_gateways` (`id`, `name`, `short_description`, `instructions`, `status`, `serial_number`, `is_receipt`, `receipt`, `created_at`, `updated_at`) VALUES
(1, 'GCASH', 'Please send your payment to the following account.\r\nGcash Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number: 09261003618', 0x3c70207374796c653d226c696e652d6865696768743a20312e383b223e3c62723e3c2f703e, 1, 1, 1, NULL, '2020-09-17 01:06:39', '2023-02-08 05:47:04'),
(2, 'Bank Transfer', 'Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Numbe: 12345678', 0x3c62723e, 1, 2, 1, NULL, '2020-09-17 01:07:37', '2023-02-08 05:47:23'),
(3, 'Cash On Delivery', NULL, 0x3c703e3c62723e3c2f703e, 1, 3, 0, NULL, '2020-09-17 02:05:36', '2020-09-17 02:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addons` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variations_price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `addons_price` decimal(11,2) NOT NULL,
  `product_price` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_order_id`, `product_id`, `user_id`, `title`, `qty`, `image`, `variations`, `addons`, `variations_price`, `addons_price`, `product_price`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 65, 12, 'Chicken Shanghai', 1, '1674977813.png', '\"\"', '\"\"', '0.00', '0.00', '580.00', '580.00', '2023-02-08 05:44:17', NULL),
(4, 4, 65, 12, 'Chicken Shanghai', 1, '1674977813.png', '\"\"', '\"\"', '0.00', '0.00', '580.00', '580.00', '2023-02-08 11:46:51', NULL),
(5, 4, 66, 12, 'Fried Chicken (Wings)', 1, '1674977719.png', '\"\"', '\"\"', '0.00', '0.00', '720.00', '720.00', '2023-02-08 11:46:51', NULL),
(6, 5, 65, 22, 'Chicken Shanghai', 1, '1674977813.png', '{\"Sizes\":{\"name\":\"Food Trays\",\"price\":500}}', '\"\"', '500.00', '0.00', '80.50', '580.50', '2023-02-20 04:44:58', NULL),
(13, 12, 66, 12, 'Fried Chicken (Wings)', 1, '1674977719.png', '{\"Sizes\":{\"name\":\"Short Orders (Good for 2-3 people)\",\"price\":0}}', '\"\"', '0.00', '0.00', '200.00', '200.00', '2023-02-25 13:54:16', NULL),
(18, 17, 65, 22, 'Chicken Shanghai', 1, '1674977813.png', '{\"Sizes\":{\"name\":\"Food Trays\",\"price\":500}}', '\"\"', '500.00', '0.00', '80.50', '580.50', '2023-02-26 03:36:16', NULL),
(19, 18, 65, 22, 'Chicken Shanghai', 1, '1674977813.png', '{\"Sizes\":{\"name\":\"Short Orders\",\"price\":0}}', '\"\"', '0.00', '0.00', '80.50', '80.50', '2023-02-26 03:37:27', NULL),
(23, 21, 66, NULL, 'Fried Chicken (Wings)', 2, '1674977719.png', '{\"Sizes\":{\"name\":\"Short Orders (Good for 2-3 people)\",\"price\":0}}', '\"\"', '0.00', '0.00', '400.00', '400.00', '2023-02-26 04:21:11', NULL),
(24, 21, 66, NULL, 'Fried Chicken (Wings)', 1, '1674977719.png', '{\"Sizes\":{\"name\":\"Food Trays (Good for 5-6 people)\",\"price\":500}}', '\"\"', '500.00', '0.00', '200.00', '700.00', '2023-02-26 04:21:11', NULL),
(25, 22, 65, 22, 'Chicken Shanghai', 1, '1674977813.png', '{\"Sizes\":{\"name\":\"Short Orders\",\"price\":0}}', '\"\"', '0.00', '0.00', '80.50', '80.50', '2023-02-27 03:16:09', NULL),
(27, 24, 65, 26, 'Chicken Shanghai', 1, '1674977813.png', '{\"Sizes\":{\"name\":\"Short Orders\",\"price\":0}}', '\"\"', '0.00', '0.00', '80.50', '80.50', '2023-03-01 03:23:40', NULL),
(28, 25, 66, 26, 'Fried Chicken (Wings)', 1, '1674977719.png', '{\"Sizes\":{\"name\":\"Short Orders (Good for 2-3 people)\",\"price\":0}}', '\"\"', '0.00', '0.00', '200.00', '200.00', '2023-03-01 03:38:49', NULL),
(29, 26, 65, 25, 'Chicken Shanghai', 4, '1674977813.png', '{\"Sizes\":{\"name\":\"Short Orders\",\"price\":0}}', '\"\"', '0.00', '0.00', '322.00', '322.00', '2023-03-01 04:40:26', NULL),
(30, 27, 65, 25, 'Chicken Shanghai', 1, '1674977813.png', '{\"Sizes\":{\"name\":\"Short Orders\",\"price\":0}}', '\"\"', '0.00', '0.00', '80.50', '80.50', '2023-03-05 11:11:02', NULL),
(31, 28, 65, 28, 'Chicken Shanghai', 1, '1674977813.png', '{\"Sizes\":{\"name\":\"Short Orders\",\"price\":0}}', '\"\"', '0.00', '0.00', '80.50', '80.50', '2023-03-05 05:31:19', NULL),
(32, 29, 65, 28, 'Chicken Shanghai', 1, '1674977813.png', '{\"Sizes\":{\"name\":\"Short Orders\",\"price\":0}}', '\"\"', '0.00', '0.00', '80.50', '80.50', '2023-03-05 05:42:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_times`
--

CREATE TABLE `order_times` (
  `id` int(11) NOT NULL,
  `day` varchar(100) DEFAULT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_times`
--

INSERT INTO `order_times` (`id`, `day`, `start_time`, `end_time`) VALUES
(1, 'monday', '9:00 AM', '5:00 PM'),
(2, 'tuesday', '10:00 AM', '10:30 PM'),
(3, 'wednesday', '12:00 AM', '11:59 PM'),
(4, 'thursday', '12:00 AM', '11:59 PM'),
(5, 'friday', '4:00 PM', '9:00 PM'),
(6, 'saturday', '12:00 PM', '11:59 PM'),
(7, 'sunday', '12:00 AM', '11:59 PM');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `name`, `title`, `subtitle`, `slug`, `body`, `status`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 176, 'About Us', 'About Us', 'About Us', 'About-Us', 0x3c703e4d696b61792773204b69746368656e20697320612066616d696c792d6f776e656420666f6f6420627573696e657373206c6f636174656420696e2053746f204e69c3b16f2056696c6c6167652c20507574696b2c205a616d626f616e676120436974792c205068696c697070696e65732e2057652073746172746564206f7572206f7065726174696f6e7320696e203230323020776974682061206d697373696f6e20746f206272696e672064656c6963696f757320616e64206166666f726461626c6520666f6f6420746f206f757220637573746f6d6572732720646f6f7273746570732e3c2f703e3c703e3c62723e3c2f703e3c703e4174204d696b61792773204b69746368656e2c2077652062656c6965766520696e207573696e67206f6e6c792074686520667265736865737420696e6772656469656e747320746f20637265617465206f7572206469736865732e204f7572206d656e7520666561747572657320612076617269657479206f6620747261646974696f6e616c2046696c6970696e6f20616e6420696e7465726e6174696f6e616c2063756973696e652c207769746820736f6d657468696e6720666f722065766572796f6e6520746f20656e6a6f792e205768657468657220796f7527726520696e20746865206d6f6f6420666f72206120686561727479206d65616c206f722061206c6967687420736e61636b2c207765206861766520796f7520636f76657265642e3c2f703e3c703e3c62723e3c2f703e3c703e5765206f66666572206469736820626f6f6b696e6720616e642064656c69766572792073657276696365732c20736f20796f752063616e20656e6a6f79206f757220666f6f642066726f6d2074686520636f6d666f7274206f6620796f7572206f776e20686f6d652e2053696d706c7920706c61636520796f7572206f72646572206f6e6c696e65206f72207468726f756768206f75722077656273697465206f722066616365626f6f6b2070616765204d696b61792773204b69746368656e2c20616e64207765276c6c2074616b652063617265206f662074686520726573742e20576520616c736f206f66666572207069636b757020736572766963657320666f722074686f73652077686f2070726566657220746f2067657420746865697220666f6f6420696e20706572736f6e2e3c2f703e3c703e3c62723e3c2f703e3c703e4f757220667269656e646c7920616e642077656c636f6d696e672073746166662077696c6c206d616b65207375726520796f757220666f6f6420697320707265706172656420746f207468652068696768657374207374616e646172647320616e642064656c69766572656420746f20796f75206f6e2074696d652e3c2f703e3c703e57652074616b6520707269646520696e206f757220636f6d6d69746d656e7420746f207175616c69747920616e6420637573746f6d657220736572766963652c20616e642077652073747269766520746f206d616b65206576657279206f726465722066726f6d204d696b61792773204b69746368656e20612073617469736679696e6720657870657269656e63652e20496620796f7527726520696e207468652053746f204e69c3b16f2056696c6c61676520617265612c20776520696e7669746520796f7520746f20747279206f757220666f6f6420616e642073656520666f7220796f757273656c662077687920776527726520717569636b6c79206265636f6d696e672061206c6f63616c206661766f72697465213c2f703e, 1, 1, NULL, NULL, '2020-08-21 04:06:16', '2023-02-14 01:37:49'),
(3, 176, 'Terms & Conditions', 'Terms & Conditions', 'Terms & Conditions', 'Terms-&-Conditions', 0x3c703e5468657365205465726d7320616e6420436f6e646974696f6e7320676f7665726e20796f757220757365206f66205b52657374617572616e7420426f6f6b696e6720576562736974655d20616e64207468652073657276696365732077652070726f766964652e204279207573696e67206f757220776562736974652c20796f7520616772656520746f20626520626f756e64206279207468657365205465726d7320616e6420436f6e646974696f6e732e20496620796f7520646f206e6f7420616772656520746f207468657365207465726d732c20706c6561736520646f206e6f7420757365206f757220776562736974652e3c2f703e3c703e3c62723e3c2f703e3c703e3c623e53657276696365204465736372697074696f6e3c2f623e3c2f703e3c703e4d696b6179736b69746368656e20697320616e206f6e6c696e6520706c6174666f726d207468617420616c6c6f777320796f7520746f206d616b652072657374617572616e74207265736572766174696f6e7320616e64206d616e61676520796f7572206163636f756e742e204f75722073657276696365732061726520696e74656e64656420666f7220706572736f6e616c20616e64206e6f6e2d636f6d6d65726369616c207573652e3c2f703e3c703e3c62723e3c2f703e3c703e3c623e4163636f756e74204372656174696f6e20616e64204d616e6167656d656e743c2f623e3c2f703e3c703e546f20757365206f75722073657276696365732c20796f75206d7573742063726561746520616e206163636f756e742077697468204d696b6179736b69746368656e2e20596f752061726520726573706f6e7369626c6520666f72206d61696e7461696e696e672074686520636f6e666964656e7469616c697479206f6620796f7572206163636f756e7420696e666f726d6174696f6e2c20696e636c7564696e6720796f75722070617373776f72642c20616e6420666f72207265737472696374696e672061636365737320746f20796f757220636f6d70757465722e20596f7520616772656520746f2061636365707420726573706f6e736962696c69747920666f7220616c6c20616374697669746965732074686174206f6363757220756e64657220796f7572206163636f756e742e3c2f703e3c703e3c62723e3c2f703e3c703e3c623e5061796d656e7420616e6420526566756e64733c2f623e3c2f703e3c703e596f7520616772656520746f2070617920666f7220616c6c206368617267657320696e63757272656420627920796f75206f7220616e79207573657273206f6620796f7572206163636f756e742c20696e636c7564696e6720616e79206170706c696361626c652074617865732e205765206d6179206f6666657220726566756e647320696e206f757220736f6c652064697363726574696f6e2c20616e6420616c6c20726566756e64206465636973696f6e73206172652066696e616c2e3c2f703e3c703e3c62723e3c2f703e3c703e3c623e4d6f64696669636174696f6e206f6620536572766963657320616e64205072696365733c2f623e3c2f703e3c703e576520726573657276652074686520726967687420746f206d6f64696679206f7220646973636f6e74696e7565206f757220736572766963657320617420616e792074696d652c2077697468206f7220776974686f7574206e6f746963652c20616e6420776974686f7574206c696162696c69747920746f20796f752e20576520616c736f20726573657276652074686520726967687420746f206368616e67652074686520707269636573206f66206f757220736572766963657320617420616e792074696d652c2077697468206f7220776974686f7574206e6f746963652e3c2f703e3c703e3c62723e3c2f703e3c703e3c623e496e74656c6c65637475616c2050726f70657274793c2f623e3c2f703e3c703e54686520636f6e74656e74206f6e206f757220776562736974652c20696e636c7564696e6720627574206e6f74206c696d6974656420746f20746578742c2067726170686963732c206c6f676f732c20696d616765732c20616e6420736f6674776172652c206973207468652070726f7065727479206f66204d696b6179736b69746368656e206f722069747320737570706c6965727320616e642069732070726f746563746564206279c2a020696e7465726e6174696f6e616c20636f7079726967687420616e642074726164656d61726b206c6177732e20596f75206d6179206e6f7420757365206f7220726570726f6475636520616e7920636f6e74656e7420776974686f7574207468652065787072657373207772697474656e207065726d697373696f6e206f66204d696b6179736b69746368656e2e3c2f703e3c703e3c623e3c62723e3c2f623e3c2f703e3c703e3c623e446973636c61696d6572206f662057617272616e746965733c2f623e3c2f703e3c703e4f7572207765627369746520616e64207365727669636573206172652070726f7669646564202261732069732220616e642022617320617661696c61626c652220776974686f75742077617272616e74696573206f6620616e79206b696e642c206569746865722065787072657373206f7220696d706c6965642c20696e636c7564696e6720627574206e6f74206c696d6974656420746f2077617272616e74696573206f66206d65726368616e746162696c6974792c206669746e65737320666f72206120706172746963756c617220707572706f73652c20616e64206e6f6e2d696e6672696e67656d656e742e205b52657374617572616e7420426f6f6b696e6720576562736974655d20646f6573206e6f742077617272616e742074686174207468652066756e6374696f6e7320636f6e7461696e656420696e207468652077656273697465206f722073657276696365732077696c6c20626520756e696e746572727570746564206f72206572726f722d667265652c207468617420646566656374732077696c6c20626520636f727265637465642c206f722074686174207468652077656273697465206f7220746865207365727665722074686174206d616b657320697420617661696c61626c65206172652066726565206f662076697275736573206f72206f74686572206861726d66756c20636f6d706f6e656e74732e3c2f703e3c703e3c623e3c62723e3c2f623e3c2f703e3c703e3c623e4c696d69746174696f6e206f66204c696162696c6974793c2f623e3c2f703e3c703e4d696b6179736b69746368656e207368616c6c206e6f74206265206c6961626c6520666f7220616e792064616d61676573206f6620616e79206b696e642061726973696e672066726f6d2074686520757365206f66206f75722077656273697465206f722073657276696365732c20696e636c7564696e6720627574206e6f74206c696d6974656420746f206469726563742c20696e6469726563742c20696e636964656e74616c2c2070756e69746976652c20616e64203c2f703e3c703e636f6e73657175656e7469616c2064616d616765732e3c2f703e3c703e3c62723e3c2f703e3c703e3c623e496e64656d6e696669636174696f6e3c2f623e3c2f703e3c703e596f7520616772656520746f20696e64656d6e69667920616e6420686f6c64205b52657374617572616e7420426f6f6b696e6720576562736974655d206861726d6c6573732066726f6d20616e6420616761696e737420616e7920616e6420616c6c20636c61696d732c206c6f737365732c206c696162696c69746965732c2064616d616765732c20616e6420657870656e7365732c20696e636c7564696e67206174746f726e6579277320666565732c2061726973696e672066726f6d20796f757220757365206f66206f75722077656273697465206f722073657276696365732e3c2f703e3c703e3c62723e3c2f703e3c703e3c623e476f7665726e696e67204c61773c2f623e3c2f703e3c703e5468657365205465726d7320616e6420436f6e646974696f6e73207368616c6c20626520676f7665726e656420627920616e6420636f6e73747275656420696e206163636f7264616e6365207769746820746865206c617773206f6620746865205374617465206f66205b696e736572742073746174655d2c20776974686f757420676976696e672065666665637420746f20616e79207072696e6369706c6573206f6620636f6e666c69637473206f66206c61772e3c2f703e3c703e3c62723e3c2f703e3c703e3c623e4368616e67657320746f205465726d7320616e6420436f6e646974696f6e733c2f623e3c2f703e3c703e5765206d617920757064617465207468657365205465726d7320616e6420436f6e646974696f6e732066726f6d2074696d6520746f2074696d6520746f207265666c656374206368616e67657320696e206f757220707261637469636573206f72206170706c696361626c65206c6177732e204966207765206d616b6520616e79206d6174657269616c206368616e6765732c2077652077696c6c2070726f76696465206e6f74696365207468726f756768206f75722077656273697465206f72206279206f74686572206d65616e73206173207265717569726564206279206c61772e20596f757220636f6e74696e75656420757365206f66206f7572207765627369746520666f6c6c6f77696e672074686520706f7374696e67206f6620616e79206368616e67657320636f6e737469747574657320796f757220616363657074616e6365206f66207468652075706461746564205465726d7320616e6420436f6e646974696f6e732e3c2f703e3c703e3c623e3c62723e3c2f623e3c2f703e3c703e3c623e436f6e746163742055733c2f623e3c2f703e3c703e496620796f75206861766520616e79207175657374696f6e73206f7220636f6e6365726e732061626f7574207468657365205465726d7320616e6420436f6e646974696f6e73206f72206f757220696e666f726d6174696f6e207072616374696365732c20706c6561736520636f6e74616374207573206174206d696b6179737570706f7274406d696b6179736b69746368656e2e73746f72652e3c2f703e, 1, 2, NULL, NULL, '2020-08-21 04:06:16', '2023-02-14 01:33:06'),
(4, 176, 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 'Privacy-Policy', 0x3c703e4174204d696b61792773204b69746368656e2c20776520756e6465727374616e642074686520696d706f7274616e6365206f66207072697661637920616e6420736563757269747920666f72206f757220637573746f6d6572732e2054686973205072697661637920506f6c696379206f75746c696e657320746865207479706573206f6620696e666f726d6174696f6e20776520636f6c6c6563742066726f6d20796f75207768656e20796f7520757365206f7572206469736820626f6f6b696e6720616e642064656c69766572792073657276696365732c20686f772077652075736520616e642070726f74656374207468617420696e666f726d6174696f6e2c20616e6420796f75722072696768747320616e642063686f6963657320726567617264696e67207468617420696e666f726d6174696f6e2e3c2f703e3c703e576520656e636f757261676520796f7520746f20726561642074686973205072697661637920506f6c696379206361726566756c6c7920616e6420746f20636f6e7461637420757320696620796f75206861766520616e79207175657374696f6e73206f7220636f6e6365726e732e3c2f703e3c703e3c623e3c62723e3c2f623e3c2f703e3c703e3c623e496e666f726d6174696f6e20436f6c6c656374696f6e20616e64205573653c2f623e3c2f703e3c703e54686520696e666f726d6174696f6e20776520636f6c6c6563742066726f6d20796f752068656c707320757320706572736f6e616c697a6520616e6420636f6e74696e75616c6c7920696d70726f766520796f757220657870657269656e63652077697468206f75722073657276696365732e20576520636f6c6c65637420696e666f726d6174696f6e20696e2074686520666f6c6c6f77696e6720776179733a3c2f703e3c756c3e3c6c693e3c703e496e666f726d6174696f6e20796f752070726f766964653a20576520636f6c6c65637420696e666f726d6174696f6e20796f752070726f76696465206469726563746c7920746f2075732c207375636820617320796f7572206e616d652c20616464726573732c2070686f6e65206e756d6265722c20656d61696c20616464726573732c20616e64207061796d656e7420696e666f726d6174696f6e2e3c2f703e3c2f6c693e3c6c693e3c703e496e666f726d6174696f6e20776520636f6c6c656374206175746f6d61746963616c6c793a20576520636f6c6c65637420696e666f726d6174696f6e2061626f757420796f757220757365206f66206f75722073657276696365732c207375636820617320796f7572206f7264657220686973746f727920616e642064656c69766572792064657461696c732e3c2f703e3c2f6c693e3c2f756c3e3c703e5765207573652074686520696e666f726d6174696f6e20776520636f6c6c65637420666f722074686520666f6c6c6f77696e6720707572706f7365733a3c2f703e3c703e3c62723e3c2f703e3c756c3e3c6c693e546f2070726f6365737320796f7572206469736820626f6f6b696e677320616e642064656c697665726965733c2f6c693e3c6c693e546f2073656e6420796f752070726f6d6f74696f6e616c20616e6420696e666f726d6174696f6e616c20656d61696c733c2f6c693e3c6c693e546f20696d70726f7665206f757220736572766963657320616e6420637573746f6d657220657870657269656e63653c2f6c693e3c6c693e3c62723e3c2f6c693e3c2f756c3e3c703e3c623e496e666f726d6174696f6e2053686172696e6720616e6420446973636c6f737572653c2f623e3c2f703e3c703e576520646f206e6f742073656c6c206f722072656e7420796f757220706572736f6e616c20696e666f726d6174696f6e20746f207468697264207061727469657320666f72207468656972206d61726b6574696e6720707572706f7365732e205765206d617920736861726520796f757220696e666f726d6174696f6e20776974682074686972642d706172747920736572766963652070726f76696465727320746f20706572666f726d207365727669636573206f6e206f757220626568616c662c20737563682061732064656c69766572696e6720796f757220666f6f6420616e642070726f63657373696e67207061796d656e74732e20546865736520736572766963652070726f76696465727320617265207375626a65637420746f2073747269637420636f6e666964656e7469616c697479206f626c69676174696f6e7320616e6420617265206f6e6c7920616c6c6f77656420746f2075736520796f757220696e666f726d6174696f6e20666f722074686520707572706f7365206f662070726f766964696e672074686520736572766963657320776520726571756573742e3c2f703e3c703e5765206d617920616c736f20646973636c6f736520796f757220696e666f726d6174696f6e206173207265717569726564206279206c61772c207375636820617320746f20636f6d706c792077697468206120737562706f656e61206f722073696d696c6172206c6567616c2070726f636573732c206f7220746f2070726f7465637420746865207269676874732c2070726f70657274792c206f7220736166657479206f66204d696b61792773204b69746368656e2c2069747320637573746f6d6572732c206f7220746865207075626c69632e3c2f703e3c703e3c62723e3c2f703e3c703e3c623e446174612053656375726974793c2f623e3c2f703e3c703e57652074616b6520746865207365637572697479206f6620796f757220706572736f6e616c20696e666f726d6174696f6e20736572696f75736c7920616e64206861766520696d706c656d656e74656420617070726f70726961746520746563686e6963616c20616e64206f7267616e697a6174696f6e616c206d6561737572657320746f2070726f746563742069742066726f6d20756e617574686f72697a6564206163636573732c207573652c20646973636c6f737572652c20616c7465726174696f6e2c206f72206465737472756374696f6e2e20486f77657665722c206e6f206d6574686f64206f66207472616e736d697373696f6e206f7665722074686520496e7465726e6574206f72206d6574686f64206f6620656c656374726f6e69632073746f726167652069732031303025207365637572652c20616e642077652063616e6e6f742067756172616e74656520697473206162736f6c7574652073656375726974792e3c2f703e3c703e3c62723e3c2f703e3c703e3c623e596f75722052696768747320616e642043686f696365733c2f623e3c2f703e3c703e596f7520686176652074686520726967687420746f206163636573732c207570646174652c20616e642064656c65746520796f757220706572736f6e616c20696e666f726d6174696f6e2e20596f75206d617920616c736f206f70742d6f7574206f662070726f6d6f74696f6e616c20656d61696c732e3c2f703e3c703e546f206578657263697365207468657365207269676874732c20706c6561736520636f6e74616374207573206174206d696b6179737570706f7274406d696b6179736b69746368656e2e73746f72652e3c2f703e3c703e3c62723e3c2f703e3c703e3c623e4368616e67657320746f2054686973205072697661637920506f6c6963793c2f623e3c2f703e3c703e5765206d6179207570646174652074686973205072697661637920506f6c6963792066726f6d2074696d6520746f2074696d6520746f207265666c656374206368616e67657320696e206f757220707261637469636573206f72206170706c696361626c65206c6177732e204966207765206d616b6520616e79206d6174657269616c206368616e6765732c2077652077696c6c2070726f76696465206e6f74696365207468726f756768206f75722077656273697465206f72206279206f74686572206d65616e73206173207265717569726564206279206c61772e20596f757220636f6e74696e75656420757365206f66206f757220736572766963657320666f6c6c6f77696e672074686520706f7374696e67206f6620616e79206368616e67657320636f6e737469747574657320796f757220616363657074616e6365206f66207468652075706461746564205072697661637920506f6c6963792e3c2f703e3c703e3c62723e3c2f703e3c703e3c623e436f6e746163742055733c2f623e3c2f703e3c703e496620796f75206861766520616e79207175657374696f6e73206f7220636f6e6365726e732061626f75742074686973205072697661637920506f6c696379206f72206f757220696e666f726d6174696f6e207072616374696365732c20706c6561736520636f6e74616374207573206174206d696b6179737570706f7274406d696b6179736b69746368656e2e73746f72652e3c2f703e, 1, 3, NULL, NULL, '2020-08-21 04:06:16', '2023-02-14 02:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `information` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `status`) VALUES
(6, NULL, NULL, NULL, 'Flutterwave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-54e1bcf960a5364fa3365240fe555615-X\",\"secret_key\":\"FLWSECK_TEST-85dc3d03f924083034da3af27ec45b39-X\",\"text\":\"Pay via your Flutterwave account.\"}', 'flutterwave', 0),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_fV9dM9URYbqjm7\",\"secret\":\"nickxZ1du2ojPYVVRTDif2Xr\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', 0),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"text\":\"Pay via your paytm account.\"}', 'paytm', 0),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"sk_test_45b0b207ffa006eeb5fc74ea35d01e673be15ade\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', 0),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":\"0\",\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', 0),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit account.\"}', 'stripe', 0),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AVYKFEw63FtDt9aeYOe9biyifNI56s2Hc2F1Us11hWoY5GMuegipJRQBfWLiIKNbwQ5tmqKSrQTU3zB3\",\"client_secret\":\"EJY0qOKliVg7wKsR3uPN7lngr9rL1N7q4WV0FulT1h4Fw3_e5Itv1mxSdbtSUwAaQoXQFgq-RLlk_sQu\",\"sandbox_check\":\"0\",\"text\":\"Pay via your PayPal account.\"}', 'paypal', 0),
(17, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_m6BAuk4mJ7asBP52AtCWn3WjpK4Tv3\",\"text\":\"Pay via your Mollie Payment account.\"}', 'mollie', 0),
(18, NULL, NULL, NULL, 'PayUmoney', 'automatic', '{\"key\":\"gtKFFx\",\"salt\":\"eCwWELxi\",\"text\":\"Pay via your PayUmoney account.\"}', 'payumoney', 0),
(19, NULL, NULL, NULL, 'Mercado Pago', 'automatic', '{\"token\":\"TEST-705032440135962-041006-ad2e021853f22338fe1a4db9f64d1491-421886156\",\"sandbox_check\":\"0\",\"text\":\"Pay via your Mercado Pago account.\"}', 'mercadopago', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pcategories`
--

CREATE TABLE `pcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_feature` int(11) DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcategories`
--

INSERT INTO `pcategories` (`id`, `language_id`, `name`, `slug`, `image`, `status`, `is_feature`, `tax`, `created_at`, `updated_at`) VALUES
(20, 176, 'Chicken', 'Chicken', '63d563201dfdb.png', 1, NULL, '0.00', '2023-01-28 12:24:52', '2023-01-28 16:02:08'),
(22, 176, 'Beef', 'Beef', '63d5637abe9cc.png', 1, NULL, '0.00', '2023-01-28 14:16:33', '2023-01-28 16:03:38'),
(23, 176, 'Pork', 'Pork', '63d563cd84613.png', 1, NULL, '0.00', '2023-01-28 15:07:15', '2023-01-28 16:05:01'),
(24, 176, 'Seafood', 'Seafood', '63d5641715c83.png', 1, NULL, '0.00', '2023-01-28 15:13:07', '2023-01-28 16:06:31'),
(25, 176, 'Pancit', 'Pancit', '63d564a30a5d7.png', 1, NULL, '0.00', '2023-01-28 16:08:35', '2023-01-28 16:08:35'),
(26, 176, 'Dessert', 'Dessert', '63d564e97ff19.png', 1, NULL, '0.00', '2023-01-28 16:09:45', '2023-01-28 16:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_opacity` decimal(8,2) NOT NULL DEFAULT 1.00,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delay` int(11) NOT NULL DEFAULT 1000 COMMENT 'in milisconds',
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popups`
--

INSERT INTO `popups` (`id`, `language_id`, `name`, `image`, `background_image`, `background_color`, `background_opacity`, `title`, `text`, `button_text`, `button_url`, `button_color`, `end_date`, `end_time`, `delay`, `serial_number`, `type`, `status`, `created_at`, `updated_at`) VALUES
(14, 176, 'Dia De Zamboanga', '1676878337.jpg', NULL, NULL, '1.00', 'Get 10% off your first order', 'Looking for a delicious way to celebrate Dia De Zamboanga? Look no further than our restaurant! To make this occasion even more special, we are offering an exclusive discount for first-time customers. Get ready to enjoy a 10% discount on your first meal during this exciting event!\r\n\r\n\r\nUse code DIASALE10 at checkout to claim your discount and join in the celebration today!', 'Order now', 'http://localhost/mikays%20v2/menus', 'F8960D', NULL, NULL, 1500, 4, 4, 1, '2023-02-20 07:25:17', '2023-02-20 07:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `postal_codes`
--

CREATE TABLE `postal_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(11,2) NOT NULL DEFAULT 0.00,
  `free_delivery_amount` decimal(11,2) DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postal_codes`
--

INSERT INTO `postal_codes` (`id`, `language_id`, `title`, `postcode`, `charge`, `free_delivery_amount`, `serial_number`, `created_at`, `updated_at`) VALUES
(5, 176, 'Bynum', '36253', '2.00', '30.00', 1, '2022-03-17 09:06:19', '2022-03-17 09:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `pos_payment_methods`
--

CREATE TABLE `pos_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_payment_methods`
--

INSERT INTO `pos_payment_methods` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'On Cash', 1, '2021-04-11 00:57:46', '2021-04-11 00:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addons` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `previous_price` decimal(11,2) DEFAULT 0.00,
  `rating` decimal(11,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_feature` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_special` tinyint(4) NOT NULL DEFAULT 0,
  `subcategory_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `language_id`, `title`, `slug`, `category_id`, `feature_image`, `summary`, `description`, `variations`, `addons`, `current_price`, `previous_price`, `rating`, `status`, `is_feature`, `created_at`, `updated_at`, `is_special`, `subcategory_id`) VALUES
(65, 176, 'Chicken Shanghai', 'Chicken-Shanghai', 20, '1674977813.png', 'Lumpia Shanghai filled with ground chicken, water chestnuts, carrots, and green onions are a hearty and tasty appetizer or main dish that’s sure to be a crowd-pleaser.', '<p>Chicken Shanghai can be enjoyed as an appetizer or as a main dish. They are perfect for parties and gatherings, as they are easy to eat and are sure to be a crowd-pleaser. The ground chicken provides a hearty and satisfying filling, while the water chestnuts, carrots, and green onions add a nice crunch and freshness to the dish. The thin pastry provides the perfect contrast to the filling, making for a satisfying bite.<br></p>', '{\"Sizes\":[{\"name\":\"Short Orders\",\"price\":0},{\"name\":\"Food Trays\",\"price\":500}]}', NULL, '80.50', NULL, '0.00', 1, 0, '2023-01-29 05:11:46', '2023-02-19 15:15:11', 0, NULL),
(66, 176, 'Fried Chicken (Wings)', 'Fried-Chicken-(Wings)', 20, '1674977719.png', 'Our fried chicken wings are crispy, juicy, and packed with flavor. Perfect for parties or as a snack. Many seasoning options available. Try them today!', '<p>Looking for the perfect snack or party food? Look no further than our delicious fried chicken wings! These wings are marinated to perfection, then deep-fried to a golden crisp, resulting in a juicy and flavorful treat. They are perfect for game days, parties, or as a satisfying snack. With a variety of seasonings and sauces to choose from, there\'s something to please every palate. Try them today and taste the difference in our quality and taste!<br></p>', '{\"Sizes\":[{\"name\":\"Short Orders (Good for 2-3 people)\",\"price\":0},{\"name\":\"Food Trays (Good for 5-6 people)\",\"price\":500}]}', NULL, '200.00', '650.00', '0.00', 1, 0, '2023-01-29 05:35:19', '2023-02-19 15:22:29', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(386, 65, '63d61c0163579.jpg', '2023-01-29 05:10:57', '2023-01-29 05:11:46'),
(387, 66, '63d621079156b.jpg', '2023-01-29 05:32:23', '2023-01-29 05:35:19'),
(393, NULL, '63f24a8dd5fe0.jpg', '2023-02-19 14:13:01', '2023-02-19 14:13:01'),
(394, NULL, '63f24ae4a3a91.jpg', '2023-02-19 14:14:28', '2023-02-19 14:14:28'),
(395, NULL, '63f24b25252eb.jpg', '2023-02-19 14:15:33', '2023-02-19 14:15:33'),
(396, NULL, '63f24c6ad5ec8.jpg', '2023-02-19 14:20:58', '2023-02-19 14:20:58'),
(397, NULL, '63f24c8343c54.jpg', '2023-02-19 14:21:23', '2023-02-19 14:21:23'),
(398, NULL, '63f24cb59a5f9.jpg', '2023-02-19 14:22:13', '2023-02-19 14:22:13'),
(400, NULL, '63f24e45e476d.jpg', '2023-02-19 14:28:53', '2023-02-19 14:28:53'),
(401, NULL, '63f24e6b95971.jpg', '2023-02-19 14:29:31', '2023-02-19 14:29:31'),
(402, NULL, '63f24ef21a39e.jpg', '2023-02-19 14:31:46', '2023-02-19 14:31:46'),
(403, NULL, '63f252983c1c6.jpg', '2023-02-19 14:47:20', '2023-02-19 14:47:20'),
(404, NULL, '63f252b87c8f3.jpg', '2023-02-19 14:47:52', '2023-02-19 14:47:52'),
(405, NULL, '63f2541c609b7.jpg', '2023-02-19 14:53:48', '2023-02-19 14:53:48'),
(406, NULL, '63f254d2ac117.jpg', '2023-02-19 14:56:50', '2023-02-19 14:56:50'),
(407, NULL, '63f2580ea6bf0.jpg', '2023-02-19 15:10:38', '2023-02-19 15:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code_position` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` blob DEFAULT NULL,
  `currency_symbol_position` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_no` int(11) DEFAULT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` decimal(11,2) DEFAULT NULL,
  `postal_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - post code based delivery enabled, 0 - post code based delivery disabled',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `txnid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receipt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serving_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_up_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_up_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waiter_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT 0.00,
  `coupon` decimal(11,2) NOT NULL DEFAULT 0.00,
  `delivery_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time_start` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time_end` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `user_id`, `billing_country`, `billing_fname`, `billing_lname`, `billing_address`, `billing_city`, `billing_email`, `billing_country_code`, `billing_number`, `shpping_country`, `shpping_fname`, `shpping_lname`, `shpping_address`, `shpping_city`, `shpping_email`, `shpping_country_code`, `shpping_number`, `total`, `method`, `gateway_type`, `currency_code`, `currency_code_position`, `currency_symbol`, `currency_symbol_position`, `order_number`, `token_no`, `shipping_method`, `shipping_charge`, `postal_code`, `postal_code_status`, `payment_status`, `order_status`, `txnid`, `charge_id`, `invoice_number`, `created_at`, `updated_at`, `receipt`, `order_notes`, `completed`, `type`, `serving_method`, `pick_up_date`, `pick_up_time`, `waiter_name`, `table_number`, `tax`, `coupon`, `delivery_date`, `delivery_time_start`, `delivery_time_end`) VALUES
(1, 12, NULL, 'Bin Akilan', NULL, NULL, NULL, 'bin.akilan@gmail.com', '+63', '9261014618', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '580.00', 'Cash On Delivery', 'offline', 'PHP', 'right', 0xe282b1, 'left', 'G98t-1675842257', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', 'txn_aW2Uvxl01675842257', 'ch_ExFuRQP4K1675842257', 'zlMK1675842257.pdf', '2023-02-08 05:44:17', '2023-02-08 05:44:18', NULL, 'Test.', 'no', 'website', 'pick_up', '02/10/2023', '05:30 PM', NULL, NULL, '0.00', '0.00', NULL, NULL, NULL),
(4, 12, 'Manicahan', 'Yves', 'Lauren', 'Aplaya Street', 'Zamboanga', 'bin.akilan@gmail.com', '+63', '9261003618', 'Manicahan', 'Yves', 'Lauren', 'Aplaya Street', 'Zamboanga', 'bin.akilan@gmail.com', '+63', '9261003618', '1400.00', 'GCASH', 'offline', 'PHP', 'right', 0xe282b1, 'left', 'MQVm-1675864011', NULL, 'Guiwan', '100.00', NULL, 0, 'Pending', 'pending', 'txn_1ttceGLd1675864011', 'ch_jdHX5QRho1675864011', 'zhNf1675864011.pdf', '2023-02-08 11:46:51', '2023-02-08 11:46:52', '63e3a7cba2e09.jpg', 'Pogi ng developer.', 'no', 'website', 'home_delivery', NULL, NULL, NULL, NULL, '0.00', '0.00', '02/20/2023', '02:00 PM', '03:00 PM'),
(5, 22, NULL, 'Jaydee Ballaho', NULL, NULL, NULL, 'tigenaj277@jobsfeel.com', '+63', '9261014618', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '580.50', 'GCASH', 'offline', 'PHP', 'right', 0xe282b1, 'left', 'lLb1-1676875498', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', 'txn_DM33Lh7Z1676875498', 'ch_XluL7EFVI1676875498', 'NOkB1676875498.pdf', '2023-02-20 04:44:58', '2023-02-20 04:44:59', '63f316ea18523.png', 'gg', 'no', 'website', 'pick_up', '02/20/2023', '11:00 AM', NULL, NULL, '0.00', '0.00', NULL, NULL, NULL),
(12, 12, NULL, 'Jaydee Ballaho', NULL, NULL, NULL, 'jaydee.test@gmail.com', '+63', '9261013618', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200.00', 'Cash On Delivery', 'offline', 'PHP', 'right', 0xe282b1, 'left', 'm06t-1677340456', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', 'txn_gamX6Hj91677340456', 'ch_0pjSD92V41677340456', '7eHL1677340456.pdf', '2023-02-25 13:54:16', '2023-02-25 13:54:17', NULL, 'h', 'no', 'website', 'pick_up', '02/27/2023', '11:30 AM', NULL, NULL, '0.00', '0.00', NULL, NULL, NULL),
(17, 22, 'Manicahan', 'Torres', 'Akilan', 'g', 'Zamboanga', 'bin.akilan@gmail.com', '+63', '9261003618', 'Manicahan', 'Torres', 'Akilan', 'g', 'Zamboanga', 'bin.akilan@gmail.com', '+63', '9261003618', '680.50', 'GCASH', 'offline', 'PHP', 'right', 0xe282b1, 'left', 'nHHZ-1677389776', NULL, 'Guiwan', '100.00', NULL, 0, 'Pending', 'pending', 'txn_BoKhJ7Ll1677389776', 'ch_71zK1ckVW1677389776', 'Div11677389776.pdf', '2023-02-26 03:36:16', '2023-02-26 03:36:16', '63faefd03f447.jpg', 'tite.', 'no', 'website', 'home_delivery', NULL, NULL, NULL, NULL, '0.00', '0.00', '02/27/2023', '02:00 PM', '03:00 PM'),
(18, 22, 'Manicahan', 'Bin', 'Akilan', 'g', 'Zamboanga', 'bin.akilan@gmail.com', '+63', '9261003618', 'Manicahan', 'Bin', 'Akilan', 'g', 'Zamboanga', 'bin.akilan@gmail.com', '+63', '9261003618', '180.50', 'Cash On Delivery', 'offline', 'PHP', 'right', 0xe282b1, 'left', 'oqp5-1677389847', NULL, 'Guiwan', '100.00', NULL, 0, 'Pending', 'pending', 'txn_6iTyk6ZV1677389847', 'ch_MhFC1w3WC1677389847', 'VJ1h1677389847.pdf', '2023-02-26 03:37:27', '2023-02-26 03:37:27', NULL, 'f', 'no', 'website', 'home_delivery', NULL, NULL, NULL, NULL, '0.00', '0.00', '02/27/2023', '02:00 PM', '03:00 PM'),
(21, NULL, NULL, 'Bin Akilan', NULL, NULL, NULL, NULL, NULL, '09261013619', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1100.00', 'On Cash', NULL, 'PHP', 'right', 0xe282b1, 'left', 'ehbi-1677392471', NULL, NULL, NULL, NULL, 0, 'Completed', 'pending', NULL, NULL, NULL, '2023-02-26 04:21:11', '2023-02-26 04:21:11', NULL, NULL, 'no', 'pos', 'pick_up', '02/26/2023', '02:30 PM', NULL, NULL, '0.00', '0.00', NULL, NULL, NULL),
(22, 22, 'Manicahan', 'Bin', 'Akilan', 'g', 'Zamboanga', 'bin.akilan@gmail.com', '+63', '9261003618', 'Manicahan', 'Bin', 'Akilan', 'g', 'Zamboanga', 'bin.akilan@gmail.com', '+63', '9261003618', '180.50', 'Cash On Delivery', 'offline', 'PHP', 'right', 0xe282b1, 'left', 'yqEf-1677507369', NULL, 'Guiwan', '100.00', NULL, 0, 'Pending', 'pending', 'txn_q1ivtlkH1677507369', 'ch_8Dahs4AoY1677507369', 'Jj9Q1677507369.pdf', '2023-02-27 03:16:09', '2023-02-27 03:16:10', NULL, 'g', 'no', 'website', 'home_delivery', NULL, NULL, NULL, NULL, '0.00', '0.00', '02/27/2023', '10:00 AM', '12:00 PM'),
(24, 26, 'Cawit', 'Marvin', 'Waro', 'Tapat ng edna store.', 'pitogo', 'bin.akilan@gmail.com', '+63', '9261003618', 'Cawit', 'Marvin', 'Waro', 'Tapat ng edna store.', 'pitogo', 'bin.akilan@gmail.com', '+63', '9261003618', '180.50', 'Cash On Delivery', 'offline', 'PHP', 'right', 0xe282b1, 'left', 'vLBW-1677680620', NULL, 'Guiwan', '100.00', NULL, 0, 'Pending', 'pending', 'txn_zYccIGyE1677680620', 'ch_bKfCHCKqx1677680620', 'bV1Z1677680620.pdf', '2023-03-01 03:23:40', '2023-03-01 03:23:40', NULL, 'f', 'no', 'website', 'home_delivery', NULL, NULL, NULL, NULL, '0.00', '0.00', '03/08/2023', '10:00 AM', '12:00 PM'),
(25, 26, 'Capisan', 'Bin', 'Akilan', 'sah', 'Bayog', 'tigenaj277@jobsfeel.com', '+63', '956898898', 'Cawit', 'Marvin', 'Akilan', 'Tapat ng edna store.', 'Aurora', 'bin.akilan@gmail.com', NULL, '9261003618', '300.00', 'Cash On Delivery', 'offline', 'PHP', 'right', 0xe282b1, 'left', '6Txz-1677681529', NULL, 'Guiwan', '100.00', NULL, 0, 'Pending', 'pending', 'txn_N2jFXV4B1677681529', 'ch_S2KrdHWaG1677681529', 'x3AA1677681529.pdf', '2023-03-01 03:38:49', '2023-03-01 03:38:49', NULL, 'h', 'no', 'website', 'home_delivery', NULL, NULL, NULL, NULL, '0.00', '0.00', '03/08/2023', '10:00 AM', '12:00 PM'),
(26, 25, 'Campo Islam', 'Marvin', 'Lauren', 'tayts', 'Zamboanga City', 'bin.akilan@gmail.com', '+93', '9261003618', 'Campo Islam', 'Marvin', 'Lauren', 'tayts', 'Zamboanga City', 'bin.akilan@gmail.com', '+93', '9261003618', '422.00', 'Cash On Delivery', 'offline', 'PHP', 'right', 0xe282b1, 'left', 'zeql-1677685226', NULL, 'Guiwan', '100.00', NULL, 0, 'Pending', 'pending', 'txn_tjqueT601677685226', 'ch_eeN9uF6ON1677685226', '9jV11677685226.pdf', '2023-03-01 04:40:26', '2023-03-01 04:40:27', NULL, 'd', 'no', 'website', 'home_delivery', NULL, NULL, NULL, NULL, '0.00', '0.00', '03/08/2023', '10:00 AM', '12:00 PM'),
(27, 25, 'Campo Islam', 'Marvin', 'Lauren', 'tayts', 'Zamboanga City', 'bin.akilan@gmail.com', '+93', '9261003618', 'Campo Islam', 'Marvin', 'Lauren', 'tayts', 'Zamboanga City', 'bin.akilan@gmail.com', '+93', '9261003618', '80.50', 'Cash On Delivery', 'offline', 'PHP', 'right', 0xe282b1, 'left', 'ZvaX-1678021862', NULL, NULL, '0.00', 'Bynum - 36253', 1, 'Pending', 'pending', 'txn_zsjIE91P1678021862', 'ch_ovkdW5dhM1678021862', '2vfB1678021862.pdf', '2023-03-05 11:11:02', '2023-03-05 11:11:03', NULL, 'v', 'no', 'website', 'home_delivery', NULL, NULL, NULL, NULL, '0.00', '0.00', '03/22/2023', '10:00 AM', '12:00 PM'),
(28, 28, 'Landang Gua', 'Bin', 'Akilan', '26517 Aplaya Street', 'Zamboanga City', 'badojef535@wwgoc.com', '+63', '9261003618', 'Landang Gua', 'Bin', 'Akilan', '26517 Aplaya Street', 'Zamboanga City', 'badojef535@wwgoc.com', '+63', '9261003618', '280.50', 'Cash On Delivery', 'offline', 'PHP', 'right', 0xe282b1, 'left', 'MXEP-1678033879', NULL, 'Manicahan', '200.00', NULL, 0, 'Pending', 'pending', 'txn_UNNFPh4y1678033878', 'ch_8VT2F2XxD1678033878', 'YSjb1678033879.pdf', '2023-03-05 05:31:19', '2023-03-05 05:31:20', NULL, NULL, 'no', 'website', 'home_delivery', NULL, NULL, NULL, NULL, '0.00', '0.00', '03/08/2023', '10:00 AM', '12:00 PM'),
(29, 28, 'Lamisahan', 'Bin', 'Akilan', '26517 Aplaya Street', 'Zamboanga City', 'badojef535@wwgoc.com', '+63', '9261003618', 'Lamisahan', 'Bin', 'Akilan', '26517 Aplaya Street', 'Zamboanga City', 'badojef535@wwgoc.com', '+63', '9261003618', '80.50', 'Cash On Delivery', 'offline', 'PHP', 'right', 0xe282b1, 'left', 'GabW-1678034525', NULL, NULL, NULL, NULL, 0, 'Pending', 'pending', 'txn_IkqTuqWj1678034525', 'ch_TccVYLG8Z1678034525', 'MVym1678034525.pdf', '2023-03-05 05:42:05', '2023-03-05 05:42:05', NULL, NULL, 'no', 'website', 'home_delivery', NULL, NULL, NULL, NULL, '0.00', '0.00', '03/08/2023', '10:00 AM', '12:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `review` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `review`, `comment`, `created_at`, `updated_at`) VALUES
(6, 1, 6, 4, 'Hi', '2020-07-20 07:49:41', '2020-07-20 08:46:57'),
(7, 1, 11, 5, 'Great!', '2020-08-24 04:23:58', '2020-08-24 04:42:16'),
(8, 1, 13, 3, 'hello', '2020-08-25 00:45:14', '2020-08-25 00:45:14'),
(24, 1, 38, 3, 'Awesome taste & quality but the delivery service is poor !!', '2020-08-31 00:59:56', '2020-08-31 00:59:56'),
(25, 1, 35, 5, 'Very fresh, hygenic, healthy & tasty juice. Proper mixture of salt, sugar & orange !!!', '2020-08-31 01:00:55', '2020-08-31 01:00:55'),
(26, 1, 32, 1, 'So bad taste & you guys need to improve the delivery service too !!!', '2020-08-31 01:01:31', '2020-08-31 01:01:31'),
(27, 1, 37, 4, 'Good shakes but please increase the amount of cream at the top', '2020-08-31 01:02:30', '2020-08-31 01:02:30'),
(28, 1, 34, 5, 'Very good & very fast delivery. Loved it !! gonna refer my friends too !', '2020-08-31 01:03:15', '2020-08-31 01:03:15'),
(29, 1, 31, 2, 'strawberry amount is too less, tastes like a biscuit.', '2020-08-31 01:03:55', '2020-08-31 01:04:16'),
(30, 1, 30, 4, 'You can add some chocolate at the top to make it better !!', '2020-08-31 01:04:52', '2020-08-31 01:04:52'),
(31, 1, 33, 4, 'Reduce the amount of ice & improve the delivery service please !', '2020-08-31 01:05:23', '2020-08-31 01:05:23'),
(32, 1, 36, 5, 'Decided to drink it regular, so fresh , healthy & tasty !!!', '2020-08-31 01:05:55', '2020-08-31 01:05:55'),
(33, 1, 20, 5, 'Never been disappointed with their products, will order again & again !!', '2020-08-31 01:08:51', '2020-08-31 01:08:51'),
(34, 1, 19, 5, 'Very fast delivery, the amount of the rice & chicken is more than enough <3 !', '2020-08-31 01:09:37', '2020-08-31 01:09:37'),
(35, 1, 18, 5, 'Loved it, superb taste. Want to rate more than 5 stars actually !!', '2020-08-31 01:10:21', '2020-08-31 01:10:21'),
(36, 1, 17, 4, 'Try to improve the delivery service, the food is good :)', '2020-08-31 01:11:06', '2020-08-31 01:11:06'),
(37, 1, 16, 3, 'The quality has dropped please make it like before :)', '2020-08-31 01:11:34', '2020-08-31 01:11:34'),
(38, 1, 15, 4, 'Very good & tasty food but the food amount is less than the price :(', '2020-08-31 01:12:35', '2020-08-31 01:12:35'),
(39, 1, 26, 5, 'Good one ! Loved the taste !!!', '2020-09-01 12:01:41', '2020-09-01 12:01:41'),
(40, 1, 25, 4, 'Burger is great but improve the delivery service !', '2020-09-01 12:02:14', '2020-09-01 12:02:14'),
(41, 1, 24, 1, 'Really disappointed with their behavior !', '2020-09-01 12:02:42', '2020-09-01 12:02:42'),
(42, 1, 23, 5, 'Great combination of fried chicken & Burger <3', '2020-09-01 12:03:16', '2020-09-01 12:03:16'),
(43, 1, 22, 4, 'The bun quality is poor. Overally, good', '2020-09-01 12:03:47', '2020-09-01 12:03:47'),
(44, 1, 21, 4, 'Too much onion instead increase the amount of cheese !', '2020-09-01 12:04:24', '2020-09-01 12:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `psub_categories`
--

CREATE TABLE `psub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_feature` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `psub_categories`
--

INSERT INTO `psub_categories` (`id`, `language_id`, `category_id`, `name`, `slug`, `status`, `is_feature`, `created_at`, `updated_at`) VALUES
(14, 177, 18, 'حلويات', NULL, 1, 1, '2022-05-29 03:39:15', '2022-05-29 05:10:13'),
(15, 177, 18, 'دونات', NULL, 1, 1, '2022-05-29 03:39:26', '2022-05-29 05:10:15'),
(16, 177, 18, 'مثلجات', NULL, 1, 1, '2022-05-29 03:39:57', '2022-05-29 05:10:17'),
(17, 177, 17, 'برغر الدجاج', NULL, 1, 1, '2022-05-29 03:41:08', '2022-05-29 05:10:19'),
(18, 177, 17, 'برجر لحم', NULL, 1, 1, '2022-05-29 03:41:22', '2022-05-29 05:10:21'),
(19, 177, 19, 'عصير', NULL, 1, 1, '2022-05-29 03:42:30', '2022-05-29 05:10:23'),
(20, 177, 19, 'يهز', NULL, 1, 1, '2022-05-29 03:42:41', '2022-05-29 05:10:25'),
(21, 177, 19, 'المشروبات الغازية', NULL, 1, 1, '2022-05-29 03:42:56', '2022-05-29 05:10:29'),
(24, 177, 16, 'عائلة', 'عائلة', 1, 1, '2022-05-29 05:13:55', '2022-05-29 05:17:44'),
(25, 177, 16, 'الفرد', 'الفرد', 1, 1, '2022-05-29 05:14:06', '2022-05-29 05:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscribable_id` int(11) DEFAULT NULL,
  `subscribable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endpoint` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_subscriptions`
--

INSERT INTO `push_subscriptions` (`id`, `subscribable_id`, `subscribable_type`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(3, 4, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dt--VeNXQpk:APA91bEXROqytusuQiBN-WidokRxoe_IH7kR6Qi6zXD1Ajx-XyQ4EtEoJxg62WwI-j0RFq2xUjBe-Is7h17zlUMntaf4mgCUeDFtLiW98h8xoOfL3ynutkpMHmyqoldRHVZDZGOQY98X', 'BEXtiHSUjJseqePlRDOqeeCDVSFvZdAyI8BupOIw0bIztqWL3W_pduNUd91A-3RzEHIYfmSfKjusX8B0JG1gOdk', 'GsDOuT4NTf6KGQt9RRVq0Q', NULL, '2020-12-26 10:04:17', '2020-12-26 10:04:17'),
(4, 5, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fetLuDtmxNg:APA91bHqqBZBZzCuFd8Ae3hGHo5q972ktIjfZuRzek59nJXiwdn88UBtnuU9IwaxVznCJGxn1SdhlOFZ8sIsGyVBoK-GIm6KCk0iTuvwc1e3o0H4hfunWZe-o98HQpIXpYDAkan0DiAy', 'BBBfXhMcnTWXOPHP4l2UObEUf7RGMkxoOK5_G4nGhLC8kkXcBdMWNcuhxk0BsSIEdw0jWcZTQ_i_569oZDqEnc0', 'k-yJKI5UjvvHbYQACv-Nrw', NULL, '2021-03-24 07:37:03', '2021-03-24 07:37:03'),
(5, 6, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABgXhAyYoUVkJ8ymIaucMN78o9LdNIJ2ZhWATCMTUa79O7Q_6IWuwZlWOkNi33elgKb73GjntPc0ErLR7FF9b0UU0BNiDpJdsEv0uqcGKdNWkiYlAdlmNPaR0rKI8VivAkeCPzjYhykXGdYpXVpR3TxceTSpWBzxivvTpCTLQlUq72QNO8', 'BP6E_WEMY_Gq-nWKfidLIo4fI4kDlWB3XgnAPevTYRa8niS4TB0_OknMpwML1r_i-dWxE69eDU6e_TnUgufsd5E', 'yzcj6vcUg0WgFcQH6kC7kA', NULL, '2021-03-26 11:47:44', '2021-03-26 11:47:44'),
(6, 7, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cmWvhqu3tv8:APA91bFobMGJpxJvuqHpFU7Y5vtVZNcvsykv_So9xDDoCqKLewXINW8QbmIkpha9i7CJZPAoaZjST1cJPnwwa0rbp-VCk8LOWRoxcuIyyUlsOIFCMCOwysBSFZm_1eBbVV9aeyLSENGc', 'BHKiK1CUzfBe51go0MhzpcrTdsa0qaLhyS4v-S-3U7p7piNG31Lv_awN0wHHqn4tK3KMACk1xiBS8d9vB1cgLKI', 'fgFmWWEiO9fQ1m-IDBOW3w', NULL, '2021-04-03 00:02:31', '2021-04-03 00:02:31'),
(7, 8, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eh4uTNYjL8g:APA91bEX1UoNIWd9wkORCAREAofoRcvvbmRdDNMQwd1d-EZ0lbfCU5CUXewaZucNBK81XO0z6h0LnUaBFPHRlEDrUGm90vu_GHDd5lrndy3l6Otqf5i921YWUa-Xwn4i0MSW5uoPAeMQ', 'BMH-f875_KRifObIrwG57s-C4FT-X6NaQ0s8rTDEOK5kxlS_eCYT77cJjM2UsxuR3xAT49H_2ErlUPE1YnRtBUQ', 'x5mQe5dLhNw2H_x6j4jaOA', NULL, '2021-04-16 11:36:28', '2021-04-16 11:36:28'),
(8, 9, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dObB80OmAaw:APA91bFv7cirSdv3z2G0IU7AlDsIylsVt5C2Z3q53ZUNLMlvlOIfQiOshMF-xKknu8706NDLq9PJyhl7eCdOZlzw-pxRrgsW-p2PjU9N1bePkHnYSIPnTp5a4g1N1tDQQQQWNDjy9slX', 'BD6AiJcjC3gwlLEYPJ2WBaozmaxp9-Q2XBtJOa9NvggCIhT2jN-cjkpGJS2uFMudkJJsvaxfQXpuhKjfYYrba3g', 'YywnXPOaIAiGmM_zru-29Q', NULL, '2021-05-06 09:40:57', '2021-05-06 09:40:57'),
(9, 10, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eZKf01giLZc:APA91bH4tmbQ3s4Lv-B9nztPSZW3yd7Y2uXC-60sHsGIhKkOlUxP6oC68n37Vtq-FBk-OlTVlU76weuJ_vrW0BliQoqvrNRb8xstdCONgBIs47-5fgbphTiuONZgUp1nDtX8LfcFM-Iy', 'BB27dE5e2Bm7GTRujTwXihSJFtX1rwSXl1BUgLLWwI3jFdV5m-gvmSmbsVURyhtmbFmJrdUOAB4T8aVXJrUQsVo', 'gl9nLuDpTn82DcL_hIjndw', NULL, '2021-05-23 00:31:34', '2021-05-23 00:31:34'),
(10, 11, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cPVrToqh8P0:APA91bEiMbgqN8bDAhr0mbdzXPcFOvc77t1WzG17LnxbEo7shs1OJ-UhjuXbKMj71Nx0_EjBlZNmj4Nl44WiksfgkV3COShKvj02S_ZpkTe5fD6WFwtIlPZ6LO-IrH57t-lVOinUQkHw', 'BFkWNoEXEsV0OhL7ry_yJngdJ9nSAuXv89yIgABu39xh53VUfgZqpaMNiz5w_yLqFcZ935BVRJ1h0tEm3QmqjaY', 'ozwxzjykXazMuvf1RxBK3w', NULL, '2022-03-08 11:07:58', '2022-03-08 11:07:58'),
(11, 12, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eSdjeQS-6ec:APA91bFUxeQX0vknYUYO5cF4Bau2chgFvbcNkVDiWxQzJFCC-koRWSuqHWlB-CNygN8YDUgGxCLD5EVEx8MpSGHTxkTpypT7lCxo9MiYVJdRjmLkxlLilJmyI2277FKumLhLbQM55CmZ', 'BCe9VF_iGITjvarsEaQ0f22fLX8lLZbXeQPscs4JQyT2iW_w6NallOMSkeiSk9tnEJc2Grzt4dvbOis9YS2GyFk', 'fVnvCzgIc24uKKVwF6b0rA', NULL, '2022-03-25 09:37:15', '2022-03-25 09:37:15'),
(12, 13, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fVC8cace-fw:APA91bEWCMtj2rRSwKQ1q6JQKrdw5X4JAk8FKP6kbWS9Zr7koUH_yRlG7mVwaycVt20EO7UYs0xe3DP26Xba3xGo4tPhS3Rjapa3i-2MNewsDloDPsDppAFkm-X4FKqpWqS_Vk6L9XMS', 'BLW-a2b-CPlH0E43datHyflA6OxN0IIpVKNh3_ITsz3H5XKsD_0GrS_JEW_CxnLnrFqO7SMjSAA7niVvvKzPwEw', 'IHXSSIH3ujQohnNsTkeqvw', NULL, '2022-03-25 15:10:08', '2022-03-25 15:10:08'),
(13, 14, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eAFjl2NwK-s:APA91bEp8b2PiBhmwX_zmnbBUTHukeW5vNABILeBOl5rsDHvN95kgd_3ywilHH9NfNnYpm7a7aJgNPXUc0gJ_7uaFuYjitNc-QRbXz7ys5ZGdtfSKOnGpiuyegInmd4Gzk2SpknKc4wc', 'BE0Jighn2izrgHO7NzhtdaOCAw9GMFmTGmRkx84bmXevQvLyG-60cF1XPDIVRhjI2AmaU5UkXQ21Tzey3isS_1E', 'U_cZTnEOkcCl-JNn74xpGg', NULL, '2022-03-26 05:55:51', '2022-03-26 05:55:51'),
(14, 15, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/cYxO9t_xdXE:APA91bGQ1gBBBwp_ci8cdd_QyMhpiNn_YQHz5T7jYq_Rpy361fJn38T1n4_JepcLWvTVcWKS0_rKSxDZwj98j4tcKJ4WDTYftcpmHSOwzZ_wHMo-DbmOg7OCmo1H5bmM_qzs1JwSsKq3', 'BP7hrBFjwTu4WgVg2cRCQsTQqZWQVsNqqyaC1BOtpJreNbAHYy3_gY_UDojsdWqwiOnFEoNOoTcmTn13PxvR2cw', 'QumnEVX8v9ijINcYNHcXkg', NULL, '2022-03-26 06:11:44', '2022-03-26 06:11:44'),
(15, 16, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fL9PPVT6jlM:APA91bF1dsI1uMzo_fGgOiP-6G_LSRBmOpdao8C9sSPUtd4Pu9bvcJbOcFmiCbEKxdD2TGk6elsRlMa44pw4m73kcZy1Z6dWdk4uFxoqwF542pO4ZgneVD6DT1-2cCiMcadxvdHmQAQv', 'BAS6X7QsadHhhmu6d9Vw3EaCWJj2b2Wy9YITG0MFStEV4Gb8VDZFhiIm1qIE9Ni-OP3krftkgYTE6M4Bg4WOReQ', 'CxwoglDSONZr0rYK-AR4LA', NULL, '2022-03-26 06:11:59', '2022-03-26 06:11:59'),
(16, 17, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dvFmtOYkKOE:APA91bHpWKVtET2wBSGnEvLtLXpy5S150lRksdlSMTIDfiUNahnnOsJErkgga8EjvraIjSHkSe_epQEiN7naxS7w8vz9PmnOURQi4Bu4dBQj--WhHTyH50BPXBF_ZIVKcaOIlo3KVadt', 'BI33xxQv8EJZFF80Hyx-P4e8D8M5iMhPi6olDtwM_yQ2TXLuUMgoC2EK8fYfEsR2c32z0C2PssTuk14tEHAYHHY', 'bIvD5b7qsbv6mqcftsSyWQ', NULL, '2022-03-26 06:33:01', '2022-03-26 06:33:01'),
(17, 18, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fVc8RLnHZ6M:APA91bG2us8fW833NzlJ1ilqh8kkVoNrbKck6JZezNXegKjw8NwAm8vDovgpLndAmHNJA6gRfznPD_Rc8vwJ7XXOE3pE0KBokTaozkMq5M4UbPp8MReZ3ho6_iyqx9FrnXjnpxR9wxpa', 'BI4KhyzTEY70WmY4jZchN0M4klUqNIsbGos7lIk6SMhkweV5P5qtWdw2z5GXVFZn3vgkPbl-ozGZ6zgJBQIP_kA', 'mZDMBSqnZpW-X6OEWsdt1Q', NULL, '2022-03-28 13:24:40', '2022-03-28 13:24:40'),
(18, 19, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fgbnPkwsCU8:APA91bGJfLBxkTgEtJePLRIsyfSu2BIPQ22BYwHpAhVrA4whhAdsiHpOSOVr4Vcmp_pTLgRfP2PisJm_fG7so9YU0lNjbXEYHQJ24RkHcDf2eI3mP_5_BM9ALtjdM78nUxodMPYY4k5x', 'BMSdDc5maYAbAa8F3L-Vd1USadABzEWcUztaWRxgBk1Mz4ClvTrg8mQzXV_q7NUkYoCbC3vZ8CjfblbJlaVYDQg', 'JYpTiwRkwmPWtu0t5BEvng', NULL, '2022-03-29 07:23:02', '2022-03-29 07:23:02'),
(19, 20, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/ePVbno9kWtA:APA91bHQi13UwmBnf_z9erJ2VBB78MK_hfeRvQ2tDeLiDgHC4Sl71dDktuhYtjOEamBq_w75T9_Nu0tJqw3YPRPqKW09ObMCn9LiA6pbQKWNYnJujatjDFL0VzZAhB_RLPo8KAdadkqz', 'BJYVyojs6MHZ322rE7rCQmoqeF9BHfOmbPG2c_U7Pv9BVTAiZM1IoUGw9gixoZuCaMHmuCO_GyrYsVDOHZ5bq1M', 'EbkcDvNrbLb31wyxyMgxyg', NULL, '2022-03-29 07:26:21', '2022-03-29 07:26:21'),
(20, 21, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dgvxW5cNw5g:APA91bH8Au63veVx1bkKpGB0g_MxoQICgJ3bWaP-QtyowdorZUGcayo5xASkTEFjJri6IjOyvRP7WKCv4jbr4RxT4PD_zr-3AwHlpG00d8rDd-bTvzyvTK2Aj0r59zpKtNSEw8a99VlZ', 'BMz4LqfWJZcdcEPgXJccF1ao7kxQ5176SUTI_nE6_2kcDGX2bHYeb1Q__2I8Vx0poSOvFSJhZckR28N5oc_XRII', 'FKpeggtAtAG-Fr2HYW1UDQ', NULL, '2022-03-29 09:33:41', '2022-03-29 09:33:41'),
(21, 22, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dH8KnORYEVQ:APA91bEJFuFWl1iloiH44Fuot4Gnoh5p0aUxs_mtrPVsm7O3Dkjd8vELa2DeW9ETdHFcSBkyZt8g0dERLI7jZU3sz5Kv0UP8S2UuDgkRGHC3hRIDp9PdYR8srv-7y_EitmUEY8kBhE9M', 'BGYGP4RPbx_ItA6mesKRIpYMuilij5XV7aKNj4u0VhWX2L5eL1PgV4qlS6Rp8ruvy04J0JA5nV8GfatnmkyxpEg', 'J13QxHa4fFtWFbcofgxp0Q', NULL, '2022-03-29 09:49:54', '2022-03-29 09:49:54'),
(22, 23, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eV2Fy6cICFg:APA91bH64deQsEs8og6oMqWSN0IV80-6IJtBR0MmRHwpm6vNvyY1Q-mVU8IK9x_BvxPuTNje_k1Ur6G1WhNqi_kmlCXQZoikKjkeOuLzQ0JjcoT5enML53YCw__PX9i_yathf5ajux8x', 'BJSRrN5bqx-Q0ZJAmPkZD6HraYwjGKo-Ls79nO-wTkiiJK4B87ocIw1xSGy4NplL7DPrviGevUPinoW95rH9FGo', 'wo-kNkXLQpNqbqUdvvxlRw', NULL, '2022-03-29 11:31:26', '2022-03-29 11:31:26'),
(23, 24, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/fjhrX4tX4Cc:APA91bGSxATfx2askizSwnj_XEEe1dirC38jMXFsCL-Nip69CVioMNbApRMS8_A3RzlWDBXI1sUm2DdSq0-OnXsqO1fror-THjD3R107bF_OBsJWSy4YfrBCdlqD_KZVP_MO3FJbIyIO', 'BCv7R4fibTLn5GeBd9ItJtSk3pAXtoy0_vGdDcYqD1OAVqP-we7doNBGyb5kwmoFWuNrYcqcDK4j9nmqtat2jS8', 'F4Bh1BXCJ4ElCNUYhlYEpw', NULL, '2022-04-04 14:22:56', '2022-04-04 14:22:56'),
(24, 25, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/dMfJBWeK59g:APA91bHVx8OoUaqqaZROwpYLGi0oL_hpP27-BHhKWcsb_Cf3JhO_0nfblhoeyZWsntig9h4yIv20-lwaiIUVaKQcZ_GtyC1P4DWizrLSkGtYLUtO1Erv9Q5SN1gPfGFy9BN9-J9M17Qi', 'BFnEhSqjkzRKNzObnvrebeVoy_RhIVnpxhKQ3H5ACaXK5gfbdkwxXhgLQtwTGypp6_stQ7xdXd5LlIQpv44YBZs', '8WigyorhUXnwfrUXwAi26A', NULL, '2022-04-06 14:45:27', '2022-04-06 14:45:27'),
(25, 26, 'App\\Models\\Guest', 'https://fcm.googleapis.com/fcm/send/eFLG-3oEzKI:APA91bF934GtVfeJ3I-0pekZ3k2uYGQyExkei8SLug9CuMb0uXNj8p0kkc_kGPuzAbW0oVt3hlOWdNKmChP2aAWkPRwfGtkxgnDodUhkEZamoo92yi50N6Q65AOOGJVrydcjfVmWFoWF', 'BNhbs0yBnUjiWbiLhQsXjR4QKSL4XgnPG90SUs5gtkHD4FrOwn1V62gOUBO1bjIGj5oqR8j-3zKjGHLaPCEZuCI', 'NoxAW9LgVmrUxNOcIePDww', NULL, '2022-05-25 12:10:23', '2022-05-25 12:10:23'),
(26, 27, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj0RuOa7aBP6CWUx1o17wmhVpcqdQKyt8wlYx0MJ1EfVbWCXEuPu1MTRpia9cRxejBBx9UeMwWUfedETBwT1U-FwH629Phn_bHGrsP81mSFYKjYIFkHGW4EvKCvosgmeUH2ma8JC57WQE4cRLvaxeH3Axf71NE1UmlJBVMb5mCehLZ9FE', 'BJonGPyexlJQvZsiENibgn0jazXgTp-1RZCTyPBFLQX61Se4T0ntyoe7HW66a8EqjUmxVJZa4t7F_7s7Ur0j3_Y', 'scTKwZpclMukSDHmCfZ8Jw', NULL, '2023-01-25 10:07:42', '2023-01-25 10:07:42'),
(27, 28, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj0TYp7oZdLe_y9wHV-MhB8RdmYXlBHUZRnknbRxXT9kwgwrZDI5jTTIEbLFrQ_RXIHffzKCfKG1Ok6lG1mWXdqZC0_U5j5RknK4lAzPhcFi9ZN3PIxPujhTqhjtDY8fNvDZUqO4G6aL4tzf9sPtQup3K0FTu8QIjsJCFPdvtxMWkELWk', 'BM4LFviqNjW2rOg_negxWL1E1oQsPBgNpw_O5-c4vP3zj81myqK4KEl0nh6PkmoWGOdtvw-qQy_9kczx0vXCMko', 'CbR987AOyYl7yU1_TEL0IQ', NULL, '2023-01-25 21:29:01', '2023-01-25 21:29:01'),
(28, 29, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj1Stv7ymAKqzjZo61omEWlpTpEyz01vCgniKosz0QQEYwXi1jIC_b1lMfotjVYEmFnkhFRO44tJG8lOJq9NUYDGf-Dr4AGTjSmNitd_ezMYLk8COKA4cz1UL_7w0zn9DV3omSFd2kGdTA0B5eYHa_GP-SUshw2Vio_aW9xJ_ujcxdrJE', 'BILzQvF31ouf4QhG3ILw5E5xvIkrcYhmOpmtZmRpqFpLBFfCHRgmeUCRsfY3KwYKIXVVq7IuwfrwRU4Ed-PIM3Q', 'ixBgDoiGiOF2kg5ILSnSyg', NULL, '2023-01-28 12:04:32', '2023-01-28 12:04:32'),
(29, 30, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj27GX3iNeXwu1etdvOKZB4TOKl_rVbI-Nmy-uowT54WaeRB0pTO5W8VkwnpoXH0RQ56TgSN8dkYuk_ba2vYAb_BfsrIBFeweunGbPUoQqU_1JaSO2TRMsUGlo1MTSR_nBCpZ2v9ZRsTfuMZ1vSvmw3GSn29_bDVOj0EFhVggPXnCTef8', 'BGS2JTuHq786jezZl6gZOLRQ0NOrK38xotTJtPwox5FXlE3_Jf3e6LY2Jv5KJ-0e3_sJlFi-l5dAXkLWlo7cWX4', 'B351Z4qaggSrx_2NY099JA', NULL, '2023-02-02 10:50:32', '2023-02-02 10:50:32'),
(30, 31, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj405bcqVxFYGypAY2iUP2tCtyIDs1pDCkma5IOffNzoAHUEpxZtsMayl6RsD4dyjGI4iaaSc1uSfBLO6jcCa_Zywx0EsZ30jYwJf-cpz145N4qx2r2YW4bSsxFypndoeLySjRcNAuODpV5XiAH2mv0n1_Ns5Dl89cZrinh0pUml-F3rc', 'BGfL__NSHGRZ-kkuFfY89SLUK_ekvskEp33xODnzBEDKjFLooTv0k_M3WayNlPZevsYXgzV97iuhQdimTPAWMd0', 'UG6281GZgFrtRHLbDphiGg', NULL, '2023-02-08 05:25:15', '2023-02-08 05:25:15'),
(31, 32, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj6mLLxrmVre-2sBBLQjLEELE9WCOGYopL8y9beV6e-svOEqC7N5C2tVMul4ZxxZeoJbzlk9ChWiwadRY9vM-CSGeR2EeyvzUnvGznvhOiMEFIrMDC6zOiNcZ95zkLfxKaarnmErl1OTwSBPOKEfKDJ6BQitTANNHdp0KCtjTnwtv_xRQ', 'BLzBlbJTRU-cWMviMJMa449QY93lW6jwFpjBGBUN2C4FXdxR0T2_r8ch8U-p6igtEYapv5hRAMqdmDErI7X8uZs', '-NIVMstkmIMTy8bjoCVGig', NULL, '2023-02-28 15:44:47', '2023-02-28 15:44:47'),
(32, 33, 'App\\Models\\Guest', 'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABj_2-IrOPSRM4s_vapetvjV4W-L-4q6eTwAKSPMQBfVBlsnSypYevXYerNHQkKizAG2b6R-KlPR9-1ALEnzBncFdMoDADPDO1ZXFcF78U5wlv3sB_GzcyKv0Q5bmX4Kc_TCWuMW_r19yo2-pbOu30coTOWrCN9ttPBVMxNEK49S_5GDd8', 'BNAtumTa2gl3q6bZZNngxRoKpL-FSGMHpod1Y1RTLVLH9SgDWRYW1CBtvJSt5Am2EaXXEroXMi2clNddPkfzHXE', 'zXNga-pA400R0vOZutYwew', NULL, '2023-03-01 04:30:17', '2023-03-01 04:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_inputs`
--

CREATE TABLE `reservation_inputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(4) DEFAULT NULL COMMENT '1-text, 2-select, 3-checkbox, 4-textarea, 5-datepicker, 6-timepicker',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - required, 0 - optional',
  `order_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation_inputs`
--

INSERT INTO `reservation_inputs` (`id`, `language_id`, `type`, `label`, `name`, `placeholder`, `required`, `order_number`, `created_at`, `updated_at`) VALUES
(30, 176, 1, 'Phone', 'Phone', 'Enter Phone Number', 1, 1, '2021-05-17 05:34:42', '2021-05-21 03:06:02'),
(31, 176, 1, 'Number of Persons', 'Number_of_Persons', 'Enter Number of Persons', 1, 2, '2021-05-17 05:34:53', '2021-05-21 03:06:02'),
(36, 176, 5, 'Check-in Date', 'Check-in_Date', 'Enter Check-in Date', 1, 3, '2021-05-17 05:58:05', '2021-05-17 05:58:05'),
(37, 176, 6, 'Check-in Time', 'Check-in_Time', 'Enter Check-in Time', 1, 4, '2021-05-17 05:58:16', '2021-05-17 05:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_input_options`
--

CREATE TABLE `reservation_input_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reservation_input_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(7, 'Delivery Manager', '[\"Dashboard\",\"Order Management\"]', '2020-09-24 00:13:52', '2021-05-21 05:28:11'),
(8, 'Kitchen Manager', '[\"Dashboard\",\"Table Reservation\",\"Product Management\",\"Order Management\"]', '2020-09-28 11:23:56', '2020-12-31 05:45:18'),
(10, 'Cashier', '[\"Dashboard\",\"POS\"]', '2023-03-07 01:33:13', '2023-03-07 01:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `serving_methods`
--

CREATE TABLE `serving_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `gateways` text DEFAULT NULL,
  `serial_number` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `website_menu` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive on website menu, 1 - active on website menu',
  `qr_menu` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive on qr menu, 1 - active on qr menu',
  `qr_payment` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - deactive, 1 - active',
  `pos` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - active for POS, 0 - deactive for POS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `serving_methods`
--

INSERT INTO `serving_methods` (`id`, `name`, `value`, `gateways`, `serial_number`, `note`, `website_menu`, `qr_menu`, `qr_payment`, `pos`) VALUES
(1, 'On Table', 'on_table', '[\"1\",\"2\",\"3\"]', 1, 'Choose this method, if you are in restaurant', 0, 0, 1, 0),
(2, 'Pick Up', 'pick_up', '[\"1\",\"2\",\"3\"]', 2, 'Choose this, if you want to pick up the food from Restaurant', 1, 1, 1, 1),
(3, 'Home Delivery', 'home_delivery', '[\"1\",\"2\",\"3\"]', 3, 'Choose this, if you want the order to be served at your doorstep.', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `free_delivery_amount` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `title`, `language_id`, `text`, `charge`, `created_at`, `updated_at`, `free_delivery_amount`) VALUES
(14, 'Guiwan', 176, NULL, '50.00', '2023-02-08 06:11:11', '2023-03-05 05:01:14', NULL),
(15, 'Manicahan', 176, NULL, '200.00', '2023-03-05 05:03:57', '2023-03-05 05:19:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitemaps`
--

INSERT INTO `sitemaps` (`id`, `sitemap_url`, `filename`, `created_at`, `updated_at`) VALUES
(2, 'http://localhost/superv/without_license/superv-1.2/', 'sitemap5f5e377957033.xml', '2020-09-13 09:15:26', '2020-09-13 09:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_font_size` int(11) NOT NULL DEFAULT 60,
  `text_font_size` int(11) NOT NULL DEFAULT 18,
  `button_text_font_size` int(11) NOT NULL DEFAULT 14,
  `button_text1_font_size` int(11) NOT NULL DEFAULT 14
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `language_id`, `text`, `title`, `button_text`, `button_url`, `button_text1`, `button_url1`, `image`, `bg_image`, `serial_number`, `created_at`, `updated_at`, `title_color`, `text_color`, `button_color`, `title_font_size`, `text_font_size`, `button_text_font_size`, `button_text1_font_size`) VALUES
(28, 176, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Burger King Grilled Chicken Burger', 'Add to Cart', '#', NULL, '#', '1598069651.png', '1609328189.jpg', 2, '2020-08-20 23:41:41', '2023-01-26 14:08:52', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14),
(29, 176, 'Beef Kulma is a Filipino curry dish similar to Korma, made with tender beef, coconut milk, peanuts, tomato sauce, and curry spices. It\'s a blend of Beef Curry and Kare Kare, and is known as \"kulma\" or \"kurma\" in Mindanao.', 'Beef Kulma', 'Add to Cart', '#', NULL, NULL, '1674576490.png', '1609328176.jpg', 1, '2020-08-20 23:41:41', '2023-01-26 14:09:08', 'FFFFFF', 'FFFFFF', 'FFFFFF', 60, 18, 14, 14);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `icon`, `url`, `serial_number`) VALUES
(1, 'fab fa-facebook-f', 'https://www.facebook.com/', 1),
(2, 'fab fa-twitter', 'https://twitter.com/', 2),
(3, 'fab fa-linkedin-in', 'https://bd.linkedin.com/', 3),
(4, 'fab fa-instagram', 'https://www.instagram.com/', 4),
(5, 'fab fa-dribbble', 'https://dribbble.com/', 5);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'user1@gmail.com', NULL, NULL),
(2, 'user5@gmail.com', NULL, NULL),
(8, 'ben@gmail.com', NULL, NULL),
(9, 'drop_your_cv@plusagency.com', NULL, NULL),
(10, 'user34@gmail.com', NULL, NULL),
(12, 'client@gmail.com', NULL, NULL),
(14, 'user@gmail.com', NULL, NULL),
(15, 'mariaqt666@gmail.com', NULL, NULL),
(16, 'vabata5787@laserlip.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_no` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 - active, 2 - deactive',
  `qr_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `size` int(11) NOT NULL DEFAULT 250,
  `style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `eye_style` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `margin` int(11) NOT NULL DEFAULT 0,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '000000',
  `text_size` int(11) DEFAULT 15,
  `text_x` int(11) NOT NULL DEFAULT 50,
  `text_y` int(11) NOT NULL DEFAULT 50,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(11) NOT NULL DEFAULT 20,
  `image_x` int(11) NOT NULL DEFAULT 50,
  `image_y` int(11) NOT NULL DEFAULT 50,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'default, image, text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_no`, `status`, `qr_image`, `color`, `size`, `style`, `eye_style`, `margin`, `text`, `text_color`, `text_size`, `text_x`, `text_y`, `image`, `image_size`, `image_x`, `image_y`, `type`) VALUES
(7, 1, 1, '60a926ef3406d.png', '520606', 272, 'square', 'circle', 0, NULL, NULL, NULL, 50, 50, '60a926ea0a451.png', 20, 50, 50, 'text'),
(8, 2, 1, '60a92703adfed.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'text'),
(10, 3, 1, '60a9262e62d6b.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(11, 4, 1, '60a9263865d0b.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(12, 5, 1, '60a9263ea193e.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(13, 6, 1, '60a9264514cdb.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(14, 7, 1, '60a9264bc926e.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(15, 8, 1, '60a92651a1323.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(16, 9, 1, '60a92658b0ffd.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(17, 10, 1, '60a9265ec7cd9.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(18, 11, 1, '60a9266999054.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default'),
(19, 12, 1, '60a92674c0125.png', '000000', 250, 'square', 'square', 0, NULL, '000000', 15, 50, 50, NULL, 20, 50, 50, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `table_books`
--

CREATE TABLE `table_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_books`
--

INSERT INTO `table_books` (`id`, `name`, `email`, `fields`, `status`, `created_at`, `updated_at`) VALUES
(17, 'Johnson', 'johnson@gmail.com', '{\"Phone\":\"12536236\",\"Time\":\"01:00 AM\",\"Date\":\"09/17/2020\",\"Person\":\"5\"}', 1, '2020-09-28 04:26:07', '2020-09-28 04:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `image`, `comment`, `name`, `rank`, `rating`, `serial_number`, `created_at`, `updated_at`) VALUES
(24, 176, '1597736067.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Emma Watson', 'CEO, MILO', 5, 1, NULL, NULL),
(25, 176, '1597749691.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Manny Pacquiao', 'CEO', 5, 4, NULL, NULL),
(28, 176, '1598692556.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Yves Lauren', 'Software Engineer', 5, 2, NULL, NULL),
(29, 176, '1598692612.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Bin Akilan', 'CEO, BGC', 5, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `country_code` char(3) NOT NULL,
  `timezone` varchar(125) NOT NULL DEFAULT '',
  `gmt_offset` float(10,2) DEFAULT NULL,
  `dst_offset` float(10,2) DEFAULT NULL,
  `raw_offset` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`country_code`, `timezone`, `gmt_offset`, `dst_offset`, `raw_offset`) VALUES
('AD', 'Europe/Andorra', 1.00, 2.00, 1.00),
('AE', 'Asia/Dubai', 4.00, 4.00, 4.00),
('AF', 'Asia/Kabul', 4.50, 4.50, 4.50),
('AG', 'America/Antigua', -4.00, -4.00, -4.00),
('AI', 'America/Anguilla', -4.00, -4.00, -4.00),
('AL', 'Europe/Tirane', 1.00, 2.00, 1.00),
('AM', 'Asia/Yerevan', 4.00, 4.00, 4.00),
('AO', 'Africa/Luanda', 1.00, 1.00, 1.00),
('AQ', 'Antarctica/Casey', 8.00, 8.00, 8.00),
('AQ', 'Antarctica/Davis', 7.00, 7.00, 7.00),
('AQ', 'Antarctica/DumontDUrville', 10.00, 10.00, 10.00),
('AQ', 'Antarctica/Mawson', 5.00, 5.00, 5.00),
('AQ', 'Antarctica/McMurdo', 13.00, 12.00, 12.00),
('AQ', 'Antarctica/Palmer', -3.00, -4.00, -4.00),
('AQ', 'Antarctica/Rothera', -3.00, -3.00, -3.00),
('AQ', 'Antarctica/South_Pole', 13.00, 12.00, 12.00),
('AQ', 'Antarctica/Syowa', 3.00, 3.00, 3.00),
('AQ', 'Antarctica/Vostok', 6.00, 6.00, 6.00),
('AR', 'America/Argentina/Buenos_Aires', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Catamarca', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Cordoba', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Jujuy', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/La_Rioja', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Mendoza', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Rio_Gallegos', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Salta', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/San_Juan', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/San_Luis', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Tucuman', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Ushuaia', -3.00, -3.00, -3.00),
('AS', 'Pacific/Pago_Pago', -11.00, -11.00, -11.00),
('AT', 'Europe/Vienna', 1.00, 2.00, 1.00),
('AU', 'Antarctica/Macquarie', 11.00, 11.00, 11.00),
('AU', 'Australia/Adelaide', 10.50, 9.50, 9.50),
('AU', 'Australia/Brisbane', 10.00, 10.00, 10.00),
('AU', 'Australia/Broken_Hill', 10.50, 9.50, 9.50),
('AU', 'Australia/Currie', 11.00, 10.00, 10.00),
('AU', 'Australia/Darwin', 9.50, 9.50, 9.50),
('AU', 'Australia/Eucla', 8.75, 8.75, 8.75),
('AU', 'Australia/Hobart', 11.00, 10.00, 10.00),
('AU', 'Australia/Lindeman', 10.00, 10.00, 10.00),
('AU', 'Australia/Lord_Howe', 11.00, 10.50, 10.50),
('AU', 'Australia/Melbourne', 11.00, 10.00, 10.00),
('AU', 'Australia/Perth', 8.00, 8.00, 8.00),
('AU', 'Australia/Sydney', 11.00, 10.00, 10.00),
('AW', 'America/Aruba', -4.00, -4.00, -4.00),
('AX', 'Europe/Mariehamn', 2.00, 3.00, 2.00),
('AZ', 'Asia/Baku', 4.00, 5.00, 4.00),
('BA', 'Europe/Sarajevo', 1.00, 2.00, 1.00),
('BB', 'America/Barbados', -4.00, -4.00, -4.00),
('BD', 'Asia/Dhaka', 6.00, 6.00, 6.00),
('BE', 'Europe/Brussels', 1.00, 2.00, 1.00),
('BF', 'Africa/Ouagadougou', 0.00, 0.00, 0.00),
('BG', 'Europe/Sofia', 2.00, 3.00, 2.00),
('BH', 'Asia/Bahrain', 3.00, 3.00, 3.00),
('BI', 'Africa/Bujumbura', 2.00, 2.00, 2.00),
('BJ', 'Africa/Porto-Novo', 1.00, 1.00, 1.00),
('BL', 'America/St_Barthelemy', -4.00, -4.00, -4.00),
('BM', 'Atlantic/Bermuda', -4.00, -3.00, -4.00),
('BN', 'Asia/Brunei', 8.00, 8.00, 8.00),
('BO', 'America/La_Paz', -4.00, -4.00, -4.00),
('BQ', 'America/Kralendijk', -4.00, -4.00, -4.00),
('BR', 'America/Araguaina', -3.00, -3.00, -3.00),
('BR', 'America/Bahia', -3.00, -3.00, -3.00),
('BR', 'America/Belem', -3.00, -3.00, -3.00),
('BR', 'America/Boa_Vista', -4.00, -4.00, -4.00),
('BR', 'America/Campo_Grande', -3.00, -4.00, -4.00),
('BR', 'America/Cuiaba', -3.00, -4.00, -4.00),
('BR', 'America/Eirunepe', -5.00, -5.00, -5.00),
('BR', 'America/Fortaleza', -3.00, -3.00, -3.00),
('BR', 'America/Maceio', -3.00, -3.00, -3.00),
('BR', 'America/Manaus', -4.00, -4.00, -4.00),
('BR', 'America/Noronha', -2.00, -2.00, -2.00),
('BR', 'America/Porto_Velho', -4.00, -4.00, -4.00),
('BR', 'America/Recife', -3.00, -3.00, -3.00),
('BR', 'America/Rio_Branco', -5.00, -5.00, -5.00),
('BR', 'America/Santarem', -3.00, -3.00, -3.00),
('BR', 'America/Sao_Paulo', -2.00, -3.00, -3.00),
('BS', 'America/Nassau', -5.00, -4.00, -5.00),
('BT', 'Asia/Thimphu', 6.00, 6.00, 6.00),
('BW', 'Africa/Gaborone', 2.00, 2.00, 2.00),
('BY', 'Europe/Minsk', 3.00, 3.00, 3.00),
('BZ', 'America/Belize', -6.00, -6.00, -6.00),
('CA', 'America/Atikokan', -5.00, -5.00, -5.00),
('CA', 'America/Blanc-Sablon', -4.00, -4.00, -4.00),
('CA', 'America/Cambridge_Bay', -7.00, -6.00, -7.00),
('CA', 'America/Creston', -7.00, -7.00, -7.00),
('CA', 'America/Dawson', -8.00, -7.00, -8.00),
('CA', 'America/Dawson_Creek', -7.00, -7.00, -7.00),
('CA', 'America/Edmonton', -7.00, -6.00, -7.00),
('CA', 'America/Glace_Bay', -4.00, -3.00, -4.00),
('CA', 'America/Goose_Bay', -4.00, -3.00, -4.00),
('CA', 'America/Halifax', -4.00, -3.00, -4.00),
('CA', 'America/Inuvik', -7.00, -6.00, -7.00),
('CA', 'America/Iqaluit', -5.00, -4.00, -5.00),
('CA', 'America/Moncton', -4.00, -3.00, -4.00),
('CA', 'America/Montreal', -5.00, -4.00, -5.00),
('CA', 'America/Nipigon', -5.00, -4.00, -5.00),
('CA', 'America/Pangnirtung', -5.00, -4.00, -5.00),
('CA', 'America/Rainy_River', -6.00, -5.00, -6.00),
('CA', 'America/Rankin_Inlet', -6.00, -5.00, -6.00),
('CA', 'America/Regina', -6.00, -6.00, -6.00),
('CA', 'America/Resolute', -6.00, -5.00, -6.00),
('CA', 'America/St_Johns', -3.50, -2.50, -3.50),
('CA', 'America/Swift_Current', -6.00, -6.00, -6.00),
('CA', 'America/Thunder_Bay', -5.00, -4.00, -5.00),
('CA', 'America/Toronto', -5.00, -4.00, -5.00),
('CA', 'America/Vancouver', -8.00, -7.00, -8.00),
('CA', 'America/Whitehorse', -8.00, -7.00, -8.00),
('CA', 'America/Winnipeg', -6.00, -5.00, -6.00),
('CA', 'America/Yellowknife', -7.00, -6.00, -7.00),
('CC', 'Indian/Cocos', 6.50, 6.50, 6.50),
('CD', 'Africa/Kinshasa', 1.00, 1.00, 1.00),
('CD', 'Africa/Lubumbashi', 2.00, 2.00, 2.00),
('CF', 'Africa/Bangui', 1.00, 1.00, 1.00),
('CG', 'Africa/Brazzaville', 1.00, 1.00, 1.00),
('CH', 'Europe/Zurich', 1.00, 2.00, 1.00),
('CI', 'Africa/Abidjan', 0.00, 0.00, 0.00),
('CK', 'Pacific/Rarotonga', -10.00, -10.00, -10.00),
('CL', 'America/Santiago', -3.00, -4.00, -4.00),
('CL', 'Pacific/Easter', -5.00, -6.00, -6.00),
('CM', 'Africa/Douala', 1.00, 1.00, 1.00),
('CN', 'Asia/Chongqing', 8.00, 8.00, 8.00),
('CN', 'Asia/Harbin', 8.00, 8.00, 8.00),
('CN', 'Asia/Kashgar', 8.00, 8.00, 8.00),
('CN', 'Asia/Shanghai', 8.00, 8.00, 8.00),
('CN', 'Asia/Urumqi', 8.00, 8.00, 8.00),
('CO', 'America/Bogota', -5.00, -5.00, -5.00),
('CR', 'America/Costa_Rica', -6.00, -6.00, -6.00),
('CU', 'America/Havana', -5.00, -4.00, -5.00),
('CV', 'Atlantic/Cape_Verde', -1.00, -1.00, -1.00),
('CW', 'America/Curacao', -4.00, -4.00, -4.00),
('CX', 'Indian/Christmas', 7.00, 7.00, 7.00),
('CY', 'Asia/Nicosia', 2.00, 3.00, 2.00),
('CZ', 'Europe/Prague', 1.00, 2.00, 1.00),
('DE', 'Europe/Berlin', 1.00, 2.00, 1.00),
('DE', 'Europe/Busingen', 1.00, 2.00, 1.00),
('DJ', 'Africa/Djibouti', 3.00, 3.00, 3.00),
('DK', 'Europe/Copenhagen', 1.00, 2.00, 1.00),
('DM', 'America/Dominica', -4.00, -4.00, -4.00),
('DO', 'America/Santo_Domingo', -4.00, -4.00, -4.00),
('DZ', 'Africa/Algiers', 1.00, 1.00, 1.00),
('EC', 'America/Guayaquil', -5.00, -5.00, -5.00),
('EC', 'Pacific/Galapagos', -6.00, -6.00, -6.00),
('EE', 'Europe/Tallinn', 2.00, 3.00, 2.00),
('EG', 'Africa/Cairo', 2.00, 2.00, 2.00),
('EH', 'Africa/El_Aaiun', 0.00, 0.00, 0.00),
('ER', 'Africa/Asmara', 3.00, 3.00, 3.00),
('ES', 'Africa/Ceuta', 1.00, 2.00, 1.00),
('ES', 'Atlantic/Canary', 0.00, 1.00, 0.00),
('ES', 'Europe/Madrid', 1.00, 2.00, 1.00),
('ET', 'Africa/Addis_Ababa', 3.00, 3.00, 3.00),
('FI', 'Europe/Helsinki', 2.00, 3.00, 2.00),
('FJ', 'Pacific/Fiji', 13.00, 12.00, 12.00),
('FK', 'Atlantic/Stanley', -3.00, -3.00, -3.00),
('FM', 'Pacific/Chuuk', 10.00, 10.00, 10.00),
('FM', 'Pacific/Kosrae', 11.00, 11.00, 11.00),
('FM', 'Pacific/Pohnpei', 11.00, 11.00, 11.00),
('FO', 'Atlantic/Faroe', 0.00, 1.00, 0.00),
('FR', 'Europe/Paris', 1.00, 2.00, 1.00),
('GA', 'Africa/Libreville', 1.00, 1.00, 1.00),
('GB', 'Europe/London', 0.00, 1.00, 0.00),
('GD', 'America/Grenada', -4.00, -4.00, -4.00),
('GE', 'Asia/Tbilisi', 4.00, 4.00, 4.00),
('GF', 'America/Cayenne', -3.00, -3.00, -3.00),
('GG', 'Europe/Guernsey', 0.00, 1.00, 0.00),
('GH', 'Africa/Accra', 0.00, 0.00, 0.00),
('GI', 'Europe/Gibraltar', 1.00, 2.00, 1.00),
('GL', 'America/Danmarkshavn', 0.00, 0.00, 0.00),
('GL', 'America/Godthab', -3.00, -2.00, -3.00),
('GL', 'America/Scoresbysund', -1.00, 0.00, -1.00),
('GL', 'America/Thule', -4.00, -3.00, -4.00),
('GM', 'Africa/Banjul', 0.00, 0.00, 0.00),
('GN', 'Africa/Conakry', 0.00, 0.00, 0.00),
('GP', 'America/Guadeloupe', -4.00, -4.00, -4.00),
('GQ', 'Africa/Malabo', 1.00, 1.00, 1.00),
('GR', 'Europe/Athens', 2.00, 3.00, 2.00),
('GS', 'Atlantic/South_Georgia', -2.00, -2.00, -2.00),
('GT', 'America/Guatemala', -6.00, -6.00, -6.00),
('GU', 'Pacific/Guam', 10.00, 10.00, 10.00),
('GW', 'Africa/Bissau', 0.00, 0.00, 0.00),
('GY', 'America/Guyana', -4.00, -4.00, -4.00),
('HK', 'Asia/Hong_Kong', 8.00, 8.00, 8.00),
('HN', 'America/Tegucigalpa', -6.00, -6.00, -6.00),
('HR', 'Europe/Zagreb', 1.00, 2.00, 1.00),
('HT', 'America/Port-au-Prince', -5.00, -4.00, -5.00),
('HU', 'Europe/Budapest', 1.00, 2.00, 1.00),
('ID', 'Asia/Jakarta', 7.00, 7.00, 7.00),
('ID', 'Asia/Jayapura', 9.00, 9.00, 9.00),
('ID', 'Asia/Makassar', 8.00, 8.00, 8.00),
('ID', 'Asia/Pontianak', 7.00, 7.00, 7.00),
('IE', 'Europe/Dublin', 0.00, 1.00, 0.00),
('IL', 'Asia/Jerusalem', 2.00, 3.00, 2.00),
('IM', 'Europe/Isle_of_Man', 0.00, 1.00, 0.00),
('IN', 'Asia/Kolkata', 5.50, 5.50, 5.50),
('IO', 'Indian/Chagos', 6.00, 6.00, 6.00),
('IQ', 'Asia/Baghdad', 3.00, 3.00, 3.00),
('IR', 'Asia/Tehran', 3.50, 4.50, 3.50),
('IS', 'Atlantic/Reykjavik', 0.00, 0.00, 0.00),
('IT', 'Europe/Rome', 1.00, 2.00, 1.00),
('JE', 'Europe/Jersey', 0.00, 1.00, 0.00),
('JM', 'America/Jamaica', -5.00, -5.00, -5.00),
('JO', 'Asia/Amman', 2.00, 3.00, 2.00),
('JP', 'Asia/Tokyo', 9.00, 9.00, 9.00),
('KE', 'Africa/Nairobi', 3.00, 3.00, 3.00),
('KG', 'Asia/Bishkek', 6.00, 6.00, 6.00),
('KH', 'Asia/Phnom_Penh', 7.00, 7.00, 7.00),
('KI', 'Pacific/Enderbury', 13.00, 13.00, 13.00),
('KI', 'Pacific/Kiritimati', 14.00, 14.00, 14.00),
('KI', 'Pacific/Tarawa', 12.00, 12.00, 12.00),
('KM', 'Indian/Comoro', 3.00, 3.00, 3.00),
('KN', 'America/St_Kitts', -4.00, -4.00, -4.00),
('KP', 'Asia/Pyongyang', 9.00, 9.00, 9.00),
('KR', 'Asia/Seoul', 9.00, 9.00, 9.00),
('KW', 'Asia/Kuwait', 3.00, 3.00, 3.00),
('KY', 'America/Cayman', -5.00, -5.00, -5.00),
('KZ', 'Asia/Almaty', 6.00, 6.00, 6.00),
('KZ', 'Asia/Aqtau', 5.00, 5.00, 5.00),
('KZ', 'Asia/Aqtobe', 5.00, 5.00, 5.00),
('KZ', 'Asia/Oral', 5.00, 5.00, 5.00),
('KZ', 'Asia/Qyzylorda', 6.00, 6.00, 6.00),
('LA', 'Asia/Vientiane', 7.00, 7.00, 7.00),
('LB', 'Asia/Beirut', 2.00, 3.00, 2.00),
('LC', 'America/St_Lucia', -4.00, -4.00, -4.00),
('LI', 'Europe/Vaduz', 1.00, 2.00, 1.00),
('LK', 'Asia/Colombo', 5.50, 5.50, 5.50),
('LR', 'Africa/Monrovia', 0.00, 0.00, 0.00),
('LS', 'Africa/Maseru', 2.00, 2.00, 2.00),
('LT', 'Europe/Vilnius', 2.00, 3.00, 2.00),
('LU', 'Europe/Luxembourg', 1.00, 2.00, 1.00),
('LV', 'Europe/Riga', 2.00, 3.00, 2.00),
('LY', 'Africa/Tripoli', 2.00, 2.00, 2.00),
('MA', 'Africa/Casablanca', 0.00, 0.00, 0.00),
('MC', 'Europe/Monaco', 1.00, 2.00, 1.00),
('MD', 'Europe/Chisinau', 2.00, 3.00, 2.00),
('ME', 'Europe/Podgorica', 1.00, 2.00, 1.00),
('MF', 'America/Marigot', -4.00, -4.00, -4.00),
('MG', 'Indian/Antananarivo', 3.00, 3.00, 3.00),
('MH', 'Pacific/Kwajalein', 12.00, 12.00, 12.00),
('MH', 'Pacific/Majuro', 12.00, 12.00, 12.00),
('MK', 'Europe/Skopje', 1.00, 2.00, 1.00),
('ML', 'Africa/Bamako', 0.00, 0.00, 0.00),
('MM', 'Asia/Rangoon', 6.50, 6.50, 6.50),
('MN', 'Asia/Choibalsan', 8.00, 8.00, 8.00),
('MN', 'Asia/Hovd', 7.00, 7.00, 7.00),
('MN', 'Asia/Ulaanbaatar', 8.00, 8.00, 8.00),
('MO', 'Asia/Macau', 8.00, 8.00, 8.00),
('MP', 'Pacific/Saipan', 10.00, 10.00, 10.00),
('MQ', 'America/Martinique', -4.00, -4.00, -4.00),
('MR', 'Africa/Nouakchott', 0.00, 0.00, 0.00),
('MS', 'America/Montserrat', -4.00, -4.00, -4.00),
('MT', 'Europe/Malta', 1.00, 2.00, 1.00),
('MU', 'Indian/Mauritius', 4.00, 4.00, 4.00),
('MV', 'Indian/Maldives', 5.00, 5.00, 5.00),
('MW', 'Africa/Blantyre', 2.00, 2.00, 2.00),
('MX', 'America/Bahia_Banderas', -6.00, -5.00, -6.00),
('MX', 'America/Cancun', -6.00, -5.00, -6.00),
('MX', 'America/Chihuahua', -7.00, -6.00, -7.00),
('MX', 'America/Hermosillo', -7.00, -7.00, -7.00),
('MX', 'America/Matamoros', -6.00, -5.00, -6.00),
('MX', 'America/Mazatlan', -7.00, -6.00, -7.00),
('MX', 'America/Merida', -6.00, -5.00, -6.00),
('MX', 'America/Mexico_City', -6.00, -5.00, -6.00),
('MX', 'America/Monterrey', -6.00, -5.00, -6.00),
('MX', 'America/Ojinaga', -7.00, -6.00, -7.00),
('MX', 'America/Santa_Isabel', -8.00, -7.00, -8.00),
('MX', 'America/Tijuana', -8.00, -7.00, -8.00),
('MY', 'Asia/Kuala_Lumpur', 8.00, 8.00, 8.00),
('MY', 'Asia/Kuching', 8.00, 8.00, 8.00),
('MZ', 'Africa/Maputo', 2.00, 2.00, 2.00),
('NA', 'Africa/Windhoek', 2.00, 1.00, 1.00),
('NC', 'Pacific/Noumea', 11.00, 11.00, 11.00),
('NE', 'Africa/Niamey', 1.00, 1.00, 1.00),
('NF', 'Pacific/Norfolk', 11.50, 11.50, 11.50),
('NG', 'Africa/Lagos', 1.00, 1.00, 1.00),
('NI', 'America/Managua', -6.00, -6.00, -6.00),
('NL', 'Europe/Amsterdam', 1.00, 2.00, 1.00),
('NO', 'Europe/Oslo', 1.00, 2.00, 1.00),
('NP', 'Asia/Kathmandu', 5.75, 5.75, 5.75),
('NR', 'Pacific/Nauru', 12.00, 12.00, 12.00),
('NU', 'Pacific/Niue', -11.00, -11.00, -11.00),
('NZ', 'Pacific/Auckland', 13.00, 12.00, 12.00),
('NZ', 'Pacific/Chatham', 13.75, 12.75, 12.75),
('OM', 'Asia/Muscat', 4.00, 4.00, 4.00),
('PA', 'America/Panama', -5.00, -5.00, -5.00),
('PE', 'America/Lima', -5.00, -5.00, -5.00),
('PF', 'Pacific/Gambier', -9.00, -9.00, -9.00),
('PF', 'Pacific/Marquesas', -9.50, -9.50, -9.50),
('PF', 'Pacific/Tahiti', -10.00, -10.00, -10.00),
('PG', 'Pacific/Port_Moresby', 10.00, 10.00, 10.00),
('PH', 'Asia/Manila', 8.00, 8.00, 8.00),
('PK', 'Asia/Karachi', 5.00, 5.00, 5.00),
('PL', 'Europe/Warsaw', 1.00, 2.00, 1.00),
('PM', 'America/Miquelon', -3.00, -2.00, -3.00),
('PN', 'Pacific/Pitcairn', -8.00, -8.00, -8.00),
('PR', 'America/Puerto_Rico', -4.00, -4.00, -4.00),
('PS', 'Asia/Gaza', 2.00, 3.00, 2.00),
('PS', 'Asia/Hebron', 2.00, 3.00, 2.00),
('PT', 'Atlantic/Azores', -1.00, 0.00, -1.00),
('PT', 'Atlantic/Madeira', 0.00, 1.00, 0.00),
('PT', 'Europe/Lisbon', 0.00, 1.00, 0.00),
('PW', 'Pacific/Palau', 9.00, 9.00, 9.00),
('PY', 'America/Asuncion', -3.00, -4.00, -4.00),
('QA', 'Asia/Qatar', 3.00, 3.00, 3.00),
('RE', 'Indian/Reunion', 4.00, 4.00, 4.00),
('RO', 'Europe/Bucharest', 2.00, 3.00, 2.00),
('RS', 'Europe/Belgrade', 1.00, 2.00, 1.00),
('RU', 'Asia/Anadyr', 12.00, 12.00, 12.00),
('RU', 'Asia/Irkutsk', 9.00, 9.00, 9.00),
('RU', 'Asia/Kamchatka', 12.00, 12.00, 12.00),
('RU', 'Asia/Khandyga', 10.00, 10.00, 10.00),
('RU', 'Asia/Krasnoyarsk', 8.00, 8.00, 8.00),
('RU', 'Asia/Magadan', 12.00, 12.00, 12.00),
('RU', 'Asia/Novokuznetsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Novosibirsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Omsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Sakhalin', 11.00, 11.00, 11.00),
('RU', 'Asia/Ust-Nera', 11.00, 11.00, 11.00),
('RU', 'Asia/Vladivostok', 11.00, 11.00, 11.00),
('RU', 'Asia/Yakutsk', 10.00, 10.00, 10.00),
('RU', 'Asia/Yekaterinburg', 6.00, 6.00, 6.00),
('RU', 'Europe/Kaliningrad', 3.00, 3.00, 3.00),
('RU', 'Europe/Moscow', 4.00, 4.00, 4.00),
('RU', 'Europe/Samara', 4.00, 4.00, 4.00),
('RU', 'Europe/Volgograd', 4.00, 4.00, 4.00),
('RW', 'Africa/Kigali', 2.00, 2.00, 2.00),
('SA', 'Asia/Riyadh', 3.00, 3.00, 3.00),
('SB', 'Pacific/Guadalcanal', 11.00, 11.00, 11.00),
('SC', 'Indian/Mahe', 4.00, 4.00, 4.00),
('SD', 'Africa/Khartoum', 3.00, 3.00, 3.00),
('SE', 'Europe/Stockholm', 1.00, 2.00, 1.00),
('SG', 'Asia/Singapore', 8.00, 8.00, 8.00),
('SH', 'Atlantic/St_Helena', 0.00, 0.00, 0.00),
('SI', 'Europe/Ljubljana', 1.00, 2.00, 1.00),
('SJ', 'Arctic/Longyearbyen', 1.00, 2.00, 1.00),
('SK', 'Europe/Bratislava', 1.00, 2.00, 1.00),
('SL', 'Africa/Freetown', 0.00, 0.00, 0.00),
('SM', 'Europe/San_Marino', 1.00, 2.00, 1.00),
('SN', 'Africa/Dakar', 0.00, 0.00, 0.00),
('SO', 'Africa/Mogadishu', 3.00, 3.00, 3.00),
('SR', 'America/Paramaribo', -3.00, -3.00, -3.00),
('SS', 'Africa/Juba', 3.00, 3.00, 3.00),
('ST', 'Africa/Sao_Tome', 0.00, 0.00, 0.00),
('SV', 'America/El_Salvador', -6.00, -6.00, -6.00),
('SX', 'America/Lower_Princes', -4.00, -4.00, -4.00),
('SY', 'Asia/Damascus', 2.00, 3.00, 2.00),
('SZ', 'Africa/Mbabane', 2.00, 2.00, 2.00),
('TC', 'America/Grand_Turk', -5.00, -4.00, -5.00),
('TD', 'Africa/Ndjamena', 1.00, 1.00, 1.00),
('TF', 'Indian/Kerguelen', 5.00, 5.00, 5.00),
('TG', 'Africa/Lome', 0.00, 0.00, 0.00),
('TH', 'Asia/Bangkok', 7.00, 7.00, 7.00),
('TJ', 'Asia/Dushanbe', 5.00, 5.00, 5.00),
('TK', 'Pacific/Fakaofo', 13.00, 13.00, 13.00),
('TL', 'Asia/Dili', 9.00, 9.00, 9.00),
('TM', 'Asia/Ashgabat', 5.00, 5.00, 5.00),
('TN', 'Africa/Tunis', 1.00, 1.00, 1.00),
('TO', 'Pacific/Tongatapu', 13.00, 13.00, 13.00),
('TR', 'Europe/Istanbul', 2.00, 3.00, 2.00),
('TT', 'America/Port_of_Spain', -4.00, -4.00, -4.00),
('TV', 'Pacific/Funafuti', 12.00, 12.00, 12.00),
('TW', 'Asia/Taipei', 8.00, 8.00, 8.00),
('TZ', 'Africa/Dar_es_Salaam', 3.00, 3.00, 3.00),
('UA', 'Europe/Kiev', 2.00, 3.00, 2.00),
('UA', 'Europe/Simferopol', 2.00, 4.00, 4.00),
('UA', 'Europe/Uzhgorod', 2.00, 3.00, 2.00),
('UA', 'Europe/Zaporozhye', 2.00, 3.00, 2.00),
('UG', 'Africa/Kampala', 3.00, 3.00, 3.00),
('UM', 'Pacific/Johnston', -10.00, -10.00, -10.00),
('UM', 'Pacific/Midway', -11.00, -11.00, -11.00),
('UM', 'Pacific/Wake', 12.00, 12.00, 12.00),
('US', 'America/Adak', -10.00, -9.00, -10.00),
('US', 'America/Anchorage', -9.00, -8.00, -9.00),
('US', 'America/Boise', -7.00, -6.00, -7.00),
('US', 'America/Chicago', -6.00, -5.00, -6.00),
('US', 'America/Denver', -7.00, -6.00, -7.00),
('US', 'America/Detroit', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Indianapolis', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Knox', -6.00, -5.00, -6.00),
('US', 'America/Indiana/Marengo', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Petersburg', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Tell_City', -6.00, -5.00, -6.00),
('US', 'America/Indiana/Vevay', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Vincennes', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Winamac', -5.00, -4.00, -5.00),
('US', 'America/Juneau', -9.00, -8.00, -9.00),
('US', 'America/Kentucky/Louisville', -5.00, -4.00, -5.00),
('US', 'America/Kentucky/Monticello', -5.00, -4.00, -5.00),
('US', 'America/Los_Angeles', -8.00, -7.00, -8.00),
('US', 'America/Menominee', -6.00, -5.00, -6.00),
('US', 'America/Metlakatla', -8.00, -8.00, -8.00),
('US', 'America/New_York', -5.00, -4.00, -5.00),
('US', 'America/Nome', -9.00, -8.00, -9.00),
('US', 'America/North_Dakota/Beulah', -6.00, -5.00, -6.00),
('US', 'America/North_Dakota/Center', -6.00, -5.00, -6.00),
('US', 'America/North_Dakota/New_Salem', -6.00, -5.00, -6.00),
('US', 'America/Phoenix', -7.00, -7.00, -7.00),
('US', 'America/Shiprock', -7.00, -6.00, -7.00),
('US', 'America/Sitka', -9.00, -8.00, -9.00),
('US', 'America/Yakutat', -9.00, -8.00, -9.00),
('US', 'Pacific/Honolulu', -10.00, -10.00, -10.00),
('UY', 'America/Montevideo', -2.00, -3.00, -3.00),
('UZ', 'Asia/Samarkand', 5.00, 5.00, 5.00),
('UZ', 'Asia/Tashkent', 5.00, 5.00, 5.00),
('VA', 'Europe/Vatican', 1.00, 2.00, 1.00),
('VC', 'America/St_Vincent', -4.00, -4.00, -4.00),
('VE', 'America/Caracas', -4.50, -4.50, -4.50),
('VG', 'America/Tortola', -4.00, -4.00, -4.00),
('VI', 'America/St_Thomas', -4.00, -4.00, -4.00),
('VN', 'Asia/Ho_Chi_Minh', 7.00, 7.00, 7.00),
('VU', 'Pacific/Efate', 11.00, 11.00, 11.00),
('WF', 'Pacific/Wallis', 12.00, 12.00, 12.00),
('WS', 'Pacific/Apia', 14.00, 13.00, 13.00),
('YE', 'Asia/Aden', 3.00, 3.00, 3.00),
('YT', 'Indian/Mayotte', 3.00, 3.00, 3.00),
('ZA', 'Africa/Johannesburg', 2.00, 2.00, 2.00),
('ZM', 'Africa/Lusaka', 2.00, 2.00, 2.00),
('ZW', 'Africa/Harare', 2.00, 2.00, 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `time_frames`
--

CREATE TABLE `time_frames` (
  `id` int(11) NOT NULL,
  `day` varchar(100) DEFAULT NULL,
  `start` varchar(100) DEFAULT NULL,
  `end` varchar(100) DEFAULT NULL,
  `max_orders` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_frames`
--

INSERT INTO `time_frames` (`id`, `day`, `start`, `end`, `max_orders`) VALUES
(4, 'wednesday', '10:00 AM', '12:00 PM', 30),
(8, 'monday', '10:00 AM', '12:00 PM', 10),
(9, 'tuesday', '10:00 AM', '01:00 PM', 10),
(10, 'thursday', '11:30 AM', '01:00 PM', 5),
(11, 'friday', '01:00 PM', '02:30 PM', 15),
(12, 'saturday', '12:00 PM', '02:00 PM', 10),
(13, 'sunday', '12:30 PM', '01:30 PM', 16);

-- --------------------------------------------------------

--
-- Table structure for table `ulinks`
--

CREATE TABLE `ulinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ulinks`
--

INSERT INTO `ulinks` (`id`, `language_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(36, 176, 'Contact', '#', NULL, NULL),
(38, 176, 'Team', '#', NULL, NULL),
(39, 176, 'Gallery', '#', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `photo`, `username`, `email`, `password`, `number`, `city`, `state`, `address`, `country`, `remember_token`, `billing_fname`, `billing_lname`, `billing_photo`, `billing_username`, `billing_email`, `billing_number`, `billing_city`, `billing_state`, `billing_address`, `billing_country`, `shpping_fname`, `shpping_lname`, `shpping_photo`, `shpping_username`, `shpping_email`, `shpping_number`, `shpping_city`, `shpping_state`, `shpping_address`, `shpping_country`, `status`, `verification_link`, `email_verified`, `created_at`, `updated_at`, `provider`, `provider_id`, `billing_country_code`, `shipping_country_code`) VALUES
(11, 'Akira', 'Devs', 'https://lh3.googleusercontent.com/a/AEdFTp5LoHrB_bJNufcrqhYyDu-T60RdwaSn7UKgmTVT=s96-c', 'bindevss', 'akira.yuma666@gmail.com', NULL, '09261998716', 'Zamboanga', 'Zamboanga Del Sur', 'Manicahan Aplaya, Besides baring store.', 'Manicahan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Yes', '2023-01-31 08:25:54', '2023-01-31 08:54:55', 'google', '104276508091188638145', NULL, NULL),
(12, 'Yves', 'Lauren', 'https://lh3.googleusercontent.com/a/AEdFTp4s7PZPAosGG2WEtxgV7lxoCcrcWcNEGnQZZubF=s96-c', 'lyves1162', 'lyves1162@gmail.com', NULL, '09261013618', 'Zamboanga', 'Zamboanga Del Sur', 'Aplaya Street', 'Manicahan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yves', 'Lauren', NULL, NULL, 'bin.akilan@gmail.com', '9261003618', 'Zamboanga', 'Zamboanga Del Sur', 'Aplaya Street', 'Manicahan', 1, NULL, 'Yes', '2023-02-02 10:52:47', '2023-02-08 05:54:59', 'google', '108440056564414896337', NULL, '+63'),
(13, NULL, NULL, NULL, 'maria', 'mariaqt666@gmail.com', '$2y$10$Qju2f843JQoyFOR8AXXy3.v9i75GqCyPAWxPjxa/C87rQjHovzwP.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '256a9e614388526ba9587be9ddf96aaf', 'Yes', '2023-02-02 11:39:18', '2023-02-02 11:57:02', NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, 'vabata5787', 'vabata5787@laserlip.com', '$2y$10$SqVItkmiCVURk378ijQ0V.5lPz/gDDxunkBtPN0FXFkdaZ3b0sdj6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cc728accc4d2f96126d3b9ef5b5abfd1', 'no', '2023-02-20 04:38:31', '2023-02-20 04:38:31', NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, 'tigenaj277', 'tigenaj277@jobsfeel.com', '$2y$10$1N3laPPuOGGACeGCBGFb..dy1vulWbjD3yKkZYHGoAGv3ZczVE2KK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bin', 'Akilan', NULL, NULL, 'bin.akilan@gmail.com', '9261003618', 'Zamboanga', 'Zamboanga Del Sur', 'g', 'Manicahan', 1, 'd0571dbcf5ee17eed3400838c5df1cae', 'Yes', '2023-02-20 04:42:06', '2023-02-20 05:01:37', NULL, NULL, NULL, '+63'),
(23, NULL, NULL, NULL, 'cotis68704', 'cotis68704@wwgoc.com', '$2y$10$nR.lY9s1SMKrsQzDvrBY7Otbiw4gfTxfbY.ouBqwfaKNN.tPzx9Si', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5445d67f160edeca1b8d92a40a1a3e59', 'no', '2023-02-24 06:09:26', '2023-02-24 06:09:26', NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, 'bin.thoughts25', 'bin.thoughts25@gmail.com', '$2y$10$tPjmnnpposn0jsZUsbAMhenC9XQtlmhi1fY0XN8HB5FnFgft0HbPy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3e114532b577bbdaeb5efcbba4acf663', 'no', '2023-02-24 06:10:29', '2023-02-24 06:10:29', NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, 'motemey888', 'motemey888@v2ssr.com', '$2y$10$zSuTAIkSfePQzkrOF5rwcO0LVSp51VmCFnbS/neQduOHDyEtOylna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Marvin', 'Lauren', NULL, NULL, 'bin.akilan@gmail.com', '9261003618', 'Zamboanga City', 'Zamboanga Del Sur', 'tayts', 'Campo Islam', 1, '67892f865132cf062f779441b9401897', 'Yes', '2023-03-01 00:50:24', '2023-03-05 11:06:07', NULL, NULL, NULL, '+93'),
(26, NULL, NULL, NULL, 'liwidy', 'liwidy@lyricspad.net', '$2y$10$D0saacpF0NXl9NpofHGC2etwkA5/AahbqV/1UtO9zb3MzQ.eyLVxu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bin', 'Akilan', NULL, NULL, 'bin.akilan@gmail.com', '9261003618', 'Zamboanga City', 'Zamboanga Del Sur', 'Tapat ng edna store.', 'Lunzuran', 1, '69b21fc915e9f8f1b8ec8144af05446e', 'Yes', '2023-03-01 02:39:35', '2023-03-01 03:58:33', NULL, NULL, NULL, '+63'),
(27, NULL, NULL, NULL, 'yigeber982', 'yigeber982@vootin.com', '$2y$10$WiLsnYrksOY0B.lKvOxUveBTlownfK3atJpJtXdwKfAT9zxQA4ihW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5b5675ae5962bde0dbc371dd27bc5884', 'no', '2023-03-01 04:32:09', '2023-03-01 04:32:09', NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, 'badojef535', 'badojef535@wwgoc.com', '$2y$10$AYixGhIthpr/3hat.sCEfuCVci7luEioG5TtE.OzWAeh74Udh/xOe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bin', 'Akilan', NULL, NULL, 'badojef535@wwgoc.com', '9261003618', 'Zamboanga City', 'Zamboanga Del Sur', '26517 Aplaya Street', 'Manicahan', 1, '303aa5f4fa8614a5d0643624ae5a34bd', 'Yes', '2023-03-05 01:36:58', '2023-03-05 01:46:34', NULL, NULL, NULL, '+63'),
(29, NULL, NULL, NULL, 'bojogoc812', 'bojogoc812@rolenot.com', '$2y$10$r1LzDCxOE73YiBudE13QneJspTnwohyd5tloGcX1KNBdBiFICJE0m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '15d4d743e658ca3ad0b8be11a758f664', 'Yes', '2023-03-07 01:39:55', '2023-03-07 01:40:46', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_extras`
--
ALTER TABLE `basic_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bottomlinks`
--
ALTER TABLE `bottomlinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guests_endpoint_unique` (`endpoint`);

--
-- Indexes for table `jcategories`
--
ALTER TABLE `jcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_times`
--
ALTER TABLE `order_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pcategories`
--
ALTER TABLE `pcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popups_language_id_foreign` (`language_id`);

--
-- Indexes for table `postal_codes`
--
ALTER TABLE `postal_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postal_codes_language_id_foreign` (`language_id`);

--
-- Indexes for table `pos_payment_methods`
--
ALTER TABLE `pos_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psub_categories`
--
ALTER TABLE `psub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`);

--
-- Indexes for table `reservation_inputs`
--
ALTER TABLE `reservation_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation_input_options`
--
ALTER TABLE `reservation_input_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serving_methods`
--
ALTER TABLE `serving_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_books`
--
ALTER TABLE `table_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`country_code`,`timezone`);

--
-- Indexes for table `time_frames`
--
ALTER TABLE `time_frames`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulinks`
--
ALTER TABLE `ulinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `basic_extras`
--
ALTER TABLE `basic_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `bottomlinks`
--
ALTER TABLE `bottomlinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `jcategories`
--
ALTER TABLE `jcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order_times`
--
ALTER TABLE `order_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pcategories`
--
ALTER TABLE `pcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `postal_codes`
--
ALTER TABLE `postal_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pos_payment_methods`
--
ALTER TABLE `pos_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `psub_categories`
--
ALTER TABLE `psub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `reservation_inputs`
--
ALTER TABLE `reservation_inputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `reservation_input_options`
--
ALTER TABLE `reservation_input_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `serving_methods`
--
ALTER TABLE `serving_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `table_books`
--
ALTER TABLE `table_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `time_frames`
--
ALTER TABLE `time_frames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ulinks`
--
ALTER TABLE `ulinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `popups`
--
ALTER TABLE `popups`
  ADD CONSTRAINT `popups_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postal_codes`
--
ALTER TABLE `postal_codes`
  ADD CONSTRAINT `postal_codes_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
