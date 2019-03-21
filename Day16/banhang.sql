create database banhang collate utf8_unicode_ci;

use banhang;

create table chungloai (
	idCL int(11) primary key auto_increment,
	TenCL varchar(255) collate utf8_unicode_ci,
	ThuTu int(11),
	AnHien boolean
);

insert into chungloai(TenCL, ThuTu, AnHien) values('Sản phẩm cho nữ', 1, 1);
insert into chungloai(TenCL, ThuTu, AnHien) values('Sản phẩm cho nam', 2, 1);

UPDATE chungloai
SET TenCL = 'Sản phẩm cho phụ nữ'
WHERE idCL = 1

UPDATE chungloai
SET TenCL = 'Sản phẩm cho nam giới'
WHERE idCL = 2

DROP TABLE chungloai

-- modify column atttribute
ALTER TABLE chungloai
MODIFY COLUMN TenCL varchar(255)

-- change table name
ALTER TABLE users
RENAME khachhang