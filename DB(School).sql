create table school.cabinet(
id_cabinet int auto_increment not null,
row_ int,
desk int,
option_cabinet int,
primary key(id_cabinet)
);
insert into school.cabinet(row_,desk,option_) values(1,1,1);
insert into school.cabinet(row_,desk,option_) values(1,1,2);
insert into school.cabinet(row_,desk,option_) values(1,2,1);
insert into school.cabinet(row_,desk,option_) values(1,2,2);
insert into school.cabinet(row_,desk,option_) values(1,3,1);
insert into school.cabinet(row_,desk,option_) values(1,3,2);
insert into school.cabinet(row_,desk,option_) values(1,4,1);
insert into school.cabinet(row_,desk,option_) values(1,4,2);
insert into school.cabinet(row_,desk,option_) values(2,1,1);
insert into school.cabinet(row_,desk,option_) values(2,1,2);
insert into school.cabinet(row_,desk,option_) values(2,2,1);
insert into school.cabinet(row_,desk,option_) values(2,2,2);
insert into school.cabinet(row_,desk,option_) values(2,3,1);
insert into school.cabinet(row_,desk,option_) values(2,3,2);
insert into school.cabinet(row_,desk,option_) values(2,4,1);
insert into school.cabinet(row_,desk,option_) values(2,4,2);
insert into school.cabinet(row_,desk,option_) values(3,1,1);
insert into school.cabinet(row_,desk,option_) values(3,1,2);
insert into school.cabinet(row_,desk,option_) values(3,2,1);
insert into school.cabinet(row_,desk,option_) values(3,2,2);
insert into school.cabinet(row_,desk,option_) values(3,3,1);
insert into school.cabinet(row_,desk,option_) values(3,3,2);
insert into school.cabinet(row_,desk,option_) values(3,4,1);
insert into school.cabinet(row_,desk,option_) values(3,4,2);

create table school.grade_status(
id_grade_status int auto_increment not null,
estimaits int,
primary key(id_grade_status)
);
alter table school.grade_status change id_grade_status id_grade_status int not null;
insert into school.grade_status(estimaits) values("отличник");
alter table school.grade_status change estimaits estimaits varchar(128) not null;
select * from school.grade_status;
SELECT * FROM school.cabinet;

create table school.address(
id_address int auto_increment,
personal_address varchar(128) not null,
primary key(id_address)
);
insert into school.address(personal_address) values("Воронеж, ул Ленина д8 кв2");
insert into school.address(personal_address) values("Воронеж, ул Лермонтова д32кв7");
insert into school.address(personal_address) values("Воронеж, ул Доваторов д29 кв76");
insert into school.address(personal_address) values("Воронеж, ул Пушкина д13 кв.36");
insert into school.address(personal_address) values("Воронеж, ул Некрасова д43 кв65");

create table school.students(
id int auto_increment,
full_Name varchar(128) not null,
year_of_birth int not null,
class int not null,
id_cabinet int not null,
id_grade_status int not null,
id_address int not null,
primary key(id),
foreign key (id_cabinet) references cabinet(id_cabinet),
foreign key (id_grade_status) references grade_status(id_grade_status),
foreign key (id_address) references address(id_address)
);

insert into school.students(full_Name, year_of_birth, class, id_cabinet, id_grade_status, id_address) values("Иванов Иван Иванович", 1991, 9, 1, 4, 1 );
insert into school.students(full_Name, year_of_birth, class, id_cabinet, id_grade_status, id_address) values("Петров Василий Александрович", 1992, 10, 15, 1, 2 );
insert into school.students(full_Name, year_of_birth, class, id_cabinet, id_grade_status, id_address) values("Сидорова Наталья Юрьевна", 1990, 11, 19, 2, 3 );
insert into school.students(full_Name, year_of_birth, class, id_cabinet, id_grade_status, id_address) values("Иванов Иван Иванович", 1993, 10, 7, 4, 1 );
insert into school.students(full_Name, year_of_birth, class, id_cabinet, id_grade_status, id_address) values("Иванов Иван Иванович", 1990, 9, 6, 2, 5 );


select * from school.students
left join school.cabinet table_cabinet
    on students.id_cabinet = table_cabinet.id_cabinet;