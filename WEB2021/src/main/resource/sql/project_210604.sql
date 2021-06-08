create table station (
	charge_name varchar(200),
	address varchar(200),
	cido varchar(20),
	close_dt varchar(50),
	available_st_time varchar(20),
	available_ed_time varchar(20),
	slow_charge_yn char(1),
	quick_charge_yn char(1),
	quick_charge_type varchar(50),
	slow_charhe_cnt int,
	quick_charge_cnt int,
	parking_fee_yn char(1),
	road_address varchar(200),
	num_address varchar(200),
	manage_com varchar(100),
	tel varchar(50),
	latitude varchar(50),
	longitude varchar(50),
	data_dt date
)

select 
	*
from 
	station
where
	address like '%√·√µΩ√%';


delete from station ;

drop table station ;

show variables like °Æc%°Ø