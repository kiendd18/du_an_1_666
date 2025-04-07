-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 05, 2023 lúc 10:08 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopquanao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `banner_name` varchar(50) NOT NULL,
  `banner_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_name`, `banner_image`) VALUES
(3, 'banner1', '/asset/images/bannertop3.jpg'),
(4, 'banner2', '/asset/images/bannertop2.jpg'),
(5, 'banner3', '/asset/images/bannertop.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id_category`, `name_category`) VALUES
(1, 'Nam'),
(2, 'Nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color_name`
--

CREATE TABLE `color_name` (
  `color_name_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `color_image` varchar(255) NOT NULL,
  `color_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `color_name`
--

INSERT INTO `color_name` (`color_name_id`, `color_name`, `color_image`, `color_type_id`) VALUES
(114, 'STAR WHITE', '/asset/images/64e45522a3f4210s23shsw031_star_white-ao-so-mi-nu_6__2.jpg', 2),
(115, 'Navy blue', '/asset/images/64e467ef9f09cao-so-mi-nam-10s23shs004_ballad_blue_4__1.jpg', 5),
(116, 'SAGE GREEN', '/asset/images/64e76a6020da3ao-sat-nach-nu-10s23shsw031_sage_green_1__1_1.jpg', 7),
(119, 'ANGEL FALLS', '/asset/images/64ec6840a298210s23tss016-angel-falls-_4__1.jpg', 5),
(120, 'BRIGHT WHITE', '/asset/images/64ec6e915598f10s23tss016-bright-white-_4__1.jpg', 2),
(121, 'BLACK', '/asset/images/64ec7019a3bdc10s23tss016-black-_4__1.jpg', 1),
(122, 'Grey', '/asset/images/64ec717faba2cao-so-mi-15-10f23shl030-green-_3__1.jpg', 4),
(123, 'Brown', '/asset/images/64ec71f60942eao-so-mi-15-10f23shl030-yellow-_3__1.jpg', 9),
(125, 'PUMPKIN SPICE', '/asset/images/64ec9eb8166ee10s23pol041-pumpkin-spice-ao-polo-nam_3__3.jpg', 9),
(126, 'GRAY', '/asset/images/64eca0bec116f10s23pol060_blue_fog_3__1_1.jpg', 4),
(127, 'DARK SAPPHIRE', '/asset/images/64eca15ceb31010s23pol060_dark_saphire_3__1_1.jpg', 1),
(128, 'ALMOND MILK', '/asset/images/64eca24526efd10s23shs017-almond-milk-_4__1_1.jpg', 9),
(129, 'OFF WHITE', '/asset/images/64eca2be00abf10s23shs017-off-white-_4__1_1.jpg', 2),
(130, 'D/NAVY', '/asset/images/64eca3f3ad39bquan-jean-nam-10s22dpa015_dnavy_5__2.jpg', 1),
(131, 'D/GREY', '/asset/images/64eca81c3b19e10f20dpa100cr1_8__1.jpg', 1),
(132, 'OVERCAST', '/asset/images/64eca94ca8ca110f22pca012_overcast_4__3.jpg', 2),
(133, 'REAL BLACK', '/asset/images/64eca9f51c26110f22pca012_real_black_6___3.jpg', 1),
(134, 'ERMINE', '/asset/images/64ecaae882cc6quan-kaki-nam-10f21pca001cr1_ermine-min_1__3_1.jpg', 9),
(135, 'ARABIAN SPICE', '/asset/images/64ecadf1e308a10f22hodu002_arabian_spice_2.jpg', 10),
(136, 'APPLE CINNAMON', '/asset/images/64ecaea3768c010f21hod005_6__3_1.jpg', 9),
(137, 'AMAZON', '/asset/images/64ecb47b3fd66ao-thun-nam-10s23tss062_amazon_2__5_1.jpg', 7),
(138, 'CLOUD DANCER', '/asset/images/64ecb5772cb2cao-thun-nam-10s23tss062-cloud-dancer-_3__4.jpg', 2),
(139, 'M/INDIGO', '/asset/images/64ecccc011c9a64d48708397cachan-vay-jean-nu-10s23dskw001_2__2_1.jpg', 4),
(140, 'BEIGE', '/asset/images/64ecd5db0210364d48ae42b89cao-so-mi-nu-10s22shlw004_beige_3__1.jpg', 9),
(144, 'CHALK PINK', '/asset/images/64ef6eca58c5310f22swew001_chalk_pink_6__2.jpg', 11),
(145, 'WHITE ALYSSUM', '/asset/images/64ef6fdcd9eca10f22swew001_white_allyssum_5__2_1.jpg', 2),
(146, 'BLACK', '/asset/images/64f4513615ca5ao-so-mi-nu-10f22shlw003_black_1__4.jpg', 1),
(151, 'PINK', '/asset/images/64f454aa94f9010f22hodw005_pink_13__3.jpg', 11),
(152, 'SOFT MINT', '/asset/images/64f4553df295510f22hodw005_soft_mint_11__2.jpg', 8),
(154, 'KHAKI', '/asset/images/64f4567326da810s21vesw001-brow.5_1_1.jpg', 9),
(155, 'KHAKI', '/asset/images/64f456778f3db10s21vesw001-brow.5_1_1.jpg', 9),
(156, 'WHITE', '/asset/images/64f457fc643dfdsc_3789_2.jpg', 2),
(157, 'M/ BLUE', '/asset/images/64f45a9e63d72quan-jean-10s23dpaw013-m-blue_2__3.jpg', 5),
(158, 'BLUE STRIPE', '/asset/images/64f45ba29aa40quan-short-nu-10s23pshw002-blue-stripe_1__1_1_1.jpg', 5),
(167, 'BEIGE', '/asset/images/64f461c377124quan_xam.jpg', 13),
(169, 'BEIGE', '/asset/images/64f461cb99b9dquan_xam.jpg', 13),
(170, 'BLACK/WHITE', '/asset/images/64f4627282bb9quan_den.jpg', 1),
(171, 'NOMAD', '/asset/images/64f4637784a6dao-khoac-jean-10s22djaw002_nomad_1__4.jpg', 9),
(172, 'D/NAVY', '/asset/images/64f464ca137e8chan-vay-nu-10f22dskw002_d_navy_2__1.jpg', 1),
(173, 'D/NAVY', '/asset/images/64f464ce0ee9cchan-vay-nu-10f22dskw002_d_navy_2__1.jpg', 1),
(174, 'D/NAVY', '/asset/images/64f464d4c8b70chan-vay-nu-10f22dskw002_d_navy_2__1.jpg', 1),
(175, 'M/INDIGO', '/asset/images/64f46591afc17chan-vay-nu-10f22dskw002_m_indigo_2__2.jpg', 5),
(176, 'BEIGE', '/asset/images/64f48b505359b10f22pcaw005_beige_7__1_1.jpg', 3),
(177, 'BLACK', '/asset/images/64f48c05786ae10f22pcaw005_black_5__1_1.jpg', 1),
(178, 'BLACK', '/asset/images/64f48c0ab84e410f22pcaw005_black_5__1_1.jpg', 1),
(179, 'BLACK BEAUTY', '/asset/images/64f48e609b67710s21tshw007-black-3_2.jpg', 1),
(180, 'BRIGHT WHITE', '/asset/images/64f4917fa6f1a10s21shlw016-whte-5_2.jpg', 2),
(181, 'GRAY', '/asset/images/64f4925b6894510f21kniw029-grey-5_1.jpg', 4),
(182, 'BROWN', '/asset/images/64f4934d4379610s22skiw006-brown_1__2.jpg', 9),
(183, 'RAIN FOREST', '/asset/images/64f495e46a64110s23pol037_rain_forest-ao-polo-nam_17_3__1.jpg', 8),
(187, 'NAVY', '/asset/images/64f4987e1ffc510s23psha001_navy_77_5__1.jpg', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color_type`
--

CREATE TABLE `color_type` (
  `color_type_id` int(11) NOT NULL,
  `color_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `color_type`
--

INSERT INTO `color_type` (`color_type_id`, `color_type_name`) VALUES
(1, 'Black'),
(2, 'White'),
(3, 'Be'),
(4, 'Xám/Bạc'),
(5, 'Xanh Da Trời'),
(6, 'Xanh Navy'),
(7, 'Xanh lá'),
(8, 'Xanh Olive'),
(9, 'Nâu'),
(10, 'Đỏ'),
(11, 'Hồng'),
(12, 'Cam'),
(13, 'Vàng'),
(14, 'Tím'),
(15, 'Phối màu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comment_id`, `content`, `id`, `product_id`, `comment_time`) VALUES
(43, 'Sản phẩm này thật sự tuyệt vời!', 1, 75, '2023-09-03'),
(44, 'Tôi rất hài lòng với chất lượng của sản phẩm này.', 1, 75, '2023-09-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `color_name_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`image_id`, `image_url`, `color_name_id`, `product_id`) VALUES
(156, '/asset/images/64e9b3f9c962710s23shsw031_star_white-ao-so-mi-nu_1__2.jpg', 114, 70),
(157, '/asset/images/64e9b3f9cc89610s23shsw031_star_white-ao-so-mi-nu_2__2.jpg', 114, 70),
(158, '/asset/images/64e9b3f9d075910s23shsw031_star_white-ao-so-mi-nu_3__2.jpg', 114, 70),
(159, '/asset/images/64e9b3f9d46a510s23shsw031_star_white-ao-so-mi-nu_4__2.jpg', 114, 70),
(160, '/asset/images/64e9b3f9d840d10s23shsw031_star_white-ao-so-mi-nu_5__2.jpg', 114, 70),
(161, '/asset/images/64e9b3f9d913610s23shsw031_star_white-ao-so-mi-nu_6__2.jpg', 114, 70),
(162, '/asset/images/64e9b3f9da0ef10s23shsw031_star_white-ao-so-mi-nu_8__2.jpg', 114, 70),
(163, '/asset/images/64e9b3f9df9bb10s23shsw031_star_white-ao-so-mi-nu_9__2.jpg', 114, 70),
(176, '/asset/images/64e9c1ea1e69eao-sat-nach-nu-10s23shsw031_sage_green_1__1_1.jpg', 116, 70),
(177, '/asset/images/64e9c1ea220baao-sat-nach-nu-10s23shsw031_sage_green_2__1_1.jpg', 116, 70),
(178, '/asset/images/64e9c1ea25192ao-sat-nach-nu-10s23shsw031_sage_green_3__1_1.jpg', 116, 70),
(179, '/asset/images/64e9c1ea291b8ao-sat-nach-nu-10s23shsw031_sage_green_4__1_1.jpg', 116, 70),
(180, '/asset/images/64ec6e16b029e10s23tss016-angel-falls-_2__1.jpg', 119, 75),
(181, '/asset/images/64ec6e16b355710s23tss016-angel-falls-_4__1.jpg', 119, 75),
(182, '/asset/images/64ec6e16b3be810s23tss016-angel-falls-_5__1.jpg', 119, 75),
(183, '/asset/images/64ec6e16b410210s23tss016-angel-falls-_6__1.jpg', 119, 75),
(189, '/asset/images/64ec6f5debacc10s23tss016-bright-white-_1__1.jpg', 120, 75),
(190, '/asset/images/64ec6f5dec45410s23tss016-bright-white-_2__1.jpg', 120, 75),
(191, '/asset/images/64ec6f5decb1110s23tss016-bright-white-_4__1.jpg', 120, 75),
(192, '/asset/images/64ec6f5ded0a210s23tss016-bright-white-_5__1.jpg', 120, 75),
(193, '/asset/images/64ec6f5ded5ae10s23tss016-bright-white-_6__1.jpg', 120, 75),
(194, '/asset/images/64ec70527836310s23tss016-black-_1__1.jpg', 121, 75),
(195, '/asset/images/64ec70527aca510s23tss016-black-_2__1.jpg', 121, 75),
(196, '/asset/images/64ec70527b36010s23tss016-black-_4__1.jpg', 121, 75),
(197, '/asset/images/64ec70527b8ab10s23tss016-black-_5__1.jpg', 121, 75),
(198, '/asset/images/64ec70527bdd910s23tss016-black-_6__1.jpg', 121, 75),
(199, '/asset/images/64ec72373e06bao-so-mi-15-10f23shl030-green-_5__1.jpg', 122, 76),
(200, '/asset/images/64ec723740b3fao-so-mi-15-10f23shl030-green-_1__1.jpg', 122, 76),
(201, '/asset/images/64ec72374116cao-so-mi-15-10f23shl030-green-_2__1.jpg', 122, 76),
(202, '/asset/images/64ec7237416ceao-so-mi-15-10f23shl030-green-_3__1.jpg', 122, 76),
(203, '/asset/images/64ec723741c17ao-so-mi-15-10f23shl030-green-_4__1.jpg', 122, 76),
(204, '/asset/images/64ec72424ddf6ao-so-mi-15-10f23shl030-yellow-_5__1.jpg', 123, 76),
(205, '/asset/images/64ec724251120ao-so-mi-15-10f23shl030-yellow-_1__1.jpg', 123, 76),
(206, '/asset/images/64ec724251768ao-so-mi-15-10f23shl030-yellow-_2__1.jpg', 123, 76),
(207, '/asset/images/64ec724251cc2ao-so-mi-15-10f23shl030-yellow-_3__1.jpg', 123, 76),
(208, '/asset/images/64ec7242521faao-so-mi-15-10f23shl030-yellow-_4__1.jpg', 123, 76),
(209, '/asset/images/64ec73d4dea6b10s23pca016_beige_4__1.jpg', 124, 77),
(210, '/asset/images/64ec73d4e1f9710s23pca016_beige_5__1.jpg', 124, 77),
(211, '/asset/images/64ec73d4e25a810s23pca016_beige_6__1.jpg', 124, 77),
(212, '/asset/images/64ec73d4e2b0210s23pca016-beige-_1__1_1.jpg', 124, 77),
(213, '/asset/images/64ec73d4e306810s23pca016-beige-_2__1.jpg', 124, 77),
(214, '/asset/images/64ec9f3f1666e10s23pol041-pumpkin-spice-ao-polo-nam_1__3.jpg', 125, 78),
(215, '/asset/images/64ec9f3f16e7e10s23pol041-pumpkin-spice-ao-polo-nam_2__3.jpg', 125, 78),
(216, '/asset/images/64ec9f3f1afb210s23pol041-pumpkin-spice-ao-polo-nam_3__3.jpg', 125, 78),
(217, '/asset/images/64ec9f3f1b74f10s23pol041-pumpkin-spice-ao-polo-nam_5__3.jpg', 125, 78),
(218, '/asset/images/64ec9f3f1efb110s23pol041-pumpkin-spice-ao-polo-nam_6__3.jpg', 125, 78),
(219, '/asset/images/64eca0fa94ed310s23pol060_blue_fog_1__1_1.jpg', 126, 79),
(220, '/asset/images/64eca0fa9593210s23pol060_blue_fog_2__1_1.jpg', 126, 79),
(221, '/asset/images/64eca0fa9601810s23pol060_blue_fog-ao-polo-nam_5__1_2.jpg', 126, 79),
(222, '/asset/images/64eca0fa9656010s23pol060_blue_fog-ao-polo-nam_7__1_2.jpg', 126, 79),
(223, '/asset/images/64eca0fa96a9310s23pol060_blue_fog-ao-polo-nam_9__1_2.jpg', 126, 79),
(224, '/asset/images/64eca18dc612010s23pol060_dark_saphire_1__1_1.jpg', 127, 79),
(225, '/asset/images/64eca18dcc23410s23pol060_dark_saphire_2__1_1.jpg', 127, 79),
(226, '/asset/images/64eca18dce72110s23pol060_dark_saphire_3__1_1.jpg', 127, 79),
(227, '/asset/images/64eca18dced5e10s23pol060_dark_saphire_4__1_1.jpg', 127, 79),
(228, '/asset/images/64eca26987cec10s23shs017_almond_milk_1__2.jpg', 128, 80),
(229, '/asset/images/64eca2698856210s23shs017_almond_milk_2__2.jpg', 128, 80),
(230, '/asset/images/64eca26988b9210s23shs017_almond_milk_4__2.jpg', 128, 80),
(231, '/asset/images/64eca2698912d10s23shs017-almond-milk-_1__1_1.jpg', 128, 80),
(232, '/asset/images/64eca2698967210s23shs017-almond-milk-_2__1_1.jpg', 128, 80),
(233, '/asset/images/64eca2ebcfb1510s23shs017-off-white-_1__1_1.jpg', 129, 80),
(234, '/asset/images/64eca2ebd037110s23shs017-off-white-_2__1_1.jpg', 129, 80),
(235, '/asset/images/64eca2ebd432010s23shs017-off-white-_4__1_1.jpg', 129, 80),
(236, '/asset/images/64eca2ebdd07c10s23shs017-off-white-_5__1_1.jpg', 129, 80),
(237, '/asset/images/64eca2ebe249610s23shs017-off-white-_6__1_1.jpg', 129, 80),
(238, '/asset/images/64eca426d485210s22dpa015_navy-quan-jean-nam_1__2.jpg', 130, 81),
(239, '/asset/images/64eca426d50d510s22dpa015_navy-quan-jean-nam_2__2.jpg', 130, 81),
(240, '/asset/images/64eca426d56bfquan-jean-nam-10s22dpa015_dnavy_2__2.jpg', 130, 81),
(241, '/asset/images/64eca426d5c2fquan-jean-nam-10s22dpa015_dnavy_3__2.jpg', 130, 81),
(242, '/asset/images/64eca426d610equan-jean-nam-10s22dpa015_dnavy_5__2.jpg', 130, 81),
(243, '/asset/images/64eca86358dfb10f20dpa100cr1_2__1_1_1.jpg', 131, 85),
(244, '/asset/images/64eca863598dd10f20dpa100cr1_3__1.jpg', 131, 85),
(245, '/asset/images/64eca8636165d10f20dpa100cr1-_4__optimized_1.jpg', 131, 85),
(246, '/asset/images/64eca8636291310f20dpa100cr1_6__1.jpg', 131, 85),
(247, '/asset/images/64eca86362f3f10f20dpa100cr1_8__1.jpg', 131, 85),
(248, '/asset/images/64eca98141b6410f22pca012_overcast_1__3.jpg', 132, 86),
(249, '/asset/images/64eca9814340c10f22pca012_overcast_2__1_3.jpg', 132, 86),
(250, '/asset/images/64eca98143a0110f22pca012_overcast_3.jpg', 132, 86),
(251, '/asset/images/64eca98143ee510f22pca012_overcast_3__3.jpg', 132, 86),
(252, '/asset/images/64eca9814438b10f22pca012_overcast_4__3.jpg', 132, 86),
(253, '/asset/images/64ecaa233395c10f22pca012_real_black_thumbnail__3.jpg', 133, 86),
(254, '/asset/images/64ecaa2336d6e10f22pca012_real_black_1___3.jpg', 133, 86),
(255, '/asset/images/64ecaa233737110f22pca012_real_black_3___3.jpg', 133, 86),
(256, '/asset/images/64ecaa23379f710f22pca012_real_black_5___3.jpg', 133, 86),
(257, '/asset/images/64ecaa2337ed310f22pca012_real_black_6___3.jpg', 133, 86),
(258, '/asset/images/64ecab330e26fquan-kaki-nam-10f21pca001cr1_ermine-min_5__3_1.jpg', 134, 87),
(259, '/asset/images/64ecab330ed1cquan-kaki-nam-10f21pca001cr1_ermine-min_1__3_1.jpg', 134, 87),
(260, '/asset/images/64ecab330f3dequan-kaki-nam-10f21pca001cr1_ermine-min_2__3_1.jpg', 134, 87),
(261, '/asset/images/64ecab3313a60quan-kaki-nam-10f21pca001cr1_ermine-min_3__3_1.jpg', 134, 87),
(262, '/asset/images/64ecae265854310f22hodu002_arabian_spice_2.jpg', 135, 88),
(263, '/asset/images/64ecae2658d3110f22hodu002_arabian_spice_2__3_1.jpg', 135, 88),
(264, '/asset/images/64ecae265e48610f22hodu002_arabian_spice_3__3_1.jpg', 135, 88),
(265, '/asset/images/64ecae265ea0810f22hodu002_arabian_spice_4__2_1.jpg', 135, 88),
(266, '/asset/images/64ecae265eff910f22hodu002_arabian_spice_5__2_1.jpg', 135, 88),
(267, '/asset/images/64ecae265f56a10f22hodu002_arabian_spice_6__2.jpg', 135, 88),
(268, '/asset/images/64ecaec6e3a6510f21hod005_2__3_1.jpg', 136, 89),
(269, '/asset/images/64ecaec6e429310f21hod005_3__1_2.jpg', 136, 89),
(270, '/asset/images/64ecaec6e973f10f21hod005_4__3_1.jpg', 136, 89),
(271, '/asset/images/64ecaec6ee23110f21hod005_5__3_1.jpg', 136, 89),
(272, '/asset/images/64ecaec6f1e3a10f21hod005_6__3_1.jpg', 136, 89),
(273, '/asset/images/64ecb4cb81eae10s23tss062-ao-thun_2__7.jpg', 137, 90),
(274, '/asset/images/64ecb4cb8533810s23tss062-ao-thun_3__7.jpg', 137, 90),
(275, '/asset/images/64ecb4cb8599aao-thun-nam-10s23tss062_amazon_2__5_1.jpg', 137, 90),
(276, '/asset/images/64ecb4cb8850aao-thun-nam-10s23tss062_amazon_3__5_1.jpg', 137, 90),
(277, '/asset/images/64ecb5ef97d2010s23tss062-ao-thun_1__2_4.jpg', 138, 90),
(278, '/asset/images/64ecb5ef9b16610s23tss062-ao-thun_2__2_4.jpg', 138, 90),
(279, '/asset/images/64ecb5ef9b77910s23tss062-ao-thun_3__2_4.jpg', 138, 90),
(280, '/asset/images/64ecb5efa1b65ao-thun-nam-10s23tss062-cloud-dancer-_3__4.jpg', 138, 90),
(281, '/asset/images/64ecb5efa2194ao-thun-nam-10s23tss062-cloud-dancer-_4__4.jpg', 138, 90),
(286, '/asset/images/64ecd61120a6064d48ae42ac2710s22shlw004_beige-ao-so-mi-nu_1__1.jpg', 140, 92),
(287, '/asset/images/64ecd61123e4c64d48ae42ad2d10s22shlw004_beige-ao-so-mi-nu_2__1_1.jpg', 140, 92),
(288, '/asset/images/64ecd611292f064d48ae42b89cao-so-mi-nu-10s22shlw004_beige_3__1.jpg', 140, 92),
(289, '/asset/images/64ecd6112ca4f64d48ae42ddac10s22shlw004_beige-ao-so-mi-nu_6__1_1.jpg', 140, 92),
(290, '/asset/images/64ecd61130a9464d48ae42e938ao-so-mi-nu-10s22shlw004_beige_1__1.jpg', 140, 92),
(291, '/asset/images/64ef6f7d64ebb10f22swew001_chalk_pink_1__2.jpg', 144, 97),
(292, '/asset/images/64ef6f7d6815610f22swew001_chalk_pink_3__2_1.jpg', 144, 97),
(293, '/asset/images/64ef6f7d6ec3610f22swew001_chalk_pink_4__2.jpg', 144, 97),
(294, '/asset/images/64ef6f7d6f39710f22swew001_chalk_pink_5__2.jpg', 144, 97),
(295, '/asset/images/64ef6f7d6f8c610f22swew001_chalk_pink_6__2.jpg', 144, 97),
(296, '/asset/images/64ef703c081d710f22swew001_white_allyssum_1__2_1.jpg', 145, 97),
(297, '/asset/images/64ef703c08d0510f22swew001_white_allyssum_2__2.jpg', 145, 97),
(298, '/asset/images/64ef703c093cb10f22swew001_white_allyssum_3__2_1.jpg', 145, 97),
(299, '/asset/images/64ef703c09a1a10f22swew001_white_allyssum_4__2_1.jpg', 145, 97),
(300, '/asset/images/64ef703c0a00810f22swew001_white_allyssum_5__2_1.jpg', 145, 97),
(301, '/asset/images/64f452902a4eb64f45253723b9ao-so-mi-nu-10f22shlw003_black_5__4.jpg', 146, 98),
(302, '/asset/images/64f452902dbf764f45253724b0ao-so-mi-nu-10f22shlw003_black_6__4.jpg', 146, 98),
(303, '/asset/images/64f452902e226ao-so-mi-nu-10f22shlw003_black_1__4.jpg', 146, 98),
(304, '/asset/images/64f452902e73fao-so-mi-nu-10f22shlw003_black_2__4.jpg', 146, 98),
(305, '/asset/images/64f452902ec6bao-so-mi-nu-10f22shlw003_black_7__4.jpg', 146, 98),
(306, '/asset/images/64f454e23d79c10f22hodw005_pink_1__3.jpg', 151, 100),
(307, '/asset/images/64f454e240cec10f22hodw005_pink_8__3.jpg', 151, 100),
(308, '/asset/images/64f454e24188c10f22hodw005_pink_9__3.jpg', 151, 100),
(309, '/asset/images/64f454e241f0a10f22hodw005_pink_10__3.jpg', 151, 100),
(310, '/asset/images/64f454e2423f910f22hodw005_pink_13__3.jpg', 151, 100),
(311, '/asset/images/64f455822c32510f22hodw005_soft_mint_1__2.jpg', 152, 100),
(312, '/asset/images/64f455822ce5110f22hodw005_soft_mint_7__2.jpg', 152, 100),
(313, '/asset/images/64f455822d88e10f22hodw005_soft_mint_8__3.jpg', 152, 100),
(314, '/asset/images/64f455822e0c910f22hodw005_soft_mint_9__2.jpg', 152, 100),
(315, '/asset/images/64f455822e7da10f22hodw005_soft_mint_11__2.jpg', 152, 100),
(316, '/asset/images/64f45797611ab10s21vesw001-brow.1_1_1.jpg', 154, 102),
(317, '/asset/images/64f45797619ba10s21vesw001-brow.2_1_1.jpg', 154, 102),
(318, '/asset/images/64f457976670710s21vesw001-brow.4_1_1.jpg', 154, 102),
(319, '/asset/images/64f4579766e1010s21vesw001-brow.5_1_1.jpg', 154, 102),
(320, '/asset/images/64f4579769dc410s21vesw001-brow.6_1_1.jpg', 154, 102),
(321, '/asset/images/64f4583a98a56dsc_3766_2.jpg', 156, 102),
(322, '/asset/images/64f4583a9bfd3dsc_3777_2.jpg', 156, 102),
(323, '/asset/images/64f4583aa15e7dsc_3784_2.jpg', 156, 102),
(324, '/asset/images/64f4583aa1c79dsc_3789_2.jpg', 156, 102),
(325, '/asset/images/64f45af520de2quan-jean-10s23dpaw013-m-blue_1__3.jpg', 157, 103),
(326, '/asset/images/64f45af52168dquan-jean-10s23dpaw013-m-blue_2__3.jpg', 157, 103),
(327, '/asset/images/64f45af521bd0quan-jean-10s23dpaw013-m-blue_3__3.jpg', 157, 103),
(328, '/asset/images/64f45af52209dquan-jean-10s23dpaw013-m-blue_7__3.jpg', 157, 103),
(329, '/asset/images/64f45af522555quan-jean-10s23dpaw013-m-blue_8__3.jpg', 157, 103),
(330, '/asset/images/64f45bfa36f1bquan-short-nu-10s23pshw002-blue-stripe_14__1.jpg', 158, 104),
(331, '/asset/images/64f45bfa377edquan-short-nu-10s23pshw002-blue-stripe_1__1_1_1.jpg', 158, 104),
(332, '/asset/images/64f45bfa37e2dquan-short-nu-10s23pshw002-blue-stripe_8__2.jpg', 158, 104),
(333, '/asset/images/64f45bfa384c3quan-short-nu-10s23pshw002-blue-stripe_9__2.jpg', 158, 104),
(334, '/asset/images/64f45bfa38ab0quan-short-nu-10s23pshw002-blue-stripe_10__2.jpg', 158, 104),
(335, '/asset/images/64f45bfa393f5quan-short-nu-10s23pshw002-blue-stripe_11__1.jpg', 158, 104),
(336, '/asset/images/64f45bfa398d9quan-short-nu-10s23pshw002-blue-stripe_12__1.jpg', 158, 104),
(337, '/asset/images/64f45bfa39e38quan-short-nu-10s23pshw002-blue-stripe_13__1.jpg', 158, 104),
(362, '/asset/images/64f4620f8e87dquan_xam.jpg', 167, 108),
(363, '/asset/images/64f4620f918fbquan_xam_hover.jpg', 167, 108),
(364, '/asset/images/64f4620f95868quan_xam_mat_sau.jpg', 167, 108),
(365, '/asset/images/64f4620f95ee4quan_xam3.jpg', 167, 108),
(366, '/asset/images/64f4620f9a0e4quan_xam4.jpg', 167, 108),
(367, '/asset/images/64f4620f9a79dquan_xam5.jpg', 167, 108),
(368, '/asset/images/64f462d1f2a3bquan_den.jpg', 170, 108),
(369, '/asset/images/64f462d201c23quan_den_hover.jpg', 170, 108),
(370, '/asset/images/64f462d2022ebquan_den_mat_sau.jpg', 170, 108),
(371, '/asset/images/64f462d2027b2quan_den2.jpg', 170, 108),
(372, '/asset/images/64f462d202c90quan_den3.jpg', 170, 108),
(373, '/asset/images/64f462d2031a4quan_den4.jpg', 170, 108),
(374, '/asset/images/64f463b58d0a8ao-khoac-jean-10s22djaw002_nomad_1__4.jpg', 171, 109),
(375, '/asset/images/64f463b58d9d7ao-khoac-jean-10s22djaw002_nomad_2__4.jpg', 171, 109),
(376, '/asset/images/64f463b5934c9ao-khoac-jean-10s22djaw002_nomad_3__4.jpg', 171, 109),
(377, '/asset/images/64f463b593c0bao-khoac-jean-10s22djaw002_nomad_4__4.jpg', 171, 109),
(378, '/asset/images/64f463b5941b2ao-khoac-jean-10s22djaw002_nomad_5__4.jpg', 171, 109),
(379, '/asset/images/64f46536594a9chan-vay-nu-10f22dskw002_d_navy_2__1.jpg', 172, 110),
(380, '/asset/images/64f4653660535chan-vay-nu-10f22dskw002_d-navy_2__1.jpg', 172, 110),
(381, '/asset/images/64f4653660bafchan-vay-nu-10f22dskw002_d-navy_3__1.jpg', 172, 110),
(382, '/asset/images/64f46536610dfchan-vay-nu-10f22dskw002_d-navy_4__1.jpg', 172, 110),
(383, '/asset/images/64f46536615f6chan-vay-nu-10f22dskw002_d-navy_5__1.jpg', 172, 110),
(389, '/asset/images/64f489457db54chan-vay-nu-10f22dskw002_d-indigo_4__2.jpg', 175, 110),
(390, '/asset/images/64f4894580e67chan-vay-nu-10f22dskw002_d-indigo_6__2.jpg', 175, 110),
(391, '/asset/images/64f4894581489chan-vay-nu-10f22dskw002_d-indigo_7__2.jpg', 175, 110),
(392, '/asset/images/64f48945819a9chan-vay-nu-10f22dskw002_d-indigo_8__2.jpg', 175, 110),
(393, '/asset/images/64f4894581ed2chan-vay-nu-10f22dskw002_m_indigo_2__2.jpg', 175, 110),
(399, '/asset/images/64f48b9edbcca10f22pcaw005_beige_1__1_1.jpg', 176, 112),
(400, '/asset/images/64f48b9edef8310f22pcaw005_beige_2__1_1.jpg', 176, 112),
(401, '/asset/images/64f48b9edf57010f22pcaw005_beige_3__1_1.jpg', 176, 112),
(402, '/asset/images/64f48b9edfa4410f22pcaw005_beige_4__1_1.jpg', 176, 112),
(403, '/asset/images/64f48b9edff3310f22pcaw005_beige_7__1_1.jpg', 176, 112),
(404, '/asset/images/64f48c493570310f22pcaw005_black_1__1_1.jpg', 177, 112),
(405, '/asset/images/64f48c49389c010f22pcaw005_black_2__1_1.jpg', 177, 112),
(406, '/asset/images/64f48c493901910f22pcaw005_black_3__1_1.jpg', 177, 112),
(407, '/asset/images/64f48c493963e10f22pcaw005_black_4__1_1.jpg', 177, 112),
(408, '/asset/images/64f48c4939b1610f22pcaw005_black_5__1_1.jpg', 177, 112),
(409, '/asset/images/64f48e9221da510s21tshw007-black-1_2.jpg', 179, 113),
(410, '/asset/images/64f48e922530f10s21tshw007-black-2_2.jpg', 179, 113),
(411, '/asset/images/64f48e92297e210s21tshw007-black-3_2.jpg', 179, 113),
(412, '/asset/images/64f48e9229ed810s21tshw007-black-4_2.jpg', 179, 113),
(413, '/asset/images/64f48e922a51310s21tshw007-black-5_2.jpg', 179, 113),
(414, '/asset/images/64f491b75c4ff10s21shlw016-whte-1_2.jpg', 180, 114),
(415, '/asset/images/64f491b75f80410s21shlw016-whte-2_2.jpg', 180, 114),
(416, '/asset/images/64f491b75fe5a10s21shlw016-whte-3_2.jpg', 180, 114),
(417, '/asset/images/64f491b76031b10s21shlw016-whte-4_2.jpg', 180, 114),
(418, '/asset/images/64f491b76083510s21shlw016-whte-5_2.jpg', 180, 114),
(419, '/asset/images/64f4928834ee110f21kniw029-grey-1_1.jpg', 181, 115),
(420, '/asset/images/64f492883834010f21kniw029-grey-2_1.jpg', 181, 115),
(421, '/asset/images/64f492883ef4410f21kniw029-grey-3_1.jpg', 181, 115),
(422, '/asset/images/64f492883f6a910f21kniw029-grey-5_1.jpg', 181, 115),
(423, '/asset/images/64f49382b220a10s22skiw006-brown_2__2.jpg', 182, 116),
(424, '/asset/images/64f49382b56cb10s22skiw006-brown_3__2.jpg', 182, 116),
(425, '/asset/images/64f49382b6c6310s22skiw006-brown_4__2.jpg', 182, 116),
(426, '/asset/images/64f49382b71e710s22skiw006-brown_5__2.jpg', 182, 116),
(427, '/asset/images/64f4968c0920910s23pol037_rain_forest-ao-polo-nam_17_1__1.jpg', 183, 117),
(428, '/asset/images/64f4968c0b38710s23pol037_rain_forest-ao-polo-nam_17_2__1.jpg', 183, 117),
(429, '/asset/images/64f4968c118ff10s23pol037_rain_forest-ao-polo-nam_17_3__1.jpg', 183, 117),
(430, '/asset/images/64f4968c1273f10s23pol037_rain_forest-ao-polo-nam_17_4__1.jpg', 183, 117),
(431, '/asset/images/64f4968c12d2e10s23pol037_rain_forest-ao-polo-nam_17_5__1.jpg', 183, 117),
(437, '/asset/images/64f498b017fb510s23psha001_navy_77_1__1.jpg', 187, 119),
(438, '/asset/images/64f498b01b35a10s23psha001_navy_77_2__1.jpg', 187, 119),
(439, '/asset/images/64f498b01f13b10s23psha001_navy_77_3__1.jpg', 187, 119),
(440, '/asset/images/64f498b01f7d110s23psha001_navy_77_4__1.jpg', 187, 119),
(441, '/asset/images/64f498b01fdb110s23psha001_navy_77_5__1.jpg', 187, 119),
(442, '/asset/images/64f6cb6e43ecdchan-vay-jean-nu-10s23dskw001_7__2.jpg', 139, 120),
(443, '/asset/images/64f6cb6e4724fchan-vay-jean-nu-10s23dskw001_8__2.jpg', 139, 120),
(444, '/asset/images/64f6cb6e4b9d9chan-vay-jean-nu-10s23dskw001_9__2.jpg', 139, 120),
(445, '/asset/images/64f6cb6e4bfeachan-vay-jean-nu-10s23dskw001_10__2.jpg', 139, 120);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_address` varchar(255) NOT NULL,
  `receiver_number_phone` varchar(255) NOT NULL,
  `receiver_email` varchar(255) NOT NULL,
  `receiver_note` text DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `completed_at` datetime NOT NULL,
  `pay_methods` int(2) NOT NULL,
  `total_price` float NOT NULL,
  `delivery_charges` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `receiver_name`, `receiver_address`, `receiver_number_phone`, `receiver_email`, `receiver_note`, `status_id`, `created_at`, `completed_at`, `pay_methods`, `total_price`, `delivery_charges`) VALUES
(110, 1, 'Nguyễn Tiến Đạt', 'Hồng hà - Đan Phượng - Hà Nội', '0964863742', 'datntph24947@fpt.edu.vn', '', 1, '2023-09-05 05:02:43', '0000-00-00 00:00:00', 1, 489020, 0),
(123, 1, 'Nguyễn Tiến Đạt', 'Hồng hà - Đan Phượng - Hà Nội', '0964863742', 'datntph24947@fpt.edu.vn', '', 1, '2023-09-05 07:56:39', '0000-00-00 00:00:00', 1, 383000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

CREATE TABLE `order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_name_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_product`
--

INSERT INTO `order_product` (`order_product_id`, `order_id`, `product_id`, `color_name_id`, `size_id`, `quantity`) VALUES
(102, 110, 70, 114, 15, 1),
(115, 123, 75, 119, 17, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `main_image_url` varchar(255) NOT NULL,
  `hover_main_image_url` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `discount` int(2) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `product_desc` text NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL,
  `product_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `main_image_url`, `hover_main_image_url`, `product_price`, `discount`, `gender`, `product_desc`, `product_code`, `view`, `created_at`, `category_id`, `product_status`) VALUES
(70, 'Áo Sơ Mi Nữ Sát Nách Cổ Bèo Túi Thêu Họa Tiết Form', '/asset/images/64e455624272910s23shsw031_star_white-ao-so-mi-nu_1__2.jpg', '/asset/images/64e455624293410s23shsw031_star_white-ao-so-mi-nu_3__2.jpg', 499000, 2, 1, 'THÔNG TIN CHI TIẾT ÁO SƠ MI NỮ SÁT NÁCH CỔ BÈO TÚI THÊU HỌA TIẾT FORM REGULAR - 10S23SHSW031\r\nÁo Sơ Mi Nữ Sát Nách Cổ Bèo Túi Thêu Họa Tiết Form Regular - 10S23SHSW031 là một chiếc áo sơ mi cách điệu với những đặc điểm nổi bật như:\r\n\r\nDệt từ 100% sợi cây lanh, sờ nhám tay, an toàn cho da.\r\nCó khả năng thấm hút và thoáng mát bậc nhất và chịu nhiệt tốt\r\nForm áo suông, không ôm có thể phù hợp với mọi vóc dáng\r\nThân sau có ly ngay đô áo giúp giữ độ rộng thoải mái nhưng vẫn trông rất gọn gàng\r\nMang thiết kế không tay sành điệu, cá tính kết hợp cổ bèo thêm phần nữ tính\r\nSử dụng trong mọi hoàn cảnh nơi công sở đến chốn hẹn hò.', '10S23SHSW031', 41, '2023-08-22 06:27:46', 2, 1),
(75, 'Áo Thun Nam Tay Ngắn Cổ Tròn Họa Tiết In Form Regu', '/asset/images/64ec6a34688d910s23tss016-angel-falls-_1__1.jpg', '/asset/images/64ec6a3468a6a10s23tss016-angel-falls-_2__1.jpg', 383000, 0, 0, 'chất liệu đẹp', '10S23TSS016', 109, '2023-08-28 09:34:44', 1, 2),
(76, 'Áo Sơ Mi Nam Tay Dài Flannel Túi Đắp Kẻ Caro Form ', '/asset/images/64ec71aa40ff7ao-so-mi-15-10f23shl030-green-_1__1.jpg', '/asset/images/64ec71aa410f7ao-so-mi-15-10f23shl030-green-_2__1.jpg', 638000, 0, 0, 'chất lượng', '10F23SHL030', 2, '2023-08-28 10:06:34', 1, 1),
(78, 'Áo Polo Nam Interlock Pique Trơn Phối Cổ Tay Form ', '/asset/images/64ec9f1fc267810s23pol041-pumpkin-spice-ao-polo-nam_1__3.jpg', '/asset/images/64ec9f1fc273510s23pol041-pumpkin-spice-ao-polo-nam_2__3.jpg', 490000, 0, 0, 'chất lượng', '10S23POL041', 4, '2023-08-28 13:18:01', 1, 2),
(79, 'Áo Polo Nam Tay Ngắn Phối Sọc Form Fitted', '/asset/images/64eca0de1465b10s23pol060_blue_fog-ao-polo-nam_5__1_2.jpg', '/asset/images/64eca0de1473d10s23pol060_blue_fog-ao-polo-nam_7__1_2.jpg', 471000, 6, 0, 'dep', '10S23POL060', 3, '2023-08-28 13:27:58', 1, 2),
(80, 'Áo Sơ Mi Nam Tay Ngắn Cuban Shirt Kẻ Sọc Form Regu', '/asset/images/64eca2583360810s23shs017_almond_milk_1__2.jpg', '/asset/images/64eca2583372910s23shs017_almond_milk_2__2.jpg', 490000, 3, 0, 'đẹp', '10S23SHS017', 4, '2023-08-28 13:34:16', 1, 2),
(81, 'Quần Jean Nam Ống Rộng Trơn Form Wide Leg', '/asset/images/64eca40d800fd10s22dpa015_navy-quan-jean-nam_1__2.jpg', '/asset/images/64eca40d801da10s22dpa015_navy-quan-jean-nam_2__2.jpg', 511000, 6, 0, 'đẹp', '10S22DPA015', 13, '2023-08-28 13:41:33', 1, 1),
(85, 'Quần Jean Nam Rách Gối Form Skinny', '/asset/images/64eca83d9fea410f20dpa100cr1_3__1.jpg', '/asset/images/64eca83d9ff9410f20dpa100cr1_2__1_1_1.jpg', 649000, 6, 0, 'chat', '10F22DPA047', 6, '2023-08-28 13:59:25', 1, 2),
(86, 'Quần Dài Kaki Nam Twill Form Straight', '/asset/images/64eca9668941910f22pca012_overcast_1__3.jpg', '/asset/images/64eca966894f810f22pca012_overcast_3.jpg', 550000, 10, 0, 'đẹp', '10F22PCA012', 1, '2023-08-28 14:04:22', 1, 2),
(87, 'Quần Kaki Nam Cotton Spandex Form Slim', '/asset/images/64ecab224a916quan-kaki-nam-10f21pca001cr1_ermine-min_2__3_1.jpg', '/asset/images/64ecab224a9e6quan-kaki-nam-10f21pca001cr1_ermine-min_1__3_1.jpg', 480000, 8, 0, 'đẹp', '10F21PCA001CR1', 0, '2023-08-28 14:11:46', 1, 2),
(88, 'Áo Hoodie Unisex Tay Dài In Hình Form Regular', '/asset/images/64ecae0a43df210f22hodu002_arabian_spice_2__3_1.jpg', '/asset/images/64ecae0a43ecd10f22hodu002_arabian_spice_3__3_1.jpg', 550000, 10, 0, 'đẹp', '10F22HODU002', 5, '2023-08-28 14:24:10', 1, 1),
(89, 'Áo Hoodie Nam Tay Dài In Hình Form Regular', '/asset/images/64ecaebaac56310f21hod005_3__1_2.jpg', '/asset/images/64ecaebaac68910f21hod005_2__3_1.jpg', 650000, 12, 0, 'đẹp', '10F21HOD005', 1, '2023-08-28 14:27:06', 1, 1),
(90, 'Áo Thun Nam Tay Ngắn Vải Coffee In Chữ Form Loose', '/asset/images/64ecb4988a06d10s23tss062-ao-thun_2__7.jpg', '/asset/images/64ecb4988a17310s23tss062-ao-thun_3__7.jpg', 360000, 5, 0, 'đẹp', '10S23TSS062', 1, '2023-08-28 14:52:08', 1, 2),
(92, 'Áo Sơ Mi Nữ Tay Dài Trơn Xếp Ly Form Regular', '/asset/images/64ecd5fa8cd7764d48ae42ac2710s22shlw004_beige-ao-so-mi-nu_1__1.jpg', '/asset/images/64ecd5fa8ce7864d48ae42ad2d10s22shlw004_beige-ao-so-mi-nu_2__1_1.jpg', 450000, 2, 1, 'dep', '10S22SHLW004', 7, '2023-08-28 17:14:34', 2, 2),
(97, 'Áo Sweater Nữ Vải Nỉ Tay Dài Trơn Form Regular', '/asset/images/64ef6f078be3e10f22swew001_chalk_pink_4__2.jpg', '/asset/images/64ef6f078bf4a10f22swew001_chalk_pink_3__2_1.jpg', 390000, 2, 1, 'đẹp', '10F22SWEW001', 4, '2023-08-30 16:32:07', 2, 2),
(98, 'Áo Kiểu Nữ Tay Dài Nhún Tay Form Loose', '/asset/images/64f45253723b9ao-so-mi-nu-10f22shlw003_black_5__4.jpg', '/asset/images/64f45253724b0ao-so-mi-nu-10f22shlw003_black_6__4.jpg', 549000, 60, 1, 'đẹp', '10F22SHLW003', 3, '2023-09-03 09:30:59', 2, 2),
(100, 'Áo Hoodie Nữ Tay Dài Có Mũ Nhãn Trang Trí', '/asset/images/64f454d126dca10f22hodw005_pink_8__3.jpg', '/asset/images/64f454d126eb510f22hodw005_pink_10__3.jpg', 479000, 2, 1, 'đẹp', '10F22HODW005', 2, '2023-09-03 09:41:37', 2, 2),
(102, 'Áo Blazer Nữ Tay Dài Linen Xẻ Sau Form Fitted', '/asset/images/64f457777f9a910s21vesw001-brow.2_1_1.jpg', '/asset/images/64f457777fa9010s21vesw001-brow.4_1_1.jpg', 950000, 74, 1, 'đẹp', '10S21VESW001', 2, '2023-09-03 09:52:55', 2, 1),
(103, 'Quần Jean Nữ Trơn Phối Lai Form Straight', '/asset/images/64f45ae035e78quan-jean-10s23dpaw013-m-blue_1__3.jpg', '/asset/images/64f45ae035f49quan-jean-10s23dpaw013-m-blue_8__3.jpg', 579000, 2, 1, 'đẹp', '10S23DPAW013', 1, '2023-09-03 10:07:28', 2, 1),
(104, 'Quần Short Nữ Rút Dây Kẻ Sọc Form Panama', '/asset/images/64f45be099596quan-short-nu-10s23pshw002-blue-stripe_1__1_1_1.jpg', '/asset/images/64f45be099645quan-short-nu-10s23pshw002-blue-stripe_11__1.jpg', 379000, 2, 1, 'đẹp', '10S23PSHW002', 5, '2023-09-03 10:11:44', 2, 2),
(108, 'Quần Short Nam Phối Dây Rút Họa Tiết In Form Relax', '/asset/images/64f461fe3da0equan_xam.jpg', '/asset/images/64f461fe3dae5quan_xam_mat_sau.jpg', 429000, 2, 0, 'đẹp', '10S23PSH021', 4, '2023-09-03 10:37:50', 1, 2),
(109, 'Áo Khoác Jean Nữ Tay Dài Túi Mổ Trơn Form Regular', '/asset/images/64f463a2610b2ao-khoac-jean-10s22djaw002_nomad_1__4.jpg', '/asset/images/64f463a2611d2ao-khoac-jean-10s22djaw002_nomad_2__4.jpg', 650000, 2, 1, 'đẹp', '10S22DJAW002', 1, '2023-09-03 10:44:50', 2, 1),
(110, 'Chân Váy Jean Nữ Dáng Dài Form Regular', '/asset/images/64f4650922dc0chan-vay-nu-10f22dskw002_d-navy_2__1.jpg', '/asset/images/64f4650922f31chan-vay-nu-10f22dskw002_d-navy_5__1.jpg', 529000, 53, 1, 'đẹp', '10F22DSKW002', 8, '2023-09-03 10:50:49', 2, 2),
(112, 'Quần Váy Nữ Lưng Thun Polyester Skirtpant', '/asset/images/64f48b85ed5ac10f22pcaw005_beige_1__1_1.jpg', '/asset/images/64f48b85ed6c410f22pcaw005_beige_3__1_1.jpg', 550000, 64, 1, 'đẹp', '10F22PCAW005', 3, '2023-09-03 13:35:01', 2, 2),
(113, 'Áo Thun Nữ Tay Ngắn Trơn Form Regular', '/asset/images/64f48e87f0b1f10s21tshw007-black-1_2.jpg', '/asset/images/64f48e87f0be010s21tshw007-black-4_2.jpg', 216000, 0, 1, 'đẹp', '10S21TSHW007', 1, '2023-09-03 13:47:51', 2, 1),
(114, 'Áo Sơ Mi Nữ Tay Dài Trơn Thắt Eo Form Fitted', '/asset/images/64f491a64d2d610s21shlw016-whte-1_2.jpg', '/asset/images/64f491a64d41010s21shlw016-whte-5_2.jpg', 511000, 0, 1, 'đẹp', '10S21SHLW016', 0, '2023-09-03 14:01:10', 2, 1),
(115, 'Áo Len Nữ Dệt Kim Tay Ngắn Trơn Form Slim', '/asset/images/64f4927bc44c410f21kniw029-grey-1_1.jpg', '/asset/images/64f4927bc45ff10f21kniw029-grey-5_1.jpg', 413000, 0, 1, 'đẹp', '10F21KNIW029', 1, '2023-09-03 14:04:43', 2, 1),
(116, 'Chân Váy Mini Nữ Phối Bèo Form Fitted', '/asset/images/64f49372d58d010s22skiw006-brown_3__2.jpg', '/asset/images/64f49372d59e110s22skiw006-brown_4__2.jpg', 413000, 0, 1, 'đẹp', '10S22SKIW006', 2, '2023-09-03 14:08:50', 2, 1),
(117, 'Áo Polo Nam Interlock Pique Phối Bo Và Tay Form Re', '/asset/images/64f4960431bb810s23pol037_rain_forest-ao-polo-nam_17_1__1.jpg', '/asset/images/64f4960431c7e10s23pol037_rain_forest-ao-polo-nam_17_2__1.jpg', 520000, 0, 0, 'đẹp', '10S23POL037', 3, '2023-09-03 14:19:48', 1, 1),
(119, 'Quần Short Thể Thao In Chuyển Nhiệt Form Regular', '/asset/images/64f498a46e65b10s23psha001_navy_77_2__1.jpg', '/asset/images/64f498a46e75b10s23psha001_navy_77_1__1.jpg', 216000, 0, 0, 'đẹp', '10S23PSHA001', 0, '2023-09-03 14:31:00', 1, 1),
(121, 'Chân Váy Chữ A Jean Nữ Họa Tiết In Laser Form A Li', '/asset/images/64f6cb56ed33cchan-vay-jean-nu-10s23dskw001_8__2.jpg', '/asset/images/64f6cb56ed4bcchan-vay-jean-nu-10s23dskw001_7__2.jpg', 479000, 2, 1, 'đẹp', '10S23DSKW001', 0, '2023-09-05 06:31:50', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `product_color_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_color`
--

INSERT INTO `product_color` (`product_color_id`, `product_id`, `color_name_id`) VALUES
(49, 70, 114),
(50, 70, 116),
(58, 75, 119),
(61, 75, 120),
(62, 75, 121),
(63, 76, 122),
(66, 76, 123),
(67, 78, 125),
(68, 79, 126),
(69, 79, 127),
(70, 80, 128),
(71, 80, 129),
(72, 81, 130),
(73, 85, 131),
(74, 86, 132),
(75, 86, 133),
(76, 87, 134),
(77, 88, 135),
(78, 89, 136),
(79, 90, 137),
(80, 90, 138),
(82, 92, 140),
(87, 97, 144),
(90, 97, 145),
(91, 98, 146),
(96, 100, 151),
(97, 100, 152),
(99, 102, 154),
(100, 102, 156),
(101, 103, 157),
(102, 104, 158),
(111, 108, 167),
(112, 108, 170),
(113, 109, 171),
(114, 110, 172),
(115, 110, 175),
(117, 112, 176),
(118, 112, 177),
(119, 113, 179),
(120, 114, 180),
(121, 115, 181),
(122, 116, 182),
(123, 117, 183),
(127, 119, 187);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `product_size_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_size`
--

INSERT INTO `product_size` (`product_size_id`, `product_id`, `size_id`) VALUES
(47, 70, 16),
(48, 70, 15),
(49, 70, 17),
(57, 75, 17),
(58, 75, 18),
(59, 75, 19),
(66, 79, 14),
(67, 81, 8),
(68, 81, 9),
(69, 81, 12),
(75, 86, 13),
(76, 86, 11),
(77, 90, 17),
(79, 90, 18),
(80, 89, 16),
(81, 89, 17),
(82, 88, 15),
(83, 85, 8),
(84, 85, 9),
(85, 85, 12),
(86, 87, 9),
(87, 87, 11),
(88, 87, 13),
(89, 88, 18),
(90, 88, 19),
(91, 80, 16),
(92, 80, 14),
(93, 80, 18),
(94, 76, 15),
(95, 76, 16),
(96, 76, 18),
(97, 78, 15),
(98, 78, 16),
(99, 78, 18),
(102, 92, 15),
(103, 92, 16),
(104, 92, 17),
(109, 97, 15),
(110, 97, 16),
(111, 97, 14),
(112, 97, 19),
(113, 98, 15),
(114, 98, 16),
(115, 98, 17),
(120, 100, 15),
(121, 100, 16),
(122, 100, 17),
(123, 100, 18),
(125, 102, 18),
(126, 102, 19),
(127, 102, 15),
(128, 102, 16),
(129, 102, 17),
(130, 103, 15),
(131, 103, 16),
(132, 103, 17),
(133, 104, 15),
(134, 104, 16),
(135, 104, 17),
(146, 108, 16),
(147, 108, 17),
(148, 108, 18),
(149, 109, 15),
(150, 109, 17),
(151, 109, 18),
(152, 110, 16),
(153, 110, 18),
(154, 110, 17),
(158, 112, 14),
(159, 112, 16),
(160, 112, 18),
(161, 112, 15),
(162, 112, 17),
(163, 113, 16),
(164, 113, 17),
(165, 113, 18),
(166, 114, 15),
(167, 114, 17),
(168, 114, 18),
(169, 115, 16),
(170, 115, 18),
(171, 115, 17),
(172, 116, 15),
(173, 116, 17),
(174, 116, 18),
(175, 117, 16),
(176, 117, 18),
(177, 117, 17),
(181, 119, 15),
(182, 119, 17),
(183, 119, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `purchased_orders`
--

CREATE TABLE `purchased_orders` (
  `purchased_order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_name_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `created_at` datetime NOT NULL,
  `completed_at` datetime NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone_number` varchar(100) NOT NULL,
  `total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `purchased_orders`
--

INSERT INTO `purchased_orders` (`purchased_order_id`, `customer_id`, `product_id`, `size_id`, `color_name_id`, `quantity`, `created_at`, `completed_at`, `customer_email`, `customer_phone_number`, `total_price`) VALUES
(1, 1, 76, 15, 122, 0, '2023-09-05 12:07:52', '0000-00-00 00:00:00', 'datntph24947@fpt.edu.vn', '0964863742', 638000),
(2, 1, 91, 7, 139, 0, '2023-09-05 12:05:56', '2023-09-05 12:40:02', 'datntph24947@fpt.edu.vn', '0964863742', 469420),
(3, 1, 75, 17, 119, 2, '2023-09-04 16:58:02', '2023-09-04 17:01:08', 'datntph24947@fpt.edu.vn', '0964863742', 766000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantities`
--

CREATE TABLE `quantities` (
  `quantity_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_name_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quantities`
--

INSERT INTO `quantities` (`quantity_id`, `product_id`, `color_name_id`, `size_id`, `quantity`) VALUES
(1, 70, 114, 15, 7),
(2, 70, 116, 16, 8),
(3, 70, 116, 18, 2),
(19, 75, 119, 17, 2),
(20, 75, 119, 18, 3),
(21, 75, 119, 19, 2),
(22, 75, 120, 17, 7),
(23, 75, 120, 16, 9),
(24, 75, 120, 18, 2),
(25, 75, 121, 15, 2),
(26, 75, 121, 18, 6),
(27, 75, 121, 16, 6),
(28, 76, 122, 16, 4),
(29, 76, 122, 18, 3),
(30, 76, 122, 15, 3),
(43, 76, 123, 15, 3),
(44, 76, 123, 16, 6),
(45, 76, 123, 17, 6),
(46, 76, 123, 18, 8),
(47, 78, 121, 16, 5),
(48, 78, 121, 17, 3),
(49, 78, 121, 18, 8),
(50, 78, 125, 15, 6),
(51, 78, 125, 16, 5),
(52, 78, 125, 18, 3),
(53, 79, 126, 14, 2),
(54, 79, 126, 17, 6),
(55, 79, 126, 18, 9),
(56, 79, 127, 14, 6),
(57, 79, 127, 16, 6),
(58, 79, 127, 18, 4),
(59, 80, 128, 14, 1),
(60, 80, 128, 16, 5),
(61, 80, 128, 18, 6),
(62, 80, 129, 14, 3),
(63, 80, 129, 17, 6),
(64, 80, 129, 16, 4),
(65, 80, 129, 18, 4),
(66, 81, 130, 8, 6),
(67, 81, 130, 9, 6),
(68, 81, 130, 12, 2),
(78, 85, 131, 8, 3),
(79, 85, 131, 12, 4),
(80, 85, 131, 9, 2),
(81, 86, 132, 9, 6),
(82, 86, 132, 13, 3),
(83, 86, 133, 9, 3),
(84, 86, 133, 11, 7),
(85, 86, 133, 12, 2),
(86, 87, 134, 9, 6),
(87, 87, 134, 11, 2),
(88, 87, 134, 13, 8),
(89, 88, 135, 15, 8),
(90, 88, 135, 17, 3),
(91, 88, 135, 18, 6),
(92, 89, 136, 16, 4),
(93, 89, 136, 17, 7),
(94, 90, 137, 17, 8),
(95, 90, 137, 18, 3),
(96, 90, 138, 16, 5),
(97, 90, 138, 17, 7),
(98, 90, 138, 18, 9),
(101, 92, 140, 15, 4),
(102, 92, 140, 16, 8),
(103, 92, 140, 17, 3),
(110, 97, 144, 15, 7),
(111, 97, 144, 16, 6),
(112, 97, 144, 14, 9),
(113, 97, 145, 15, 6),
(114, 97, 145, 16, 8),
(115, 97, 145, 19, 2),
(116, 98, 146, 15, 7),
(117, 98, 146, 16, 6),
(118, 98, 146, 17, 2),
(123, 100, 151, 15, 4),
(124, 100, 151, 16, 2),
(125, 100, 151, 17, 6),
(126, 100, 151, 18, 9),
(127, 100, 152, 15, 4),
(128, 100, 152, 16, 4),
(129, 100, 152, 17, 2),
(131, 102, 154, 18, 4),
(132, 102, 154, 19, 2),
(133, 102, 156, 15, 4),
(134, 102, 156, 16, 5),
(135, 102, 156, 17, 2),
(136, 103, 157, 15, 5),
(137, 103, 157, 16, 7),
(138, 103, 157, 17, 9),
(139, 104, 158, 15, 4),
(140, 104, 158, 16, 7),
(141, 104, 158, 17, 9),
(154, 108, 167, 16, 7),
(155, 108, 167, 17, 2),
(156, 108, 167, 18, 2),
(157, 108, 170, 16, 6),
(158, 108, 170, 17, 6),
(159, 108, 170, 18, 2),
(160, 109, 171, 15, 3),
(161, 109, 171, 17, 3),
(162, 109, 171, 18, 8),
(163, 110, 172, 16, 5),
(164, 110, 172, 18, 10),
(165, 110, 172, 17, 10),
(166, 110, 175, 16, 4),
(167, 110, 175, 18, 4),
(171, 112, 176, 14, 4),
(172, 112, 176, 16, 4),
(173, 112, 176, 18, 9),
(174, 112, 177, 15, 8),
(175, 112, 177, 18, 11),
(176, 112, 177, 17, 11),
(177, 113, 179, 16, 9),
(178, 113, 179, 17, 9),
(179, 113, 179, 18, 6),
(180, 114, 180, 15, 7),
(181, 114, 180, 17, 7),
(182, 114, 180, 18, 4),
(183, 115, 181, 16, 4),
(184, 115, 181, 18, 4),
(185, 115, 181, 17, 10),
(186, 116, 182, 15, 4),
(187, 116, 182, 17, 8),
(188, 116, 182, 18, 8),
(189, 117, 183, 16, 5),
(190, 117, 183, 18, 5),
(191, 117, 183, 17, 5),
(195, 119, 187, 15, 6),
(196, 119, 187, 17, 7),
(197, 119, 187, 18, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`size_id`, `size_name`) VALUES
(7, '28'),
(8, '29'),
(9, '30'),
(10, '31'),
(11, '32'),
(12, '34'),
(13, '36'),
(14, 'XS'),
(15, 'S'),
(16, 'M'),
(17, 'L'),
(18, 'XL'),
(19, 'XXL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `status`
--

INSERT INTO `status` (`status_id`, `status`) VALUES
(1, 'Chưa xử lý'),
(2, 'Đang xử lý'),
(3, 'Đang vận chuyển'),
(4, 'Đã giao hàng'),
(5, 'Thanh toán thành công'),
(6, 'Đã hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `image_user` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `full_name`, `username`, `password`, `email`, `address`, `phone`, `role`, `image_user`) VALUES
(1, 'Nguyễn Tiến Đạt', 'datntph29447', 'dat123', 'datntph24947@fpt.edu.vn', 'Hồng hà - Đan Phượng - Hà Nội', '0964863742', 1, ''),
(2, 'cuong', 'mcuong2003', '123', 'cuongb4102003@gmail.com', 'Đ. Hoàng Mai', '0966981411', 0, ''),
(3, 'nguyễn khánh văn', 'khanhvan12', 'hihi', 'vannkph22621@fpt.edu.vn', 'phuc lam my duc', '0971072436', 0, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Chỉ mục cho bảng `color_name`
--
ALTER TABLE `color_name`
  ADD PRIMARY KEY (`color_name_id`),
  ADD KEY `color_type_id` (`color_type_id`);

--
-- Chỉ mục cho bảng `color_type`
--
ALTER TABLE `color_type`
  ADD PRIMARY KEY (`color_type_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `id_category` (`product_id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `color_name_id` (`color_name_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `size_id` (`size_id`),
  ADD KEY `color_name_id` (`color_name_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `id_catogory` (`category_id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`product_color_id`),
  ADD KEY `product_id` (`product_id`) USING BTREE,
  ADD KEY `color_name_id` (`color_name_id`);

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`product_size_id`),
  ADD KEY `product_size_ibfk_1` (`product_id`),
  ADD KEY `product_size_ibfk_2` (`size_id`);

--
-- Chỉ mục cho bảng `purchased_orders`
--
ALTER TABLE `purchased_orders`
  ADD PRIMARY KEY (`purchased_order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `size_id` (`size_id`),
  ADD KEY `color_name_id` (`color_name_id`);

--
-- Chỉ mục cho bảng `quantities`
--
ALTER TABLE `quantities`
  ADD PRIMARY KEY (`quantity_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `color_name_id` (`color_name_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- Chỉ mục cho bảng `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `color_name`
--
ALTER TABLE `color_name`
  MODIFY `color_name_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT cho bảng `color_type`
--
ALTER TABLE `color_type`
  MODIFY `color_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `order_product`
--
ALTER TABLE `order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `product_color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT cho bảng `product_size`
--
ALTER TABLE `product_size`
  MODIFY `product_size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT cho bảng `purchased_orders`
--
ALTER TABLE `purchased_orders`
  MODIFY `purchased_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `quantities`
--
ALTER TABLE `quantities`
  MODIFY `quantity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `color_name`
--
ALTER TABLE `color_name`
  ADD CONSTRAINT `color_name_ibfk_1` FOREIGN KEY (`color_type_id`) REFERENCES `color_type` (`color_type_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Các ràng buộc cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `size` (`size_id`),
  ADD CONSTRAINT `order_product_ibfk_3` FOREIGN KEY (`color_name_id`) REFERENCES `color_name` (`color_name_id`),
  ADD CONSTRAINT `order_product_ibfk_4` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id_category`);

--
-- Các ràng buộc cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `product_color_ibfk_1` FOREIGN KEY (`color_name_id`) REFERENCES `color_name` (`color_name_id`),
  ADD CONSTRAINT `product_color_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Các ràng buộc cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `product_size_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `size` (`size_id`);

--
-- Các ràng buộc cho bảng `quantities`
--
ALTER TABLE `quantities`
  ADD CONSTRAINT `quantities_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `quantities_ibfk_2` FOREIGN KEY (`color_name_id`) REFERENCES `color_name` (`color_name_id`),
  ADD CONSTRAINT `quantities_ibfk_3` FOREIGN KEY (`size_id`) REFERENCES `size` (`size_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
