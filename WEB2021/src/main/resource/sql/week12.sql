create table student (
	id varchar(20) NOT NULL,
	passwd varchar(20) NOT NULL,
	name varchar(20) NOT NULL,
	year int NULL,
	snum varchar(10) NULL,
	depart varchar(20) NULL,
	mobile1 char(3) NULL,
	mobile2 varchar(10) NULL,
	address varchar(65) NULL,
	email varchar(30) NULL,
	PRIMARY KEY (id)
);

insert into student (id, passwd, name, year, snum, depart, mobile1, mobile2, address, email)
values ('javajsp', 'java8394', '김정수', 2010, '1077818', '컴퓨터공학과', '011', '7649-9875', '서울시', 'java2@gmail.com');

insert into student (id, passwd, name, year, snum, depart, mobile1, mobile2, address, email)
values ('hongjsp', 'java5678', '홍길동', 2004, '1077820', '컴퓨터공학과', '011', '1234-1234', '부산광역시', 'hongjsp@gmail.com');

insert into student (id, passwd, name, year, snum, depart, mobile1, mobile2, address, email)
values ('gjwnghks99', 'java1234', '허주환', 1999, '20185304', '컴퓨터공학과', '010', '6532-1111', '남양주시', 'gjwnghks99@gmail.com');

insert into student (id, passwd, name, year, snum, depart, mobile1, mobile2, address, email)
values ('java', 'jsp12345', '나자바', 2001, '1070001', '컴퓨터공학과', '010', '1111-2222', '서울시', 'java@gmail.com');

insert into student (id, passwd, name, year, snum, depart, mobile1, mobile2, address, email)
values ('park02', 'html1111', '박실수', 2002, '1070002', '컴퓨터공학과', '010', '7333-3337', '대전광역시', 'park02@gmail.com');


select * from student;

delete from student;