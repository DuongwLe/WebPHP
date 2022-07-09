-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 06, 2021 lúc 09:09 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl_ltweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `IDadmin` int(11) NOT NULL,
  `tendangnhap` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT current_timestamp(),
  `phanquyen` tinyint(4) NOT NULL,
  `trangthaiadmin` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`IDadmin`, `tendangnhap`, `hoten`, `matkhau`, `ngaytao`, `phanquyen`, `trangthaiadmin`) VALUES
(1, 'pva123', 'Phạm Bá Việt Anh', 'pva123', '2021-10-03 10:07:04', 1, 1),
(2, 'dhn123', 'Đỗ Hà Nguyên', 'dhn123', '2021-10-03 10:07:04', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh`
--

CREATE TABLE `anh` (
  `maanh` int(11) NOT NULL,
  `duongdananh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `vitri` tinyint(4) NOT NULL,
  `tenvitri` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsp`
--

CREATE TABLE `anhsp` (
  `masp` int(11) NOT NULL,
  `tenanh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `duongdan` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `trangthaianh` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `anhsp`
--

INSERT INTO `anhsp` (`masp`, `tenanh`, `duongdan`, `trangthaianh`) VALUES
(22, 'wiser', '../images/AnhSanPham/wiser2.jpeg', 1),
(22, 'wiser', '../images/AnhSanPham/iron1.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahoadon` int(11) NOT NULL,
  `machitietsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`mahoadon`, `machitietsp`, `soluong`, `gia`) VALUES
(12, 279, 17, 555000),
(13, 162, 0, 70000),
(14, 42, 1, 305000),
(15, 44, 18, 301500),
(15, 61, 17, 230000),
(16, 43, 1, 301500),
(17, 281, 18, 315000),
(18, 51, 1, 320000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `machitiet` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `trangthai` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1:Mở, 0:Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`machitiet`, `masp`, `trangthai`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 2, 1),
(5, 2, 1),
(6, 3, 1),
(7, 3, 1),
(8, 4, 1),
(9, 4, 1),
(10, 4, 1),
(11, 5, 1),
(12, 5, 1),
(13, 5, 1),
(14, 5, 1),
(15, 5, 1),
(16, 5, 1),
(17, 6, 1),
(18, 6, 1),
(19, 6, 1),
(20, 7, 1),
(21, 7, 1),
(22, 8, 1),
(23, 9, 1),
(24, 9, 1),
(25, 9, 1),
(26, 10, 1),
(27, 10, 1),
(28, 11, 1),
(29, 11, 1),
(30, 12, 1),
(31, 12, 1),
(32, 13, 1),
(33, 14, 1),
(34, 15, 1),
(35, 15, 1),
(36, 16, 1),
(37, 17, 1),
(38, 17, 1),
(39, 18, 1),
(40, 19, 1),
(41, 20, 1),
(42, 21, 1),
(43, 22, 1),
(44, 22, 1),
(45, 23, 1),
(46, 24, 1),
(47, 24, 1),
(48, 25, 1),
(49, 25, 1),
(50, 26, 1),
(51, 26, 1),
(52, 27, 1),
(53, 28, 1),
(54, 28, 1),
(55, 29, 1),
(56, 29, 1),
(57, 29, 1),
(58, 30, 1),
(59, 30, 1),
(60, 31, 1),
(61, 31, 1),
(62, 32, 1),
(63, 32, 1),
(64, 33, 1),
(65, 33, 1),
(66, 33, 1),
(67, 34, 1),
(68, 35, 1),
(69, 36, 1),
(70, 36, 1),
(71, 36, 1),
(72, 37, 1),
(73, 38, 1),
(74, 38, 1),
(75, 38, 1),
(76, 38, 1),
(77, 38, 1),
(78, 39, 1),
(79, 39, 1),
(80, 39, 1),
(81, 40, 1),
(82, 41, 1),
(83, 41, 1),
(84, 41, 1),
(85, 42, 1),
(86, 42, 1),
(87, 43, 1),
(88, 43, 1),
(89, 43, 1),
(90, 44, 1),
(91, 44, 1),
(92, 45, 1),
(93, 45, 1),
(94, 46, 1),
(95, 47, 1),
(96, 48, 1),
(97, 49, 1),
(98, 50, 1),
(99, 50, 1),
(100, 50, 1),
(101, 51, 1),
(102, 52, 1),
(103, 52, 1),
(104, 52, 1),
(105, 53, 1),
(106, 54, 1),
(107, 55, 1),
(108, 55, 1),
(109, 55, 1),
(110, 55, 1),
(111, 55, 1),
(112, 55, 1),
(113, 55, 1),
(114, 55, 1),
(115, 55, 1),
(116, 55, 1),
(117, 56, 1),
(118, 56, 1),
(119, 56, 1),
(120, 56, 1),
(121, 56, 1),
(122, 57, 1),
(123, 57, 1),
(124, 57, 1),
(125, 57, 1),
(126, 57, 1),
(127, 58, 1),
(128, 58, 1),
(129, 58, 1),
(130, 58, 1),
(131, 58, 1),
(132, 59, 1),
(133, 59, 1),
(134, 59, 1),
(135, 59, 1),
(136, 59, 1),
(137, 60, 1),
(138, 61, 1),
(139, 61, 1),
(140, 61, 1),
(141, 61, 1),
(142, 61, 1),
(143, 61, 1),
(144, 61, 1),
(145, 61, 1),
(146, 61, 1),
(147, 61, 1),
(148, 62, 1),
(149, 62, 1),
(150, 63, 1),
(151, 63, 1),
(152, 63, 1),
(153, 64, 1),
(154, 65, 1),
(155, 66, 1),
(156, 66, 1),
(157, 66, 1),
(158, 66, 1),
(159, 66, 1),
(160, 66, 1),
(161, 67, 1),
(162, 68, 1),
(163, 69, 1),
(164, 70, 1),
(165, 71, 1),
(166, 71, 1),
(167, 72, 1),
(168, 72, 1),
(169, 72, 1),
(170, 73, 1),
(171, 74, 1),
(172, 75, 1),
(173, 76, 1),
(174, 77, 1),
(175, 77, 1),
(176, 78, 1),
(177, 79, 1),
(178, 80, 1),
(179, 80, 1),
(180, 81, 1),
(181, 82, 1),
(182, 82, 1),
(183, 83, 1),
(184, 83, 1),
(185, 83, 1),
(186, 84, 1),
(187, 84, 1),
(188, 85, 1),
(189, 85, 1),
(190, 85, 1),
(191, 86, 1),
(192, 86, 1),
(193, 87, 1),
(194, 87, 1),
(195, 88, 1),
(196, 89, 1),
(197, 90, 1),
(198, 90, 1),
(199, 90, 1),
(200, 91, 1),
(201, 91, 1),
(202, 91, 1),
(203, 91, 1),
(204, 91, 1),
(205, 91, 1),
(206, 92, 1),
(207, 93, 1),
(208, 94, 1),
(209, 94, 1),
(210, 95, 1),
(211, 95, 1),
(212, 96, 1),
(213, 97, 1),
(214, 97, 1),
(215, 98, 1),
(216, 98, 1),
(217, 99, 1),
(218, 99, 1),
(219, 99, 1),
(220, 99, 1),
(221, 100, 1),
(222, 100, 1),
(223, 101, 1),
(224, 102, 1),
(225, 102, 1),
(226, 102, 1),
(227, 103, 1),
(228, 103, 1),
(229, 104, 1),
(230, 104, 1),
(231, 104, 1),
(232, 104, 1),
(233, 104, 1),
(234, 104, 1),
(235, 105, 1),
(236, 105, 1),
(237, 105, 1),
(238, 105, 1),
(239, 105, 1),
(240, 105, 1),
(241, 105, 1),
(242, 105, 1),
(243, 105, 1),
(244, 106, 1),
(245, 106, 1),
(246, 106, 1),
(247, 107, 1),
(248, 107, 1),
(249, 107, 1),
(250, 107, 1),
(251, 107, 1),
(252, 107, 1),
(253, 107, 1),
(254, 107, 1),
(255, 107, 1),
(256, 108, 1),
(257, 108, 1),
(258, 108, 1),
(259, 109, 1),
(260, 109, 1),
(261, 109, 1),
(262, 109, 1),
(263, 109, 1),
(264, 109, 1),
(265, 110, 1),
(266, 110, 1),
(267, 110, 1),
(268, 111, 1),
(269, 111, 1),
(270, 111, 1),
(271, 111, 1),
(272, 112, 1),
(273, 112, 1),
(274, 112, 1),
(275, 113, 1),
(276, 114, 1),
(277, 114, 1),
(278, 115, 1),
(279, 115, 1),
(280, 116, 1),
(281, 117, 1),
(282, 117, 1),
(283, 117, 1),
(284, 118, 1),
(285, 119, 1),
(286, 120, 1),
(287, 120, 1),
(288, 120, 1),
(289, 120, 1),
(290, 121, 1),
(291, 121, 1),
(292, 121, 1),
(293, 121, 1),
(294, 122, 1),
(295, 122, 1),
(296, 122, 1),
(297, 123, 1),
(298, 123, 1),
(299, 123, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` int(11) NOT NULL,
  `mathanhvien` int(11) NOT NULL,
  `mavanchuyen` int(11) NOT NULL,
  `mathanhtoan` int(11) NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngaysua` timestamp NULL DEFAULT current_timestamp(),
  `tennguoinhan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachinn` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `emailnn` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dienthoainn` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `ghichu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthaihoadon` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Chưa xử lý, 2: Đang xử lý, 3: Đã xử lý. 4: Hóa đơn bị hủy'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `manhomsp` int(11) NOT NULL,
  `trangthailoai` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`maloai`, `tenloai`, `manhomsp`, `trangthailoai`) VALUES
(1, 'DELL', 1, 1),
(2, 'ASUS', 1, 1),
(3, 'ACER', 1, 1),
(4, 'LENOVO', 1, 1),
(5, 'MSI', 1, 1),
(6, 'HP', 1, 0),
(7, 'APPLE', 1, 1),
(8, 'MICROSOFT', 1, 1),
(9, 'JBL', 4, 1),
(10, 'SENNHEISER', 4, 1),
(11, 'SONY', 4, 1),
(12, 'LOGITECH', 4, 1),
(13, 'GENIUS', 4, 1),
(14, 'FUHLEN', 4, 1),
(15, 'SAMSUNG', 4, 1),
(16, 'TOSIBA', 4, 1),
(17, 'WESTERN DIGITAL', 4, 1),
(18, 'KINGSTON', 4, 1),
(19, 'CORSAIR VENGEANCE LED', 4, 1),
(20, 'G.SKILL STRIDENT ZRGB', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mucgia`
--

CREATE TABLE `mucgia` (
  `mamucgia` int(11) NOT NULL,
  `tenmucgia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `muccao` int(11) NOT NULL,
  `mucthap` int(11) NOT NULL,
  `trangthaimucgia` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mucgia`
--

INSERT INTO `mucgia` (`mamucgia`, `tenmucgia`, `muccao`, `mucthap`, `trangthaimucgia`) VALUES
(1, '< 100.000 VNĐ', 100000, 0, 1),
(2, '100.000 VNĐ - 1.000.000 VNĐ', 1000000, 100000, 1),
(3, '1.000.000 VNĐ - 3.000.000 VNĐ', 3000000, 1000000, 1),
(4, '3.000.000 VNĐ - 5.000.000 VNĐ', 5000000, 3000000, 1),
(5, '5.000.000 VNĐ - 10.000.000 VNĐ', 10000000, 5000000, 1),
(6, '10.000.000 VNĐ - 20.000.000 VNĐ', 20000000, 10000000, 1),
(7, '20.000.000 VNĐ - 30.000.000 VNĐ', 30000000, 20000000, 1),
(8, '30.000.000 VNĐ - 40.000.000 VNĐ', 40000000, 30000000, 1),
(9, '> 40.000.000 VNĐ', 100000000, 40000000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomsp`
--

CREATE TABLE `nhomsp` (
  `manhom` int(11) NOT NULL,
  `tennhom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `trangthainhom` int(11) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhomsp`
--

INSERT INTO `nhomsp` (`manhom`, `tennhom`, `trangthainhom`) VALUES
(1, 'Laptop mới', 1),
(2, 'Laptop đồ họa - gaming', 1),
(3, 'Laptop mỏng nhẹ cao cấp', 1),
(4, 'Linh kiện laptop', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phan_hoi_kh`
--

CREATE TABLE `phan_hoi_kh` (
  `mabinhluan` int(11) NOT NULL,
  `tenkhachhang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anhkhachhang` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `masp` int(11) DEFAULT NULL,
  `ngaygui` timestamp NOT NULL DEFAULT current_timestamp(),
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(10) NOT NULL DEFAULT 0 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phan_hoi_kh`
--

INSERT INTO `phan_hoi_kh` (`mabinhluan`, `tenkhachhang`, `anhkhachhang`, `masp`, `ngaygui`, `noidung`, `trangthai`) VALUES
(1, 'Nguyễn Huy Cương', NULL, 20, '2021-10-01 10:26:25', 'Sản phẩm tốt', 1),
(2, 'Phạm Bá Việt Anh', NULL, 18, '2021-10-02 10:26:25', 'Cửa hàng đẹp, dễ tìm kiếm', 1),
(3, 'Vũ Tiến Dũng', NULL, 6, '2021-10-10 10:27:28', 'Sản phẩm khi dùng thỉnh thoảng có giật lag nhẹ', 1),
(4, 'Lê Thái Dương', NULL, 2, '2021-10-13 10:28:14', 'Dịch vụ chăm sóc khách hàng tốt', 1),
(5, 'Đỗ Hà Nguyên', NULL, 11, '2021-10-11 10:28:44', 'Luôn hỗ trợ khách hàng nhiệt tình', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ma_sp` int(11) NOT NULL,
  `tensanpham` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `manhomsp` int(11) NOT NULL,
  `maloaisp` int(11) NOT NULL,
  `anhdaidien` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gia` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cauhinh` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gia_sau_giam` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ngaynhap` timestamp NOT NULL DEFAULT current_timestamp(),
  `motasp` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthaisp` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ma_sp`, `tensanpham`, `manhomsp`, `maloaisp`, `anhdaidien`, `soluong`, `gia`, `cauhinh`, `khuyenmai`, `gia_sau_giam`, `ngaynhap`, `motasp`, `trangthaisp`) VALUES
(1, 'Acer Swift3 56 50AZ', 1, 3, '../img_sp/Acer/acer1.jpg', 100, '20690000đ', 'Ryzen 5-4500U/8GB/512B/VGA AMD Radeon™ Graphics/14.0\" FHD IPS/Win 10 Home', '500000đ', '20190000đ', '2021-08-03 10:34:53', 'Swift 3, chiếc laptop văn phòng mỏng nhẹ, sở hữu vỏ máy làm từ hợp kim Nhôm - Magie bền bỉ hơn 4 lần và nhẹ hơn 35% so với hợp kim nhôm thông thường, trọng lượng máy chỉ 1.19kg, mỏng 15.95mm.', 1),
(2, 'Acer Aspire 5 A514-54-540F', 3, 3, '../img_sp/Acer/acer2.jpg', 99, '18490000đ', 'Intel® Core™ i5-1135G7/8GB/515GB/Intel Iris Xe Graphics/14.0\" FHD/Win 10 Home', '1490000đ', '17000000', '2021-09-29 10:47:59', 'Acer Aspire A514 54 540F NX.A28SV.005, một chiếc latop sẵn sàng đáp ứng mọi nhu cầu học tập, làm việc, giải trí nhẹ nhàng.\r\n\r\n', 1),
(3, 'Acer Aspire 7 ', 1, 3, '../img_sp/Acer/acer3.jfif', 20, '22.000.000đ', 'Ryzen 5 - 5500U/8GB/256GB/GTX1050 2GB/15.6\" FHD IPS/Win 10 Home', '0', '22.000.000đ', '2021-10-03 18:13:11', 'Laptop Acer Aspire 7 A715 42G R4ST R5  có thiết kế đơn giản, trang nhã nhưng trang bị cấu hình mạnh mẽ đáp ứng nhu cầu đồ hoạ, kỹ thuật chuyên nghiệp và chiến game mượt mà.', 1),
(4, 'Acer  Nitro 5-58A7', 2, 3, '../img_sp/Acer/acer_nitro5_58A7.jfif', 10, '23.000.000đ', 'AMD Ryzen 5 - 4600H/8GB/256GB/GTX 1650Ti/15.6\" FHD IPS/Win 10 Home', '1000000đ', '22000000đ', '2021-10-04 10:50:31', NULL, 1),
(5, 'Acer Nitro 5-AN515-57-77', 2, 3, '../img_sp/Acer/acer_nitro5_An515_57-77_40tr.jfif\r\n', 12, '40.000.000đ', 'Core i7 - 10750H/16GB/512GB/GTX 2165 4GB/15.6\" FHD/Win 10 Pro ', '0', '40.000.000đ', '2021-10-04 10:53:22', NULL, 1),
(6, 'Acer Swif 3-568', 3, 3, '../img_sp/Acer/acer_swif3_568_12tr.jpg', 5, '12.000.000đ', 'Core i5 - 6200U/4GB/256GB/14.0\"/Win 10 Home', '0', '12.000.000đ', '2021-10-04 10:53:22', NULL, 1),
(7, 'Acer Swif 3-SF314', 3, 3, '../img_sp/Acer/acer_swif3_SF314_18tr.jpg', 11, '18.000.000đ', 'i5 - 1135G7/8GB/512GB/Intel Iris Xe Graphics/14.0\" FHD IPS/Win 10 Home', '2000000đ', '16.000.000đ', '2021-10-04 10:59:39', NULL, 1),
(8, 'Acer Nitro 5-2019-AN515-43', 2, 3, '../img_sp/Acer/acer-nitro-5-2019-den-an515_43_20tr.jfif', 15, '20.000.000đ', 'Core i5 - 10300H/8GB/256GB/VGA GTX 1650/14.0\" FHD Outlet/Win 10 Home', '0', '20.000.000đ', '2021-10-04 10:59:39', NULL, 1),
(9, 'Acer Predator Helios 300', 2, 3, '../img_sp/Acer/Acer-Predator-Helios-300_28tr.jpg', 10, '29.000.000đ', 'Core i7-10750H/8GB/512GB/VGA RTX 1650Ti/15.6\" FHD 144Hz/Win 10 Pro', '1.000.000đ', '28.000.000đ', '2021-10-04 11:02:10', NULL, 1),
(11, 'Asus VivoBook A15', 1, 2, '../img_sp/ASUS/laptop-asus-vivobook-a415ea-eb360t-5.jpg', 12, '17.500.000đ', 'Intel Core i5-10210U/DDR4 8GB (On board 4 GB +1 khe 4 GB)/Ổ cứng: SSD 512 GB/15.6\" FHD/Win 10 Home ', '1000000đ', '16.500.000đ', '2021-10-04 11:06:56', NULL, 1),
(12, 'Asus ROG Strix G513', 2, 2, '../img_sp/ASUS/asus_rog_strix.jpg', 21, '23.000.000đ', 'AMD Ryzen5-5800H/ 8GB/ 512GB/ RTX 3050/ Win 10', '0', '23.000.000đ', '2021-10-04 11:06:56', NULL, 1),
(13, 'Asus ROG Zephyrus', 2, 2, '../img_sp/ASUS/Asus_rog_zephyrus_17tr.jpg', 10, '27.000.000đ', 'RYZEN 7 5800HS/ 8GB/ SSD 512GB/ 14″/ 144HZ/ GTX 1650/ WIN 10', '0', '27.000.000đ', '2021-10-04 11:09:48', NULL, 1),
(14, 'Asus TUF FH506', 1, 2, '../img_sp/ASUS/asus_tuf_20tr.jpg', 12, '20.000.000đ', ' i5 11400H/8GB/512GB SSD/RTX 3050_4GB/Win10', '0', '20.000.000đ', '2021-10-04 11:09:48', NULL, 1),
(15, 'Asus FL553VD', 3, 2, '../img_sp/ASUS/Asus-GL553VD_20tr.jpg', 10, '18.000.000đ', ' i3 11400U/8GB/512GB SSD/RTX 1050/Win10', '0', '18.000.000đ', '2021-10-04 11:14:00', NULL, 1),
(16, 'Asus Vivobook X509', 3, 2, '../img_sp/ASUS/asus-vivobook-x509-bac_16tr.jfif', 5, '16.000.000đ', 'AMD Ryzen5-4600H/8GB/1T HDD/RTX 1650Ti/Win10', '500.000đ', '15.500.000đ', '2021-10-04 11:14:00', NULL, 1),
(17, 'Asus RogStrix G-17', 2, 2, '../img_sp/ASUS/Strix-G17__51tr.jpg', 10, '51.000.000đ', ' i9 9900K/8GB/1Tb SSD/2Tb HDD/RTX 3050_4GB/Win10', '900.000đ', '50.100.000đ', '2021-10-04 11:16:58', NULL, 1),
(18, 'Asus TUF A15 ', 1, 2, '../img_sp/ASUS/tuf_a15_R7_4800_19tr5.jpg', 15, '19.500.000đ', 'R7_4800H/8GB/512GB SSD/RTX 1650_4GB/Win10', '500.000đ', '19.000.000đ', '2021-10-04 11:16:58', NULL, 1),
(19, 'Asus TUF 5050', 1, 2, '../img_sp/ASUS/TUF_fx5050_23tr.jfif', 20, '23.000.000đ', ' i5 11400H/8GB/512GB SSD/GTX 1060Ti/Win10', '0', '23.000.000đ', '2021-10-04 11:18:43', NULL, 1),
(20, 'Asus Vivobook X415', 3, 3, '../img_sp/ASUS/vivobook_X415_13tr.jpg', 10, '15.000.000đ', ' i5 7800H/8GB/512GB SSD/GTX 1050/Win10', '0', '15.000.000đ', '2021-10-04 11:19:54', NULL, 1),
(21, 'Dell Inspiron 15-3000 Series', 1, 1, '../img', 20, '12.000.000', 'Intel Core i5-7200U| Ram 8G| SSD 256G| HD| AMD Radeon R5 M430', '0', '12.000.000', '2021-10-04 13:03:41', NULL, 1),
(22, 'Dell Inspiron 15-5593', 3, 1, '../img', 5, '16.500.000', '(N5I5513W) i5-1035G1 | 8GB | 256GB | GeForce MX230 2GB | 15.6\" FHD | Win 10 | Chính hãng', '0', '16.500.000', '2021-10-04 13:03:41', NULL, 1),
(23, 'Dell Gaming G3', 2, 1, '../img', 10, '40.000.000', ' i9-10750H/16GB/512GB/15.6\"FHD/NV GTX1660Ti 6GB/Win 10', '1000000', '39.000.000', '2021-10-04 13:07:28', NULL, 1),
(24, 'Dell Gaming G5', 2, 1, '../img', 15, '28.000.000', ' i7-11750H/16GB/512GB/15.6\"FHD/NV RTX 3060Ti 6GB/ Win 10', '0', '28.000.000', '2021-10-04 13:07:28', NULL, 1),
(25, 'Dell Latitude 3520', 3, 1, '../img', 10, '15.500.000', 'Core i5-8265U/4Gb/1TbHDD/14.0\"HD/DDR/Win 10', '500000', '15.000.000', '2021-10-04 13:10:54', NULL, 1),
(26, 'Dell Vostro 3481', 1, 1, '../img', 21, '12.000.000', 'Core i5-8265U/4Gb/1TbHDD/14.0\"HD/Finger/Win 10', '0', '12.000.000', '2021-10-04 13:10:54', NULL, 1),
(27, 'Dell Latitude 7320', 1, 1, '../img', 12, '33.000.000', ' Intel® Core™ i5-1135G7/8GB/Non-ECC /M.2 256GB PCIe NVMe/ 13.3\" FHD(1920x1080) /Intel® Iris® XE Graphics', '0', '33.000.000', '2021-10-04 13:15:00', NULL, 1),
(28, 'Dell Vostro 3420', 3, 1, '../img', 5, '22.000.000', ' i7 1165G7/8GB/512GB/14\"FHD/VGA MX330 2GB/Win 10', '2000000', '20.000.000', '2021-10-04 13:15:00', NULL, 1),
(29, 'Dell Latitude 3420', 1, 1, '../img', 10, '14.000.000', ' i5 7800H/8GB/512GB/14\"FHD/RTX 1050 2GB/Win 10', '500000', '13.500.000', '2021-10-04 13:16:48', NULL, 1),
(30, 'Laptop HP 15S-FQ', 1, 6, '../img', 10, '10.000.000', 'Intel Core i5-1135G7/8GB/512GB/14.0HD/Win 10', '0', '10.000.000', '2021-10-04 13:20:27', NULL, 1),
(31, 'Laptop HP Gaming 15', 2, 6, '../img', 5, '26.000.000', 'dk1159TX i7 10750H/8GB/512GB+32GB/1650Ti 4GB/Win 10 ', '0', '26.000.000', '2021-10-04 13:20:27', NULL, 1),
(32, 'HP Pavilion Gaming15 Ryzen', 2, 6, '../img', 20, '28.000.000', 'dk1159TX i7 10750H/16GB/512GB+32GB/RTX 3050 4GB/Win 10 ', '2000000', '26.000.000', '2021-10-04 13:23:15', NULL, 1),
(33, 'Latop HP 16 Victus Gaming', 2, 6, '../img', 14, '33.000.000', 'AMD Ryzen7 5800H/8GB/512GB+32GB/RTX 3060 8GB/Win 10 ', '3000000', '30.000.000', '2021-10-04 13:23:15', NULL, 1),
(34, 'Microsoft Surface 3', 1, 8, '../img', 11, '55.000.000', ' AMD Ryzen 7 3780U/16GB/512GB/Win11', '2000000', '53.000.000', '2021-10-04 13:27:40', NULL, 1),
(35, 'V4C-Microsoft Surface', 1, 8, '../img', 3, '29.500.000', ' Intel® Core™ Core i5 1035G7 1.2GHz/8GB 3733MHz DDR4/13.5\"/256GB SSD', '2000000', '27.500.000', '2021-10-04 13:27:40', NULL, 1),
(36, 'Lenovo Thinkbook 14', 3, 4, '../img', 7, '20.000.000', 'R5 5500U/8GB/512GB/14\"FHD/Win 10 \r\n', '1000000', '19.000.000', '2021-10-04 13:30:58', NULL, 1),
(37, 'Lenovo Ideapad Gaming 3', 2, 4, '../img', 15, '20.000.000', 'AMD Ryzen 5 4600H/8GB/512GB/15.6\"FHD/Win 10', '300000', '19.700.000', '2021-10-04 13:30:58', NULL, 1),
(38, 'Lenovo Legion 5 Pro', 2, 4, '../img', 20, '46.000.000', ' R7 5800H/16GB/1TB SSD/16\"WQXGA-/8GB RTX3070/Win 10 ', '1000000', '45.000.000', '2021-10-04 13:33:37', NULL, 1),
(39, 'Lenovo Legion 5 White ', 2, 4, '../img', 15, '30.000.000', 'R5 5600H/8GB/512GB/15.6”FHD/RTX 3050 4GB/Win 10', '4000000', '26.000.000', '2021-10-04 13:33:37', NULL, 1),
(40, 'Lenovo Ideapad 3', 3, 4, '../img', 7, '14.000.000', 'i3 1115G4/8GB/512GB/15.6\"FHD/Win 10 ', '0', '14.000.000', '2021-10-04 13:36:06', NULL, 1),
(41, 'Lenovo Archives', 3, 4, '../img', 5, '16.000.000', 'i5 10300H/16GB/512GB/14”FHD/Win 10', '0', '16.000.000', '2021-10-04 13:36:06', NULL, 1),
(42, 'Lenovo Ideapad Gaming 3 (2020)', 1, 4, '../img', 11, '18.000.000', '15ARH05 R5 4600H/8GB/512GB/15.6\"FHD/Win 10', '0', '18.000.000', '2021-10-04 13:39:00', NULL, 1),
(43, 'Lenovo Ideapad3 14ITL6', 1, 4, '../img', 12, '16.600.000', ' i3 1115G4/8GB/512GB/15.6\"FHD/Win 10 ', '100000', '15.600.000', '2021-10-04 13:39:00', NULL, 1),
(44, 'Lenovo LEgion 5 R7', 2, 4, '../img', 20, '28.000.000', 'R7 5800H/8GB/512GB/15.6”FHD/RTX 3050 4GB/Win 10', '0', '28.000.000', '2021-10-04 13:41:01', NULL, 1),
(45, 'Lenovo V330', 3, 4, '../img', 3, '10.000.000', 'i3-8300U/8GB/512GB/15.6”FHD/NVIDIA 1242 4GB/Win 10', '0', '10.000.000', '2021-10-04 13:41:01', NULL, 1),
(46, 'Macbook Air M1 2020', 3, 7, '../img', 50, '28.000.000', '13.3\", 2560 x 1600 Pixel, IPS, IPS LCD LED Backlit, True Tone/Apple M1/8 GB, LPDDR4/SSD 256 GB/Apple M1', '0', '28.000.000', '2021-10-04 13:44:39', NULL, 1),
(47, 'MAcbook Air M1 Gold', 3, 7, '..img', 15, '26.000.000', '13.3\", 2560 x 1600 Pixel, IPS, IPS LCD LED Backlit, True Tone/Apple M1/8 GB, LPDDR4/SSD 256 GB/Apple M1', '0', '26.000.000', '2021-10-04 13:44:39', NULL, 1),
(48, 'Macbook Pro 13 2020', 3, 7, '../img', 20, '60.000.000', '6.0\", 3072 x 1920 Pixel, IPS, IPS LCD LED Backlit, True Tone/Intel Core i9-9th-gen/16 GB, DDR4, 2666 MHz/SSD 1 TB/Radeon Pro 5500M 4GB', '0', '60.000.000', '2021-10-04 13:47:32', NULL, 1),
(49, 'MSI Modern 144-B11s', 1, 5, '../img', 5, '16.000.000', ' i3 1115G4/8GB/256GB/14\"FHD/Win 10', '2000000', '14.000.000', '2021-10-04 13:47:32', NULL, 1),
(50, 'MSI Bravo 15 (2021)', 2, 5, '../img', 10, '23.000.000', 'Ryzen5 5600H/8GB/512GB/RX5500M 4GB/15.6\"FHD/Win 10 ', '1000000', '22.000.000', '2021-10-04 13:49:29', NULL, 1),
(51, 'MSI GF63Thin_25', 1, 5, '../img', 15, '26.000.000', ' i5 10500H/16GB/512GB/15.6FHD/RTX 3060 Max-Q 6Gb/Win 10 ', '3000000', '23.000.000', '2021-10-04 13:49:29', NULL, 1),
(52, 'MSI Modern 15', 1, 5, '../img', 1, '15.000.000', ' Ryzen5 4600H/16GB/512GB/15.6FHD/GTX1060 6Gb/Win 10 ', '0', '15.000.000', '2021-10-04 13:52:48', NULL, 1),
(53, 'MSI Creator 15A10SF', 1, 5, '../img', 3, '36.000.000', 'Intel® Core™ i7-10750H16GB (8GBx2) DDR4 2666MHz Ổ cứng: 512GB M.2 PCIE SSD VGA: NVIDIA GeForce GTX 1660Ti Max-Q 6GB GDDR6\r\nDisplay: 15.6 inch FHD', '2000000', '34.000.000', '2021-10-04 13:52:48', NULL, 1),
(54, 'MSI Gaming GF63', 2, 5, '../img', 11, '23.000.000', '10SC 255VN i5 10300H/8GB/512GB/GTX 1650 4GB/15.6\"FHD/Win10', '1000000', '22.000.000', '2021-10-04 13:55:02', NULL, 1),
(55, 'MSI GE66-Raider', 2, 5, '../img', 3, '30.000.000', 'i7 11800H/16GB/512GB/RTX3050 Ti 4GB/Win 10', '0', '30.000.000', '2021-10-04 13:55:02', NULL, 1),
(56, 'MSI GF73 Thin10src', 3, 5, '../img', 20, '28.000.000', 'i7 10750H/8GB/512GB/17.3FHD/GTX1650 4Gb/Win 10', '1000000', '27.000.000', '2021-10-04 13:57:06', NULL, 1),
(57, 'MSI GF75', 1, 5, '../img', 12, '30.000.000', 'i7 11800H/8GB/512GB/17.3\"FHD/RTX3050 4Gb/Win 10', '0', '30.000.000', '2021-10-04 13:57:06', NULL, 1),
(58, 'MSI Prestige 15', 1, 5, '../img', 11, '28.000.000', 'i7 1185G7/16GB/512GB SSD/14\"FHD/UMA/Win10 ', '0', '28.000.000', '2021-10-04 13:59:28', NULL, 1),
(59, 'Chuột Logitech G903', 4, 12, '../img', 100, '1.000.000', '', '0', '1.000.000', '2021-10-04 13:59:28', NULL, 1),
(60, 'Thanh Ram DDR-8GB-2400-Kingmax', 4, 18, '../img', 12, '1.200.000', '', '0', '1.200.000', '2021-10-04 14:01:53', NULL, 1),
(61, 'Bàn Phím EDRA_EK387RGB', 4, 20, '../img', 50, '2.000.000', '', '0', '2.000.000', '2021-10-04 14:01:53', NULL, 1),
(62, 'Bàn Phím  EDRA EK387 Pink', 4, 20, '../img', 50, '700.000', '', '0', '700.000', '2021-10-04 14:03:59', NULL, 1),
(63, 'Tai nghe JBL Everest', 4, 9, '.../img', 120, '2.000.000', '', '50', '1.950.000', '2021-10-04 14:03:59', NULL, 1),
(64, 'Chuột Logitech G102-6', 4, 12, '../img', 60, '1.000.000', '', '0', '1.000.000', '2021-10-04 14:05:30', NULL, 1),
(65, 'Chuột Logitech 231', 4, 12, '../img', 40, '1.500.000', '', '0', '1.500.000', '2021-10-04 14:05:30', NULL, 1),
(66, 'Chuột Logitech 502 Lightspeed', 4, 12, '../img', 20, '3.600.000', '', '0', '3.600.000', '2021-10-04 14:08:31', NULL, 1),
(67, 'RAM 8GB Patriot 4-G2666', 4, 18, '../img', 100, '800.000', '', '100000', '700.000', '2021-10-04 14:08:31', NULL, 1),
(68, 'Ram 8G D4-2666S19 1Rx8 SODIMM (KVR26S19S8/8FE)', 4, 18, '../img', 50, '900.000', '', '0', '900.000', '2021-10-04 14:10:32', NULL, 1),
(69, 'RAM PC3-4GB-300K', 4, 17, '../img', 100, '500.000', '', '0', '500.000', '2021-10-04 14:10:32', NULL, 1),
(70, 'Tai nghe Gaming MSI ', 4, 5, '../img', 20, '1.000.000', '', '0', '1.000.000', '2021-10-04 14:12:09', NULL, 1),
(71, 'Tai nghe UH36 Dual ', 4, 12, '../img', 12, '500.000', '', '100000', '400.000', '2021-10-04 14:12:09', NULL, 1),
(72, 'Bàn Phím Vortex Tab75 Bluetooth- Bluie Switch', 4, 19, '../img', 50, '3.000.000', '', '0', '3.000.000', '2021-10-04 14:13:36', NULL, 1),
(73, 'asus zenbook UX363EA-HP163T', 3, 2, '../img_sp/ASUS/asus zenbook UX363EA-HP163T_.png', 17, '51.000.000đ', 'Intel Core i7 - 11750G/16GB/1TB/GTX 1650/15.6\" FHD IPS 144Hz/Win 10 Home', '990.000đ', '50.010.000đ', '2021-10-06 19:02:28', NULL, 1),
(74, 'asus zenbook UX482EG-KA099T', 3, 2, '../img_sp/ASUS/asus zenbook UX482EG-KA099T.jpg', 18, '48.000.000đ', 'Intel Core i7 - 9750H/8GB/512GB/GTX 1050Ti 4GB/14.0\" FHD/Win 10 Home', '0', '48.000.000đ', '2021-10-06 19:02:28', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `mathanhtoan` int(11) NOT NULL,
  `hinhthuctt` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ghichutt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhtoan`
--

INSERT INTO `thanhtoan` (`mathanhtoan`, `hinhthuctt`, `ghichutt`, `trangthai`) VALUES
(1, 'Thanh toán qua ngân hàng', '<p><span style=\"font-size:14px\"><span style=\"font-family:verdana,geneva,sans-serif\">Bạn vui l&ograve;ng chuyển khoản đến một t&agrave;i khoản sau:</span></span></p>\r\n\r\n<p><em><span style=\"font-size:14px\"><span style=\"font-family:verdana,geneva,sans-serif\">(Nội dung chuyển khoản: Viết Họ t&ecirc;n kh&ocirc;ng c&oacute; dấu - Số điện thoại bạn đ&atilde; đặt h&agrave;ng)</span></span></em></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:verdana,geneva,sans-serif\">Ng&acirc;n h&agrave;ng Vietcombank:&nbsp;</span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-size:14px\"><span style=\"font-family:verdana,geneva,sans-serif\">+ Chủ t&agrave;i khoản: Nguyễn Tuấn Anh.</span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-size:14px\"><span style=\"font-family:verdana,geneva,sans-serif\">+ Số t&agrave;i khoản: 0071000702127.</span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-family:verdana,geneva,sans-serif; font-size:14px\">+&nbsp;</span><span style=\"font-size:14px\"><span style=\"font-family:verdana,geneva,sans-serif\">Ng&acirc;n h&agrave;ng: Vietcombank chi nh&aacute;nh H&agrave; Nội.<span style=\"font-size:14px\"><span style=\"font-family:verdana,geneva,sans-serif\"><span style=\"font-size:14px\"><span style=\"font-family:verdana,geneva,sans-serif\">​</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:verdana,geneva,sans-serif\">Ng&acirc;n h&agrave;ng Agribank:&nbsp;</span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-family:verdana,geneva,sans-serif; font-size:14px\">+&nbsp;</span><span style=\"font-size:14px\"><span style=\"font-family:verdana,geneva,sans-serif\">Chủ t&agrave;i khoản: Nghi&ecirc;m Thanh T&ugrave;ng.</span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-family:verdana,geneva,sans-serif; font-size:14px\">+&nbsp;</span><span style=\"font-size:14px\"><span style=\"font-family:verdana,geneva,sans-serif\">Số t&agrave;i khoản: 0087575829474.</span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-family:verdana,geneva,sans-serif; font-size:14px\">+&nbsp;</span><span style=\"font-size:14px\"><span style=\"font-family:verdana,geneva,sans-serif\">Ng&acirc;n h&agrave;ng: Agribank chi nh&aacute;nh L&aacute;ng Hạ.</span></span></p>\r\n', 1),
(2, 'Thanh toán trực tiếp', '<p><span style=\"font-family:verdana,geneva,sans-serif\"><span style=\"font-size:14px\">Kh&aacute;ch h&agrave;ng thanh to&aacute;n khi nhận h&agrave;ng.</span></span></p>\r\n', 1),
(3, 'Thanh toán qua VNPay', NULL, 1),
(4, 'Thanh toán qua Momo', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `mathanhvien` int(11) NOT NULL,
  `hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT current_timestamp(),
  `trangthai` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vanchuyen`
--

CREATE TABLE `vanchuyen` (
  `mavanchuyen` int(11) NOT NULL,
  `hinhthucvc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `giacuoc` int(11) NOT NULL,
  `trangthai` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở; 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vanchuyen`
--

INSERT INTO `vanchuyen` (`mavanchuyen`, `hinhthucvc`, `giacuoc`, `trangthai`) VALUES
(1, 'Chuyển hàng trong nội thành Hà Nội', 20000, 1),
(2, 'Chuyển phát nhanh', 100000, 1),
(3, 'Chuyển hàng qua bưu điện', 50000, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`IDadmin`);

--
-- Chỉ mục cho bảng `anh`
--
ALTER TABLE `anh`
  ADD PRIMARY KEY (`maanh`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`mahoadon`,`machitietsp`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`machitiet`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`maloai`),
  ADD KEY `fk1` (`manhomsp`);

--
-- Chỉ mục cho bảng `mucgia`
--
ALTER TABLE `mucgia`
  ADD PRIMARY KEY (`mamucgia`);

--
-- Chỉ mục cho bảng `nhomsp`
--
ALTER TABLE `nhomsp`
  ADD PRIMARY KEY (`manhom`);

--
-- Chỉ mục cho bảng `phan_hoi_kh`
--
ALTER TABLE `phan_hoi_kh`
  ADD PRIMARY KEY (`mabinhluan`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ma_sp`),
  ADD KEY `fk2` (`manhomsp`),
  ADD KEY `fk3` (`maloaisp`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`mathanhtoan`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`mathanhvien`);

--
-- Chỉ mục cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  ADD PRIMARY KEY (`mavanchuyen`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `IDadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `anh`
--
ALTER TABLE `anh`
  MODIFY `maanh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `machitiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahoadon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `mucgia`
--
ALTER TABLE `mucgia`
  MODIFY `mamucgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nhomsp`
--
ALTER TABLE `nhomsp`
  MODIFY `manhom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phan_hoi_kh`
--
ALTER TABLE `phan_hoi_kh`
  MODIFY `mabinhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ma_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `mathanhtoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `mathanhvien` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  MODIFY `mavanchuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`manhomsp`) REFERENCES `nhomsp` (`manhom`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`manhomsp`) REFERENCES `nhomsp` (`manhom`),
  ADD CONSTRAINT `fk3` FOREIGN KEY (`maloaisp`) REFERENCES `loaisp` (`maloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
