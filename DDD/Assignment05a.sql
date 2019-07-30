create table Hang (
    ma_so int not null primary key,
    ten_hang varchar(50) not null unique,
    dia_chi varchar(200) not null,
    dien_thoai varchar(20) not null unique
)

create table San_pham (
    stt int identity (1,1) primary key,
    ten_sp varchar(50) not null,
    mo_ta varchar(200),
    don_vi varchar(20) default 'Chiec',
    gia int not null check (gia > 0),
    so_luong int not null check (so_luong >= 0)
)

insert into Hang (ma_so, ten_hang, dia_chi, dien_thoai)
values (123, 'Asus', 'USA', '983232');

insert into San_pham (ten_sp, mo_ta, don_vi, gia, so_luong)
values ('May Tinh T450', 'May nhap cu', 'Chiec', 1000, 10);

insert into San_pham (ten_sp, mo_ta, don_vi, gia, so_luong)
values ('Dien Thoai Nokia5670', 'Dien thoai dang hot', 'Chiec', 200, 200);

insert into San_pham (ten_sp, mo_ta, don_vi, gia, so_luong)
values ('May In Samsung450', 'May in loai binh', 'Chiec', 100, 10);

select * from Hang;
select * from San_pham;