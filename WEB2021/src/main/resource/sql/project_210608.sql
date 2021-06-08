select 
	*
from 
	station
where
	address like '%√·√µ%'
	or charge_name like '%æ»º∫Ω√√ª%'
	or cido like '%√·√µ%'
	or road_address like '%√·√µ%'
	or num_address like '%√·√µ%';

select 
	count(*) as cnt
from 
	station
where
	address like '%%'
	or charge_name like '%%'
	or cido like '%%'
	or road_address like '%%'
	or num_address like '%%';

select 
	*
from 
	station
where
	cido like '%∞Ê±‚%';

create table user (
	id varchar(20) NOT NULL,
	passwd varchar(20) NOT NULL,
	name varchar(30) NOT NULL,
	PRIMARY KEY (id)
);

insert into student (id, passwd, name)
values ('juhwan', 'web123', '«„¡÷»Ø');
