create table Lop_Hoc(
    ma_lop varchar(10) not null primary key,
    ten_lop varchar(50) not null,
    phong_hoc varchar
        (20)
);

create table Sinh_Vien(
    ma_sv varchar(20) not null primary key,
    ten_sv varchar(50) not null,
    ngay_sinh date not null,
    lop varchar(10) not null foreign key references Lop_Hoc(ma_lop)
);

create table Mon_Thi(
    ma_mon varchar(10) not null primary key,
    ten_mon varchar(20) not null
);

create table MonThi_SinhVien(
    ma_mon varchar(10) not null foreign key references Mon_Thi(ma_mon),
    ma_sv varchar(20) not null foreign key references Sinh_Vien(ma_sv),
    diem int not null,
    ket_qua varchar(10) not null
);

insert into Lop_Hoc (ma_lop, ten_lop, phong_hoc)
values ('KT1-K22', 'Ke toan 1', '201');

insert into Sinh_Vien (ma_sv, ten_sv, ngay_sinh, lop)
values ('TH102291', 'Nguyen Van An', '1995-03-28', 'KT1-K22');

insert into Mon_Thi (ma_mon, ten_mon)
values ('THDC', 'Tin hoc');

insert into MonThi_SinhVien (ma_mon, ma_sv, diem, ket_qua)
values ('THDC', 'TH102291', 8, 'Kha');