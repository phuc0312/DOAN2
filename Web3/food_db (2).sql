-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2023 lúc 01:57 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `food_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `role`, `status`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '1', 'active'),
(11, 'QL1', '7c222fb2927d828af22f592134e8932480637c0d', '2', 'active'),
(32, 'nv1', '7c222fb2927d828af22f592134e8932480637c0d', '3', 'active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_login_history`
--

CREATE TABLE `admin_login_history` (
  `id` int(100) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_login_history`
--

INSERT INTO `admin_login_history` (`id`, `admin_id`, `login_time`, `ip_address`) VALUES
(49, 1, '2023-11-28 06:49:47', '::1'),
(50, 11, '2023-11-28 07:00:24', '::1'),
(51, 1, '2023-11-28 07:08:03', '::1'),
(52, 32, '2023-11-28 07:08:22', '::1'),
(53, 32, '2023-11-28 14:39:23', '::1'),
(54, 11, '2023-11-28 23:50:50', '::1'),
(55, 32, '2023-11-28 23:53:53', '::1'),
(56, 11, '2023-11-29 00:00:19', '::1'),
(57, 32, '2023-11-29 00:31:25', '::1'),
(58, 1, '2023-12-04 07:45:17', '::1'),
(59, 11, '2023-12-05 12:01:18', '::1'),
(60, 32, '2023-12-05 12:06:20', '::1'),
(61, 32, '2023-12-05 15:44:23', '::1'),
(62, 11, '2023-12-05 23:40:43', '::1'),
(63, 11, '2023-12-05 23:45:30', '::1'),
(64, 1, '2023-12-05 23:58:51', '::1'),
(65, 32, '2023-12-06 00:42:42', '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `category_name`, `image`) VALUES
(18, 'Trà sữa', 'bubble-tea.png'),
(19, 'Bánh ngọt', 'cake.png'),
(20, 'Đồ ăn nhanh', 'cat-1.png'),
(21, 'Nước giải khác', 'cat-3.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(3, 1, 'hoang phuc', 'ph5208352@gmail.com', '1231231232', 'Hành tinh là thiên thể quay xung quanh một hằng tinh hay một tàn tích sao, có đủ khối lượng để nó có hình cầu hoặc hình gần cầu do chính lực hấp dẫn của nó gây nên, có khối lượng dưới khối lượng giới hạn để có thể diễn ra phản ứng hợp hạch (phản ứng nhiệt hạch) của deuterium, và đã hút sạch miền lân cận quanh nó như các vi thể hành tinh. Hệ Mặt Trời có tám hành tinh, xếp theo thứ tự khoảng cách từ gần nhất cho đến xa nhất so với mặt trời là Sao Thủy, Sao Kim, Trái Đất, Sao Hỏa, Sao Mộc, Sao Thổ,'),
(4, 79, 'admin', 'ph5208352@gmail.com', '0901234567', 'ădawdwa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `VAT` int(100) NOT NULL,
  `placed_on` datetime NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'wait',
  `order_status` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `VAT`, `placed_on`, `payment_status`, `order_status`, `note`) VALUES
(62, 79, 'phúc', '0901234567', '20004153@st.vlute.edu.vn', 'VNPAY', 'số 62, đường 3/2, khóm1, 29542, 855, 86', 'Trà vải (17000 x 1) - Bánh Muffin (25000 x 1) - ', 37800, 4200, '2023-12-06 07:49:11', 'wait', 'paid', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `stock` int(10) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `category_name`, `price`, `stock`, `detail`, `image`) VALUES
(35, 'Bánh croisant', 'Đồ ăn nhanh', 30000, 173, 'Bánh sừng bò còn được gọi là bánh croa-xăng, có nguồn gốc từ Áo, là một dạng bánh ăn sáng làm từ pâte feuilletée, được sản xuất từ bột mì, men, bơ, sữa, và muối. Bánh croissant đúng kiểu phải thật xốp, giòn và có thể xé ra từng lớp mỏng nhỏ. Bên trong ruộ', 'cr5.jpg'),
(36, 'Trà sữa khoai môn', 'Trà sữa', 30000, 166, 'Hương vị Khoai Môn được hòa cùng với sữa tạo nên thức uống thơm béo.', 'km5.png'),
(37, 'Khoai tây chiên', 'Đồ ăn nhanh', 25000, 92, 'Khoai tây chiên kiểu Pháp, hay French-fried potatoes là khoai tây chiên giòn cắt thành sợi hoặc hình que.', 'kt3.png'),
(38, 'Bánh flan', 'Bánh ngọt', 15000, 287, 'Bánh flan hay gọi thẳng theo tiếng Việt là bánh lăng hay caramen là loại bánh được hấp chín từ các nguyên liệu chính là trứng và sữa, caramel. Đây là một loại bánh xuất xứ từ nền ẩm thực châu Âu tuy hiện nay đã phổ biến tại nhiều nơi trên thế giới.', 'plan3.png'),
(39, 'Trà sữa socola', 'Trà sữa', 30000, 183, 'Trà sữa trân châu socola sẽ là một gợi ý hay để bạn thể hiện tình yêu đong đầy với nửa kia của mình.', 'socola2.jpg'),
(40, 'Bánh Muffin', 'Bánh ngọt', 25000, 193, 'Bánh nướng xốp là một sản phẩm nướng được chia thành từng phần riêng lẻ; tuy nhiên, thuật ngữ này có thể đề cập đến một trong hai mặt hàng riêng biệt: bánh mì dẹt có phần nổi lên được nướng và sau đó nấu trên vỉ nướng hoặc bánh mì nhanh được lên men hóa h', 'Ảnh chụp màn hình 2023-11-15 003351.png'),
(41, 'Trà vải', 'Nước giải khác', 20000, 290, 'Trà vải với vị ngọt thanh của vải, hòa trộn cùng chút chua chua của chanh, hương trà thơm nhẹ nhàng tao nhã tạo nên món uống hấp dẫn mọi lứa tuổi. Những quả vải căng tròn, mọng nước trên bề mặt, đặc biệt có khả năng giải khát, tiếp thêm năng lượng cho cơ ', 'Ảnh chụp màn hình 2023-11-15 003605.png'),
(42, 'Trà chanh xã', 'Nước giải khác', 25000, 291, 'Trà chanh sả là món thức uống thơm ngon, thanh nhiệt, giải cảm và hỗ trợ tăng sức đề kháng cao.', 'Ảnh chụp màn hình 2023-11-15 003900.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `image_url_2` varchar(255) DEFAULT NULL,
  `image_url_3` varchar(255) DEFAULT NULL,
  `image_url_4` varchar(255) DEFAULT NULL,
  `image_url_5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_url_2`, `image_url_3`, `image_url_4`, `image_url_5`) VALUES
(11, 35, 'cr1.png', 'cr2.jpg', 'cr3.jpg', 'cr4.png'),
(12, 36, 'km1.png', 'km2.jpg', 'km3.jpg', 'Ảnh chụp màn hình 2023-11-15 002123.png'),
(13, 37, 'kt2.jpg', 'kt1.jpg', 'kt4.jpg', 'kt5.jpg'),
(14, 38, 'plan4.png', 'plan5.png', 'plan1.png', 'plan2.jpg'),
(15, 39, 'socola4.jpg', 'socola3.jpg', 'socola5.png', 'sosola1.png'),
(16, 40, 'Ảnh chụp màn hình 2023-11-15 003336.png', 'Ảnh chụp màn hình 2023-11-15 003324.png', 'Ảnh chụp màn hình 2023-11-15 003310.png', 'Ảnh chụp màn hình 2023-11-15 003440.png'),
(17, 41, 'Ảnh chụp màn hình 2023-11-15 003543.png', 'Ảnh chụp màn hình 2023-11-15 003615.png', 'Ảnh chụp màn hình 2023-11-15 003557.png', 'Ảnh chụp màn hình 2023-11-15 003745.png'),
(18, 42, 'Ảnh chụp màn hình 2023-11-15 003848.png', 'Ảnh chụp màn hình 2023-11-15 003836.png', 'Ảnh chụp màn hình 2023-11-15 003828.png', 'Ảnh chụp màn hình 2023-11-15 003818.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `rating` int(5) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `id_order` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `rating`, `comment`, `created_at`, `status`, `id_order`) VALUES
(46, 35, 79, 5, '5', '2023-11-15 07:02:16', 'active', 19),
(47, 36, 79, 3, 'jkhsfjskdfnlknflkasnflkasnfa ạnd ada sda tưer r ưer fd sdf d fa sfasf f ầ', '2023-11-15 07:02:19', 'active', 19),
(48, 38, 79, 3, '3', '2023-11-15 07:02:24', 'active', 19),
(49, 39, 79, 4, '4', '2023-11-15 07:02:29', 'active', 19),
(50, 36, 77, 5, 'dâd ădawda đâ gsdgsd fadfaf ầdfd adfad ', '2023-11-20 11:56:22', 'active', 43),
(51, 36, 77, 5, 'dâd ădawda đâ gsdgsd fadfaf ầdfd adfad ', '2023-11-20 11:56:22', 'active', 43),
(52, 35, 79, 4, 'aaaaaaaaaaaaaaaaaaaaaaaa', '2023-11-24 08:01:05', 'active', 48),
(53, 40, 79, 5, 'sssssssssssssssssssssss', '2023-11-24 08:01:11', 'active', 48),
(54, 38, 79, 4, 'rrrrrrrrrrrrrrrrrrrrrr', '2023-11-24 08:01:16', 'active', 48),
(55, 39, 79, 3, 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '2023-11-24 08:01:21', 'active', 48);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `id` int(100) NOT NULL,
  `name_sale` varchar(255) NOT NULL,
  `products` varchar(255) NOT NULL,
  `discount_percentage` int(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sale`
--

INSERT INTO `sale` (`id`, `name_sale`, `products`, `discount_percentage`, `start_date`, `end_date`) VALUES
(9, 'trà', 'Trà vải,Trà chanh xã,', 15, '2023-12-05', '2023-12-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `caption`, `name`, `img`) VALUES
(6, 'Mua ngay', 'Trà sữa', 'km1.png'),
(7, 'Mua ngay', 'Trà sữa socola', 'sosola1.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `reset_token` varchar(8) DEFAULT NULL,
  `reset_token_expiration` datetime DEFAULT NULL,
  `last_password_reset_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `number`, `password`, `address`, `status`, `reset_token`, `reset_token_expiration`, `last_password_reset_time`) VALUES
(1, 'Hoàng Phúc', 'ph5208352@gmail.com', '0907951936', 'ecd6a010209a0dcd2d60087a67210d98c73a8c56', 'ád, ád, ád, Xã Tân Mỹ, Huyện Trà Ôn, Tỉnh Vĩnh Long', 'active', NULL, NULL, '2023-11-14 15:08:48'),
(46, 'Hoàng Phúc', 'a123456@gmail.com', '0901111111', '08f4117df552d212e6aca8281a87f735195ddb5e', 'vĩnh long', 'active', NULL, NULL, '2023-10-26 20:22:02'),
(47, 'Nguyen Van', 'a123456@gmail.com', '0901111111', '08f4117df552d212e6aca8281a87f735195ddb5e', 'Vĩnh Long', 'block', NULL, NULL, '2023-10-26 20:22:02'),
(49, 'Le Van', 'c123456@gmail.com', '0903333333', 'b0976e6722f14798a7bad2fb3a665cc86cb257fc', 'Ho Chi Minh City', 'block', NULL, NULL, '2023-10-26 20:24:38'),
(50, 'Pham Van', 'd123456@gmail.com', '0904444444', '123', 'Da Nang', 'active', NULL, NULL, NULL),
(51, 'Vu Van', 'e123456@gmail.com', '0905555555', '4d994c152371aca2f796b0f9f27c2c91ce5018ea', 'Can Tho', 'block', NULL, NULL, '2023-10-26 20:25:17'),
(52, 'Trinh Van', 'f123456@gmail.com', '0906666666', '123', 'Quang Ninh', 'active', NULL, NULL, NULL),
(53, 'Do Van', 'g123456@gmail.com', '0907777777', '123', 'Hue', 'block', NULL, NULL, NULL),
(54, 'Ho Van', 'h123456@gmail.com', '0908888888', '123', 'Phu Yen', 'active', NULL, NULL, NULL),
(55, 'Ngo Van', 'i123456@gmail.com', '0909999999', '123', 'Long An', 'active', NULL, NULL, NULL),
(56, 'Bui Van', 'j123456@gmail.com', '0901010101', '123', 'Nam Dinh', 'active', NULL, NULL, NULL),
(57, 'Lam Van', 'k123456@gmail.com', '0902020202', '123', 'Nha Trang', 'active', NULL, NULL, NULL),
(58, 'Duong Van', 'l123456@gmail.com', '0903030303', '123', 'Vung Tau', 'active', NULL, NULL, NULL),
(59, 'Nguyen Van', 'm123456@gmail.com', '0904040404', '123', 'Bac Ninh', 'active', NULL, NULL, NULL),
(60, 'Tran Van', 'n123456@gmail.com', '0905050505', '123', 'Tien Giang', 'active', NULL, NULL, NULL),
(61, 'Le Van', 'o123456@gmail.com', '0906060606', '123', 'Binh Duong', 'active', NULL, NULL, NULL),
(62, 'Pham Van', 'p123456@gmail.com', '0907070707', '123', 'Hai Phong', 'active', NULL, NULL, NULL),
(63, 'Vu Van', 'q123456@gmail.com', '0908080808', '123', 'Can Tho', 'active', NULL, NULL, NULL),
(64, 'Trinh Van', 'r123456@gmail.com', '0909090909', '123', 'Da Lat', 'active', NULL, NULL, NULL),
(65, 'Do Van', 's123456@gmail.com', '0901212121', '123', 'Hue', 'active', NULL, NULL, NULL),
(66, 'Ho Van', 't123456@gmail.com', '0902323232', '123', 'Phu Yen', 'active', NULL, NULL, NULL),
(67, 'Ngo Van', 'u123456@gmail.com', '0903434343', '123', 'Long An', 'active', NULL, NULL, NULL),
(68, 'Bui Van', 'v123456@gmail.com', '0904545454', '123', 'Bac Ninh', 'active', NULL, NULL, NULL),
(69, 'Lam Van', 'w123456@gmail.com', '0905656565', '123', 'Nha Trang', 'active', NULL, NULL, NULL),
(70, 'Duong Van', 'x123456@gmail.com', '0906767676', '123', 'Vung Tau', 'active', NULL, NULL, NULL),
(71, 'Nguyen Van', 'y123456@gmail.com', '0907878787', '123', 'Quang Ninh', 'active', NULL, NULL, NULL),
(72, 'Tran Van', 'z123456@gmail.com', '0908989898', '123', 'Hanoi', 'active', NULL, NULL, NULL),
(73, 'Le Van', 'user1@gmail.com', '0901010102', '123', 'Ho Chi Minh City', 'active', NULL, NULL, NULL),
(74, 'Pham Van', 'user2@gmail.com', '0901010103', '123', 'Da Nang', 'active', NULL, NULL, NULL),
(75, 'Vu Van', 'user3@gmail.com', '0901010104', '123', 'Can Tho', 'active', NULL, NULL, NULL),
(76, 'Trinh Van', 'user4@gmail.com', '0901010105', '123', 'Vung Tau', 'active', NULL, NULL, NULL),
(77, 'hoang phuc', 'ph52083522@gmail.com', '1234567894', '8cb2237d0679ca88db6464eac60da96345513964', '', 'active', NULL, NULL, NULL),
(79, 'phúc', '20004153@st.vlute.edu.vn', '0901234567', '7c222fb2927d828af22f592134e8932480637c0d', 'số 62, đường 3/2, khóm1, 29542, 855, 86', 'active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_login_history`
--

CREATE TABLE `user_login_history` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_login_history`
--

INSERT INTO `user_login_history` (`id`, `user_id`, `login_time`, `ip_address`) VALUES
(1, 69, '2023-11-07 16:07:09', '192.168.1.1'),
(2, 69, '2023-11-01 16:07:09', '192.168.1.1'),
(3, 50, '2023-11-02 16:02:44', '123'),
(4, 79, '2023-11-28 06:12:48', '::1'),
(5, 79, '2023-11-28 06:12:56', '::1'),
(6, 79, '2023-11-28 06:13:59', '::1'),
(7, 79, '2023-11-28 06:25:21', '::1'),
(8, 79, '2023-11-28 06:31:15', '::1'),
(9, 79, '2023-11-28 07:25:34', '::1'),
(10, 79, '2023-11-28 14:44:57', '::1'),
(11, 79, '2023-11-28 14:52:31', '::1'),
(12, 79, '2023-11-28 23:50:16', '::1'),
(13, 79, '2023-11-29 00:03:00', '::1'),
(14, 79, '2023-12-05 15:41:33', '::1'),
(15, 79, '2023-12-05 23:43:28', '::1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_login_history`
--
ALTER TABLE `admin_login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_login_history_ibfk_1` (`admin_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_name` (`category_name`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_login_history`
--
ALTER TABLE `user_login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `admin_login_history`
--
ALTER TABLE `admin_login_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `user_login_history`
--
ALTER TABLE `user_login_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin_login_history`
--
ALTER TABLE `admin_login_history`
  ADD CONSTRAINT `admin_login_history_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_category_name` FOREIGN KEY (`category_name`) REFERENCES `category` (`category_name`);

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `user_login_history`
--
ALTER TABLE `user_login_history`
  ADD CONSTRAINT `user_login_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
