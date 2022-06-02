-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 22, 2021 lúc 07:31 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `areid`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'minh', 'c4ca4238a0b923820dcc509a6f75849b', 0),
(2, 'dat', 'c4ca4238a0b923820dcc509a6f75849b', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(3, 1, '9281', 0),
(4, 1, '4458', 0),
(5, 6, '1632', 1),
(6, 8, '8138', 0),
(7, 1, '4175', 0),
(8, 10, '4735', 0),
(9, 10, '9942', 0),
(10, 10, '6423', 0),
(11, 10, '7455', 0),
(12, 10, '7966', 0),
(13, 10, '8874', 0),
(14, 10, '2712', 1),
(16, 12, '892', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(7, '9281', 9, 3),
(8, '9281', 8, 1),
(9, '4458', 9, 3),
(10, '4458', 8, 1),
(11, '1632', 12, 5),
(12, '8138', 11, 5),
(13, '4175', 6, 2),
(14, '4175', 8, 2),
(15, '4735', 30, 1),
(16, '9942', 29, 1),
(17, '6423', 24, 1),
(18, '7455', 29, 1),
(19, '7966', 30, 1),
(20, '8874', 30, 1),
(21, '2712', 22, 1),
(22, '1919', 22, 1),
(23, '892', 22, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(12, 'hoang', 'phamhoang16112001@gmail.com', 'Hà Nội', '81dc9bdb52d04dc20036dbd8313ed055', '0987'),
(13, 'linh xuan vu', 'linhvuz300@gmail.com', 'Ninh Bình', '25f9e794323b453885f5181f1b624d0b', '0971039552');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(2, 'Giầy', 3),
(4, 'Nam', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhanvien`
--

CREATE TABLE `tbl_nhanvien` (
  `id_nhanvien` int(9) NOT NULL,
  `tennhanvien` varchar(1000) NOT NULL,
  `manv` varchar(100) NOT NULL,
  `dienthoai` int(50) NOT NULL,
  `diachi` varchar(1000) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `chucvu` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_nhanvien`
--

INSERT INTO `tbl_nhanvien` (`id_nhanvien`, `tennhanvien`, `manv`, `dienthoai`, `diachi`, `hinhanh`, `chucvu`) VALUES
(15, 'Linh', '01', 963990053, 'Bắc Ninh', '1634969280_linh.jpg', 'bán hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `giakm` varchar(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `giakm`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(23, 'SET BLOODMOON', '12', '2000000', '0', 10, '1633300189_SET BLOODMOON.jpeg', '', '', 1, 5),
(24, 'SET KAMI', '13', '1750000', '0', 10, '1633300228_SET KAMI.jpeg', '', '', 1, 5),
(25, 'SET TET', '14', '1500000', '0', 10, '1633300270_SET TET.jpg', '', '', 1, 5),
(26, 'SET SEETAA', '15', '1250000', '0', 10, '1633300300_SET SEETAA.jpg', '', '', 1, 5),
(27, 'DOCKER HAT', '16', '250000', '0', 10, '1633300347_DOCKER HAT.jpg', '', '', 1, 1),
(28, 'ZUNEZX BELT.', '17', '175000', '0', 10, '1633300398_ZUNEZX BELT.jpg', '', '', 1, 1),
(29, 'ZUNEX CAP', '19', '200000', '', 10, '1634130803_ZUNEX CAP.jpeg', '', '', 1, 1),
(30, 'KOI GREY TUBAN', '20', '200000', '', 10, '1634130815_KOI GREY TUBAN.jpeg', '', '', 1, 1),
(39, 'Áo Phao Lót Lông', '3', '300000', '500000', 10, '1634893651_Áo Phao Lót Lông.jpg', '', '', 1, 4),
(40, 'MLB Big Ball', '1', '450000', '500000', 10, '1634893546_MLB Big Ball.jpeg', 'Giày MLB được thiết kế thể thao, không bị lỗi mốt, không kén người sử dụng, không kén trang phục và người sử dụng 👟👟. Chính những yếu tố này khiến sản phẩm có thể sử dụng được nhiều lần, trong nhiều hoàn cảnh khác nhau', '', 1, 2),
(41, 'Giày Converse', '2', '300000', '400000', 10, '1634893413_Giày Converse.jpeg', 'Converse Chuck Taylor AllStar là dòng bán chạy số 1 của Converse. Đôi giày mà ai cũng nên có vì độ bền, độ đẹp và siêu dễ phối đồ luôn nha cả nhà. ', '', 1, 2),
(42, 'Giày Zara Mickey Mouse Mule', '4', '300000', '500000', 10, '1634893292_Giày Zara Mickey Mouse Mule.jpeg', '', '', 1, 2),
(43, 'Giày Adidas STAN SMITH GREEN Basic', '5', '500000', '600000', 10, '1634893228_Giày Adidas STAN SMITH GREEN Basic.jpeg', 'Adidas Stan Smith Green là sản phẩm giày có thiết kế đơn giản ấn tượng, chất liệu bằng da và các đường nét thiết kế gọn gàng, tinh tế. Qua nhiều thế hệ, Adidas Stan Smith được xem như một huyền thoại riêng thuộc về Adidas, gắn với hình ảnh Stan Smith trên phần mũi giày, Adidas Stan Smith Green là mẫu giày nguyên bản từ khi mới ra đời đến nay.\r\n ', '', 1, 2),
(44, 'Áo Hoodie 1275', '6', '450000', '500000', 10, '1634893090_Áo Hoodie 1275.jpg', 'Một chút cá tính và phá cách được đưa vào trong Pants Collection của Zune.zx là Sukato Pant. Sử dụng chất vải Kaki, Sukato Pant có xu hướng rộng phần hông và nhỏ dần về phần cổ chân, mang đến cảm giác bụi bặm và đường phố, gợi liên tưởng đến street style Nhật Bản vào những thập kỉ trước. \r\n\r\nCâu chuyện thời trang vẫn còn tiếp diễn, và hành trình khai phá văn hoá nhật nhưng vẫn không quên đi bản sắc Việt Nam là 1 con đường dài. ', '', 1, 4),
(45, 'Áo Nỉ 0915', '7', '500000', '600000', 10, '1634893044_Áo Nỉ 0915.jpg', 'Áo Nỉ 0915\r\nGiữa ranh giới cổ điển và hiện đại Bloodmoon Shirt nằm ngay ngắn chính giữa, là sự pha trộn kết hợp hài hòa của hai thời điểm. Gọi đây là \"cỗ máy thời gian\" cũng không quá chút nào bởi sự biến hóa đa dạng khi mix match khiến bạn hoàn toàn có thể trở thành những nhà trend-setter hay quay về với phong cách retro của những thập niên cũ. Sự sáng tạo trong thiết kế sử dụng chất liệu vải kate lụa chống nhăn, suôn theo hình thái cơ thể người mặc đã biến Bloodmoon Shirt trở thành một item có thể chiều lòng mọi dáng người.\r\n\r\n', '', 1, 4),
(46, 'Adidas Yeezy Boost 350 V2', '8', '500000', '600000', 10, '1634891354_Adidas Yeezy Boost 350 V2.jpg', 'Là phiên bản đời 2 của mẫu giày Yeezy Boost 350 đã ra mắt trước đó, phiên bản này nhanh chóng nhận được sự ủng hộ nhờ thiết kế được nâng cấp, khá khác một chút so với phiên bản đầu tiên như là phần heel cao hơn và phần đệm.', '', 1, 2),
(47, 'Vans 36 Retro Sport Biking Red', '9', '450000', '500000', 10, '1634891258_Vans 36 Retro Sport Biking Red.jpg', 'Sự đơn giản tinh gọn.\r\nSự thoải mái khi vận động', '', 1, 2),
(48, 'Nike', '10', '500000', '600000', 10, '1634890296_Nike.jpg', 'Giày thể thao AF1 Shadow\r\n', '', 1, 2),
(49, 'Balenciaga', '11', '500000', '600000', 10, '1634889239_Balenciaga.jpg', 'Giày thể thao kim loại Triple S\r\n Bạc không phải lúc nào cũng có nghĩa là tốt thứ hai. Với lớp hoàn thiện bằng kim loại bắt mắt, đôi giày thể thao Triple S này của Balenciaga luôn đứng đầu trong các cuộc đua về phong cách. Có vẻ như bạn đang là người chiến thắng. ', '', 1, 2),
(50, 'Alexander McQueen', '12', '500000', '600000', 10, '1634889132_Alexander McQueen.jpg', 'Nó không có kiểu dáng đẹp hơn nhiều so với đôi giày thể thao Quá khổ của Alexander McQueen. Được đặt trên đế cao su mềm mại, thoải mái như vẻ ngoài của chúng, chúng có bộ đếm gót tương phản để phá vỡ màu sắc toàn màu trắng tù. Một chút màu sắc không bao giờ làm tổn thương bất cứ ai.', '', 1, 2),
(51, 'Jordan', '13', '500000', '600000', 10, '1634889049_Jordan.jpg', 'Chất liệu vải da, dễ làm sạch, êm chân\r\nĐộ đàn hồi, co dãn tốt, ôm khít vừa chân\r\nĐế đúc cao su nguyên khối, chắc chắn.', '', 1, 2),
(52, 'Áo Nỉ Sedimented Emotion 1334', '14', '500000', '600000', 10, '1634888586_Áo Nỉ Sedimented Emotion 1334.jpg', '', '', 1, 4),
(53, 'Áo Nỉ To The North 1308', '15', '500000', '600000', 10, '1634888534_Áo Nỉ To The North 1308.jpg', '', '', 1, 4),
(54, 'Áo Len Cổ Lọ 0463', '16', '500000', '600000', 10, '1634888419_Áo Len Cổ Lọ 0463.jpg', '', '', 1, 4),
(55, 'Áo Phao METROPOLIS 1318', '17', '1000000', '1500000', 10, '1635007091_Áo Phao METROPOLIS 1318.jpg', '', '', 1, 4),
(56, 'Măng Tô Kaki Velvet Jacket MT182', '18', '1500000', '2000000', 10, '1634888298_Măng Tô Kaki Velvet Jacket MT182.jpg', '', '', 1, 4),
(57, 'Áo Khoác Lông Cừu SPORTMENS 1304', '19', '500000', '750000', 10, '1634888115_Áo Khoác Lông Cừu SPORTMENS 1304.jpg', ' \r\n', '', 1, 4),
(58, 'RED HOKKAIDO KIMONO', '20', '250000', '600000', 10, '1634888042_Áo Thun Dài Tay Basic 0931.jpg', '', '', 1, 4),
(59, 'Áo Thun GAIETY! 1407', '21', '500000', '600000', 10, '1634887928_Áo Thun GAIETY! 1407.jpg', '\r\n', '', 1, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  ADD PRIMARY KEY (`id_nhanvien`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_nhanvien`
--
ALTER TABLE `tbl_nhanvien`
  MODIFY `id_nhanvien` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
