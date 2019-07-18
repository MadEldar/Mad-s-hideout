create table department(
	dep_id varchar(10) primary key,
	dep_name varchar(100)
);

insert into department(dep_id, dep_name) values ('HCNS', 'Hanh chinh nhan su');

create table employee(
	emp_id int identity(1,1) primary key,
	emp_name varchar(100),
	dob date,
	degree text,
	emp_address varchar(200),
	phone int,
	job varchar(100),
	dep_id varchar(10) foreign key references department(dep_id)
);

insert into employee(emp_name, dob, degree, emp_address, phone, job, dep_id)
	values ('Nguyen Van An', '1995-03-28', 'Cu nhan', 'U2', 0987654321, 'Nhan vien hanh chinh', 'HCNS');

create table equipment(
	eqm_id varchar(20),
	eqm_name varchar(100),
	qem_quantity int,
	emp_owner int foreign key references employee(emp_id)
);

insert into equipment(eqm_id, eqm_name, qem_quantity, emp_owner)
    values ('MTDB-21', 'May tinh de ban', '1', 1);
