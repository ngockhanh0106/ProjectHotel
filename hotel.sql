-- phpMyAdmin SQL Dump
-- version 5.2.2-dev+20230402.ee9c9a0300
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th9 13, 2023 lúc 08:11 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hotel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id` int(11) NOT NULL,
  `mahd` int(11) NOT NULL,
  `madv` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id`, `mahd`, `madv`, `soluong`) VALUES
(5, 7, 1, 3),
(6, 7, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id` int(11) NOT NULL,
  `tendichvu` varchar(50) NOT NULL,
  `gia` double NOT NULL,
  `donVi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`id`, `tendichvu`, `gia`, `donVi`) VALUES
(1, 'massage', 1250000, 'lượt'),
(2, 'Tắm trắng', 300000, 'lượt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `Tongtien` decimal(10,2) NOT NULL,
  `trangthai` bit(1) NOT NULL,
  `thoigiandat` date NOT NULL,
  `thoigiantra` date NOT NULL,
  `maPhieuDatPhong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `Tongtien`, `trangthai`, `thoigiandat`, `thoigiantra`, `maPhieuDatPhong`) VALUES
(5, 5350000.00, b'1', '2023-09-08', '2023-09-12', 14),
(6, 5350000.00, b'1', '2023-09-08', '2023-09-12', 14),
(7, 5350000.00, b'1', '2023-09-08', '2023-09-12', 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `tenKh` varchar(50) NOT NULL,
  `cccd` varchar(50) NOT NULL,
  `sdt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `tenKh`, `cccd`, `sdt`) VALUES
(5, 'Nguyen Quang Dong', '001203011888', '0865399169');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `quyenHan` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `taikhoan` varchar(50) NOT NULL,
  `matkhau` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `quyenHan`, `ten`, `taikhoan`, `matkhau`) VALUES
(14, 5, 'Nguyễn Văn A', 'Admin', '202CB962AC59075B964B07152D234B70'),
(15, 1, 'Tay', 'Tay123', '4580D7F1E6B8D106C75CEE50B04D529E');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudatphong`
--

CREATE TABLE `phieudatphong` (
  `id` int(11) NOT NULL,
  `maKh` int(11) NOT NULL,
  `maNV` int(11) NOT NULL,
  `maPhong` int(11) NOT NULL,
  `thoigiandat` datetime NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieudatphong`
--

INSERT INTO `phieudatphong` (`id`, `maKh`, `maNV`, `maPhong`, `thoigiandat`, `trangthai`) VALUES
(14, 5, 14, 1, '2023-09-08 16:30:28', 1),
(15, 5, 14, 2, '2023-09-10 15:53:21', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `id` int(11) NOT NULL,
  `soPhong` int(11) NOT NULL,
  `soTang` int(11) NOT NULL,
  `soGiuong` int(11) NOT NULL,
  `gia` decimal(10,2) NOT NULL,
  `trangThai` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`id`, `soPhong`, `soTang`, `soGiuong`, `gia`, `trangThai`) VALUES
(1, 101, 1, 2, 250000.00, b'1'),
(2, 102, 1, 2, 250000.00, b'1'),
(3, 103, 1, 2, 250000.00, b'1'),
(4, 201, 2, 2, 300000.00, b'1'),
(5, 202, 2, 2, 300000.00, b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `description`) VALUES
(1, 'Nhân viên', ''),
(2, 'Dọn dẹp', ''),
(3, 'Sửa chữa', ''),
(4, 'Kiểm toán', ''),
(5, 'Quản lý', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sudungdv`
--

CREATE TABLE `sudungdv` (
  `id` int(11) NOT NULL,
  `maDV` int(11) NOT NULL,
  `maDPh` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sudungdv`
--

INSERT INTO `sudungdv` (`id`, `maDV`, `maDPh`, `soluong`) VALUES
(3, 1, 14, 3),
(4, 2, 14, 2),
(5, 1, 14, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thietbi`
--

CREATE TABLE `thietbi` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `donVi` varchar(50) NOT NULL,
  `tinhtrang` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thietbi`
--

INSERT INTO `thietbi` (`id`, `ten`, `soluong`, `donVi`, `tinhtrang`) VALUES
(1, 'Quạt trần', 3, 'Cái', b'1'),
(4, 'Quạt cây', 3, 'Cái', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthai`
--

CREATE TABLE `trangthai` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `trangthai`
--

INSERT INTO `trangthai` (`id`, `name`, `description`) VALUES
(1, 'Vừa Đặt', 'Khách vừa đặt'),
(2, 'Trả phòng', 'Khách hàng đã trả phòng');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hd_id` (`mahd`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phieuphongHd` (`maPhieuDatPhong`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nhanvien` (`maNV`),
  ADD KEY `fk_phong` (`maKh`),
  ADD KEY `fk_Room` (`maPhong`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sudungdv`
--
ALTER TABLE `sudungdv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sddv_id` (`maDV`),
  ADD KEY `fk_pdp_id` (`maDPh`);

--
-- Chỉ mục cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `phieudatphong`
--
ALTER TABLE `phieudatphong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sudungdv`
--
ALTER TABLE `sudungdv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `trangthai`
--
ALTER TABLE `trangthai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `fk_hd_id` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`id`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_phieuphongHd` FOREIGN KEY (`maPhieuDatPhong`) REFERENCES `phieudatphong` (`id`);

--
-- Các ràng buộc cho bảng `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD CONSTRAINT `fk_Room` FOREIGN KEY (`maPhong`) REFERENCES `phong` (`id`),
  ADD CONSTRAINT `fk_khachhang` FOREIGN KEY (`maKh`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `fk_nhanvien` FOREIGN KEY (`maNV`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `sudungdv`
--
ALTER TABLE `sudungdv`
  ADD CONSTRAINT `fk_pdp_id` FOREIGN KEY (`maDPh`) REFERENCES `phieudatphong` (`id`),
  ADD CONSTRAINT `fk_sddv_id` FOREIGN KEY (`maDV`) REFERENCES `dichvu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
