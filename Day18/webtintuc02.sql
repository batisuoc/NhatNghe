create database webtintuc collate utf8_bin;

use webtintuc;

create table ChungLoai (
	maCL char(6) not null primary key,
	tenCL varchar(50) not null collate utf8_bin
);

create table LoaiTin (
	maLoai char(5) not null primary key,
	tenLoai varchar(50) not null collate utf8_bin,
	maCL char(6) not null,
	constraint fk_lt_cl foreign key (maCL) references ChungLoai(maCl)
);

create table TinTuc (
	maTin char(6) not null primary key,
	tieuDe varchar(250) not null collate utf8_bin,
	tomTat text not null collate utf8_bin,
	noiDung text not null collate utf8_bin,
	ngayDang date not null,
	maLoai char(5) not null,
	constraint fk_tt_lt foreign key (maLoai) references LoaiTin(maLoai)
);

insert into ChungLoai values ('CLT001', 'Tin xã hội');
insert into ChungLoai values ('CLT002', 'Việc làm');
insert into ChungLoai values ('CLT003', 'Nghệ thuật sống');

insert into LoaiTin values ('LT001', 'Thể thao', 'CLT001');
insert into LoaiTin values ('LT002', 'Tuyển dụng', 'CLT002');
insert into LoaiTin values ('LT003', 'Du lịch', 'CLT001');
insert into LoaiTin values ('LT004', 'Sống đẹp', 'CLT003');
insert into LoaiTin values ('LT005', 'Văn hóa', 'CLT001');
insert into LoaiTin values ('LT006', 'Ẩm thực', 'CLT001');

insert into TinTuc values ('Tin001', 'Hoàng hôn trên sông Mê Kông', 'TP - Bên ghế đá thị xã Savắn, thủ phủ miền Trung v...', 'Theo thống kê chưa đầy đủ của Tiền phong, đã có...', '2019-03-01', 'LT001');
insert into TinTuc values ('Tin002', 'Tận cùng nỗi đau', 'TP - Tên em là Thanh Trúc. Câu chuyện về em, về cô...', 'Em đang sống trong sự ghẻ lạnh của chính những ...', '2019-03-02', 'LT002');
insert into TinTuc values ('Tin003', 'Chuyện ở xứ Đền thiêng Đồng Cổ', 'TP - Bây giờ bên tôi là ông Tuân và trong tay ông ...', 'Tôi cầm lên cuốn Tam Thai sơn linh tích nhất bả...', '2019-03-07', 'LT003');
insert into TinTuc values ('Tin004', 'Thăm trang trại bò lớn nhất Việt Nam', 'TP - Thu nhập từ đàn bò góp phần đưa Huy vào đại h...', 'Những chú bò trên thảo nguyên H’Bông. Từ...', '2019-03-03', 'LT004');
insert into TinTuc values ('Tin005', '70 vạn lượt người truy cập chuyên trang về nhạc sỹ...', 'Đến 20 giờ ngày 1/4 - đúng 7 năm Ngày mất nhạc sỹ ...', 'Âm nhạc là cuộc sống, tâm hồn của tôi. Giúp tôi…', '2019-03-05', 'LT002');
insert into TinTuc values ('Tin006', '"Hồng lâu mộng" bản mới: Sẵn sàng khởi quay', 'Sau ba tháng miệt mài huấn luyện diễn viên, nữ đạo...', 'Đào tạo diễn viên cho phim. Để bồi dưỡng...', '2019-03-05', 'LT005');
insert into TinTuc values ('Tin007', 'Ngày sẽ dài 25 tiếng', 'Trái đất giống như một nghệ sĩ trượt băng đang múa...', 'Lý do đầu tiên và quan trọng nhất đó là Mặt tră...', '2019-03-06', 'LT002');
insert into TinTuc values ('Tin008', 'Phát hiện dây chuyền vàng cổ nhất châu Mỹ', 'Các nhà khoa học đã khai quật được một chiếc vòng ...', 'Theo các nhà khoa học, đây là đồ tạo tác từ vàn...', '2019-03-07', 'LT006');
insert into TinTuc values ('Tin009', 'Nói dối thời công nghệ số', 'TP - Chưa bao giờ công nghệ hiện đại và tinh vi lạ...', 'Ác ý xuyên không gian.Hơn 23 giờ, chị P...', '2019-03-08', 'LT002');
insert into TinTuc values ('Tin010', 'Báo chí quốc tế nói gì về sự kiện Calisto?', 'TP - Việc HLV Henrique Calisto lần thứ hai trở thà...', 'Sau khi mua lại CLB Chelsea, trong vòng 5 năm q...', '2019-03-10', 'LT003');
---------------------------------------------------------------------------------------------------
--Liệt kê những tin tức có mã loại là LT002
SELECT *
FROM tintuc
WHERE maLoai = 'LT002'
---------------------------------------------------------------------------------------------------
--Liệt kê những tin tức có mã chủng loại là CLT001
SELECT *
FROM tintuc, loaitin, chungloai
WHERE tintuc.maLoai = loaitin.maLoai AND 
	  loaitin.maCL = chungloai.maCL AND 
	  chungloai.maCL = 'CLT001'
---------------------------------------------------------------------------------------------------
--Liệt kê những tin tức có mã chủng loại là CLT001 (xài INNER JOIN)
SELECT tintuc.maTin, tintuc.tieuDe, tintuc.tomTat, tintuc.noiDung, tintuc.ngayDang, loaitin.maCL
FROM tintuc INNER JOIN loaitin on tintuc.maLoai = loaitin.maLoai AND 
     loaitin.maCL = 'CLT001'
---------------------------------------------------------------------------------------------------
--Liệt kê những tin tức từ ngày 02/03/2019 đến 05/03/2019 và sắp xếp theo thứ tự tăng dần
SELECT *
FROM tintuc
WHERE ngayDang BETWEEN '2019-03-02' AND '2019-03-05'
ORDER BY ngayDang ASC
---------------------------------------------------------------------------------------------------
--Liệt kê những tin tức có mã chủng loại là CLT001 ,sau ngày 07/03/2019 và sắp xếp theo thứ tự tăng dần
SELECT tintuc.maTin, tintuc.tieuDe, tintuc.tomTat, tintuc.noiDung, tintuc.ngayDang, loaitin.maCL
FROM tintuc INNER JOIN loaitin on tintuc.maLoai = loaitin.maLoai AND 
     loaitin.maCL = 'CLT001' AND
     tintuc.ngayDang > '2019-03-07'
ORDER BY ngayDang DESC
---------------------------------------------------------------------------------------------------
--Cho biết mã tin thuộc thể loại tin nào
SELECT tintuc.maTin, loaitin.tenLoai
FROM tintuc
LEFT JOIN loaitin on tintuc.maLoai = loaitin.maLoai