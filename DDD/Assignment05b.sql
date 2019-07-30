create table Nguoi_Dung(
    id_nguoi int identity (1,1) not null primary key,
    ten_nguoi varchar(50) not null,
    dia_chi text not null,
    ngay_sinh date not null
)

create table So_Dien_Thoai(
    Sdt varchar(15) not null unique,
    chu_nhan int foreign key references Nguoi_Dung(id_nguoi)
)

insert into Nguoi_Dung (ten_nguoi, dia_chi, ngay_sinh)
values ('Nguyen van An', '111 Nguyen Trai, Thanh Xuan , Ha Noi', '1987-11-18');

insert into So_Dien_Thoai (Sdt, chu_nhan)
values ('987654321', 1);

insert into So_Dien_Thoai (Sdt, chu_nhan)
values ('09873452', 1);

insert into So_Dien_Thoai (Sdt, chu_nhan)
values ('09832323', 1);

insert into So_Dien_Thoai (Sdt, chu_nhan)
values ('09434343', 1);

select *
from So_Dien_Thoai
where chu_nhan like 1;