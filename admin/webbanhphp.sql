-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 11, 2021 lúc 04:25 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhphp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name_ad` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `email`, `name_ad`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'Vũ Kim Tùng', '123456', '2021-07-22 08:10:35', '2021-07-22 08:10:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id_cate` int(11) NOT NULL,
  `name_cate` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id_cate`, `name_cate`, `created_at`, `updated_at`) VALUES
(1, 'Bánh Kem', '2021-03-26 13:27:40', '2021-03-26 13:27:40'),
(2, 'Pizza', '2021-03-26 14:01:53', '2021-03-26 14:01:53'),
(3, 'Bánh Su Kem', '2021-03-26 20:13:10', '2021-03-26 20:13:10'),
(4, 'Bánh Ngọt', '2021-03-26 20:15:10', '2021-03-26 20:15:10'),
(5, 'Bánh Cupcake', '2021-04-01 18:49:56', '2021-04-01 18:49:56'),
(7, 'Bánh Mặn', '2021-04-27 14:06:21', '2021-04-27 14:06:21'),
(12, 'Bánh Mì', '2021-08-24 15:37:58', '2021-08-24 15:37:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonnhap`
--

CREATE TABLE `chitietdonnhap` (
  `id_ctdn` int(11) NOT NULL,
  `id_donnhap` int(11) NOT NULL,
  `id_nglieu` int(11) NOT NULL,
  `sluong` int(11) NOT NULL,
  `dgia` int(11) NOT NULL,
  `dvt` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietdonnhap`
--

INSERT INTO `chitietdonnhap` (`id_ctdn`, `id_donnhap`, `id_nglieu`, `sluong`, `dgia`, `dvt`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 20000, 'Kg', '2021-10-11 16:42:06', '2021-10-11 16:42:06'),
(2, 2, 2, 1000, 3000, 'Quả', '2021-10-11 17:18:43', '2021-10-11 17:18:43'),
(3, 3, 3, 100, 20000, 'Kg', '2021-10-13 14:45:27', '2021-10-13 14:45:27'),
(11, 11, 5, 10, 25000, 'Lít', '2021-11-01 14:54:01', '2021-11-01 14:54:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `id_ctsp` int(11) NOT NULL,
  `id_nl` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id_com` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `review` mediumtext NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id_com`, `idsp`, `id_kh`, `review`, `rating`, `created_at`, `updated_at`) VALUES
(9, 12, 275, 'Sản phẩm rất ngon. Sẽ tiếp tục ủng hộ cửa hàng!!!', 5, '2021-07-22 07:56:54', '2021-07-22 07:56:54'),
(10, 12, 271, 'Sản phẩm OK!', 4, '2021-07-22 08:08:39', '2021-07-22 08:08:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `msg` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id_contact`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(6, 'khachhang@gmail.com', 'Chúc cửa hàng ngày càng thành công!!!', '2021-08-26 15:05:33', '2021-08-26 15:05:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id_cust` int(11) NOT NULL,
  `email_cust` varchar(255) NOT NULL,
  `name_cust` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone_cust` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id_cust`, `email_cust`, `name_cust`, `password`, `phone_cust`, `created_at`, `updated_at`) VALUES
(271, 'kimtung204@gmail.com', 'Tùng Kim', '123456', '0915116104', '2021-07-19 04:42:54', '2021-07-19 04:42:54'),
(275, 'vukimtung204@gmail.com', 'Vũ Kim Tùng', '123456', '123456785', '2021-07-22 07:22:25', '2021-07-22 07:22:25'),
(279, 'tungb1706891@student.ctu.edu.vn', 'Kim Tùng', '123456', '0123478954', '2021-08-26 16:42:26', '2021-08-26 16:42:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dc_khachhang`
--

CREATE TABLE `dc_khachhang` (
  `id_dc` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `diachi_kh` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dc_khachhang`
--

INSERT INTO `dc_khachhang` (`id_dc`, `id_kh`, `diachi_kh`, `created_at`, `updated_at`) VALUES
(3, 271, '90/1 Trung Hải, Đại Hải, Kế Sách, Sóc Trăng', '2021-10-23 17:08:40', '2021-10-23 17:08:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donnhaphang`
--

CREATE TABLE `donnhaphang` (
  `id_donnhap` int(11) NOT NULL,
  `id_ncc` int(11) NOT NULL,
  `id_nvien` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `ngaynhap` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donnhaphang`
--

INSERT INTO `donnhaphang` (`id_donnhap`, `id_ncc`, `id_nvien`, `thanhtien`, `ngaynhap`, `updated_at`) VALUES
(1, 1, 4, 2000000, '2021-10-11 16:42:06', '2021-10-11 16:42:06'),
(2, 4, 4, 3000000, '2021-10-11 17:18:43', '2021-10-11 17:18:43'),
(3, 1, 4, 2000000, '2021-10-13 14:45:27', '2021-10-13 14:45:27'),
(11, 4, 7, 250000, '2021-11-01 14:54:01', '2021-11-01 14:54:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giagiam`
--

CREATE TABLE `giagiam` (
  `id_gg` int(11) NOT NULL,
  `phantramgiam` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giagiam`
--

INSERT INTO `giagiam` (`id_gg`, `phantramgiam`, `created_at`, `updated_at`) VALUES
(1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 5, '2021-09-27 16:04:58', '2021-09-27 16:04:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguyenlieu`
--

CREATE TABLE `nguyenlieu` (
  `id_nl` int(11) NOT NULL,
  `ten_nl` text NOT NULL,
  `dvt` varchar(100) NOT NULL,
  `sl` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguyenlieu`
--

INSERT INTO `nguyenlieu` (`id_nl`, `ten_nl`, `dvt`, `sl`, `created_at`, `updated_at`) VALUES
(1, 'Bột mì', 'Kg', 100, '2021-10-11 16:42:06', '2021-10-11 16:42:06'),
(2, 'Trứng gà', 'Quả', 1000, '2021-10-11 17:18:43', '2021-10-11 17:18:43'),
(3, 'Bột gạo', 'Kg', 100, '2021-10-13 14:45:27', '2021-10-13 14:45:27'),
(5, 'Hương dâu tổng hợp', 'Lít', 0, '2021-11-01 14:54:01', '2021-11-01 14:54:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id_n` int(11) NOT NULL,
  `ten_n` varchar(255) NOT NULL,
  `diachi_n` text NOT NULL,
  `dienthoai_n` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`id_n`, `ten_n`, `diachi_n`, `dienthoai_n`, `created_at`, `updated_at`) VALUES
(1, 'Nhà cung cấp1', 'Đại Hải, Kế Sách, Sóc Trăng', '0396875194', '2021-08-26 14:42:19', '2021-08-26 14:42:19'),
(4, 'Nhà cung cấp 2', 'Đại Hải, KS, ST', '0394578962', '2021-09-27 17:09:58', '2021-09-27 17:09:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id_nv` int(11) NOT NULL,
  `ten_nv` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email_nv` varchar(255) NOT NULL,
  `gioitinh` varchar(20) NOT NULL,
  `ngaysinh` varchar(20) NOT NULL,
  `dienthoai_nv` varchar(20) NOT NULL,
  `diachi_nv` text NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `id_quyen` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id_nv`, `ten_nv`, `password`, `email_nv`, `gioitinh`, `ngaysinh`, `dienthoai_nv`, `diachi_nv`, `avatar`, `id_quyen`, `created_at`, `updated_at`) VALUES
(4, 'Admin', '123456', 'admin@gmail.com', 'Nam', '1999-01-01', '0394526149', 'Sóc Trăng', 'uploads/nhanvien/slider3.jpg', 10, '2021-08-25 17:03:07', '2021-08-25 17:03:07'),
(5, 'Nguyễn Văn A', '123456', 'nhanvien1@gmail.com', 'Nam', '2000-05-17', '0123478956', 'Ninh Kiều, Cần Thơ', 'uploads/nhanvien/111.jpg', 10, '2021-08-26 14:23:18', '2021-08-26 14:23:18'),
(7, 'nhân viên 2', '123456', 'nhanvien2@gmail.com', 'Khác', '2000-06-21', '0392498576', 'Cần Thơ', 'uploads/nhanvien/pizza.jpg', 2, '2021-09-27 17:25:21', '2021-09-27 17:25:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `total` int(11) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_nvien` int(11) NOT NULL,
  `delivery_date` varchar(20) NOT NULL,
  `img_confirm` varchar(255) NOT NULL,
  `id_shipper` int(11) NOT NULL,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id_order`, `customer_id`, `address`, `phone`, `total`, `payment`, `status`, `id_nvien`, `delivery_date`, `img_confirm`, `id_shipper`, `date_order`, `updated_at`) VALUES
(93, 271, 'Trung Hải, Đại, Hải, KS, ST', '0394539094', 182000, 'Tiền mặt', 'Đã xác nhận', 5, '', '', 3, '2021-10-09 10:16:23', '2021-10-09 10:16:23'),
(105, 271, '90/1 Trung Hải, Đại Hải, Kế Sách, Sóc Trăng', '04587966214', 100000, 'Paypal', 'Đang giao', 5, '', '', 3, '2021-10-23 16:04:16', '2021-10-23 16:04:16'),
(106, 271, '90/1 Trung Hải, Đại Hải, Kế Sách, Sóc Trăng', '0394539123', 30000, 'Tiền mặt', 'Đã xác nhận', 5, '', '', 0, '2021-11-18 17:27:51', '2021-11-18 17:27:51'),
(107, 271, '90/1 Trung Hải, Đại Hải, Kế Sách, Sóc Trăng', '0915116109', 100000, 'Paypal', 'Đơn hàng mới', 0, '', '', 0, '2021-12-08 16:46:44', '2021-12-08 16:46:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id_orderdetail` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id_orderdetail`, `order_id`, `product_id`, `quantity`, `unitprice`, `created_at`, `updated_at`) VALUES
(15, 93, 8, 2, 76000, '2021-10-09 10:16:23', '2021-10-09 10:16:23'),
(16, 93, 15, 1, 30000, '2021-10-09 10:16:23', '2021-10-09 10:16:23'),
(29, 105, 14, 1, 100000, '2021-10-23 16:04:16', '2021-10-23 16:04:16'),
(30, 106, 15, 1, 30000, '2021-11-18 17:27:51', '2021-11-18 17:27:51'),
(31, 107, 23, 4, 25000, '2021-12-08 16:46:44', '2021-12-08 16:46:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset`
--

CREATE TABLE `password_reset` (
  `id_repass` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `password_reset`
--

INSERT INTO `password_reset` (`id_repass`, `email`, `token`, `created_at`, `updated_at`) VALUES
(2, 'kimtung204@gmail.com', '94ad9f5f4f0ef8336278f10e9805452661a6d5b6ccd10', '2021-10-22 16:05:25', '2021-10-22 16:05:25'),
(25, 'vukimtung204@gmail.com', '982d5e8d8234fb584c43ce632fe2b6ee619a588251024', '2021-11-21 14:31:12', '2021-11-21 14:31:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_pro` int(11) NOT NULL,
  `name_pro` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `id_giagiam` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `picture` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id_pro`, `name_pro`, `price`, `id_giagiam`, `description`, `picture`, `category_id`, `unit`, `created_at`, `updated_at`) VALUES
(8, 'Bánh kem socola dâu tây', 80000, 7, 'Bánh kem phủ socola chảy kèm theo là dâu tây trên mặt bánh,.....\r\n\r\nKích thước: 25cm\r\n\r\nBánh kem mà quý khách đã đặt sẽ được giao tới tận tay người nhận.\r\n\r\nNội dung viết lên bánh kem (theo yêu cầu của người đặt) sẽ được viết bằng tay (thợ làm bánh) lên bánh.\r\n\r\nNgoài ra, quý khách có thể yêu cầu nội dung ghi (in) lên thiệp (miễn phí) gửi kèm bánh.\r\n\r\nĐèn cầy (nến) số theo tuổi của người nhận sẽ gửi tặng miễn phí kèm theo bánh.', 'uploads/products/banhkemdau.jpeg', 1, 'Cái', '2021-03-26 21:43:25', '2021-03-26 21:43:25'),
(10, 'Pizza hải sản', 80000, 1, 'Bánh là sự kết hợp của các nguyên liệu cùng với hải sản tươi ngon,....\r\n', 'uploads/products/pizza.jpg', 2, 'Cái', '2021-03-27 05:26:37', '2021-03-27 05:26:37'),
(11, 'Bánh cupcake socola', 30000, 1, 'Về cơ bản, cupcake là một chiếc bánh kem thu nhỏ, do có 2 phần rõ rệt là phần bánh và phần kem được trang trí công phu.\r\n\r\nCách làm cupcake cũng khá tương tự như làm bánh kem nhưng khi đổ bột vào nướng, người ta đổ vào từng khuôn nhỏ có lót giấy thay vì đổ vào khuôn lớn.\r\n\r\nMón bánh này thường khá nhẹ, ngọt, mềm, được phủ kem và trang trí cầu kỳ bên trên.\r\n\r\nCó lẽ vì công đoạn này mà món cupcake thường tạo cho người thưởng thức cảm giác trịnh trọng hơn so với muffin.\r\n\r\nChiều cao của cupcake khá khiêm tốn, do bánh thường chỉ được làm bằng bột mì trắng, chất bánh khá nhẹ và không có khả năng chịu được sức nặng của các loại kem hoặc đồ trang trí khối lượng tương đối lớn.', 'uploads/products/cupcake2.jpg', 5, 'Hộp', '2021-03-28 19:26:55', '2021-03-28 19:26:55'),
(12, 'Bánh ngọt socola dâu tây', 25000, 1, 'Bánh kem socola với cốt bánh vani xen lẫn là socola, bánh được phủ lên lớp kem socola đen ngọt ngào, đi kèm là những quả dâu tây tạo nên sự kết hợp hoàn hảo cho chiếc bánh ấn tượng này.', 'uploads/products/banhngot.jpg', 4, 'Cái', '2021-03-28 19:28:57', '2021-03-28 19:28:57'),
(14, 'Bánh kem socola', 100000, 1, 'Bánh kem socola với cốt bánh vani 4 lớp, bánh được phủ lên lớp kem socola đen ngọt ngào, trang trí trên mặt bánh là những quả Cherry tạo nên sự kết hợp hoàn hảo cho chiếc bánh ấn tượng này.', 'uploads/products/hinh2.jpg', 1, 'Cái', '2021-04-21 18:31:16', '2021-04-21 18:31:16'),
(15, 'Bánh Tiramisu – Ý', 30000, 1, 'Bánh là sự kết hợp hài hòa giữa rượu nhẹ marsala, trứng, kem phô mai mascarpone và café. Khi thưởng thức, vị bánh mềm mại như tan chảy đều trên đầu lưỡi nhưng vẫn mang vị xốp của bánh gato.\r\n', 'uploads/products/111.jpg', 4, 'Cái', '2021-04-23 07:34:28', '2021-04-23 07:34:28'),
(16, 'Bánh bông lan trứng muối', 90000, 7, 'Nếu ai đã từng thưởng thức qua những chiếc bánh bông lan trứng muối chà bông phô mai thì chắc hẳn sẽ không bao giờ quên được cái hương vị của nó. Một chiếc bánh bông lan trứng muối ngon là sự kết tinh của vị mằn mặn bùi bùi của trứng muối cùng chà bông thêm vào đó là miếng phô mai béo béo hòa cùng vị ngọt thanh của chiếc bánh khiến ai cũng say mê.', 'uploads/products/productsbanhbonglantrungmuoi.jpg', 7, 'Cái', '2021-05-23 16:33:40', '2021-05-23 16:33:40'),
(17, 'Bánh su kem dâu tây', 30000, 1, 'Vị kem béo ngậy, ngọt mát hòa quyện cùng vỏ bánh mềm và thơm phức hòa tan trong miệng , cùng với đó là sự kết hợp thêm của dâu tây làm cho bánh càng thêm ngon.', 'uploads/products/sukemdau.jpg', 3, 'Hộp', '2021-05-23 16:36:54', '2021-05-23 16:36:54'),
(18, 'Bánh cupcake kem', 30000, 1, 'Về cơ bản, cupcake là một chiếc bánh kem thu nhỏ, do có 2 phần rõ rệt là phần bánh và phần kem được trang trí công phu. Cách làm cupcake cũng khá tương tự như làm bánh kem nhưng khi đổ bột vào nướng, người ta đổ vào từng khuôn nhỏ có lót giấy thay vì đổ vào khuôn lớn. Món bánh này thường khá nhẹ,...', 'uploads/products/cupcake.jpg', 5, 'Hộp', '2021-05-23 16:47:09', '2021-05-23 16:47:09'),
(20, 'Pizza Miami', 90000, 1, 'Sự kết hợp nguyên liệu cùng với phô mai nóng chảy tạo ra hương vị thơm ngon cho bánh.', 'uploads/products/pizza-miami.jpg', 2, 'Cái', '2021-05-23 16:53:50', '2021-05-23 16:53:50'),
(23, 'Bánh ngọt socola', 25000, 1, 'Bánh ngọt socola với cốt bánh vani 4 lớp, bánh được phủ lên lớp kem socola đen ngọt ngào, trang trí trên mặt bánh là những miếng socola tạo nên sự kết hợp hoàn hảo cho chiếc bánh ấn tượng này.', 'uploads/products/hinh4.jpg', 4, 'Cái', '2021-08-20 17:08:00', '2021-08-20 17:08:00'),
(26, 'Bánh Sinh Nhật', 100000, 1, 'Kích thước: 25cm Bánh kem mà quý khách đã đặt sẽ được giao tới tận tay người nhận. Nội dung viết lên bánh kem (theo yêu cầu của người đặt) sẽ được viết bằng tay (thợ làm bánh) lên bánh. Ngoài ra, quý khách có thể yêu cầu nội dung ghi (in) lên thiệp (miễn phí) gửi kèm bánh. Đèn cầy (nến) số theo tuổi của người nhận sẽ gửi tặng miễn phí kèm theo bánh.', 'uploads/products/banhkem2.jpg', 1, 'Cái', '2021-09-27 16:41:22', '2021-09-27 16:41:22'),
(28, 'Bánh mì mặn', 15000, 1, 'Bánh mì mặn thơm ngon, sự kết hợp hoàn hảo của bột bánh cùng các nguyên liệu chà bông, bơ,  xúc xích tạo nên hương vị hào quyện,...', 'uploads/products/banhmi1.jpg', 12, 'Cái', '2021-10-07 16:04:54', '2021-10-07 16:04:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id_r` int(11) NOT NULL,
  `ten_r` varchar(100) NOT NULL,
  `mota_r` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id_r`, `ten_r`, `mota_r`, `created_at`, `updated_at`) VALUES
(1, 'Xem', 'Nhân viên với quyền này được phép xem thông tin.', '2021-08-24 15:39:27', '2021-08-24 15:39:27'),
(2, 'Sửa', 'Nhân viên với quyền này được phép sửa thông tin', '2021-08-24 16:34:55', '2021-08-24 16:34:55'),
(4, 'Xóa', 'Nhân viên với quyền này được phép xóa thông tin.', '2021-08-24 16:47:31', '2021-08-24 16:47:31'),
(10, 'Toàn quyền', 'Được toàn quyền trên hệ thống bao gồm: xem, sửa, xóa thông tin.', '2021-10-19 14:49:18', '2021-10-19 14:49:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipper`
--

CREATE TABLE `shipper` (
  `id_s` int(11) NOT NULL,
  `ten_s` varchar(255) NOT NULL,
  `email_s` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `ngaysinh_s` varchar(20) NOT NULL,
  `gioitinh_s` varchar(20) NOT NULL,
  `dienthoai_s` varchar(20) NOT NULL,
  `diachi_s` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `shipper`
--

INSERT INTO `shipper` (`id_s`, `ten_s`, `email_s`, `password`, `ngaysinh_s`, `gioitinh_s`, `dienthoai_s`, `diachi_s`, `avatar`, `created_at`, `updated_at`) VALUES
(3, 'Shipper 1', 'shipper1@gmail.com', '123456', '2001-04-16', 'Nam', '0123547895', 'Đại Hải, Kế Sách, Sóc Trăng', 'uploads/shipper/banhngot.jpg', '2021-08-27 14:28:43', '2021-08-27 14:28:43'),
(4, 'Shipper 2', 'shipper2@gmail.com', '123456', '1995-12-05', 'Nam', '0394875941', 'Sóc Trăng', 'uploads/shipper/banhngot.jpg', '2021-09-27 17:36:45', '2021-09-27 17:36:45');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cate`);

--
-- Chỉ mục cho bảng `chitietdonnhap`
--
ALTER TABLE `chitietdonnhap`
  ADD PRIMARY KEY (`id_ctdn`),
  ADD KEY `FK_ctdn_dn` (`id_donnhap`),
  ADD KEY `FK_ctdn_nl` (`id_nglieu`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`id_ctsp`),
  ADD KEY `FK_ctsp_nl` (`id_nl`),
  ADD KEY `FK_ctsp_sp` (`idsp`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_com`),
  ADD KEY `FK_comment_sp` (`idsp`),
  ADD KEY `FK_comment_kh` (`id_kh`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_cust`);

--
-- Chỉ mục cho bảng `dc_khachhang`
--
ALTER TABLE `dc_khachhang`
  ADD PRIMARY KEY (`id_dc`),
  ADD KEY `FK_DC_KH` (`id_kh`);

--
-- Chỉ mục cho bảng `donnhaphang`
--
ALTER TABLE `donnhaphang`
  ADD PRIMARY KEY (`id_donnhap`),
  ADD KEY `FK_pn_nv` (`id_nvien`),
  ADD KEY `FK_pn_ncc` (`id_ncc`);

--
-- Chỉ mục cho bảng `giagiam`
--
ALTER TABLE `giagiam`
  ADD PRIMARY KEY (`id_gg`);

--
-- Chỉ mục cho bảng `nguyenlieu`
--
ALTER TABLE `nguyenlieu`
  ADD PRIMARY KEY (`id_nl`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id_n`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id_nv`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `FK_order_cust` (`customer_id`),
  ADD KEY `FK_order_shipper` (`id_shipper`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id_orderdetail`),
  ADD KEY `FK_orderdetail_order` (`order_id`),
  ADD KEY `FK_orderdetail_product` (`product_id`);

--
-- Chỉ mục cho bảng `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id_repass`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_pro`),
  ADD KEY `FK_product_cate` (`category_id`),
  ADD KEY `FK_pro_giagiam` (`id_giagiam`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_r`);

--
-- Chỉ mục cho bảng `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`id_s`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `chitietdonnhap`
--
ALTER TABLE `chitietdonnhap`
  MODIFY `id_ctdn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `id_ctsp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id_cust` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT cho bảng `dc_khachhang`
--
ALTER TABLE `dc_khachhang`
  MODIFY `id_dc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `donnhaphang`
--
ALTER TABLE `donnhaphang`
  MODIFY `id_donnhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `giagiam`
--
ALTER TABLE `giagiam`
  MODIFY `id_gg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nguyenlieu`
--
ALTER TABLE `nguyenlieu`
  MODIFY `id_nl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id_n` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id_nv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id_orderdetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id_repass` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id_r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `shipper`
--
ALTER TABLE `shipper`
  MODIFY `id_s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dc_khachhang`
--
ALTER TABLE `dc_khachhang`
  ADD CONSTRAINT `FK_DC_KH` FOREIGN KEY (`id_kh`) REFERENCES `customers` (`id_cust`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
