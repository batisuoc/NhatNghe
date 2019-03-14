create database banhang collate utf8_unicode_ci;

use banhang;

create table chungloai (
	idCL int(27) not null primary key auto_increment,
	TenCL varchar(100) not null collate utf8_unicode_ci,
	ThuTu int(4) not null default 1,
	AnHien tinyint(1) not null default 1 
);

insert into chungloai(TenCL, ThuTu) values ('Sản phẩm cho nữ', 1);
insert into chungloai(TenCL, ThuTu) values ('Sản phẩm cho nam', 2);
insert into chungloai(TenCL, ThuTu) values ('Sản phẩm trẻ em', 3);
insert into chungloai(TenCL, ThuTu) values ('NỮ TRANG', 4);

update chungloai
set idCL = 7
where idCL = 3;

update chungloai
set idCL = 8
where idCL = 4;

update chungloai
set AnHien = 0
where idCL = 7;

delete from chungloai
where idCL = 8;

----------------------------------------
--execute in shoponline database
create table loaisp (
	idLoai int(12) not null primary key auto_increment,
	idCL int(12) not null default 0,
	TenLoai varchar(100) not null collate utf8_unicode_ci,
	ThuTu int(4) not null default 1,
	AnHien int(1) not null default 1
);
----------------------------------------
--execute in khachhang database
create table khachhang (
	idKH int(4) not null primary key auto_increment,
	HoTen varchar(255) not null collate utf8_unicode_ci,
	Username varchar(100) not null,
	Password varchar(100) not null,
	DiaChi varchar(255) not null,
	DienThoai varchar(100) not null,
	Email varchar(255) not null
);

insert into khachhang(HoTen, Username, Password, DiaChi, DienThoai, Email) values ('Nguyen Van Thanh', 'aa', '123', 'Q1', '123456789', 'a');
insert into khachhang(HoTen, Username, Password, DiaChi, DienThoai, Email) values ('Nguyen Thi Linh', 'bb', '123456', 'Q1', '123456', 'b');
insert into khachhang(HoTen, Username, Password, DiaChi, DienThoai, Email) values ('Nguyen Van Teo', 'teonv', '123456', 'aa', '88', 'lo@a.com');

update khachhang
set DiaChi = 'Q10'
where Username = 'aa';	

update khachhang
set DienThoai = '093445212'
where Username = 'teonv';

delete from khachhang
where Email = 'b';