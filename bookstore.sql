-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:8889
-- Thời gian đã tạo: Th4 21, 2025 lúc 12:26 PM
-- Phiên bản máy phục vụ: 8.0.40
-- Phiên bản PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookstore`
--
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bookstore`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `category_id` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `price`, `image`, `description`, `category_id`, `updated_at`, `deleted_at`) VALUES
(1, 'Lập trình PHP', 'Nguyễn Văn A', 150000.00, 'images/1984.jpg', 'Cuốn sách cơ bản về PHP.', 2, '2025-04-17 15:24:13', NULL),
(2, 'HTML & CSS', 'Trần Thị B', 120000.00, 'images/1984.jpg', 'Học thiết kế web dễ dàng.', 1, '2025-04-17 15:24:13', NULL),
(4, 'Doraemon Tập 1', 'Fujiko F. Fujio', 30000.00, 'images/1984.jpg', 'Truyện tranh thiếu nhi nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(5, 'Toán Lớp 10', 'Bộ Giáo dục', 50000.00, 'images/1984.jpg', 'Sách giáo khoa Toán lớp 10.', 2, '2025-04-17 15:24:13', NULL),
(6, 'Tự học JavaScript', 'Nguyễn Văn C', 200000.00, 'images/1984.jpg', 'Học JavaScript từ cơ bản đến nâng cao.', 2, '2025-04-17 15:24:13', NULL),
(7, 'Harry Potter và Hòn Đá Phù Thủy', 'J.K. Rowling', 250000.00, 'images/1984.jpg', 'Tiểu thuyết giả tưởng nổi tiếng thế giới.', 5, '2025-04-17 15:24:13', NULL),
(8, 'Conan Tập 100', 'Gosho Aoyama', 35000.00, 'images/1984.jpg', 'Truyện tranh trinh thám nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(9, 'Ngữ Văn Lớp 9', 'Bộ Giáo dục', 45000.00, 'images/1984.jpg', 'Sách giáo khoa Ngữ Văn lớp 9.', 2, '2025-04-17 15:24:13', NULL),
(10, 'Nhà Giả Kim', 'Paulo Coelho', 120000.00, 'images/1984.jpg', 'Tiểu thuyết truyền cảm hứng.', 3, '2025-04-17 15:24:13', NULL),
(11, 'Dế Mèn Phiêu Lưu Ký', 'Tô Hoài', 80000.00, 'images/1984.jpg', 'Tác phẩm văn học thiếu nhi kinh điển.', 4, '2025-04-17 15:24:13', NULL),
(12, 'Lịch Sử Lớp 12', 'Bộ Giáo dục', 55000.00, 'images/1984.jpg', 'Sách giáo khoa Lịch Sử lớp 12.', 2, '2025-04-17 15:24:13', NULL),
(13, 'Truyện Kiều', 'Nguyễn Du', 90000.00, 'images/1984.jpg', 'Tác phẩm văn học cổ điển Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(14, 'Tắt Đèn', 'Ngô Tất Tố', 85000.00, 'images/1984.jpg', 'Tiểu thuyết hiện thực Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(15, 'One Piece Tập 102', 'Eiichiro Oda', 40000.00, 'images/1984.jpg', 'Truyện tranh phiêu lưu nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(16, 'Sapiens: Lược Sử Loài Người', 'Yuval Noah Harari', 300000.00, 'images/1984.jpg', 'Cuốn sách lịch sử nhân loại.', 6, '2025-04-17 15:24:13', NULL),
(17, 'Học Python Cơ Bản', 'Nguyễn Văn D', 180000.00, 'images/1984.jpg', 'Sách học lập trình Python cho người mới.', 2, '2025-04-17 15:24:13', NULL),
(18, 'Bí Mật Tư Duy Triệu Phú', 'T. Harv Eker', 150000.00, 'images/1984.jpg', 'Sách phát triển bản thân.', 7, '2025-04-17 15:24:13', NULL),
(19, 'Chuyện Con Mèo Dạy Hải Âu Bay', 'Luis Sepúlveda', 95000.00, 'images/1984.jpg', 'Truyện thiếu nhi ý nghĩa.', 4, '2025-04-17 15:24:13', NULL),
(20, 'Lược Sử Thời Gian', 'Stephen Hawking', 220000.00, 'images/1984.jpg', 'Sách khoa học nổi tiếng.', 8, '2025-04-17 15:24:13', NULL),
(21, 'Đắc Nhân Tâm', 'Dale Carnegie', 130000.00, 'images/1984.jpg', 'Sách kỹ năng sống kinh điển.', 7, '2025-04-17 15:24:13', NULL),
(22, 'Doraemon Tập 1', 'Fujiko F. Fujio', 35000.00, 'images/1984.jpg', 'Truyện tranh thiếu nhi nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(23, 'Doraemon Tập 2', 'Fujiko F. Fujio', 35000.00, 'images/1984.jpg', 'Truyện tranh thiếu nhi nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(24, 'Doraemon Tập 3', 'Fujiko F. Fujio', 35000.00, 'images/1984.jpg', 'Truyện tranh thiếu nhi nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(25, 'Doraemon Tập 4', 'Fujiko F. Fujio', 35000.00, 'images/1984.jpg', 'Truyện tranh thiếu nhi nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(26, 'Doraemon Tập 5', 'Fujiko F. Fujio', 35000.00, 'images/1984.jpg', 'Truyện tranh thiếu nhi nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(27, 'Conan Tập 1', 'Gosho Aoyama', 35000.00, 'images/1984.jpg', 'Truyện tranh trinh thám nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(28, 'Conan Tập 2', 'Gosho Aoyama', 35000.00, 'images/1984.jpg', 'Truyện tranh trinh thám nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(29, 'Conan Tập 3', 'Gosho Aoyama', 35000.00, 'images/1984.jpg', 'Truyện tranh trinh thám nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(30, 'Conan Tập 4', 'Gosho Aoyama', 35000.00, 'images/1984.jpg', 'Truyện tranh trinh thám nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(31, 'Conan Tập 5', 'Gosho Aoyama', 35000.00, 'images/1984.jpg', 'Truyện tranh trinh thám nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(32, 'One Piece Tập 1', 'Eiichiro Oda', 40000.00, 'images/1984.jpg', 'Truyện tranh phiêu lưu nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(33, 'One Piece Tập 2', 'Eiichiro Oda', 40000.00, 'images/1984.jpg', 'Truyện tranh phiêu lưu nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(34, 'One Piece Tập 3', 'Eiichiro Oda', 40000.00, 'images/1984.jpg', 'Truyện tranh phiêu lưu nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(35, 'One Piece Tập 4', 'Eiichiro Oda', 40000.00, 'images/1984.jpg', 'Truyện tranh phiêu lưu nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(36, 'One Piece Tập 5', 'Eiichiro Oda', 40000.00, 'images/1984.jpg', 'Truyện tranh phiêu lưu nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(37, 'Naruto Tập 1', 'Masashi Kishimoto', 40000.00, 'images/1984.jpg', 'Truyện tranh hành động nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(38, 'Naruto Tập 2', 'Masashi Kishimoto', 40000.00, 'images/1984.jpg', 'Truyện tranh hành động nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(39, 'Naruto Tập 3', 'Masashi Kishimoto', 40000.00, 'images/1984.jpg', 'Truyện tranh hành động nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(40, 'Naruto Tập 4', 'Masashi Kishimoto', 40000.00, 'images/1984.jpg', 'Truyện tranh hành động nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(41, 'Naruto Tập 5', 'Masashi Kishimoto', 40000.00, 'images/1984.jpg', 'Truyện tranh hành động nổi tiếng.', 1, '2025-04-17 15:24:13', NULL),
(42, 'Toán Lớp 6', 'Bộ Giáo dục', 50000.00, 'images/1984.jpg', 'Sách giáo khoa Toán lớp 6.', 2, '2025-04-17 15:24:13', NULL),
(43, 'Toán Lớp 7', 'Bộ Giáo dục', 50000.00, 'images/1984.jpg', 'Sách giáo khoa Toán lớp 7.', 2, '2025-04-17 15:24:13', NULL),
(44, 'Toán Lớp 8', 'Bộ Giáo dục', 50000.00, 'images/1984.jpg', 'Sách giáo khoa Toán lớp 8.', 2, '2025-04-17 15:24:13', NULL),
(45, 'Toán Lớp 9', 'Bộ Giáo dục', 50000.00, 'images/1984.jpg', 'Sách giáo khoa Toán lớp 9.', 2, '2025-04-17 15:24:13', NULL),
(46, 'Toán Lớp 10', 'Bộ Giáo dục', 50000.00, 'images/1984.jpg', 'Sách giáo khoa Toán lớp 10.', 2, '2025-04-17 15:24:13', NULL),
(47, 'Toán Lớp 11', 'Bộ Giáo dục', 50000.00, 'images/1984.jpg', 'Sách giáo khoa Toán lớp 11.', 2, '2025-04-17 15:24:13', NULL),
(48, 'Toán Lớp 12', 'Bộ Giáo dục', 50000.00, 'images/1984.jpg', 'Sách giáo khoa Toán lớp 12.', 2, '2025-04-17 15:24:13', NULL),
(49, 'Ngữ Văn Lớp 6', 'Bộ Giáo dục', 45000.00, 'images/1984.jpg', 'Sách giáo khoa Ngữ Văn lớp 6.', 2, '2025-04-17 15:24:13', NULL),
(50, 'Ngữ Văn Lớp 7', 'Bộ Giáo dục', 45000.00, 'images/1984.jpg', 'Sách giáo khoa Ngữ Văn lớp 7.', 2, '2025-04-17 15:24:13', NULL),
(51, 'Ngữ Văn Lớp 8', 'Bộ Giáo dục', 45000.00, 'images/1984.jpg', 'Sách giáo khoa Ngữ Văn lớp 8.', 2, '2025-04-17 15:24:13', NULL),
(52, 'Lịch Sử Lớp 10', 'Bộ Giáo dục', 55000.00, 'images/1984.jpg', 'Sách giáo khoa Lịch Sử lớp 10.', 2, '2025-04-17 15:24:13', NULL),
(53, 'Lịch Sử Lớp 11', 'Bộ Giáo dục', 55000.00, 'images/1984.jpg', 'Sách giáo khoa Lịch Sử lớp 11.', 2, '2025-04-17 15:24:13', NULL),
(54, 'Lịch Sử Lớp 12', 'Bộ Giáo dục', 55000.00, 'images/1984.jpg', 'Sách giáo khoa Lịch Sử lớp 12.', 2, '2025-04-17 15:24:13', NULL),
(55, 'Truyện Kiều', 'Nguyễn Du', 90000.00, 'images/1984.jpg', 'Tác phẩm văn học cổ điển Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(56, 'Tắt Đèn', 'Ngô Tất Tố', 85000.00, 'images/1984.jpg', 'Tiểu thuyết hiện thực Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(57, 'Số Đỏ', 'Vũ Trọng Phụng', 95000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(58, 'Chí Phèo', 'Nam Cao', 80000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(59, 'Lão Hạc', 'Nam Cao', 60000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(60, 'Hồn Bướm Mơ Tiên', 'Khái Hưng', 70000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(61, 'Đời Mưa Gió', 'Nhất Linh', 75000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(62, 'Bỉ Vỏ', 'Nguyên Hồng', 85000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(63, 'Những Ngày Thơ Ấu', 'Nguyên Hồng', 65000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(64, 'Vợ Nhặt', 'Kim Lân', 55000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(65, 'Đồng Hào Có Ma', 'Nguyễn Công Hoan', 60000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(66, 'Hạnh Phúc Của Một Tang Gia', 'Vũ Trọng Phụng', 70000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(67, 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 'Nguyễn Nhật Ánh', 120000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(68, 'Cho Tôi Xin Một Vé Đi Tuổi Thơ', 'Nguyễn Nhật Ánh', 110000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(69, 'Mắt Biếc', 'Nguyễn Nhật Ánh', 130000.00, 'images/1984.jpg', 'Tác phẩm văn học Việt Nam.', 3, '2025-04-17 15:24:13', NULL),
(70, 'Dế Mèn Phiêu Lưu Ký', 'Tô Hoài', 80000.00, 'images/1984.jpg', 'Tác phẩm văn học thiếu nhi kinh điển.', 4, '2025-04-17 15:24:13', NULL),
(71, 'Chuyện Con Mèo Dạy Hải Âu Bay', 'Luis Sepúlveda', 95000.00, 'images/1984.jpg', 'Truyện thiếu nhi ý nghĩa.', 4, '2025-04-17 15:24:13', NULL),
(72, 'Hoàng Tử Bé', 'Antoine de Saint-Exupéry', 100000.00, 'images/1984.jpg', 'Truyện thiếu nhi nổi tiếng.', 4, '2025-04-17 15:24:13', NULL),
(73, 'Cậu Bé Rừng Xanh', 'Rudyard Kipling', 85000.00, 'images/1984.jpg', 'Truyện thiếu nhi phiêu lưu.', 4, '2025-04-17 15:24:13', NULL),
(74, 'Alice Ở Xứ Sở Thần Tiên', 'Lewis Carroll', 110000.00, 'images/1984.jpg', 'Truyện thiếu nhi giả tưởng.', 4, '2025-04-17 15:24:13', NULL),
(75, 'Charlie Và Nhà Máy Sô-cô-la', 'Roald Dahl', 120000.00, 'images/1984.jpg', 'Truyện thiếu nhi vui nhộn.', 4, '2025-04-17 15:24:13', NULL),
(76, 'Cô Bé Bán Diêm', 'Hans Christian Andersen', 60000.00, 'images/1984.jpg', 'Truyện cổ tích cảm động.', 4, '2025-04-17 15:24:13', NULL),
(77, 'Nàng Bạch Tuyết Và Bảy Chú Lùn', 'Brothers Grimm', 70000.00, 'images/1984.jpg', 'Truyện cổ tích kinh điển.', 4, '2025-04-17 15:24:13', NULL),
(78, 'Cô Bé Lọ Lem', 'Charles Perrault', 65000.00, 'images/1984.jpg', 'Truyện cổ tích nổi tiếng.', 4, '2025-04-17 15:24:13', NULL),
(79, 'Peter Pan', 'J.M. Barrie', 90000.00, 'images/1984.jpg', 'Truyện thiếu nhi phiêu lưu.', 4, '2025-04-17 15:24:13', NULL),
(80, 'Harry Potter và Hòn Đá Phù Thủy', 'J.K. Rowling', 250000.00, 'images/1984.jpg', 'Tiểu thuyết giả tưởng nổi tiếng.', 5, '2025-04-17 15:24:13', NULL),
(81, 'Nhà Giả Kim', 'Paulo Coelho', 120000.00, 'images/1984.jpg', 'Tiểu thuyết truyền cảm hứng.', 5, '2025-04-17 15:24:13', NULL),
(82, 'Đồi Gió Hú', 'Emily Brontë', 150000.00, 'images/1984.jpg', 'Tiểu thuyết lãng mạn.', 5, '2025-04-17 15:24:13', NULL),
(83, 'Kiêu Hãnh Và Định Kiến', 'Jane Austen', 140000.00, 'images/1984.jpg', 'Tiểu thuyết tình cảm kinh điển.', 5, '2025-04-17 15:24:13', NULL),
(84, 'Bắt Trẻ Đồng Xanh', 'J.D. Salinger', 130000.00, 'images/1984.jpg', 'Tiểu thuyết tâm lý.', 5, '2025-04-17 15:24:13', NULL),
(85, '1984', 'George Orwell', 160000.00, 'images/1984.jpg', 'Tiểu thuyết phản địa đàng.', 5, '2025-04-01 10:13:34', NULL),
(86, 'Chúa Tể Những Chiếc Nhẫn: Đoàn Hộ Nhẫn', 'J.R.R. Tolkien', 300000.00, 'images/1984.jpg', 'Tiểu thuyết giả tưởng kinh điển.', 5, '2025-04-17 15:24:13', NULL),
(87, 'Hài Kịch Nhân Gian', 'Victor Hugo', 200000.00, 'images/1984.jpg', 'Tiểu thuyết Pháp.', 5, '2025-04-17 15:24:13', NULL),
(88, 'Những Người Khốn Khổ', 'Victor Hugo', 250000.00, 'images/1984.jpg', 'Tiểu thuyết Pháp.', 5, '2025-04-17 15:24:13', NULL),
(89, 'Đồi Thỏ', 'Richard Adams', 180000.00, 'images/1984.jpg', 'Tiểu thuyết phiêu lưu.', 5, '2025-04-17 15:24:13', NULL),
(90, 'Bá Tước Monte Cristo', 'Alexandre Dumas', 220000.00, 'images/1984.jpg', 'Tiểu thuyết trả thù.', 5, '2025-04-17 15:24:13', NULL),
(91, 'Tội Ác Và Hình Phạt', 'Fyodor Dostoevsky', 200000.00, 'images/1984.jpg', 'Tiểu thuyết Nga.', 5, '2025-04-17 15:24:13', NULL),
(92, 'Anna Karenina', 'Leo Tolstoy', 230000.00, 'images/1984.jpg', 'Tiểu thuyết Nga.', 5, '2025-04-17 15:24:13', NULL),
(93, 'Chiến Tranh Và Hòa Bình', 'Leo Tolstoy', 300000.00, 'images/1984.jpg', 'Tiểu thuyết Nga.', 5, '2025-04-17 15:24:13', NULL),
(94, 'Đông Đô Đại Phố', 'Nguyễn Nhật Ánh', 110000.00, 'images/1984.jpg', 'Tiểu thuyết Việt Nam.', 5, '2025-04-17 15:24:13', NULL),
(95, 'Sapiens: Lược Sử Loài Người', 'Yuval Noah Harari', 300000.00, 'images/1984.jpg', 'Cuốn sách lịch sử nhân loại.', 6, '2025-04-17 15:24:13', NULL),
(96, 'Lược Sử Thời Gian', 'Stephen Hawking', 220000.00, 'images/1984.jpg', 'Sách khoa học nổi tiếng.', 6, '2025-04-17 15:24:13', NULL),
(97, 'Vũ Trụ Trong Một Hạt Cát', 'Brian Greene', 200000.00, 'images/1984.jpg', 'Sách khoa học vũ trụ.', 6, '2025-04-17 15:24:13', NULL),
(98, 'Lịch Sử Văn Minh Thế Giới', 'Will Durant', 350000.00, 'images/1984.jpg', 'Lịch sử thế giới.', 6, '2025-04-17 15:24:13', NULL),
(99, 'Lịch Sử Việt Nam', 'Trần Trọng Kim', 180000.00, 'images/1984.jpg', 'Lịch sử Việt Nam.', 6, '2025-04-17 15:24:13', NULL),
(100, 'Lịch Sử Thế Giới Hiện Đại', 'J.M. Roberts', 280000.00, 'images/1984.jpg', 'Lịch sử thế giới hiện đại.', 6, '2025-04-17 15:24:13', NULL),
(101, 'Homo Deus', 'Yuval Noah Harari', 320000.00, 'images/1984.jpg', 'Tương lai nhân loại.', 6, '2025-04-17 15:24:13', NULL),
(102, 'Lịch Sử Chiến Tranh Việt Nam', 'Mark Philip Bradley', 250000.00, 'images/1984.jpg', 'Chiến tranh Việt Nam.', 6, '2025-04-17 15:24:13', NULL),
(103, 'Lịch Sử Tư Tưởng Nhân Loại', 'Peter Watson', 300000.00, 'images/1984.jpg', 'Tư tưởng nhân loại.', 6, '2025-04-17 15:24:13', NULL),
(104, 'Lịch Sử Thế Giới Cổ Đại', 'Susan Wise Bauer', 270000.00, 'images/1984.jpg', 'Lịch sử cổ đại.', 6, '2025-04-17 15:24:13', NULL),
(105, 'Đắc Nhân Tâm', 'Dale Carnegie', 130000.00, 'images/1984.jpg', 'Sách kỹ năng sống kinh điển.', 7, '2025-04-17 15:24:13', NULL),
(106, 'Bí Mật Tư Duy Triệu Phú', 'T. Harv Eker', 150000.00, 'images/1984.jpg', 'Sách phát triển bản thân.', 7, '2025-04-17 15:24:13', NULL),
(107, '7 Thói Quen Hiệu Quả', 'Stephen R. Covey', 140000.00, 'images/1984.jpg', 'Sách phát triển bản thân.', 7, '2025-04-17 15:24:13', NULL),
(108, 'Nghĩ Giàu Và Làm Giàu', 'Napoleon Hill', 160000.00, 'images/1984.jpg', 'Sách phát triển bản thân.', 7, '2025-04-17 15:24:13', NULL),
(109, 'Sức Mạnh Của Hiện Tại', 'Eckhart Tolle', 170000.00, 'images/1984.jpg', 'Sách phát triển bản thân.', 7, '2025-04-17 15:24:13', NULL),
(110, 'Tư Duy Nhanh Và Chậm', 'Daniel Kahneman', 200000.00, 'images/1984.jpg', 'Sách phát triển bản thân.', 7, '2025-04-17 15:24:13', NULL),
(111, 'Sáng Tạo Để Thành Công', 'Jonah Lehrer', 180000.00, 'images/1984.jpg', 'Sách phát triển bản thân.', 7, '2025-04-17 15:24:13', NULL),
(112, 'Tư Duy Tích Cực', 'Norman Vincent Peale', 150000.00, 'images/1984.jpg', 'Sách phát triển bản thân.', 7, '2025-04-17 15:24:13', NULL),
(113, 'Sức Mạnh Của Thói Quen', 'Charles Duhigg', 190000.00, 'images/1984.jpg', 'Sách phát triển bản thân.', 7, '2025-04-17 15:24:13', NULL),
(114, 'Thói Quen Tự Do', 'James Clear', 210000.00, 'images/1984.jpg', 'Sách phát triển bản thân.', 7, '2025-04-17 15:24:13', NULL),
(115, 'Vũ Trụ', 'Carl Sagan', 200000.00, 'images/1984.jpg', 'Sách khoa học vũ trụ.', 8, '2025-04-17 15:24:13', NULL),
(116, 'Nguồn Gốc Các Loài', 'Charles Darwin', 220000.00, 'images/1984.jpg', 'Sách khoa học tiến hóa.', 8, '2025-04-17 15:24:13', NULL),
(117, 'Gen: Lịch Sử Thân Mật', 'Siddhartha Mukherjee', 250000.00, 'images/1984.jpg', 'Sách khoa học di truyền.', 8, '2025-04-17 15:24:13', NULL),
(118, 'Lý Thuyết Tương Đối', 'Albert Einstein', 180000.00, 'images/1984.jpg', 'Sách khoa học vật lý.', 8, '2025-04-17 15:24:13', NULL),
(119, 'Vật Lý Của Tương Lai', 'Michio Kaku', 230000.00, 'images/1984.jpg', 'Sách khoa học tương lai.', 8, '2025-04-17 15:24:13', NULL),
(120, 'Vũ Trụ Huyền Bí', 'Neil deGrasse Tyson', 210000.00, 'images/1984.jpg', 'Sách khoa học vũ trụ.', 8, '2025-04-17 15:24:13', NULL),
(121, 'Hố Đen', 'Stephen Hawking', 190000.00, 'images/1984.jpg', 'Sách khoa học vật lý.', 8, '2025-04-17 15:24:13', NULL),
(122, 'Lược Sử Vũ Trụ', 'Bill Bryson', 200000.00, 'images/1984.jpg', 'Sách khoa học phổ thông.', 8, '2025-04-17 15:24:13', NULL),
(123, 'Thuyết Hỗn Độn', 'James Gleick', 220000.00, 'images/1984.jpg', 'Sách khoa học hỗn loạn.', 8, '2025-04-17 15:24:13', NULL),
(124, 'Vũ Trụ Thông Minh', 'Fred Adams', 240000.00, 'images/1984.jpg', 'Sách khoa học vũ trụ.', 8, '2025-04-17 15:24:13', NULL),
(125, 'Death Note Tập 1', 'Tsugumi Ohba', 50000.00, 'images/1984.jpg', 'Truyện tranh người lớn nổi tiếng.', 9, '2025-04-17 15:24:13', NULL),
(126, 'Death Note Tập 2', 'Tsugumi Ohba', 50000.00, 'images/1984.jpg', 'Truyện tranh người lớn nổi tiếng.', 9, '2025-04-17 15:24:13', NULL),
(127, 'Death Note Tập 3', 'Tsugumi Ohba', 50000.00, 'images/1984.jpg', 'Truyện tranh người lớn nổi tiếng.', 9, '2025-04-17 15:24:13', NULL),
(128, 'Death Note Tập 4', 'Tsugumi Ohba', 50000.00, 'images/1984.jpg', 'Truyện tranh người lớn nổi tiếng.', 9, '2025-04-17 15:24:13', NULL),
(129, 'Death Note Tập 5', 'Tsugumi Ohba', 50000.00, 'images/1984.jpg', 'Truyện tranh người lớn nổi tiếng.', 9, '2025-04-17 15:24:13', NULL),
(130, 'Lập Trình Python', 'Eric Matthes', 250000.00, 'images/1984.jpg', 'Sách học lập trình Python.', 10, '2025-04-17 15:24:13', NULL),
(131, 'Học JavaScript', 'Jon Duckett', 200000.00, 'images/1984.jpg', 'Sách học JavaScript.', 10, '2025-04-17 15:24:13', NULL),
(132, 'Lập Trình Java', 'Herbert Schildt', 280000.00, 'images/1984.jpg', 'Sách học lập trình Java.', 10, '2025-04-17 15:24:13', NULL),
(133, 'Cấu Trúc Dữ Liệu Và Giải Thuật', 'Mark Allen Weiss', 300000.00, 'images/1984.jpg', 'Sách học thuật về giải thuật.', 10, '2025-04-17 15:24:13', NULL),
(134, 'Học SQL', 'Alan Beaulieu', 220000.00, 'images/1984.jpg', 'Sách học SQL.', 10, '2025-04-17 15:24:13', NULL),
(136, 'VL1', 'BL1', 1313133.00, 'images/4b326aab-c63d-4083-8919-16662d27cd7f.jpg', 'dấdasd', 1, '2025-04-20 16:54:31', '2025-04-20 16:50:42'),
(137, 'VL2', 'adasd', 9999999.00, 'images/4b326aab-c63d-4083-8919-16662d27cd7f.jpg', '31311323', 1, '2025-04-20 16:54:44', NULL),
(138, 'VL3', 'qewqwe', 99999.00, 'images/4b326aab-c63d-4083-8919-16662d27cd7f.jpg', 'fsfsdf', 1, '2025-04-20 16:54:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `book_id`, `quantity`, `created_at`, `updated_at`) VALUES
(5, 2, 107, 1, '2025-04-03 14:51:24', '2025-04-03 14:51:24'),
(97, 9, 85, 2, '2025-04-21 08:21:11', '2025-04-21 08:21:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Truyện tranh thiếu nhi', '2025-03-30 10:06:17'),
(2, 'Sách giáo khoa', '2025-03-30 10:06:17'),
(3, 'Văn học', '2025-03-30 10:06:17'),
(4, 'Văn học thiếu nhi', '2025-03-30 10:06:17'),
(5, 'Tiểu thuyết', '2025-03-30 10:06:17'),
(6, 'Lịch sử', '2025-03-30 10:06:17'),
(7, 'Phát triển bản thân', '2025-03-30 10:06:17'),
(8, 'Khoa học', '2025-03-30 10:06:17'),
(9, 'Truyện tranh người lớn', '2025-03-30 10:06:17'),
(10, 'Sách kỹ thuật', '2025-04-20 16:33:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int NOT NULL,
  `book_id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `book_id`, `user_id`, `comment`, `created_at`) VALUES
(2, 1, 1, 'Cuốn sách rất hay, giúp mình hiểu rõ về PHP!', '2025-03-30 06:00:00'),
(3, 1, 2, 'Nội dung dễ hiểu, phù hợp cho người mới học.', '2025-03-30 07:00:00'),
(5, 4, 1, 'Sách giáo khoa rất chi tiết, bài tập hay.', '2025-03-30 09:00:00'),
(6, 5, 2, 'Nhà Giả Kim truyền cảm hứng mạnh mẽ, đáng đọc!', '2025-03-30 10:00:00'),
(7, 6, 3, 'Dế Mèn Phiêu Lưu Ký rất ý nghĩa, con mình thích lắm.', '2025-03-30 11:00:00'),
(8, 7, 1, 'Sách Lịch Sử lớp 12 rất bổ ích.', '2025-03-30 12:00:00'),
(9, 8, 2, 'Truyện Kiều quá hay, đọc mà cảm động.', '2025-03-30 13:00:00'),
(10, 9, 3, 'Tắt Đèn phản ánh hiện thực xã hội rất sâu sắc.', '2025-03-30 14:00:00'),
(11, 10, 1, 'One Piece không bao giờ làm mình thất vọng!', '2025-03-30 15:00:00'),
(12, 2, 2, 'Khá hay', '2025-03-30 09:41:17'),
(13, 85, 4, 'xin chào', '2025-04-04 12:40:09'),
(14, 85, 4, 'hello', '2025-04-17 16:09:25'),
(15, 107, 4, 'Sách rất bổ ích', '2025-04-21 08:44:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Hao', 'doquanghao2603@gmail.com', 'eqeqewe', '2025-03-30 13:02:56'),
(2, 'Hao', 'doquanghao2603@gmail.com', '12434342', '2025-04-21 08:56:50'),
(3, 'Hao', 'doquanghao2603@gmail.com', '12434342', '2025-04-21 08:57:09'),
(4, 'Hao', 'doquanghao2603@gmail.com', '12434342', '2025-04-21 08:57:58'),
(5, 'Hao', 'doquanghao2011@gmail.com', 'Please contact me', '2025-04-21 08:58:17'),
(6, 'Hao', 'doquanghao2011@gmail.com', 'Please contact me', '2025-04-21 08:58:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `status` enum('pending','shipped','cancelled') COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `status`, `address`, `email`, `created_at`) VALUES
(1, 2, 120000.00, 'pending', NULL, 'user1@example.com', '2025-03-30 08:07:17'),
(2, 2, 12312313.00, 'pending', NULL, 'user1@example.com', '2025-03-30 08:46:46'),
(3, 2, 49249252.00, 'pending', NULL, 'user1@example.com', '2025-03-30 08:57:39'),
(4, 4, 360000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-03-31 07:51:59'),
(5, 4, 480000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-01 09:24:09'),
(6, 4, 140000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 03:01:12'),
(7, 4, 320000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 03:55:21'),
(8, 4, 140000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 04:04:51'),
(9, 4, 280000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 04:31:26'),
(10, 4, 1120000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 05:11:53'),
(11, 4, 3030000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 05:31:44'),
(12, 4, 370000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 05:32:09'),
(13, 4, 710000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 06:01:49'),
(14, 4, 350000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 06:07:43'),
(15, 4, 2155000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 07:30:59'),
(16, 4, 4100000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 08:02:40'),
(17, 4, 2605000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 10:46:38'),
(18, 4, 3290000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 12:13:19'),
(19, 4, 12972313.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-04 12:34:44'),
(20, 4, 300000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 13:01:50'),
(21, 4, 280000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 13:02:37'),
(22, 4, 140000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 13:02:57'),
(23, 4, 110000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 13:03:27'),
(24, 4, 320000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 13:03:36'),
(25, 4, 320000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 13:09:12'),
(26, 4, 140000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 13:10:50'),
(27, 4, 270000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 13:22:44'),
(28, 4, 380000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 13:23:19'),
(29, 4, 440000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 13:47:45'),
(30, 4, 740000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 13:49:28'),
(31, 4, 280000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 13:49:59'),
(32, 4, 720000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 15:32:03'),
(33, 4, 140000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 15:57:21'),
(34, 4, 1300000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-17 16:12:22'),
(35, 4, 1065000.00, 'pending', NULL, 'doquanghao0504@gmail.com', '2025-04-20 13:57:53'),
(36, 4, 780000.00, 'cancelled', NULL, 'doquanghao0504@gmail.com', '2025-04-20 15:39:05'),
(37, 4, 140000.00, 'pending', 'Không có địa chỉ', 'doquanghao0504@gmail.com', '2025-04-20 16:19:29'),
(38, 4, 140000.00, 'pending', 'Không có địa chỉ', 'doquanghao0504@gmail.com', '2025-04-20 16:20:04'),
(39, 4, 110000.00, 'shipped', 'Không có địa chỉ', 'doquanghao0504@gmail.com', '2025-04-20 16:20:26'),
(40, 4, 130000.00, 'pending', 'Không có địa chỉ', 'doquanghao0504@gmail.com', '2025-04-20 16:20:42'),
(41, 4, 330000.00, 'pending', 'Không có địa chỉ', 'doquanghao0504@gmail.com', '2025-04-20 16:23:29'),
(42, 4, 350000.00, 'shipped', 'Không có địa chỉ', 'doquanghao0504@gmail.com', '2025-04-20 16:25:27'),
(43, 4, 12362313.00, 'pending', 'Không có địa chỉ', 'doquanghao0504@gmail.com', '2025-04-20 16:28:42'),
(44, 4, 1313133.00, 'pending', 'Không có địa chỉ', 'doquanghao0504@gmail.com', '2025-04-20 16:48:07'),
(45, 4, 120000.00, 'pending', 'Lý Thường Kiệt', 'doquanghao0504@gmail.com', '2025-04-21 07:43:41'),
(46, 9, 280000.00, 'pending', 'Lý Thường Kiệt', 'dadsads@gmail.com', '2025-04-21 08:21:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `book_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `book_id`, `quantity`, `price`) VALUES
(1, 1, 2, 1, 120000.00),
(4, 4, 2, 3, 120000.00),
(5, 5, 85, 3, 160000.00),
(6, 6, 107, 1, 140000.00),
(7, 7, 85, 2, 160000.00),
(8, 8, 107, 1, 140000.00),
(9, 9, 107, 2, 140000.00),
(10, 10, 107, 8, 140000.00),
(11, 11, 107, 16, 140000.00),
(12, 11, 74, 3, 110000.00),
(13, 11, 92, 2, 230000.00),
(14, 12, 90, 1, 220000.00),
(15, 12, 106, 1, 150000.00),
(16, 13, 107, 4, 140000.00),
(17, 13, 106, 1, 150000.00),
(18, 14, 90, 1, 220000.00),
(19, 14, 84, 1, 130000.00),
(20, 15, 107, 7, 140000.00),
(21, 15, 106, 5, 150000.00),
(22, 15, 73, 5, 85000.00),
(23, 16, 90, 8, 220000.00),
(24, 16, 84, 18, 130000.00),
(25, 17, 106, 2, 150000.00),
(26, 17, 18, 2, 150000.00),
(27, 17, 133, 1, 300000.00),
(28, 17, 128, 1, 50000.00),
(29, 17, 90, 4, 220000.00),
(30, 17, 74, 1, 110000.00),
(31, 17, 71, 7, 95000.00),
(32, 18, 70, 1, 80000.00),
(33, 18, 74, 17, 110000.00),
(34, 18, 62, 1, 85000.00),
(35, 18, 75, 1, 120000.00),
(36, 18, 58, 2, 80000.00),
(37, 18, 86, 2, 300000.00),
(38, 18, 71, 1, 95000.00),
(39, 18, 132, 1, 280000.00),
(40, 19, 107, 1, 140000.00),
(41, 19, 74, 1, 110000.00),
(43, 19, 84, 2, 130000.00),
(44, 19, 61, 2, 75000.00),
(45, 20, 85, 1, 160000.00),
(46, 20, 107, 1, 140000.00),
(47, 21, 107, 2, 140000.00),
(48, 22, 107, 1, 140000.00),
(49, 23, 74, 1, 110000.00),
(50, 24, 85, 2, 160000.00),
(51, 25, 85, 2, 160000.00),
(52, 26, 107, 1, 140000.00),
(53, 27, 85, 1, 160000.00),
(54, 27, 74, 1, 110000.00),
(55, 28, 85, 1, 160000.00),
(56, 28, 74, 2, 110000.00),
(57, 29, 74, 4, 110000.00),
(58, 30, 107, 3, 140000.00),
(59, 30, 85, 2, 160000.00),
(60, 31, 107, 2, 140000.00),
(61, 32, 107, 4, 140000.00),
(62, 32, 85, 1, 160000.00),
(63, 33, 107, 1, 140000.00),
(64, 34, 62, 6, 85000.00),
(65, 34, 74, 6, 110000.00),
(66, 34, 84, 1, 130000.00),
(67, 35, 133, 1, 300000.00),
(68, 35, 131, 1, 200000.00),
(69, 35, 107, 1, 140000.00),
(70, 35, 85, 2, 160000.00),
(71, 35, 8, 1, 35000.00),
(72, 35, 27, 1, 35000.00),
(73, 35, 28, 1, 35000.00),
(74, 36, 85, 3, 160000.00),
(75, 36, 107, 1, 140000.00),
(76, 36, 27, 2, 35000.00),
(77, 36, 13, 1, 90000.00),
(78, 37, 107, 1, 140000.00),
(79, 38, 107, 1, 140000.00),
(80, 39, 74, 1, 110000.00),
(81, 40, 84, 1, 130000.00),
(82, 41, 74, 3, 110000.00),
(83, 42, 90, 1, 220000.00),
(84, 42, 84, 1, 130000.00),
(86, 43, 5, 1, 50000.00),
(87, 44, 136, 1, 1313133.00),
(88, 45, 2, 1, 120000.00),
(89, 46, 2, 1, 120000.00),
(90, 46, 85, 1, 160000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` enum('admin','user','super_admin') COLLATE utf8mb4_general_ci DEFAULT 'user',
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT '869262036'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `full_name`, `address`, `role`, `last_login`, `created_at`, `deleted_at`, `phone`) VALUES
(1, 'admin', '$2y$10$.0BdSYyvXNYTv4wfsUtq7eGTbFqJePcwOLvhTeMKPomk6ocNXZ3PW', 'admin@example.com', 'Super Admin User', 'Ký túc xá Bách Khoa', 'super_admin', '2025-04-21 10:59:42', '2025-03-30 08:03:39', NULL, '869262036'),
(2, 'user1', '$2y$10$lG2iPu107otlO8uuNY9w..2cHy48OjGOWjpYI61HfZSy497V.CoqK', 'user1@example.com', 'User One', 'Ký túc xá Bách Khoa', 'user', NULL, '2025-03-30 08:03:39', NULL, '869262036'),
(3, 'user2', '$2y$10$F5WvvGcfhyBgiUWwJ4ceIOpeUxgZM.kAK79hBsqZGfMPRyUGzhGre', 'doquanghao2603@gmail.com', 'Đỗ Quang Hào', 'Đại học Bách Khoa', 'user', NULL, '2025-03-30 09:01:23', '2025-04-21 08:22:51', '869262036'),
(4, 'elvin12', '$2y$10$6YFxq9CiJYYSRWKWNEdBqeRYhGqrxTUZ6cwkJJ3DQgT7mut0MdiFK', 'doquanghao0504@gmail.com', 'Đỗ Quang Hao', '268 Lý Thường Kiệt', 'user', '2025-04-21 11:06:20', '2025-03-31 07:51:27', NULL, '869262036'),
(7, 'elvin123', '$2y$10$oNhMO3MUvZY6w8aDoGx72uT73hddAiY2KyxFbmz9PjcHk.wNAIlVu', 'doquanghao0807@gmail.com', 'Đỗ Quang Hào', '497 Hoà Hảo, phường 7, Quận 10, TP HCM', 'user', '2025-04-21 07:44:57', '2025-04-21 07:44:38', '2025-04-21 07:49:09', '869262036'),
(8, 'elvin1234', '$2y$10$FyBjHTEdANaAR2btE7.YEuV3pCFNEr0eeh2qJ0WMiDnJcCkJotoXW', 'jinesxumblen83@hotmail.com', 'Đỗ Quang Hao', '268 Lý Thường Kiệt', 'user', '2025-04-21 08:09:23', '2025-04-21 08:09:23', NULL, '869262036'),
(9, 'elvin12345', '$2y$10$CznTsUtb0pYSRZB4xSXOIOtUDJcWWfFFer3rNfOUE4tvpPf/TbuHa', 'dadsads@gmail.com', 'User', 'Lý Thường Kiệt', 'user', '2025-04-21 08:19:23', '2025-04-21 08:19:23', NULL, '0869262036'),
(10, 'elvin123456', '$2y$10$wQ7WFolMtpmKRmu.6XJfh.AAXtbxzcAa7KbqE6QWTtk4hAHKy2WYK', 'doquanghao2010@gmail.com', 'User3', 'Đại học Bách Khoa', 'user', NULL, '2025-04-21 08:27:23', NULL, NULL),
(11, 'elvin1234567', '$2y$10$TR69BfqvPj3LQzfLCfBG4eW/O.hUbWPsyBoyUHuWot9T32Xa9vif.', 'doquanghao2011@gmail.com', 'User12', 'Vung Tau, BRVT', 'user', '2025-04-21 08:29:22', '2025-04-21 08:29:22', NULL, '0869262036'),
(12, 'admin12', '$2y$10$07ELYHCibMTEqDTyNDzdreV5n4/poYzAWIieR/jcLsB96iaW3GXhy', 'doquanghao0505@gmail.com', 'Admin12', NULL, 'admin', NULL, '2025-04-21 08:30:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_book_unique` (`user_id`,`book_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_book_unique` (`user_id`,`book_id`),
  ADD KEY `book_id` (`book_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Các ràng buộc cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Các ràng buộc cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
