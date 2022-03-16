CREATE TABLE tour_pet(

	p_area varchar2(200char),
	p_category varchar2(200char) ,
	p_code varchar2(200char) primary key,
	p_name varchar2(300char),
	p_address varchar2(300char) ,
	p_img varchar2(300char)
);


create sequence tour_pet_seq;


select * from tour_pet;




drop table tour_pet;
drop sequence tour_pet_seq;

