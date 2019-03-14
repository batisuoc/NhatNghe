-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Nov 24, 2014 at 06:06 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `db2`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `chungloai`
-- 

CREATE TABLE `chungloai` (
  `idCL` int(12) NOT NULL auto_increment,
  `TenCL` varchar(100) NOT NULL,
  PRIMARY KEY  (`idCL`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `chungloai`
-- 

INSERT INTO `chungloai` VALUES (1, 'Sản phẩm nữ');
INSERT INTO `chungloai` VALUES (2, 'Sản phẩm nam');

-- --------------------------------------------------------

-- 
-- Table structure for table `donhang`
-- 

CREATE TABLE `donhang` (
  `idDH` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL default '0',
  `ThoiDiemDatHang` date NOT NULL default '0000-00-00',
  `ThoiDiemGiaohang` date NOT NULL default '0000-00-00',
  `TenNguoiNhan` varchar(100) NOT NULL default '',
  `DiaDiemGiaoHang` varchar(255) NOT NULL default '',
  `TinhTrang` tinyint(1) NOT NULL default '0',
  `GhiChu` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`idDH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `donhang`
-- 

INSERT INTO `donhang` VALUES ('1', '1', '2008-01-01', '2008-01-01', 'minh thu', 'Q1', 0, '');
INSERT INTO `donhang` VALUES ('2', '1', '2008-01-01', '2008-01-01', 'minh thu', 'Q1', 0, '');
INSERT INTO `donhang` VALUES ('3', '3', '2008-05-25', '2008-05-29', 'Nguyen Van Teo', 'aa', 0, '');
INSERT INTO `donhang` VALUES ('4', '3', '2008-05-25', '2008-05-29', 'Nguyen Van Teo', 'aa', 0, '');
INSERT INTO `donhang` VALUES ('5', '3', '2008-05-25', '2008-05-29', 'Nguyen Van Teo', 'aa', 0, '');
INSERT INTO `donhang` VALUES ('6', '3', '2008-05-25', '2008-05-30', 'Nguyen Van Teo', 'aa', 0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `donhangchitiet`
-- 

CREATE TABLE `donhangchitiet` (
  `idDH` varchar(100) NOT NULL default '0',
  `MaSP` varchar(100) NOT NULL default '0',
  `SoLuong` int(4) NOT NULL default '0',
  `DonGia` int(4) NOT NULL default '0',
  PRIMARY KEY  (`idDH`,`MaSP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `donhangchitiet`
-- 

INSERT INTO `donhangchitiet` VALUES ('4', '9', 8, 245);
INSERT INTO `donhangchitiet` VALUES ('4', '16', 5, 329);
INSERT INTO `donhangchitiet` VALUES ('4', '59', 3, 120);
INSERT INTO `donhangchitiet` VALUES ('5', '28', 33, 120);
INSERT INTO `donhangchitiet` VALUES ('6', '1', 8, 195);
INSERT INTO `donhangchitiet` VALUES ('6', '26', 9, 120);

-- --------------------------------------------------------

-- 
-- Table structure for table `loaisp`
-- 

CREATE TABLE `loaisp` (
  `idLoai` int(12) NOT NULL auto_increment,
  `idCL` int(12) NOT NULL default '0',
  `Ten` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`idLoai`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- 
-- Dumping data for table `loaisp`
-- 

INSERT INTO `loaisp` VALUES (1, 1, 'Áo thun');
INSERT INTO `loaisp` VALUES (2, 1, 'Áo sơ mi');
INSERT INTO `loaisp` VALUES (3, 1, 'Áo khoác');
INSERT INTO `loaisp` VALUES (4, 1, 'Áo kiểu');
INSERT INTO `loaisp` VALUES (5, 1, 'Quần dài');
INSERT INTO `loaisp` VALUES (6, 1, 'Quần short - lửng');
INSERT INTO `loaisp` VALUES (7, 1, 'Váy');
INSERT INTO `loaisp` VALUES (8, 1, 'Bộ áo quần');
INSERT INTO `loaisp` VALUES (9, 1, 'Bộ áo váy');
INSERT INTO `loaisp` VALUES (10, 2, 'Áo thun');
INSERT INTO `loaisp` VALUES (11, 2, 'Áo sơ mi');
INSERT INTO `loaisp` VALUES (12, 2, 'Áo khoác');
INSERT INTO `loaisp` VALUES (13, 2, 'Quần short');
INSERT INTO `loaisp` VALUES (14, 2, 'Quần dài');
INSERT INTO `loaisp` VALUES (15, 2, 'Thắc lưng');
INSERT INTO `loaisp` VALUES (16, 2, 'Ví');
INSERT INTO `loaisp` VALUES (17, 2, 'Mắc kính');
INSERT INTO `loaisp` VALUES (18, 1, 'Thắc lưng');
INSERT INTO `loaisp` VALUES (19, 1, 'Túi xách');
INSERT INTO `loaisp` VALUES (20, 1, 'Ví tay');
INSERT INTO `loaisp` VALUES (21, 1, 'Mắc kính');

-- --------------------------------------------------------

-- 
-- Table structure for table `sanpham`
-- 

CREATE TABLE `sanpham` (
  `idSP` int(12) NOT NULL auto_increment,
  `idLoai` int(12) NOT NULL default '0',
  `MaSP` varchar(10) NOT NULL default '',
  `Mota` varchar(255) NOT NULL,
  `NgayCapNhat` date NOT NULL default '0000-00-00',
  `Gia` int(4) NOT NULL default '0',
  `UrlHinh` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`idSP`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=447 ;

-- 
-- Dumping data for table `sanpham`
-- 

INSERT INTO `sanpham` VALUES (1, 1, 'ATF-000001', 'ÁO phông vàng , dúm ở cổ và hai bên sườn, in hình tạo nét cá tính cho người mặc', '2008-05-11', 195, 'img_sp/nu/Ao thun/ATF-000001.jpg');
INSERT INTO `sanpham` VALUES (2, 1, 'ATF-000002', 'Áo phông màu xanh, chất liệu 100% cotton, đính hạt', '2008-05-11', 215, 'img_sp/nu/Ao thun/ATF-000002.jpg');
INSERT INTO `sanpham` VALUES (3, 1, 'ATF-000003', 'Áo thun cộc tay , chất liệu 100% cotton , mầu xanh', '2008-05-11', 215, 'img_sp/nu/Ao thun/ATF-000003.jpg');
INSERT INTO `sanpham` VALUES (4, 1, 'ATF-000004', 'Áo thun ko tay cổ rộng, in hoa văn cổ được cách điệu, hợp với bạn gái có dáng cao', '2008-05-11', 215, 'img_sp/nu/Ao thun/ATF-000004.jpg');
INSERT INTO `sanpham` VALUES (5, 1, 'ATF-000005', 'Một chiếc màu hồng pha xanh lá câylàm bạn nổi bật trước đám đông với sự tươi trẻ và tinh nghịch', '2008-05-11', 215, 'img_sp/nu/Ao thun/ATF-000005.jpg');
INSERT INTO `sanpham` VALUES (6, 1, 'ATF-000006', 'Áo phông màu dacam in hình , chất liệu cotton', '2008-05-12', 235, 'img_sp/nu/Ao thun/ATF-000006.jpg');
INSERT INTO `sanpham` VALUES (7, 1, 'ATF-000007', 'Áo phông màu xanh ba lỗ có in hình, chất liệu 100% cotton', '2008-05-12', 235, 'img_sp/nu/Ao thun/ATF-000007.jpg');
INSERT INTO `sanpham` VALUES (8, 1, 'ATF-000008', 'chiếc áo mang dáng vẻ hơi bụi nhưng ko làm mất đi sự nữ tính,chất liệu 100% cotton', '2008-05-12', 235, 'img_sp/nu/Ao thun/ATF-000008.jpg');
INSERT INTO `sanpham` VALUES (9, 1, 'ATF-000009', 'Áo phông màu vàng cổ rộng', '2008-05-12', 245, 'img_sp/nu/Ao thun/ATF-000009.jpg');
INSERT INTO `sanpham` VALUES (10, 1, 'ATF-000010', 'Áo thun cộc tay, kẻ ngang hàng nhập', '2008-05-12', 245, 'img_sp/nu/Ao thun/ATF-000010.jpg');
INSERT INTO `sanpham` VALUES (11, 1, 'ATF-000011', 'Áo phông hồng kẻ ngang thích hợp với bạn gái có dáng gầy, tạo dáng trẻ trung', '2008-05-13', 255, 'img_sp/nu/Ao thun/ATF-000011.jpg');
INSERT INTO `sanpham` VALUES (12, 1, 'ATF-000012', 'Áo phông bo đai, kẻ ngang mầu đỏ', '2008-05-13', 275, 'img_sp/nu/Ao thun/ATF-000012.jpg');
INSERT INTO `sanpham` VALUES (13, 1, 'ATF-000013', 'Áo phông dài , bo đai ở giữa , chất liệu 100% cotton', '2008-05-13', 275, 'img_sp/nu/Ao thun/ATF-000013.jpg');
INSERT INTO `sanpham` VALUES (14, 1, 'ATF-000014', 'Chất liệu 100% cotton , kiểu dáng bụi - hợp với bạn gái có cá tính', '2008-05-13', 275, 'img_sp/nu/Ao thun/ATF-000014.jpg');
INSERT INTO `sanpham` VALUES (15, 1, 'ATF-000015', 'Áo thun tím cộng với áo quây tạo sự gợi cảm và quý phái', '2008-05-13', 310, 'img_sp/nu/Ao thun/ATF-000015.jpg');
INSERT INTO `sanpham` VALUES (16, 1, 'ATF-000016', 'Áo thun màu xanh nhạt cổ lệch tạo sự kín đáo và sang trọng', '2008-05-14', 329, 'img_sp/nu/Ao thun/ATF-000016.jpg');
INSERT INTO `sanpham` VALUES (17, 1, 'ATF-000017', 'Áo dài tay cổ tròn kết bèo màu xanh ghi , hàng nhập từ Nhật Bản , chất liệu thun', '2008-05-14', 355, 'img_sp/nu/Ao thun/ATF-000017.jpg');
INSERT INTO `sanpham` VALUES (18, 1, 'ATF-000018', 'Áo sơ mi trắng, cổ và viền ngực bằng ren tạo sự nhẹ nhàng cho người mặc', '2008-05-14', 359, 'img_sp/nu/Ao thun/ATF-000018.jpg');
INSERT INTO `sanpham` VALUES (19, 1, 'ATF-000019', 'Áo dài tay cổ đổ màu be, hàng nhập từ Nhật Bản , chất liệu thun', '2008-05-14', 395, 'img_sp/nu/Ao thun/ATF-000019.jpg');
INSERT INTO `sanpham` VALUES (20, 1, 'ATF-000020', 'Áo thun màu đỏ , đính hạt ở vai và gấu áo tạo cho người mặc nét cá tính và nổi bật trước đám đông', '2008-05-14', 795, 'img_sp/nu/Ao thun/ATF-000020.jpg');
INSERT INTO `sanpham` VALUES (21, 1, 'ATF-000021', 'Áo thun màu xanh, đính đá ở vai và gấu áo tạo nét nhẹ nhang và quyến rũ cho người mặc', '0000-00-00', 795, 'img_sp/nu/Ao thun/ATF-000021.jpg');
INSERT INTO `sanpham` VALUES (22, 2, 'ASF-000001', 'Áo sơ mi tay ngắn đính hạt màu trắng', '0000-00-00', 50, 'img_sp/nu/ao so mi/ASF-000001.jpg');
INSERT INTO `sanpham` VALUES (23, 2, 'ASF-000002', 'Áo sơ mi tay bèo ngắn hoa văn xanh màu trắng', '2008-05-13', 60, 'img_sp/nu/ao so mi/ASF-000002.jpg');
INSERT INTO `sanpham` VALUES (24, 2, 'ASF-000003', 'Áo sơ mi sát cánh kết kim sa màu Vàng', '2008-05-13', 79, 'img_sp/nu/ao so mi/ASF-000003.jpg');
INSERT INTO `sanpham` VALUES (25, 2, 'ASF-000004', 'Sơ mi tay ngắn bèo nẹp chấm bi màu xanh', '2008-05-13', 120, 'img_sp/nu/ao so mi/ASF-000004.jpg');
INSERT INTO `sanpham` VALUES (26, 2, 'ASF-000005', 'Sơ mi tay ngắn bèo nẹp ply trước nút cài tay màu đen', '2008-05-13', 120, 'img_sp/nu/ao so mi/ASF-000005.jpg');
INSERT INTO `sanpham` VALUES (27, 2, 'ASF-000006', 'Sơ mi tay ngắn nhún chấm bi trắng', '2008-05-13', 120, 'img_sp/nu/ao so mi/ASF-000006.jpg');
INSERT INTO `sanpham` VALUES (28, 2, 'ASF-000007', 'Sơ mi tay ngắn, bèo ngực vàng nhạt', '2008-05-14', 120, 'img_sp/nu/ao so mi/ASF-000007.jpg');
INSERT INTO `sanpham` VALUES (29, 2, 'ASF-000008', 'Sơ mi tay phùng màu xanh ngọc', '2008-05-14', 120, 'img_sp/nu/ao so mi/ASF-000008.jpg');
INSERT INTO `sanpham` VALUES (30, 2, 'ASF-000009', 'Sơ mi cổ trụ tay phồng lở màu trắng', '2008-05-14', 130, 'img_sp/nu/ao so mi/ASF-000009.jpg');
INSERT INTO `sanpham` VALUES (31, 2, 'ASF-000010', 'Sơ mi tay dài màu hồng', '2008-05-14', 140, 'img_sp/nu/ao so mi/ASF-000010.jpg');
INSERT INTO `sanpham` VALUES (32, 2, 'ASF-000011', 'Sơ mi tay dài màu xanh da trời', '2008-05-14', 140, 'img_sp/nu/ao so mi/ASF-000011.jpg');
INSERT INTO `sanpham` VALUES (33, 2, 'ASF-000012', 'Sơ mi tay dài sọc nâu tím', '2008-05-14', 140, 'img_sp/nu/ao so mi/ASF-000012.jpg');
INSERT INTO `sanpham` VALUES (34, 2, 'ASF-000013', 'ÁO SƠ MI NỮ MÀU HỒNG', '2008-05-14', 150, 'img_sp/nu/ao so mi/ASF-000013.jpg');
INSERT INTO `sanpham` VALUES (35, 2, 'ASF-000014', 'Áo kiểu sơ mi tay ngắn màu trắng phối xanh biển', '0000-00-00', 165, 'img_sp/nu/ao so mi/ASF-000014.jpg');
INSERT INTO `sanpham` VALUES (36, 2, 'ASF-000015', 'áo HK cổ sơ mi màu đen sọc xanh', '0000-00-00', 180, 'img_sp/nu/ao so mi/ASF-000015.jpg');
INSERT INTO `sanpham` VALUES (37, 2, 'ASF-000016', 'Áo kiểu sơmi tay ngắn lỡ ly viền đen màu Trắng', '0000-00-00', 180, 'img_sp/nu/ao so mi/ASF-000016.jpg');
INSERT INTO `sanpham` VALUES (38, 2, 'ASF-000017', 'Áo sơni tay dài màu xanh sọc, có 2 túi trước ngực và in hình sau lưng', '0000-00-00', 190, 'img_sp/nu/ao so mi/ASF-000017.jpg');
INSERT INTO `sanpham` VALUES (39, 2, '', 'Áo kiểu sơ mi Xô tay ngắn màu Xám', '0000-00-00', 220, 'img_sp/nu/ao so mi/ASF-000018.jpg');
INSERT INTO `sanpham` VALUES (40, 2, 'ASF-000019', 'Áo sơmi tay ngắn cột nơ một bên màu Vàng nhạt', '0000-00-00', 220, 'img_sp/nu/ao so mi/ASF-000019.jpg');
INSERT INTO `sanpham` VALUES (41, 2, 'ASF-000020', 'Áo sơmi Nam tay dài cách điệu màu Nâu nhạt', '0000-00-00', 230, 'img_sp/nu/ao so mi/ASF-000020.jpg');
INSERT INTO `sanpham` VALUES (42, 2, '', 'Áo sơmi xô tay dài màu Hồng sen', '0000-00-00', 230, '');
INSERT INTO `sanpham` VALUES (43, 2, '', 'Áo sơmi tay ngắn CK màu Trắng', '0000-00-00', 260, '');
INSERT INTO `sanpham` VALUES (44, 2, '', 'Áo sơmi Nam tay dài sọc đứng màu Trắng', '0000-00-00', 280, '');
INSERT INTO `sanpham` VALUES (45, 2, '', 'Áo sơmi Nam tay ngắn màu Đen', '0000-00-00', 280, '');
INSERT INTO `sanpham` VALUES (46, 2, '', 'Áo sơmi tay dài màu Hồng', '0000-00-00', 280, '');
INSERT INTO `sanpham` VALUES (47, 2, '', 'Áo sơmi Nam 2 túi tay ngắn sọc Đen rêu', '0000-00-00', 290, '');
INSERT INTO `sanpham` VALUES (48, 2, '', 'Áo sơmi Nam tay dài màu Nâu', '0000-00-00', 290, '');
INSERT INTO `sanpham` VALUES (49, 2, '', 'Áo sơmi Nam tay ngắn ca rô màu Nâu đen', '0000-00-00', 290, '');
INSERT INTO `sanpham` VALUES (50, 2, '', 'Áo sơ mi 2 túi trước cầu vai viền xanh màu trắng', '0000-00-00', 325, '');
INSERT INTO `sanpham` VALUES (51, 2, '', 'Áo sơ mi cách điệu tay bản to viền màu trắng', '0000-00-00', 325, '');
INSERT INTO `sanpham` VALUES (52, 2, '', 'Áo kiểu sơmi màu Xanh chuối BE ONE', '0000-00-00', 420, '');
INSERT INTO `sanpham` VALUES (53, 2, '', 'Áo len màu đen cổ sơ mi trắng', '0000-00-00', 580, '');
INSERT INTO `sanpham` VALUES (54, 2, '', 'Ao sơ mi kiểu cổ bèo voan trắng', '0000-00-00', 580, '');
INSERT INTO `sanpham` VALUES (55, 3, 'ACF-000001', 'Áo khoác tay ngắn cột dây màu Xanh biển', '0000-00-00', 75, 'img_sp/nu/ao khoac/ACF-000001.jpg');
INSERT INTO `sanpham` VALUES (56, 3, 'ACF-000002', 'Áo khoác lửng thun lạnh màu trắng', '0000-00-00', 80, 'img_sp/nu/ao khoac/ACF-000002.jpg');
INSERT INTO `sanpham` VALUES (57, 3, 'ACF-000003', 'Áo khoác lửng thun lạnh màu xám', '0000-00-00', 80, 'img_sp/nu/ao khoac/ACF-000003.jpg');
INSERT INTO `sanpham` VALUES (58, 3, 'ACF-000004', 'Áo khoác lửng thun lạnh màu hồng có nón', '0000-00-00', 120, 'img_sp/nu/ao khoac/ACF-000004.jpg');
INSERT INTO `sanpham` VALUES (59, 3, 'ACF-000005', 'Áo khoác Nữ có nón tay dài bo thân màu Hồng', '0000-00-00', 120, 'img_sp/nu/ao khoac/ACF-000005.jpg');
INSERT INTO `sanpham` VALUES (60, 3, 'ACF-000006', 'áo khoác lửng HK xanh đen', '0000-00-00', 135, 'img_sp/nu/ao khoac/ACF-000006.jpg');
INSERT INTO `sanpham` VALUES (61, 3, 'ACF-000007', 'ÁO KHOÁC CỔ RỘNG TAY MÀU ĐEN', '2008-05-13', 155, 'img_sp/nu/ao khoac/ACF-000007.jpg');
INSERT INTO `sanpham` VALUES (62, 3, 'ACF-000008', 'Áo khoác lửng tay dài thun lạnh màu hồng', '2008-05-13', 160, 'img_sp/nu/ao khoac/ACF-000008.jpg');
INSERT INTO `sanpham` VALUES (63, 3, 'ACF-000009', 'Áo khoác lửng màu Xanh', '2008-05-13', 169, 'img_sp/nu/ao khoac/ACF-000009.jpg');
INSERT INTO `sanpham` VALUES (64, 3, 'ACF-000010', 'Áo khoác lửng Oruola', '2008-05-13', 192, 'img_sp/nu/ao khoac/ACF-000010.jpg');
INSERT INTO `sanpham` VALUES (65, 3, 'ACF-000011', 'Áo khoác thun nữ màu Xám lông chuột', '2008-05-13', 199, 'img_sp/nu/ao khoac/ACF-000011.jpg');
INSERT INTO `sanpham` VALUES (66, 3, 'ACF-000012', 'Áo khoác kaki nữ màu trắng', '0000-00-00', 219, 'img_sp/nu/ao khoac/ACF-000012.jpg');
INSERT INTO `sanpham` VALUES (67, 3, 'ACF-000013', 'ÁO KHOÁC form dài đẹp trắng sọc xanh', '2008-05-14', 220, 'img_sp/nu/ao khoac/ACF-000013.jpg');
INSERT INTO `sanpham` VALUES (68, 3, 'ACF-000014', 'Áo khoác màu Trắng', '2008-05-14', 220, 'img_sp/nu/ao khoac/ACF-000014.jpg');
INSERT INTO `sanpham` VALUES (69, 3, 'ACF-000015', 'Áo khoác nhung đen', '2008-05-14', 242, 'img_sp/nu/ao khoac/ACF-000015.jpg');
INSERT INTO `sanpham` VALUES (70, 3, 'ACF-000016', 'Áo khoác tay dài màu Trắng', '2008-05-14', 249, 'img_sp/nu/ao khoac/ACF-000016.jpg');
INSERT INTO `sanpham` VALUES (71, 3, 'ACF-000017', 'ÁO KHOÁC KAKI TAY DÀI MÀU ĐEN', '0000-00-00', 275, 'img_sp/nu/ao khoac/ACF-000017.jpg');
INSERT INTO `sanpham` VALUES (72, 3, 'ACF-000018', 'Áo khoác màu Xanh lá thun lửngcó nón-N977', '0000-00-00', 295, 'img_sp/nu/ao khoac/ACF-000018.jpg');
INSERT INTO `sanpham` VALUES (73, 3, 'ACF-000019', 'Áo khoác đen', '0000-00-00', 520, 'img_sp/nu/ao khoac/ACF-000019.jpg');
INSERT INTO `sanpham` VALUES (74, 3, 'ACF-000020', 'Áo khoác manto phi màu đen', '0000-00-00', 550, 'img_sp/nu/ao khoac/ACF-000020.jpg');
INSERT INTO `sanpham` VALUES (75, 4, 'AKF-000001', 'Áo thun tay ngắn chấm bi màu Trắng', '0000-00-00', 200, 'img_sp/nu/ao kieu/AKF-000001.jpg');
INSERT INTO `sanpham` VALUES (76, 4, 'AKF-000002', 'Áo sơmi xô tay dài màu Hồng sen', '2008-05-13', 230, 'img_sp/nu/ao kieu/AKF-000002.jpg');
INSERT INTO `sanpham` VALUES (77, 4, 'AKF-000003', 'Áo thun cổ U tay ngắn gắn nơ màu Đen', '2008-05-13', 190, 'img_sp/nu/ao kieu/AKF-000003.jpg');
INSERT INTO `sanpham` VALUES (78, 4, 'AKF-000004', 'Áo kiểu 2 dây đính 3 nơ bo thân màu Nâu', '2008-05-13', 200, 'img_sp/nu/ao kieu/AKF-000004.jpg');
INSERT INTO `sanpham` VALUES (79, 4, 'AKF-000005', 'Áo thun có cổ tay ngắn in hình màu Vàng', '2008-05-13', 220, 'img_sp/nu/ao kieu/AKF-000005.jpg');
INSERT INTO `sanpham` VALUES (80, 4, 'AKF-000006', 'Áo kiểu cổ tròn tay ngắn thân bo màu xanh biển', '2008-05-13', 220, 'img_sp/nu/ao kieu/AKF-000006.jpg');
INSERT INTO `sanpham` VALUES (81, 4, 'AKF-000007', 'Áo Phi cổ cao đính nút tay ngắn form dài màu Tím', '2008-05-14', 430, 'img_sp/nu/ao kieu/AKF-000007.jpg');
INSERT INTO `sanpham` VALUES (82, 4, 'AKF-000008', 'Áo thun form dài cổ sau khoét sâu rút dây lai áo màu Xám', '2008-05-14', 385, 'img_sp/nu/ao kieu/AKF-000008.jpg');
INSERT INTO `sanpham` VALUES (83, 4, 'AKF-000009', 'Áo thun 2 lớp có nón màu Cam from dài', '2008-05-14', 385, 'img_sp/nu/ao kieu/AKF-000009.jpg');
INSERT INTO `sanpham` VALUES (84, 4, 'AKF-000010', 'Áo thun 2 lớp dạng ba lỗ màu Đen phối sọc trắng', '2008-05-14', 345, 'img_sp/nu/ao kieu/AKF-000010.jpg');
INSERT INTO `sanpham` VALUES (85, 4, 'AKF-000011', 'Áo thun cổ tim tay ngắn có hình lá cờ màu Tím', '2008-05-14', 325, 'img_sp/nu/ao kieu/AKF-000011.jpg');
INSERT INTO `sanpham` VALUES (86, 4, 'AKF-000012', 'Áo from dài có nón tay dài màu Hồng sọc phối đen', '0000-00-00', 485, 'img_sp/nu/ao kieu/AKF-000012.jpg');
INSERT INTO `sanpham` VALUES (87, 4, 'AKF-000013', 'Áo sơmi tay ngắn CK màu Trắng', '0000-00-00', 260, 'img_sp/nu/ao kieu/AKF-000013.jpg');
INSERT INTO `sanpham` VALUES (88, 4, 'AKF-000014', 'Áo kiểu mitu Trắng ren ngực ngắn tay', '0000-00-00', 200, 'img_sp/nu/ao kieu/AKF-000014.jpg');
INSERT INTO `sanpham` VALUES (89, 4, 'AKF-000015', 'Áo thun dây có lớp voan dài màu rêu', '0000-00-00', 280, 'img_sp/nu/ao kieu/AKF-000015.jpg');
INSERT INTO `sanpham` VALUES (90, 4, 'AKF-000016', 'Áo thun kiểu cổ tròn sát cánh thân bo màu Đen', '0000-00-00', 210, 'img_sp/nu/ao kieu/AKF-000016.jpg');
INSERT INTO `sanpham` VALUES (91, 4, 'AKF-000017', 'Áo thun đô ngắn màu Xanh', '0000-00-00', 130, 'img_sp/nu/ao kieu/AKF-000017.jpg');
INSERT INTO `sanpham` VALUES (92, 4, 'AKF-000018', 'Áo kiểu cổ tròn tay phồng viền bèo vàng thân màu Nâu', '0000-00-00', 155, 'img_sp/nu/ao kieu/AKF-000018.jpg');
INSERT INTO `sanpham` VALUES (93, 4, 'AKF-000019', 'Áo kiểu cổ tròn tay phồg nhỏ chấm bi to màu Nâu trắng', '0000-00-00', 155, 'img_sp/nu/ao kieu/AKF-000019.jpg');
INSERT INTO `sanpham` VALUES (94, 4, 'AKF-000020', 'Áo kiểu cổ tim đứng tay phồng kết nút màu Đen', '0000-00-00', 165, 'img_sp/nu/ao kieu/AKF-000020.jpg');
INSERT INTO `sanpham` VALUES (95, 4, '', 'Áo kiểu cổ trái tim tay phồng viền bèo hoa xanh màu Trắng', '0000-00-00', 145, '');
INSERT INTO `sanpham` VALUES (96, 4, '', 'Áo kiểu giả vest tay dài hoa văn xanh nền trắng', '0000-00-00', 275, '');
INSERT INTO `sanpham` VALUES (97, 4, '', 'Áo kiểu giả vest tay dài hoa văn đỏ đen viền trắng', '0000-00-00', 265, '');
INSERT INTO `sanpham` VALUES (98, 4, '', 'Áo vest tay dài 2 túi màu Vàng viền nâu', '0000-00-00', 265, '');
INSERT INTO `sanpham` VALUES (99, 4, '', 'Áo len cổ tròn sát cánh sọc ngang viền xanh lá', '0000-00-00', 270, '');
INSERT INTO `sanpham` VALUES (100, 4, '', 'Áo thun cổ tròn tay ngắn in hình màu Vàng', '0000-00-00', 240, '');
INSERT INTO `sanpham` VALUES (101, 4, '', 'Áo len cổ tròn tay ngắn thân bo sọc ngang màu Xanh bạc', '0000-00-00', 230, '');
INSERT INTO `sanpham` VALUES (102, 4, '', 'Áo thun kiểu cổ tròn sát cánh hở sau lưng from dài màu Đen', '0000-00-00', 190, '');
INSERT INTO `sanpham` VALUES (103, 4, '', 'Áo thun kiểu có nón cổ tròn tay dài viền da beo màu Trắng', '0000-00-00', 200, '');
INSERT INTO `sanpham` VALUES (104, 4, '', 'Áo thun nữ tay ngắn in cô gái màu Xanh', '0000-00-00', 50, '');
INSERT INTO `sanpham` VALUES (105, 4, '', 'Áo thun nữ cổ tròn sát cánh in hình tròn màu Đen', '0000-00-00', 150, '');
INSERT INTO `sanpham` VALUES (106, 4, '', 'Áo thun nữ cổ đổ sát cánh form dài màu Trắng', '0000-00-00', 180, '');
INSERT INTO `sanpham` VALUES (107, 4, '', 'Áo thun nữ cổ tròn tay ngắn hình chuột mickey màu Trắng', '0000-00-00', 150, '');
INSERT INTO `sanpham` VALUES (108, 4, '', 'Áo thun nữ cổ tròn tay ngắn màu Cam', '0000-00-00', 175, '');
INSERT INTO `sanpham` VALUES (109, 4, '', 'Áo thun nữ màu đỏ cổ tròn tay ngắn viền tay cổ hình vịt Donal', '0000-00-00', 150, '');
INSERT INTO `sanpham` VALUES (110, 4, '', 'Áo thun cổ tròn tay ngắn form dài hình con khỉ màu Đỏ', '0000-00-00', 150, '');
INSERT INTO `sanpham` VALUES (111, 4, '', 'Áo thun kiểu form dài in chữ LIVE PINK màu Trắng', '0000-00-00', 150, '');
INSERT INTO `sanpham` VALUES (112, 4, '', 'Áo kiểu 2 dây xoắn kết cách điệu màu Xanh', '0000-00-00', 180, '');
INSERT INTO `sanpham` VALUES (113, 4, '', 'Áo kiểu cổ tim đắp kết hoa hồng tay ngắn màu Xanh đen', '0000-00-00', 180, '');
INSERT INTO `sanpham` VALUES (114, 4, '', 'Áo kiểu 2 dây cách điệu bèo tay xuống ngực màu Xanh biển', '0000-00-00', 180, '');
INSERT INTO `sanpham` VALUES (115, 4, '', 'Áo kiểu cổ thuyền rộng tay lỡ viền ran trắng màu Xanh đen', '0000-00-00', 180, '');
INSERT INTO `sanpham` VALUES (116, 4, '', 'Áo kiểu cổ tròn tay phồng dài bo thân màu Trắng', '0000-00-00', 180, '');
INSERT INTO `sanpham` VALUES (117, 4, '', 'Áo kiểu cổ tim sát cánh cột nơ eo màu Xanh đen', '0000-00-00', 180, '');
INSERT INTO `sanpham` VALUES (118, 4, '', 'Áo kiểu cổ sơmi tay ngắn kết nút sọc ca rô màu Nâu nhạt', '0000-00-00', 180, '');
INSERT INTO `sanpham` VALUES (119, 4, '', 'Áo kiểu cổ rộng kết hoa vai màu Hồng', '0000-00-00', 180, '');
INSERT INTO `sanpham` VALUES (120, 4, '', 'Áo kiểu sơmi tay ngắn lỡ ly viền đen màu Trắng', '0000-00-00', 180, '');
INSERT INTO `sanpham` VALUES (121, 4, '', 'Áo kiểu cổ tim rộng tay phồng màu Hồng sen', '0000-00-00', 180, '');
INSERT INTO `sanpham` VALUES (122, 4, '', 'Áo thun Nữ cổ V tay ngắn cột nơ hông in hình cô gái màu Xanh biển', '0000-00-00', 95, '');
INSERT INTO `sanpham` VALUES (123, 4, '', 'Áo thun Nữ cổ V tay ngắn đính nút in hoa xanh màu Trắng', '0000-00-00', 100, '');
INSERT INTO `sanpham` VALUES (124, 4, '', 'Áo thun Nữ cổ tim tay phồng hình bướm xinh màu Xanh biển', '0000-00-00', 125, '');
INSERT INTO `sanpham` VALUES (125, 4, '', 'Áo thun Nữ cổ tròn tay ngắn kết nút màu Vàng nhạt', '0000-00-00', 100, '');
INSERT INTO `sanpham` VALUES (126, 4, '', 'Áo thun sọc gân Nữ cổ sơ mi tay ngắn màu Vàng', '0000-00-00', 120, '');
INSERT INTO `sanpham` VALUES (127, 4, '', 'Áo thun cá sấu Nữ cổ sơ mi tay ngắn màu Xanh lá', '0000-00-00', 120, '');
INSERT INTO `sanpham` VALUES (128, 4, '', 'Áo thun Nữ cổ sơ mi tay ngắn sọc ngang màu Hồng', '0000-00-00', 120, '');
INSERT INTO `sanpham` VALUES (129, 5, 'QDF-000001', 'QUẦN JEANS DÀI XANH WASH', '0000-00-00', 162, 'img_sp/nu/Quan dai/QDF-000001.jpg');
INSERT INTO `sanpham` VALUES (130, 5, 'QDF-000002', 'Quần JEAN nữ màu Xanh biển', '0000-00-00', 185, 'img_sp/nu/Quan dai/QDF-000002.jpg');
INSERT INTO `sanpham` VALUES (131, 5, 'QDF-000003', 'Quần JEANS màu Xanh nhạt', '0000-00-00', 185, 'img_sp/nu/Quan dai/QDF-000003.jpg');
INSERT INTO `sanpham` VALUES (132, 5, 'QDF-000004', 'Quần JEANS thái màu Trắng', '0000-00-00', 185, 'img_sp/nu/Quan dai/QDF-000004.jpg');
INSERT INTO `sanpham` VALUES (133, 5, 'QDF-000005', 'Quần Nhung nữ màu Nâu', '0000-00-00', 199, 'img_sp/nu/Quan dai/QDF-000005.jpg');
INSERT INTO `sanpham` VALUES (134, 5, 'QDF-000006', 'QUẦN JEANS DÀI MÀU XANH LỢT WASH', '0000-00-00', 207, 'img_sp/nu/Quan dai/QDF-000006.jpg');
INSERT INTO `sanpham` VALUES (135, 5, 'QDF-000007', 'Quần dài kaki đinh nút túi màu Trắng', '0000-00-00', 210, 'img_sp/nu/Quan dai/QDF-000007.jpg');
INSERT INTO `sanpham` VALUES (136, 5, 'QDF-000008', 'QUẦN JEANS DÀI DIESEL MÀU XANH LẠT', '0000-00-00', 225, 'img_sp/nu/Quan dai/QDF-000008.jpg');
INSERT INTO `sanpham` VALUES (137, 5, 'QDF-000009', 'Quần đắp vải LINEN', '0000-00-00', 230, 'img_sp/nu/Quan dai/QDF-000009.jpg');
INSERT INTO `sanpham` VALUES (138, 5, 'QDF-000010', 'Quần JEANS màu đen thêu túi sau', '0000-00-00', 235, 'img_sp/nu/Quan dai/QDF-000010.jpg');
INSERT INTO `sanpham` VALUES (139, 5, 'QDF-000011', 'Quần nỉ dài có hai túi màu Xám', '0000-00-00', 240, 'img_sp/nu/Quan dai/QDF-000011.jpg');
INSERT INTO `sanpham` VALUES (140, 5, 'QDF-000012', 'Quần JEANS tím thêu hoa túi sau màu Tím', '0000-00-00', 275, 'img_sp/nu/Quan dai/QDF-000012.jpg');
INSERT INTO `sanpham` VALUES (141, 5, 'QDF-000013', 'Quần jeans màu xanh nhạt', '0000-00-00', 320, 'img_sp/nu/Quan dai/QDF-000013.jpg');
INSERT INTO `sanpham` VALUES (142, 5, 'QDF-000014', 'Quần jeans màu xanh nhạt wash đùi', '0000-00-00', 320, 'img_sp/nu/Quan dai/QDF-000014.jpg');
INSERT INTO `sanpham` VALUES (143, 5, 'QDF-000015', 'Quần JEAN 269 màu Đen', '0000-00-00', 340, 'img_sp/nu/Quan dai/QDF-000015.jpg');
INSERT INTO `sanpham` VALUES (144, 5, 'QDF-000016', 'Quần kaki dài kết đá màu Xanh biển', '0000-00-00', 345, 'img_sp/nu/Quan dai/QDF-000016.jpg');
INSERT INTO `sanpham` VALUES (145, 5, 'QDF-000017', 'Quần JEAN nữ CLASSIC màu Đen', '0000-00-00', 350, 'img_sp/nu/Quan dai/QDF-000017.jpg');
INSERT INTO `sanpham` VALUES (146, 5, 'QDF-000018', 'Quần JEAN nữ CLASSIC màu Đen', '0000-00-00', 350, 'img_sp/nu/Quan dai/QDF-000018.jpg');
INSERT INTO `sanpham` VALUES (147, 5, 'QDF-000019', 'Quần JEANS CAVALLI màu Xám', '0000-00-00', 350, 'img_sp/nu/Quan dai/QDF-000019.jpg');
INSERT INTO `sanpham` VALUES (148, 5, 'QDF-000020', 'Quần JEANS dài màu Đỏ Đô', '0000-00-00', 350, 'img_sp/nu/Quan dai/QDF-000020.jpg');
INSERT INTO `sanpham` VALUES (149, 5, '', 'Quần JEANS LEVI''S màu Xanh biển', '0000-00-00', 350, '');
INSERT INTO `sanpham` VALUES (150, 5, '', 'Quần JEANS nữ GUESS màu Xanh biển', '0000-00-00', 350, '');
INSERT INTO `sanpham` VALUES (151, 5, '', 'Quần JEANS nữ MNG màu Xanh biển', '0000-00-00', 350, '');
INSERT INTO `sanpham` VALUES (152, 5, '', 'Quần JEANS đen chỉ màu Vàng', '0000-00-00', 380, '');
INSERT INTO `sanpham` VALUES (153, 5, '', 'Quần JEANS D&G màu Đen', '0000-00-00', 410, '');
INSERT INTO `sanpham` VALUES (154, 5, '', 'Quần JEAN dài nữ có thêm túi trước màu Xanh biển', '0000-00-00', 420, '');
INSERT INTO `sanpham` VALUES (155, 5, '', 'Quần JEAN dài nữ có thêu túi màu Xanh bạc', '0000-00-00', 420, '');
INSERT INTO `sanpham` VALUES (156, 5, '', 'Quần JEAN dài nữ có túi kiểu sọc kem Xanh đen', '0000-00-00', 420, '');
INSERT INTO `sanpham` VALUES (157, 5, '', 'Quần JEAN dài nữ số 66 oát màu Vàng da', '0000-00-00', 420, '');
INSERT INTO `sanpham` VALUES (158, 5, '', 'Quần JEAN MANGO đính hột túi sau màu Xanh', '0000-00-00', 480, '');
INSERT INTO `sanpham` VALUES (159, 5, '', 'Quần JEANS nữ MASCIANO màu Trắng', '0000-00-00', 550, '');
INSERT INTO `sanpham` VALUES (160, 5, '', 'QUẦN JEAN DÀI  MÀU XANH BIỂN', '0000-00-00', 630, '');
INSERT INTO `sanpham` VALUES (161, 5, '', 'QUẦN JEAN DÀI BEBE MÀU XANH BIỂN', '0000-00-00', 630, '');
INSERT INTO `sanpham` VALUES (162, 5, '', 'QUẦN JEAN DÀI MÀU XANH BIỂN', '0000-00-00', 630, '');
INSERT INTO `sanpham` VALUES (163, 5, '', 'QUẦN JEAN DÀI BEBE MÀU XANH ĐEN', '0000-00-00', 675, '');
INSERT INTO `sanpham` VALUES (164, 5, '', 'Quần JEAN Nữ túi kiểu +thắt lưng bố màu Đen', '0000-00-00', 690, '');
INSERT INTO `sanpham` VALUES (165, 5, '', 'QUẦN JEAN DÀI MASCIANNO MÀU HỒNG', '0000-00-00', 720, '');
INSERT INTO `sanpham` VALUES (166, 5, '', 'QUẦN JEAN DÀI MASCIANNO MÀU TRẮNG', '0000-00-00', 720, '');
INSERT INTO `sanpham` VALUES (167, 5, '', 'Quần Jean Jenifer lopez màu xanh đen', '0000-00-00', 783, '');
INSERT INTO `sanpham` VALUES (168, 5, '', 'Quần Jean VB màu xanh đậm', '0000-00-00', 783, '');
INSERT INTO `sanpham` VALUES (169, 5, '', 'Quần JEANS dài hình Bướm màu Xanh biển', '0000-00-00', 800, '');
INSERT INTO `sanpham` VALUES (170, 5, '', 'Quần JEANS nữ AX màu Xanh', '0000-00-00', 800, '');
INSERT INTO `sanpham` VALUES (171, 5, '', 'Quần JEANS nữ BE BE màu Trắng', '0000-00-00', 800, '');
INSERT INTO `sanpham` VALUES (172, 5, '', 'Quần JEANS nữ LEVI''S màu Xanh đen', '0000-00-00', 800, '');
INSERT INTO `sanpham` VALUES (173, 5, '', 'Quần JEANS GUESS túi đính hột màu Xanh biển', '0000-00-00', 855, '');
INSERT INTO `sanpham` VALUES (174, 6, 'QSF-000001', 'Quần short màu Đen', '0000-00-00', 80, 'img_sp/nu/quan short-lung/QSF-000001.jpg');
INSERT INTO `sanpham` VALUES (175, 6, 'QSF-000002', 'Quần thun ôm nhún la gắn nơi màu Trắng', '0000-00-00', 85, 'img_sp/nu/quan short-lung/QSF-000002.jpg');
INSERT INTO `sanpham` VALUES (176, 6, 'QSF-000003', 'Quần thun ôm nhún lai màu Đen chấm bi trắng', '0000-00-00', 85, 'img_sp/nu/quan short-lung/QSF-000003.jpg');
INSERT INTO `sanpham` VALUES (177, 6, 'QSF-000004', 'Quần short màu trắng đính nút to', '0000-00-00', 90, 'img_sp/nu/quan short-lung/QSF-000004.jpg');
INSERT INTO `sanpham` VALUES (178, 6, 'QSF-000005', 'Quần JEANS short màu Xanh', '0000-00-00', 100, 'img_sp/nu/quan short-lung/QSF-000005.jpg');
INSERT INTO `sanpham` VALUES (179, 6, 'QSF-000006', 'Quần short kaki màu sọc xanh lá', '0000-00-00', 100, 'img_sp/nu/quan short-lung/QSF-000006.jpg');
INSERT INTO `sanpham` VALUES (180, 6, 'QSF-000007', 'Quần short đen', '0000-00-00', 135, 'img_sp/nu/quan short-lung/QSF-000007.jpg');
INSERT INTO `sanpham` VALUES (181, 6, 'QSF-000008', 'Quần kaki lửng sọc xanh đen', '0000-00-00', 150, 'img_sp/nu/quan short-lung/QSF-000008.jpg');
INSERT INTO `sanpham` VALUES (182, 6, 'QSF-000009', 'Quần short màu Xanh đậm', '0000-00-00', 150, 'img_sp/nu/quan short-lung/QSF-000009.jpg');
INSERT INTO `sanpham` VALUES (183, 6, 'QSF-000010', 'Quần short nhung nhiều túi màu Vàng đồng', '0000-00-00', 160, 'img_sp/nu/quan short-lung/QSF-000010.jpg');
INSERT INTO `sanpham` VALUES (184, 6, 'QSF-000011', 'Quần đùi jean', '0000-00-00', 170, 'img_sp/nu/quan short-lung/QSF-000011.jpg');
INSERT INTO `sanpham` VALUES (185, 6, 'QSF-000012', 'Quần short +thắt lưng đính đá màu Kem', '0000-00-00', 170, 'img_sp/nu/quan short-lung/QSF-000012.jpg');
INSERT INTO `sanpham` VALUES (186, 6, 'QSF-000013', 'Quần lửng 2 túi màu Xanh biển', '0000-00-00', 180, 'img_sp/nu/quan short-lung/QSF-000013.jpg');
INSERT INTO `sanpham` VALUES (187, 6, 'QSF-000014', 'Quần lửng BEBE màu Xanh đậm', '0000-00-00', 180, 'img_sp/nu/quan short-lung/QSF-000014.jpg');
INSERT INTO `sanpham` VALUES (188, 6, 'QSF-000015', 'Quần kaki lửng màu Đen', '0000-00-00', 190, 'img_sp/nu/quan short-lung/QSF-000015.jpg');
INSERT INTO `sanpham` VALUES (189, 6, 'QSF-000016', 'Quần short lửng màu Trắng', '0000-00-00', 190, 'img_sp/nu/quan short-lung/QSF-000016.jpg');
INSERT INTO `sanpham` VALUES (190, 6, 'QSF-000017', 'Quần lửng có dây nịt giả màu Xám', '0000-00-00', 200, 'img_sp/nu/quan short-lung/QSF-000017.jpg');
INSERT INTO `sanpham` VALUES (191, 6, 'QSF-000018', 'Quần short lửng màu Xanh chuối', '0000-00-00', 200, 'img_sp/nu/quan short-lung/QSF-000018.jpg');
INSERT INTO `sanpham` VALUES (192, 6, 'QSF-000019', 'Quần short sọc carô màu Kem xanh', '0000-00-00', 200, 'img_sp/nu/quan short-lung/QSF-000019.jpg');
INSERT INTO `sanpham` VALUES (193, 6, 'QSF-000020', 'Quần lửng sọc carô', '0000-00-00', 204, 'img_sp/nu/quan short-lung/QSF-000020.jpg');
INSERT INTO `sanpham` VALUES (194, 6, '', 'Quần short lửng bẻ lai thêu túi màu Xanh biển', '0000-00-00', 205, '');
INSERT INTO `sanpham` VALUES (195, 6, '', 'Quần short lửng dây kéo cam màu Xanh biển', '0000-00-00', 205, '');
INSERT INTO `sanpham` VALUES (196, 6, '', 'Quần lửng màu Vàng', '0000-00-00', 210, '');
INSERT INTO `sanpham` VALUES (197, 6, '', 'Quần short màu đỏ sọc trắng', '0000-00-00', 210, '');
INSERT INTO `sanpham` VALUES (198, 6, '', 'Quần JEANS Short nữ D&G màu Trắng', '0000-00-00', 220, '');
INSERT INTO `sanpham` VALUES (199, 6, '', 'Quần JEAN short bẻ lai màu Xanh biển', '0000-00-00', 230, '');
INSERT INTO `sanpham` VALUES (200, 6, '', 'Quần lửng viền ren màu Nâu', '0000-00-00', 230, '');
INSERT INTO `sanpham` VALUES (201, 6, '', 'Quần có nơ màu xám', '0000-00-00', 237, '');
INSERT INTO `sanpham` VALUES (202, 6, '', 'Quần lửng Nhung màu Nâu', '0000-00-00', 240, '');
INSERT INTO `sanpham` VALUES (203, 6, '', 'Quần short ngắn D&G màu Trắng', '0000-00-00', 240, '');
INSERT INTO `sanpham` VALUES (204, 6, '', 'Quần lửng màu Kem', '0000-00-00', 250, '');
INSERT INTO `sanpham` VALUES (205, 6, '', 'Quần lửng nhung màu Đỏ', '0000-00-00', 250, '');
INSERT INTO `sanpham` VALUES (206, 6, '', 'Quần short chấm bi xanh đen', '0000-00-00', 250, '');
INSERT INTO `sanpham` VALUES (207, 6, '', 'Quần short lửng màu Đen', '0000-00-00', 250, '');
INSERT INTO `sanpham` VALUES (208, 6, '', 'Quần short lửng màu Nâu xám', '0000-00-00', 250, '');
INSERT INTO `sanpham` VALUES (209, 6, '', 'Quần JEAN lửng đính cườm túi màu Xanh biển', '0000-00-00', 255, '');
INSERT INTO `sanpham` VALUES (210, 6, '', 'Quần 2 lưng lửng màu Xanh lá', '0000-00-00', 260, '');
INSERT INTO `sanpham` VALUES (211, 6, '', 'Quần short carô màu Xám', '0000-00-00', 260, '');
INSERT INTO `sanpham` VALUES (212, 6, '', 'Quần short kaki +dây nịt màu Kem', '0000-00-00', 260, '');
INSERT INTO `sanpham` VALUES (213, 6, '', 'Quần JEAN Short nữ màu Đen túi viền nâu', '0000-00-00', 270, '');
INSERT INTO `sanpham` VALUES (214, 6, '', 'Quần JEAN Short nữ màu Xanh biển túi hộp', '0000-00-00', 270, '');
INSERT INTO `sanpham` VALUES (215, 6, '', 'Quần JEAN Short nữ màu Xanh biển túi viền nâu', '0000-00-00', 270, '');
INSERT INTO `sanpham` VALUES (216, 6, '', 'Quần JEAN Short nữ màu Xanh biển viền lai dabeo', '0000-00-00', 270, '');
INSERT INTO `sanpham` VALUES (217, 6, '', 'Quần short kaki ca rô Hồng cam', '0000-00-00', 270, '');
INSERT INTO `sanpham` VALUES (218, 6, '', 'Quần Short nữ màu Trắng', '0000-00-00', 270, '');
INSERT INTO `sanpham` VALUES (219, 6, '', 'Quần Short nữ màu Trắng viền lai dabeo', '0000-00-00', 270, '');
INSERT INTO `sanpham` VALUES (220, 6, '', 'Quần lửng kaki lai xéo màu Nâu', '0000-00-00', 280, '');
INSERT INTO `sanpham` VALUES (221, 6, '', 'Quần JEAN lửng MISS SIXTY màu Đen thêu', '0000-00-00', 290, '');
INSERT INTO `sanpham` VALUES (222, 6, '', 'Quần lửng màu Kem', '0000-00-00', 295, '');
INSERT INTO `sanpham` VALUES (223, 6, '', 'Quần JEAN lửng thêu túi sau bẻ lai màu Xanh biển', '0000-00-00', 300, '');
INSERT INTO `sanpham` VALUES (224, 6, '', 'Quần short JEANS màu Đen LAMINATEL', '0000-00-00', 320, '');
INSERT INTO `sanpham` VALUES (225, 6, '', 'Quần Jean lững gắn nơ ống màu xanh biển', '0000-00-00', 323, '');
INSERT INTO `sanpham` VALUES (226, 6, '', 'Quần lửng JEANS bẻ lai rách túi màu Xanh đậm', '0000-00-00', 330, '');
INSERT INTO `sanpham` VALUES (227, 6, '', 'Quần lửng JEANS bẻ lai wash đùi màu Xanh biển', '0000-00-00', 330, '');
INSERT INTO `sanpham` VALUES (228, 6, '', 'Quần lửng JEANS bẻ lai wash đùi màu Xanh biển đậm', '0000-00-00', 330, '');
INSERT INTO `sanpham` VALUES (229, 6, '', 'Quần JEANS lửng COCOBO màu Xanh đậm', '0000-00-00', 350, '');
INSERT INTO `sanpham` VALUES (230, 6, '', 'Quần short xám có dây thắt lưng', '0000-00-00', 380, '');
INSERT INTO `sanpham` VALUES (231, 6, '', 'Quần JEAN lửng CAVALLI đính đá túi sau màu XÁm chuột', '0000-00-00', 460, '');
INSERT INTO `sanpham` VALUES (232, 6, '', 'Quần short nữ màu Trắng GUESS', '0000-00-00', 480, '');
INSERT INTO `sanpham` VALUES (233, 6, '', 'Quần short nữ màu Vàng MARCIANO', '0000-00-00', 750, '');
INSERT INTO `sanpham` VALUES (234, 7, 'VAF-000001', 'Váy vải màu Trắng phối ca rô', '0000-00-00', 65, 'img_sp/nu/Vay/VAF-000001.jpg');
INSERT INTO `sanpham` VALUES (235, 7, 'VAF-000002', 'Váy xòe trắng, phối ca rô đỏ ấn tượng và dễ thương', '0000-00-00', 85, 'img_sp/nu/Vay/VAF-000002.jpg');
INSERT INTO `sanpham` VALUES (236, 7, 'VAF-000003', 'Váy hoa bi đen vải voan', '0000-00-00', 140, 'img_sp/nu/Vay/VAF-000003.jpg');
INSERT INTO `sanpham` VALUES (237, 7, 'VAF-000004', 'Váy màu Cam xếp li', '0000-00-00', 170, 'img_sp/nu/Vay/VAF-000004.jpg');
INSERT INTO `sanpham` VALUES (238, 7, 'VAF-000005', 'Váy ngắn sọc carô màu Đỏ đen', '0000-00-00', 170, 'img_sp/nu/Vay/VAF-000005.jpg');
INSERT INTO `sanpham` VALUES (239, 7, 'VAF-000006', 'Váy màu Nâu xếp li có dây nịt', '0000-00-00', 180, 'img_sp/nu/Vay/VAF-000006.jpg');
INSERT INTO `sanpham` VALUES (240, 7, 'VAF-000007', 'Váy ngắn màu Tím', '0000-00-00', 180, 'img_sp/nu/Vay/VAF-000007.jpg');
INSERT INTO `sanpham` VALUES (241, 7, 'VAF-000008', 'Váy ngắn màu Hồng', '0000-00-00', 185, 'img_sp/nu/Vay/VAF-000008.jpg');
INSERT INTO `sanpham` VALUES (242, 7, 'VAF-000009', 'Váy Jean lửng màu Xám', '0000-00-00', 190, 'img_sp/nu/Vay/VAF-000009.jpg');
INSERT INTO `sanpham` VALUES (243, 7, 'VAF-000010', 'Váy Kaki màu xanh lá cây', '0000-00-00', 190, 'img_sp/nu/Vay/VAF-000010.jpg');
INSERT INTO `sanpham` VALUES (244, 7, 'VAF-000011', 'Váy kaki màu Kem', '0000-00-00', 199, 'img_sp/nu/Vay/VAF-000011.jpg');
INSERT INTO `sanpham` VALUES (245, 7, 'VAF-000012', 'Váy xếp li màu Vàng', '0000-00-00', 199, 'img_sp/nu/Vay/VAF-000012.jpg');
INSERT INTO `sanpham` VALUES (246, 7, 'VAF-000013', 'Váy JEANS viền đỏ màu Xanh', '0000-00-00', 220, 'img_sp/nu/Vay/VAF-000013.jpg');
INSERT INTO `sanpham` VALUES (247, 7, 'VAF-000014', 'Váy xếp li xòe đườ g viền trắng quanh lai màu Đen', '0000-00-00', 200, 'img_sp/nu/Vay/VAF-000014.jpg');
INSERT INTO `sanpham` VALUES (248, 7, 'VAF-000015', 'Váy lửng xòe ca rô màu Nâu', '0000-00-00', 210, 'img_sp/nu/Vay/VAF-000015.jpg');
INSERT INTO `sanpham` VALUES (249, 7, 'VAF-000016', 'Váy ngắn sọc Trắng đỏ', '0000-00-00', 210, 'img_sp/nu/Vay/VAF-000016.jpg');
INSERT INTO `sanpham` VALUES (250, 7, 'VAF-000017', 'Váy JEANS nữ màu Xanh đen', '0000-00-00', 229, 'img_sp/nu/Vay/VAF-000017.jpg');
INSERT INTO `sanpham` VALUES (251, 7, 'VAF-000018', 'Váy nhún màu Cà phê sữa', '0000-00-00', 230, 'img_sp/nu/Vay/VAF-000018.jpg');
INSERT INTO `sanpham` VALUES (252, 7, 'VAF-000019', 'Váy JEAN ngắn 2 tầng lưng da bò màu Xanh biển', '0000-00-00', 235, 'img_sp/nu/Vay/VAF-000019.jpg');
INSERT INTO `sanpham` VALUES (253, 7, 'VAF-000020', 'Váy trắng nhã nhặn', '0000-00-00', 243, 'img_sp/nu/Vay/VAF-000020.jpg');
INSERT INTO `sanpham` VALUES (254, 7, '', 'Váy Da màu Nâu', '0000-00-00', 250, '');
INSERT INTO `sanpham` VALUES (255, 7, '', 'Váy JUMBAO hoa văn màu Trắng', '0000-00-00', 250, '');
INSERT INTO `sanpham` VALUES (256, 7, '', 'Váy lửng kaki ngắn 2 túi màu Rêu đậm', '0000-00-00', 250, '');
INSERT INTO `sanpham` VALUES (257, 7, '', 'Váy ngắn trắng MGO', '0000-00-00', 250, '');
INSERT INTO `sanpham` VALUES (258, 7, '', 'Váy JEAN ngắn viền lai màu Xanh biển', '0000-00-00', 255, '');
INSERT INTO `sanpham` VALUES (259, 7, '', 'Váy JEANS Xanh ngắn chỉ xanh lá', '0000-00-00', 260, '');
INSERT INTO `sanpham` VALUES (260, 7, '', 'Váy JEANS Xanh ngắn túi thêu đôi cánh', '0000-00-00', 260, '');
INSERT INTO `sanpham` VALUES (261, 8, 'BQF-000001', 'Bộ quần áo lửng HK màu cam cà rốt', '0000-00-00', 120, 'img_sp/nu/bo ao quan/BQF-000001.jpg');
INSERT INTO `sanpham` VALUES (262, 8, 'BQF-000002', 'Bộ quần áo lửng HK màu Đen', '0000-00-00', 120, 'img_sp/nu/bo ao quan/BQF-000002.jpg');
INSERT INTO `sanpham` VALUES (263, 8, 'BQF-000003', 'Bộ áo quần lửng HK màu cam', '0000-00-00', 129, 'img_sp/nu/bo ao quan/BQF-000003.jpg');
INSERT INTO `sanpham` VALUES (264, 8, 'BQF-000004', 'Bộ áo quần Nam nữ', '0000-00-00', 129, 'img_sp/nu/bo ao quan/BQF-000004.jpg');
INSERT INTO `sanpham` VALUES (265, 8, 'BQF-000005', 'Bộ áo quần Nữ thời trang', '0000-00-00', 129, 'img_sp/nu/bo ao quan/BQF-000005.jpg');
INSERT INTO `sanpham` VALUES (266, 8, 'BQF-000006', 'Bộ áo quần lửng HK màu cam', '0000-00-00', 130, 'img_sp/nu/bo ao quan/BQF-000006.jpg');
INSERT INTO `sanpham` VALUES (267, 8, 'BQF-000007', 'Bộ áo quần lửng HK màu đen', '0000-00-00', 130, 'img_sp/nu/bo ao quan/BQF-000007.jpg');
INSERT INTO `sanpham` VALUES (268, 8, 'BQF-000008', 'Bộ áo quần dài Nam nữ', '0000-00-00', 149, 'img_sp/nu/bo ao quan/BQF-000008.jpg');
INSERT INTO `sanpham` VALUES (269, 8, 'BQF-000009', 'Bộ áo quần Nam nữ', '0000-00-00', 149, 'img_sp/nu/bo ao quan/BQF-000009.jpg');
INSERT INTO `sanpham` VALUES (270, 8, 'BQF-000010', 'Bộ áo quần Nam nữ', '0000-00-00', 149, 'img_sp/nu/bo ao quan/BQF-000010.jpg');
INSERT INTO `sanpham` VALUES (271, 8, 'BQF-000011', 'Bộ áo quần nam nữ ngắn', '0000-00-00', 149, 'img_sp/nu/bo ao quan/BQF-000011.jpg');
INSERT INTO `sanpham` VALUES (272, 8, 'BQF-000012', 'Bộ áo quần Nam nữ', '0000-00-00', 149, 'img_sp/nu/bo ao quan/BQF-000012.jpg');
INSERT INTO `sanpham` VALUES (273, 8, 'BQF-000013', 'Bộ áo quần Nam nữ', '0000-00-00', 149, 'img_sp/nu/bo ao quan/BQF-000013.jpg');
INSERT INTO `sanpham` VALUES (274, 8, 'BQF-000014', 'Bộ áo quần Nam nữ', '0000-00-00', 149, 'img_sp/nu/bo ao quan/BQF-000014.jpg');
INSERT INTO `sanpham` VALUES (275, 8, 'BQF-000015', 'Bộ áo quần Nam Nữ thể thao', '0000-00-00', 169, 'img_sp/nu/bo ao quan/BQF-000015.jpg');
INSERT INTO `sanpham` VALUES (276, 8, 'BQF-000016', 'Bộ áo quần short trẻ trung màu trắng', '0000-00-00', 180, 'img_sp/nu/bo ao quan/BQF-000016.jpg');
INSERT INTO `sanpham` VALUES (277, 8, 'BQF-000017', 'Bộ áo quần Nữ thời trang', '0000-00-00', 199, 'img_sp/nu/bo ao quan/BQF-000017.jpg');
INSERT INTO `sanpham` VALUES (278, 8, 'BQF-000018', 'Áo cổ tim bông dưới lai màu Xanh+Quần lửng trắng', '0000-00-00', 235, 'img_sp/nu/bo ao quan/BQF-000018.jpg');
INSERT INTO `sanpham` VALUES (279, 8, 'BQF-000019', 'Bộ áo quần trắng +Áo ba lổ sọc Trắng xanh', '0000-00-00', 145, 'img_sp/nu/bo ao quan/BQF-000019.jpg');
INSERT INTO `sanpham` VALUES (280, 8, 'BQF-000020', 'Áo cổ đổ màu Cam+Quần lửng màu Đen', '0000-00-00', 295, 'img_sp/nu/bo ao quan/BQF-000020.jpg');
INSERT INTO `sanpham` VALUES (281, 8, 'BQF-000021', 'Bộ áo quần cổ U tay ngắn +quần lửng phối màu Trắng nâu', '0000-00-00', 380, 'img_sp/nu/bo ao quan/BQF-000021.jpg');
INSERT INTO `sanpham` VALUES (282, 8, 'BQF-000022', 'Bộ áo quần short màu xanh biển áo màu Đỏ có dấu hòi+thắt lưng', '0000-00-00', 410, 'img_sp/nu/bo ao quan/BQF-000022.jpg');
INSERT INTO `sanpham` VALUES (283, 9, 'BVF-000001', 'Bộ áo váy cổ thuyền tay dài màu Xanh +Kem', '0000-00-00', 380, 'img_sp/nu/bo ao vay/BVF-000001.jpg');
INSERT INTO `sanpham` VALUES (284, 9, 'BVF-000002', 'Bộ áo váy cổ tim tay dài váy xòe màu Nâu', '0000-00-00', 380, 'img_sp/nu/bo ao vay/BVF-000002.jpg');
INSERT INTO `sanpham` VALUES (285, 9, 'BVF-000003', 'Bộ áo váy cổ tim tay lỡ +váy ngắn xòe viền màu Hồng vàng', '0000-00-00', 380, 'img_sp/nu/bo ao vay/BVF-000003.jpg');
INSERT INTO `sanpham` VALUES (286, 9, 'BVF-000004', 'Bộ áo váy cổ U rộng tay hồng lỡ +váychữ A màu Xanh lá', '0000-00-00', 380, 'img_sp/nu/bo ao vay/BVF-000004.jpg');
INSERT INTO `sanpham` VALUES (287, 9, 'BVF-000005', 'Bộ áo váy cổ u tim tay phồng + váy xòe màu Nâu kem', '0000-00-00', 380, 'img_sp/nu/bo ao vay/BVF-000005.jpg');
INSERT INTO `sanpham` VALUES (288, 9, 'BVF-000006', 'Bộ áo váy dạng yếm viền ren hồng váy xòe màu Đen phối hồng', '0000-00-00', 380, 'img_sp/nu/bo ao vay/BVF-000006.jpg');
INSERT INTO `sanpham` VALUES (289, 9, 'BVF-000007', 'Bộ vest kaki thun màu Xanh + Váy trắng', '0000-00-00', 478, 'img_sp/nu/bo ao vay/BVF-000007.jpg');
INSERT INTO `sanpham` VALUES (290, 9, 'BVF-000008', 'Đầm liền váy trắng + Áo gi lê màu đen', '0000-00-00', 855, 'img_sp/nu/bo ao vay/BVF-000008.jpg');
INSERT INTO `sanpham` VALUES (291, 10, 'ATM-000001', 'Áo thun Nam có cổ tay ngắn in hình hai túi màu Xám', '0000-00-00', 139, 'img_sp/nam/Ao thun/ATM-000001.jpg');
INSERT INTO `sanpham` VALUES (292, 10, 'ATM-000002', 'Áo thun Nam cổ tròn tay ngắn sọc ngang thêu hình nhện màu Trắng đen', '0000-00-00', 139, 'img_sp/nam/Ao thun/cccccc.jpg');
INSERT INTO `sanpham` VALUES (293, 10, 'ATM-000003', 'Áo thun cá sấu tay ngắn màu Xanh lá', '0000-00-00', 150, 'img_sp/nam/Ao thun/ATM-000003.jpg');
INSERT INTO `sanpham` VALUES (294, 10, 'ATM-000004', 'Áo thun IIEJ cổ tròn tay ngắn in hình đầu lâu màu Cam', '0000-00-00', 150, 'img_sp/nam/Ao thun/ATM-000004.jpg');
INSERT INTO `sanpham` VALUES (295, 10, 'ATM-000005', 'Áo thun IIEJ cổ tròn tay ngắn in hình màu Xanh biển', '0000-00-00', 150, 'img_sp/nam/Ao thun/ATM-000005.jpg');
INSERT INTO `sanpham` VALUES (296, 10, 'ATM-000006', 'Áo thun ngắn tay cổ tròn viền đen màu Hồng in hình', '0000-00-00', 150, 'img_sp/nam/Ao thun/ATM-000006.jpg');
INSERT INTO `sanpham` VALUES (297, 10, 'ATM-000007', 'Áo thun ngắn tay cổ tròn viền đen màu Xanh đậm', '0000-00-00', 150, 'img_sp/nam/Ao thun/ATM-000007.jpg');
INSERT INTO `sanpham` VALUES (298, 10, 'ATM-000008', 'Áo thun ngắn tay tin hình con khỉ màu Nâu', '0000-00-00', 150, 'img_sp/nam/Ao thun/ATM-000008.jpg');
INSERT INTO `sanpham` VALUES (299, 10, 'ATM-000009', 'Áo thun ngắn tay Vàng sọc đen xanh đỏ ngắn tay', '0000-00-00', 150, 'img_sp/nam/Ao thun/ATM-000009.jpg');
INSERT INTO `sanpham` VALUES (300, 10, 'ATM-000010', 'Áo thun tay ngắn màu vàng viền trắng in hình và chữ trước ngực', '0000-00-00', 150, 'img_sp/nam/Ao thun/ATM-000010.jpg');
INSERT INTO `sanpham` VALUES (301, 10, 'ATM-000011', 'Áo thun Nam cổ tròn tay ngắn in hình khỉ màu Trắng', '0000-00-00', 160, 'img_sp/nam/Ao thun/ATM-000011.jpg');
INSERT INTO `sanpham` VALUES (302, 10, 'ATM-000012', 'Áo thun nam cổ tròn tay ngắn in hình màu Đen', '0000-00-00', 160, 'img_sp/nam/Ao thun/ATM-000012.jpg');
INSERT INTO `sanpham` VALUES (303, 10, 'ATM-000013', 'Áo thun Nam cá sấu có cổ tay ngắn sọc ngang màu Xám Trắng', '0000-00-00', 169, 'img_sp/nam/Ao thun/ATM-000013.jpg');
INSERT INTO `sanpham` VALUES (304, 10, 'ATM-000014', 'Áo thun EQUAL ngắn tay cổ áo sơmi thêu tay màu Xám sọc đen', '0000-00-00', 175, 'img_sp/nam/Ao thun/ATM-000014.jpg');
INSERT INTO `sanpham` VALUES (305, 10, 'ATM-000015', 'Áo thun Nam cổ hình tay ngắn hình ba cố gái màu Đen', '0000-00-00', 180, 'img_sp/nam/Ao thun/ATM-000015.jpg');
INSERT INTO `sanpham` VALUES (306, 10, 'ATM-000016', 'Áo thun Nam cổ tim tay ngắn màu Xanh', '0000-00-00', 180, 'img_sp/nam/Ao thun/ATM-000016.jpg');
INSERT INTO `sanpham` VALUES (307, 10, 'ATM-000017', 'Áo thun Nam cổ tròn tay ngắn viền hồng màu Xanh biển', '0000-00-00', 180, 'img_sp/nam/Ao thun/ATM-000017.jpg');
INSERT INTO `sanpham` VALUES (308, 10, 'ATM-000018', 'Áo thun Nam tay ngắn màu Hồng sọc xám', '0000-00-00', 180, 'img_sp/nam/Ao thun/ATM-000018.jpg');
INSERT INTO `sanpham` VALUES (309, 10, 'ATM-000019', 'Áo thun Nam cổ tròn tay ngắn màu Trắng GULAIXI', '0000-00-00', 189, 'img_sp/nam/Ao thun/ATM-000019.jpg');
INSERT INTO `sanpham` VALUES (310, 10, 'ATM-000020', 'Áo len cổ tim ngắn tay màu Trắng', '0000-00-00', 190, 'img_sp/nam/Ao thun/ATM-000020.jpg');
INSERT INTO `sanpham` VALUES (311, 10, '', 'Áo thun Nam có sổ tay ngắn sọc ngang màu Xanh trắng', '0000-00-00', 190, '');
INSERT INTO `sanpham` VALUES (312, 10, '', 'Áo thun Nam cổ tròn tay ngắn in hình màu Tím', '0000-00-00', 190, '');
INSERT INTO `sanpham` VALUES (313, 10, '', 'Áo thun Nam cổ tròn tay ngắn in hình màu Xám', '0000-00-00', 190, '');
INSERT INTO `sanpham` VALUES (314, 10, '', 'Áo thun Nam cổ tròn tay ngắn in hình viền đỏ màu Trắng', '0000-00-00', 190, '');
INSERT INTO `sanpham` VALUES (315, 10, '', 'Áo thun nam cổ tròn tay ngắn màu Nâu', '0000-00-00', 190, '');
INSERT INTO `sanpham` VALUES (316, 10, '', 'Áo thun Nam cổ tròn tay ngắn sọc ngang màu Trắng', '0000-00-00', 190, '');
INSERT INTO `sanpham` VALUES (317, 10, '', 'Áo len cổ tim tay dài sọc xám', '0000-00-00', 195, '');
INSERT INTO `sanpham` VALUES (318, 11, 'ASM-000001', 'Áo sơmi công sở tay dài trắng', '0000-00-00', 111, 'img_sp/nam/Ao so mi/ASM-000001.jpg');
INSERT INTO `sanpham` VALUES (319, 11, 'ASM-000002', 'Áo sơ mi ngắn tay carô xanh trắng', '0000-00-00', 129, 'img_sp/nam/Ao so mi/ASM-000002.jpg');
INSERT INTO `sanpham` VALUES (320, 11, 'ASM-000003', 'Áo sơ mi ngắn tay trắng đỏ', '0000-00-00', 129, 'img_sp/nam/Ao so mi/ASM-000003.jpg');
INSERT INTO `sanpham` VALUES (321, 11, 'ASM-000004', 'Áo sơmi Nam tay ngắn Cotton màu Xám đỏ', '0000-00-00', 129, 'img_sp/nam/Ao so mi/ASM-000004.jpg');
INSERT INTO `sanpham` VALUES (322, 11, 'ASM-000005', 'Áo sơmi Nam tay ngắn VERSACE màu Trắng', '0000-00-00', 129, 'img_sp/nam/Ao so mi/ASM-000005.jpg');
INSERT INTO `sanpham` VALUES (323, 11, 'ASM-000006', 'Áo sơ mi tay dài hoa văn màu Xanh lá trắng', '0000-00-00', 139, 'img_sp/nam/Ao so mi/ASM-000006.jpg');
INSERT INTO `sanpham` VALUES (324, 11, 'ASM-000007', 'Áo sơ mi tay dài hoa văn màu Trắng', '0000-00-00', 149, 'img_sp/nam/Ao so mi/ASM-000007.jpg');
INSERT INTO `sanpham` VALUES (325, 11, 'ASM-000008', 'Áo sơ mi tay dài hoa văn màu trắng', '0000-00-00', 149, 'img_sp/nam/Ao so mi/ASM-000008.jpg');
INSERT INTO `sanpham` VALUES (326, 11, 'ASM-000009', 'Áo sơmi Nam tay ngắn Cotton màu Xám sọc trắng', '0000-00-00', 149, 'img_sp/nam/Ao so mi/ASM-000009.jpg');
INSERT INTO `sanpham` VALUES (327, 11, 'ASM-000010', 'Áo sơ mi tay dài sọc Kem', '0000-00-00', 159, 'img_sp/nam/Ao so mi/ASM-000010.jpg');
INSERT INTO `sanpham` VALUES (328, 11, 'ASM-000011', 'Áo sơmi Nam tay ngắn Cotton sọc đỏ Đen', '0000-00-00', 159, 'img_sp/nam/Ao so mi/ASM-000011.jpg');
INSERT INTO `sanpham` VALUES (329, 11, 'ASM-000012', 'Áo sơmi Nam tay ngắn in chữ màu Trắng', '0000-00-00', 159, 'img_sp/nam/Ao so mi/ASM-000012.jpg');
INSERT INTO `sanpham` VALUES (330, 11, 'ASM-000013', 'Áo sơ mi tay dài sọc Hồng sen', '0000-00-00', 169, 'img_sp/nam/Ao so mi/ASM-000013.jpg');
INSERT INTO `sanpham` VALUES (331, 11, 'ASM-000014', 'Áo sơ mi tay dài sọc Rêu', '0000-00-00', 169, 'img_sp/nam/Ao so mi/ASM-000014.jpg');
INSERT INTO `sanpham` VALUES (332, 11, 'ASM-000015', 'Áo sơ mi tay dài sọc Trắng cam', '0000-00-00', 169, 'img_sp/nam/Ao so mi/ASM-000015.jpg');
INSERT INTO `sanpham` VALUES (333, 11, 'ASM-000016', 'Áo sơmi cotton tay dài hoa dây đen', '0000-00-00', 169, 'img_sp/nam/Ao so mi/ASM-000016.jpg');
INSERT INTO `sanpham` VALUES (334, 11, 'ASM-000017', 'Áo sơmi cotton tay dài sọcđen kim tuyến', '0000-00-00', 169, 'img_sp/nam/Ao so mi/ASM-000017.jpg');
INSERT INTO `sanpham` VALUES (335, 11, 'ASM-000018', 'Áo sơmi Nam cổ tàu tay ngắn hoa văn màu Vàng đồng', '0000-00-00', 169, 'img_sp/nam/Ao so mi/ASM-000018.jpg');
INSERT INTO `sanpham` VALUES (336, 11, 'ASM-000019', 'Áo sơ mi tay dài sọc Cam xanh lá', '0000-00-00', 179, 'img_sp/nam/Ao so mi/ASM-000019.jpg');
INSERT INTO `sanpham` VALUES (337, 11, 'ASM-000020', 'Áo sơmi tay dài màu Vàng thêu hình trước ngực', '0000-00-00', 190, 'img_sp/nam/Ao so mi/ASM-000020.jpg');
INSERT INTO `sanpham` VALUES (338, 11, '', 'Áo sơmi Nam dài tay màu Đen sọc carô dọc thân nút', '0000-00-00', 195, '');
INSERT INTO `sanpham` VALUES (339, 11, '', 'Áo sơmi cotton kiếng tay dài hoa văn trắng đen', '0000-00-00', 199, '');
INSERT INTO `sanpham` VALUES (340, 11, '', 'Áo sơmi cotton kiếng tay dài màu xanh ngọc', '0000-00-00', 199, '');
INSERT INTO `sanpham` VALUES (341, 11, '', 'Áo sơmi cotton tay dài hoa tròn màu xanh nhu', '0000-00-00', 199, '');
INSERT INTO `sanpham` VALUES (342, 11, '', 'Áo sơmi Nam dài tay thân bo giả cà vạt màu Đen', '0000-00-00', 220, '');
INSERT INTO `sanpham` VALUES (343, 11, '', 'Áo sơmi Nam tay dài màu vàng nhạt', '0000-00-00', 220, '');
INSERT INTO `sanpham` VALUES (344, 11, '', 'Áo sơmi dài tay màu Trắng', '0000-00-00', 230, '');
INSERT INTO `sanpham` VALUES (345, 12, 'ACM-000001', 'Áo khoác PUMA màu Cam đen', '0000-00-00', 195, 'img_sp/nam/Ao khoac/ACM-000001.jpg');
INSERT INTO `sanpham` VALUES (346, 12, 'ACM-000002', 'Áo khoác đen kaki', '0000-00-00', 250, 'img_sp/nam/Ao khoac/ACM-000002.jpg');
INSERT INTO `sanpham` VALUES (347, 12, 'ACM-000003', 'Áo khoác KAPPA màu Đen', '0000-00-00', 270, 'img_sp/nam/Ao khoac/ACM-000003.jpg');
INSERT INTO `sanpham` VALUES (348, 12, 'ACM-000004', 'Áo khoác màu Đen viền trắng', '0000-00-00', 295, 'img_sp/nam/Ao khoac/ACM-000004.jpg');
INSERT INTO `sanpham` VALUES (349, 12, 'ACM-000005', 'Áo khoác ENGGRIE cổ sọc túi trước màu Trắng', '0000-00-00', 370, 'img_sp/nam/Ao khoac/ACM-000005.jpg');
INSERT INTO `sanpham` VALUES (350, 12, 'ACM-000006', 'Áo khoác màu Đen chấm bi trắng', '0000-00-00', 395, 'img_sp/nam/Ao khoac/ACM-000006.jpg');
INSERT INTO `sanpham` VALUES (351, 12, 'ACM-000007', 'Áo khoác tay dài màu Nâu viền trắng', '0000-00-00', 420, 'img_sp/nam/Ao khoac/ACM-000007.jpg');
INSERT INTO `sanpham` VALUES (352, 12, 'ACM-000008', 'Áo khoác JACK JONE tay dài hình nhền nhện màu Trắng', '0000-00-00', 550, 'img_sp/nam/Ao khoac/ACM-000008.jpg');
INSERT INTO `sanpham` VALUES (353, 13, 'QSM-000001', 'QUẦN SHORT JEANS NAM MÀU XANH ĐẬM', '0000-00-00', 120, 'img_sp/nam/Quan short/QSM-000001.jpg');
INSERT INTO `sanpham` VALUES (354, 13, 'QSM-000002', 'Bộ áo quần Nam nữ', '0000-00-00', 149, 'img_sp/nam/Quan short/QSM-000002.jpg');
INSERT INTO `sanpham` VALUES (355, 13, 'QSM-000003', 'Quần short Xám SUGAR', '0000-00-00', 250, 'img_sp/nam/Quan short/QSM-000003.jpg');
INSERT INTO `sanpham` VALUES (356, 13, 'QSM-000004', 'Quần short Xám SWGAR', '0000-00-00', 250, 'img_sp/nam/Quan short/QSM-000004.jpg');
INSERT INTO `sanpham` VALUES (357, 13, 'QSM-000005', 'Quần short Nam sọc ca rô màu Vàng Xanh', '0000-00-00', 280, 'img_sp/nam/Quan short/QSM-000005.jpg');
INSERT INTO `sanpham` VALUES (358, 13, 'QSM-000006', 'Quần short Nam sọc vàng', '0000-00-00', 280, 'img_sp/nam/Quan short/QSM-000006.jpg');
INSERT INTO `sanpham` VALUES (359, 13, 'QSM-000007', 'Quần short Nam sọc Xanh', '0000-00-00', 280, 'img_sp/nam/Quan short/QSM-000007.jpg');
INSERT INTO `sanpham` VALUES (360, 13, 'QSM-000008', 'Quần short Nam kaki màu Rêu', '0000-00-00', 320, 'img_sp/nam/Quan short/QSM-000008.jpg');
INSERT INTO `sanpham` VALUES (361, 13, 'QSM-000009', 'Quần lửng thêu 1 ống vàng nhạt', '0000-00-00', 340, 'img_sp/nam/Quan short/QSM-000009.jpg');
INSERT INTO `sanpham` VALUES (362, 13, 'QSM-000010', 'Quần short Nam buột rút màu Trắng', '0000-00-00', 380, 'img_sp/nam/Quan short/QSM-000010.jpg');
INSERT INTO `sanpham` VALUES (363, 13, 'QSM-000011', 'Quần short Nam túi hộp lai tua màu Kem', '0000-00-00', 380, 'img_sp/nam/Quan short/QSM-000011.jpg');
INSERT INTO `sanpham` VALUES (364, 13, 'QSM-000012', 'Quần lửng 2 lưng sau', '0000-00-00', 400, 'img_sp/nam/Quan short/QSM-000012.jpg');
INSERT INTO `sanpham` VALUES (365, 13, 'QSM-000013', 'Quần short Nam D&G dây kéo màu Xám', '0000-00-00', 490, 'img_sp/nam/Quan short/QSM-000013.jpg');
INSERT INTO `sanpham` VALUES (366, 13, 'QSM-000014', 'Quần lửng kaki D&G 2 lưng màu đen', '0000-00-00', 550, 'img_sp/nam/Quan short/QSM-000014.jpg');
INSERT INTO `sanpham` VALUES (367, 14, 'QDM-000001', 'Quần jeasn nam màu xanh', '0000-00-00', 179, 'img_sp/nam/Quan dai/QDM-000001.jpg');
INSERT INTO `sanpham` VALUES (368, 14, 'QDM-000002', 'QUẦN JEANS 2 LƯNG màu xanh xám', '0000-00-00', 197, 'img_sp/nam/Quan dai/QDM-000002.jpg');
INSERT INTO `sanpham` VALUES (369, 14, 'QDM-000003', 'QUẦN JEANS DÀI NAM MÀU XANH BẠC', '0000-00-00', 220, 'img_sp/nam/Quan dai/QDM-000003.jpg');
INSERT INTO `sanpham` VALUES (370, 14, 'QDM-000004', 'Quần JEAN nam JPM màu Xanh biển', '0000-00-00', 230, 'img_sp/nam/Quan dai/QDM-000004.jpg');
INSERT INTO `sanpham` VALUES (371, 14, 'QDM-000005', 'Quần JEAN Nam suông viền chỉ đỏ màu Xanh bạc', '0000-00-00', 239, 'img_sp/nam/Quan dai/QDM-000005.jpg');
INSERT INTO `sanpham` VALUES (372, 14, 'QDM-000006', 'Quần JEAN nam wash kiểu túi dây kéo lớn màu Xanh biển', '0000-00-00', 240, 'img_sp/nam/Quan dai/QDM-000006.jpg');
INSERT INTO `sanpham` VALUES (373, 14, 'QDM-000007', 'Quần Kaki Nam màu Nâu sọc vàng', '0000-00-00', 250, 'img_sp/nam/Quan dai/QDM-000007.jpg');
INSERT INTO `sanpham` VALUES (374, 14, 'QDM-000008', 'Quần Kaki Nam sọc carô Sọc vàng trắng đen', '0000-00-00', 250, 'img_sp/nam/Quan dai/QDM-000008.jpg');
INSERT INTO `sanpham` VALUES (375, 14, 'QDM-000009', 'Quần Kaki Nam sọc carô Trắng Đen', '0000-00-00', 250, 'img_sp/nam/Quan dai/QDM-000009.jpg');
INSERT INTO `sanpham` VALUES (376, 14, 'QDM-000010', 'Quần JEAN nam túi sau kiểu màu Xanh biển', '0000-00-00', 270, 'img_sp/nam/Quan dai/QDM-000010.jpg');
INSERT INTO `sanpham` VALUES (377, 14, 'QDM-000011', 'Quần jean nam màu đất', '0000-00-00', 289, 'img_sp/nam/Quan dai/QDM-000011.jpg');
INSERT INTO `sanpham` VALUES (378, 14, 'QDM-000012', 'Quần JEANS Nam màu Đen túi hộp G STAR RAW', '0000-00-00', 295, 'img_sp/nam/Quan dai/QDM-000012.jpg');
INSERT INTO `sanpham` VALUES (379, 14, 'QDM-000013', 'Quần JEANS Nam màu Xanh hoa văn chỉ đỏ sau túi', '0000-00-00', 295, 'img_sp/nam/Quan dai/QDM-000013.jpg');
INSERT INTO `sanpham` VALUES (380, 14, 'QDM-000014', 'Quần jean nam màu xanh', '0000-00-00', 299, 'img_sp/nam/Quan dai/QDM-000014.jpg');
INSERT INTO `sanpham` VALUES (381, 14, 'QDM-000015', 'Quần JEAN Nam suông viền chỉ vàng wash đùi màu Xanh biển', '0000-00-00', 299, 'img_sp/nam/Quan dai/QDM-000015.jpg');
INSERT INTO `sanpham` VALUES (382, 14, 'QDM-000016', 'Quần JEAN nam MYPL màu Xanh biền', '0000-00-00', 300, 'img_sp/nam/Quan dai/QDM-000016.jpg');
INSERT INTO `sanpham` VALUES (383, 14, 'QDM-000017', 'Quần JEANS Nam màu Xanh đen wash vàng Cam', '0000-00-00', 320, 'img_sp/nam/Quan dai/QDM-000017.jpg');
INSERT INTO `sanpham` VALUES (384, 14, 'QDM-000018', 'Quần JEAN nam T.R.F màu Trắng xanh', '0000-00-00', 329, 'img_sp/nam/Quan dai/QDM-000018.jpg');
INSERT INTO `sanpham` VALUES (385, 14, 'QDM-000019', 'Quần JEANS Nam đen wash đùi hình túi sau', '0000-00-00', 330, 'img_sp/nam/Quan dai/QDM-000019.jpg');
INSERT INTO `sanpham` VALUES (386, 14, 'QDM-000020', 'Quần JEANS Nam màu Xám in chữ đen túi sau', '0000-00-00', 330, 'img_sp/nam/Quan dai/QDM-000020.jpg');
INSERT INTO `sanpham` VALUES (387, 14, '', 'Quần JEANS Nam Nâu túi sau thêu chữ D&G', '0000-00-00', 330, '');
INSERT INTO `sanpham` VALUES (388, 14, '', 'Quần JEANS WEAR YAGELAI màu Đen', '0000-00-00', 330, '');
INSERT INTO `sanpham` VALUES (389, 14, '', 'Quần JEANS DOLCE GABBANA màu Nâu', '0000-00-00', 350, '');
INSERT INTO `sanpham` VALUES (390, 14, '', 'Quần JEANS Nam túi hộp màu Xanh biển', '0000-00-00', 350, '');
INSERT INTO `sanpham` VALUES (391, 14, '', 'Quần JEANS Nam túi kết hông màu Xanh biển', '0000-00-00', 350, '');
INSERT INTO `sanpham` VALUES (392, 14, '', 'Quần JEANS Nam xanh đậm EVISU', '0000-00-00', 350, '');
INSERT INTO `sanpham` VALUES (393, 14, '', 'Quần JEANS Nam túi hộp da trắng màu Xanh', '0000-00-00', 365, '');
INSERT INTO `sanpham` VALUES (394, 15, '', 'Thắt lưng Nam mặt vuông inox màu Đen', '0000-00-00', 150, '');
INSERT INTO `sanpham` VALUES (395, 15, '', 'Thắt lưng Nam mặt ngũ giác màu Đen', '0000-00-00', 160, '');
INSERT INTO `sanpham` VALUES (396, 15, '', 'Thắt lưng Nam mặt vuông màu Vàng đồng', '0000-00-00', 165, '');
INSERT INTO `sanpham` VALUES (397, 15, '', 'Thắt lưng Nam mặt đầu lâu đen màu Trắng', '0000-00-00', 195, '');
INSERT INTO `sanpham` VALUES (398, 15, '', 'Thắt lưng Nam mặt thổ dân màu Trắng', '0000-00-00', 195, '');
INSERT INTO `sanpham` VALUES (399, 15, '', 'Thắt lưng Nam LEE dạng cài màu Nâu', '0000-00-00', 395, '');
INSERT INTO `sanpham` VALUES (400, 16, '', 'Ví Nam LEVIS có nút bấm màu Nâu', '0000-00-00', 210, '');
INSERT INTO `sanpham` VALUES (401, 16, '', 'Ví Nam LEVIS da trơn màu Nâu', '0000-00-00', 210, '');
INSERT INTO `sanpham` VALUES (402, 16, '', 'Bóp da nam D&G màu Xám có gài', '0000-00-00', 220, '');
INSERT INTO `sanpham` VALUES (403, 16, '', 'Ví Nam LEVIS da sần màu Nâu', '0000-00-00', 220, '');
INSERT INTO `sanpham` VALUES (404, 16, '', 'Ví MAN MONT Nam màu Đen', '0000-00-00', 336, '');
INSERT INTO `sanpham` VALUES (405, 16, '', 'Ví MAN MONT Nam màu Đen', '0000-00-00', 366, '');
INSERT INTO `sanpham` VALUES (406, 16, '', 'VÍ NAM MÀU NÂU ĐỎ', '0000-00-00', 400, '');
INSERT INTO `sanpham` VALUES (407, 16, '', 'Ví MAN MONT Nam màu Nâu Đen', '0000-00-00', 406, '');
INSERT INTO `sanpham` VALUES (408, 16, '', 'Ví MAN MONT Nam màu Nâu', '0000-00-00', 530, '');
INSERT INTO `sanpham` VALUES (409, 16, '', 'Ví WALIMA Nam màu Nâu', '0000-00-00', 576, '');
INSERT INTO `sanpham` VALUES (410, 16, '', 'VÍ NAM MÀU NÂU', '0000-00-00', 600, '');
INSERT INTO `sanpham` VALUES (411, 16, '', 'VÍ NAM MÀU NÂU DEN', '0000-00-00', 640, '');
INSERT INTO `sanpham` VALUES (412, 16, '', 'VÍ NAM MÀU DEN', '0000-00-00', 650, '');
INSERT INTO `sanpham` VALUES (413, 17, '', 'Gọng kính cận Badiya màu trắng', '0000-00-00', 154, '');
INSERT INTO `sanpham` VALUES (414, 17, '', 'Gọng kính cận CE', '0000-00-00', 196, '');
INSERT INTO `sanpham` VALUES (415, 17, '', 'Gọng kính cận CE màu đen', '0000-00-00', 196, '');
INSERT INTO `sanpham` VALUES (416, 17, '', 'Gọng kính cận W&B kim loại màu đen', '0000-00-00', 238, '');
INSERT INTO `sanpham` VALUES (417, 17, '', 'Gọng kính cận A&D&Y kim loại màu xanh đen', '0000-00-00', 322, '');
INSERT INTO `sanpham` VALUES (418, 17, '', 'Gọng kính cận Goyard', '0000-00-00', 322, '');
INSERT INTO `sanpham` VALUES (419, 17, '', 'Gọng kính cận J&S&K màu xanh đen', '0000-00-00', 322, '');
INSERT INTO `sanpham` VALUES (420, 17, '', 'Gọng kính cận Kerastate màu trắng đỏ', '0000-00-00', 322, '');
INSERT INTO `sanpham` VALUES (421, 17, '', 'Gọng kính cận VS màu xám', '0000-00-00', 322, '');
INSERT INTO `sanpham` VALUES (422, 17, '', 'Gọng kính cận VS màu xanh rêu sọc trắng xanh', '0000-00-00', 322, '');
INSERT INTO `sanpham` VALUES (423, 17, '', 'Gọng kính cận Casero màu xanh rêu', '0000-00-00', 462, '');
INSERT INTO `sanpham` VALUES (424, 17, '', 'Gọng kính cận Romantic màu đen', '0000-00-00', 462, '');
INSERT INTO `sanpham` VALUES (425, 17, '', 'Gọng kính cận Caro', '0000-00-00', 532, '');
INSERT INTO `sanpham` VALUES (426, 17, '', 'Gọng kính cận màu xám đen', '0000-00-00', 532, '');
INSERT INTO `sanpham` VALUES (427, 17, '', 'Kính mát Ferrer màu xanh khói', '0000-00-00', 651, '');
INSERT INTO `sanpham` VALUES (428, 18, '', 'Thắt lưng bản nhỏ đầu vuông màu Vàng', '0000-00-00', 25, '');
INSERT INTO `sanpham` VALUES (429, 18, '', 'Thắt lưng bản nhỏ màu Vàng đầu hột xoàn', '0000-00-00', 60, '');
INSERT INTO `sanpham` VALUES (430, 18, '', 'Thắt lưng da bản nhỏ màu Xanh dương đầu chữ nhật', '0000-00-00', 65, '');
INSERT INTO `sanpham` VALUES (431, 18, '', 'Thắt lưng bản to màu Trắng da và thun đầu kim', '0000-00-00', 100, '');
INSERT INTO `sanpham` VALUES (432, 9, 'BVF-000009', 'Bộ áo quần cổ U tay ngắn +quần lửng phối màu Trắng nâu', '2008-05-14', 650, 'img_sp/nu/bo ao vay/BVF-000009.jpg');
INSERT INTO `sanpham` VALUES (433, 9, 'BVF-000010', 'fafeafdsa', '2008-05-14', 520, 'img_sp/nu/bo ao vay/BVF-000010.jpg');
INSERT INTO `sanpham` VALUES (434, 9, 'BVF-000000', 'Áo cổ tim bông dưới lai màu Xanh+Quần lửng trắng', '2008-05-14', 750, 'img_sp/nu/bo ao vay/BVF-0000005.jpg');
INSERT INTO `sanpham` VALUES (435, 9, 'BVF-000011', 'Áo khoác JACK JONE tay dài hình nhền nhện màu Trắng', '2008-05-14', 750, 'img_sp/nu/bo ao vay/BVF-000011.jpg');
INSERT INTO `sanpham` VALUES (436, 9, 'BVF-000012', 'Áo khoác tay dài màu Nâu viền trắng', '2008-05-14', 960, 'img_sp/nu/bo ao vay/BVF-000012.jpg');
INSERT INTO `sanpham` VALUES (438, 19, 'TXF-000009', 'wadaw', '2008-05-14', 300, 'img_sp/nu/Tui xach/TXF-000009.jpg');
INSERT INTO `sanpham` VALUES (439, 19, 'TXF-000008', 'Váy xếp li màu Vàng', '2008-05-14', 500, 'img_sp/nu/Tui xach/TXF-000008.jpg');
INSERT INTO `sanpham` VALUES (440, 19, 'TXF-000007', 'Áo khoác ENGGRIE cổ sọc túi trước màu Trắng', '2008-05-14', 250, 'img_sp/nu/Tui xach/TXF-000007.jpg');
INSERT INTO `sanpham` VALUES (441, 19, 'TXF-000006', 'Áo khoác màu Đen chấm bi trắng', '2008-05-14', 400, 'img_sp/nu/Tui xach/TXF-000006.jpg');
INSERT INTO `sanpham` VALUES (442, 19, 'TXF-000005', 'Áo sơ mi ngắn tay trắng đỏ', '2008-05-14', 650, 'img_sp/nu/Tui xach/TXF-000005.jpg');
INSERT INTO `sanpham` VALUES (443, 19, 'TXF-000004', 'Áo khoác KAPPA màu Đen', '2008-05-14', 500, 'img_sp/nu/Tui xach/TXF-000003.jpg');
INSERT INTO `sanpham` VALUES (444, 19, 'TXF-000002', 'Áo khoác màu Đen viền trắng', '2008-05-14', 550, 'img_sp/nu/Tui xach/TXF-000002.jpg');
INSERT INTO `sanpham` VALUES (445, 19, 'TXF-000001', 'Áo khoác tay dài màu Nâu viền trắng', '2008-05-14', 460, 'img_sp/nu/Tui xach/TXF-000001.jpg');
INSERT INTO `sanpham` VALUES (446, 19, 'TXF-000004', 'Áo len cổ tim tay dài sọc xám', '2008-05-14', 600, 'img_sp/nu/Tui xach/TXF-000004.jpg');

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `idKH` int(4) NOT NULL auto_increment,
  `HoTen` varchar(255) NOT NULL default '',
  `UserName` varchar(100) NOT NULL default '',
  `Password` varchar(100) NOT NULL default '',
  `DiaChi` varchar(255) NOT NULL default '',
  `DienThoai` varchar(100) NOT NULL default '',
  `Email` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`idKH`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (1, 'nguyen VAN thanh', 'aa', '123', 'Q1', '123456789', 'a');
INSERT INTO `users` VALUES (2, 'NGHUYEN thi Linh', 'bb', '123456', 'q1', '123456', 'b');
INSERT INTO `users` VALUES (3, 'Nguyen Van Teo', 'teonv', '123456', 'aa', '88', 'lo@a.com');
