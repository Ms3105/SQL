use photo_store;
Select DataBase();

create table canon_camera(model_name varchar (30) Not NULL, quantity INT);
DESC canon_camera;
insert into canon_camera(model_name, quantity) values('80d', 12),('70d', 19), ('Eos12', 25), ('EOSR5', 80), ('EOSR6', 50)
-- select * from canon_camera--

-- Q.1 What model do you have in store?
Select model_name from canon_camera LIMIT 2;

-- How many 80D camera is available now?
Select quantity as 80Dcount from canon_camera where model_name = '80d';

-- I want to buy 50 camera of same model. Which models have count 50 or more than 50?
select model_name, quantity from canon_camera where quantity >= 50;
