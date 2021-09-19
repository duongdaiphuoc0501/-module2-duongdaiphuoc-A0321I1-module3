create table sinhvien(
id int not null,
ten varchar(45),
tuoi int,
khoa_hoc varchar(45),
sotien int
)
insert into `sinhvien`(`id`, `ten`, `tuoi`, `khoa_hoc`, `sotien`) values
(1, 'hoang', 21, 'CNTT', 400000),
(2, 'viet', 19, 'DTVT', 320000),
(3, 'thanh', 18, 'KTDN', 400000),
(4, 'nhan', 19, 'CK', 450000),
(5, 'huong', 20, 'TCNH', 500000),
(5, 'huong', 20, 'TVNH', 200000);
select * from sinhvien where sinhvien.ten = 'huong';
select sum(sotien) as 'tongtien' from sinhvien
where sinhvien.ten = 'huong';
select distinct ten from sinhvien
