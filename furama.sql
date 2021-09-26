create database furama;
use furama;
create table position (
position_id int not null,
position_name varchar(45),
primary key(position_id)
);
insert into `furama`.`position`(`position_id`,`position_name`) values
(1, 'nhan vien'),
(2, 'le tan');
create table education_degree(
education_degree_id int not null,
education_degree_name varchar(45),
primary key(education_degree_id)
);
insert into `furama`.`education_degree`(`education_degree_id`,`education_degree_name`) values
(11, 'pho thong'),
(22, 'dai hoc');
create table division(
division_id int not null,
division_name varchar(45),
primary key(division_id)
);
insert into `furama`.`division`(`division_id`,`division_name`) values
(55, 'phuc vu'),
(66, 'quan ly');
create table role(
role_id int not null,
role_name varchar(45),
primary key(role_id)
);
insert into `furama`.`role`(`role_id`,`role_name`) values
(111, 'thuong'),
(112, 'vip');
create table user(
username varchar(255),
passwords varchar(255),
primary key(username)
);
insert into `furama`.`user`(`username`,`passwords`) values
('phuoc', '123456'),
('pro', '123456');
create table user_role(
role_id int not null,
username varchar(255),
foreign key(`role_id`) references `role`(`role_id`),
foreign key(`username`) references `user`(`username`)
);
insert into `furama`.`user_role`(`role_id`,`username`) values
(112, 'phuoc'),
(111, 'pro');
create table employee(
employee_id int not null,
employee_name varchar(45),
employee_birthday date,
employee_id_card varchar(45),
employee_salary double,
employee_phone varchar(45),
employee_email varchar(45),
employee_address varchar(45),
position_id int,
education_degree_id int,
division_id int,
username varchar(255),
primary key(employee_id),
foreign key(`position_id`) references `position`(`position_id`),
foreign key(`education_degree_id`) references `education_degree`(`education_degree_id`),
foreign key(`division_id`) references `division`(`division_id`),
foreign key(`username`) references `user_role`(`username`)
);
insert into `furama`.`employee`(`employee_id`,`employee_name`,`employee_birthday`,`employee_id_card`,`employee_salary`,`employee_phone`,`employee_email`,`employee_address`,`position_id`,`education_degree_id`,`division_id`,`username`) values
(1111, 'dai phuoc', '2001-01-05', '123412313', 20000, '081239123', 'a@gmail.com', 'quang nam', 1, 11, 55, 'phuoc');
create table customer_type(
customer_type_id int not null,
customer_type_name varchar(45),
primary key(customer_type_id)
);
insert into `furama`.`customer_type`(`customer_type_id`,`customer_type_name`) values
(2221, 'Gold'),
(2222, 'Diamond');
create table customer(
customer_id int not null,
customer_type_id int,
customer_name varchar(45),
customer_birthday date,
customer_gender bit,
customer_id_card varchar(45),
customer_phone varchar(45),
customer_email varchar(45),
customer_address varchar(45),
primary key(customer_id),
foreign key(`customer_type_id`) references `customer_type`(`customer_type_id`)
);
insert into `furama`.`customer`(`customer_id`,`customer_type_id`,`customer_name`,`customer_birthday`,`customer_gender`,`customer_id_card`,`customer_phone`,`customer_email`,`customer_address`) values
(3331, 2221, 'Nguyen Van A', '1999-02-10', true, '48371231', '0128472711', 'ac@gmail.com', 'Da Nang'),
(3332, 2222, 'Nguyen Thi B', '2000-03-21', false, '34812912', '0127712111', 'bc@gmail.com', 'Da Nang');
create table service_type(
service_type_id int not null,
service_type_name varchar(45),
primary key(service_type_id)
);
insert into `furama`.`service_type`(`service_type_id`,`service_type_name`) values
(4441, 'massage'),
(4442, 'karaoke');
create table rent_type(
rent_type_id int not null,
rent_type_name varchar(45),
rent_type_cost double,
primary key(rent_type_id)
);
insert into `furama`.`rent_type`(`rent_type_id`,`rent_type_name`,`rent_type_cost`) values
(5551, 'Villa',200000),
(5552, 'House',150000);
create table service(
service_id int not null,
service_name varchar(45),
service_area int,
service_cost double,
service_max_people int,
service_type_id int,
rent_type_id int,
standard_room varchar(45),
description_other_convenience varchar(45),
pool_area double,
number_of_floors int,
primary key(service_id),
foreign key(`service_type_id`) references `service_type`(`service_type_id`),
foreign key(`rent_type_id`) references `rent_type`(`rent_type_id`)
);
insert into `furama`.`service`(`service_id`,`service_name`,`service_area`,`service_cost`,`service_max_people`,`service_type_id`,`rent_type_id`,`standard_room`,`description_other_convenience`,`pool_area`,`number_of_floors`) values
(6661, 'Villa', 56, 200000, 3, 4441, 5551, '6 sao', 'rat tot', 100, 137),
(6662, 'House', 51, 150000, 5, 4442, 5552, '5 sao', 'tot', 70, 71);
create table contract(
contract_id int not null,
contract_start_date datetime,
contract_end_date datetime,
contract_deposit double,
contract_total_money double,
employee_id int,
customer_id int,
service_id int,
primary key(contract_id),
foreign key(`employee_id`) references `employee`(`employee_id`),
foreign key(`customer_id`) references `customer`(`customer_id`),
foreign key(`service_id`) references `service`(`service_id`)
);
insert into `furama`.`contract`(`contract_id`,`contract_start_date`,`contract_end_date`,`contract_deposit`,`contract_total_money`,`employee_id`,`customer_id`,`service_id`) values
(7771, '2010-10-02 08:00:00', '2010-10-05 08:00:00', 1000000, 5000000, 1111, 3331, 6661);
create table attach_service(
attach_service_id int not null,
attach_service_name varchar(45),
attach_service_cost double,
attach_service_unit int,
attach_service_status varchar(45),
primary key(attach_service_id)
);
insert into `furama`.`attach_service`(`attach_service_id`,`attach_service_name`,`attach_service_cost`,`attach_service_unit`,`attach_service_status`) values
(8881, 'massage', 300000, 11, 'thu gian');
create table contract_detail(
contract_detail_id int not null,
contract_id int,
attach_service_id int,
quantity int,
primary key(contract_detail_id),
foreign key(`contract_id`) references `contract`(`contract_id`),
foreign key(`attach_service_id`) references `attach_service`(`attach_service_id`)
);
insert into `furama`.`contract_detail`(`contract_detail_id`,`contract_id`,`attach_service_id`,`quantity`) values
(9991, 7771, 8881, 9);

-- 2
select * from employee where (employee_name like 'H%' or employee_name like 'T%' or employee_name like 'K%') and length(employee_name) < 15;
-- 3
select * from customer where customer_address in ('Quang Tri','Da Nang') and (curdate()-customer_birthday>(18*365) and curdate()-customer_birthday>(50*365));
-- 4
select customer.customer_name, count(contract.contract_id) as so_lan_dat_phong from customer
inner join contract on customer.customer_id = contract.customer_id
inner join customer_type on customer.customer_type_id = customer_type.customer_type_id where customer_type.customer_type_name = "Diamond"
group by customer.customer_id order by so_lan_dat_phong;
-- 5
select customer.customer_id, customer.customer_name, customer_type.customer_type_name, contract.contract_id, service.service_name, contract.contract_start_date, contract.contract_end_date,
sum(service.service_cost + contract_detail.quantity*attach_service.attach_service_cost) as "tongtien" from customer
left join customer_type on customer.customer_type_id = customer_type.customer_type_id
left join contract on customer.customer_id = contract.customer_id
left join service on contract.service_id = service.service_id
left join contract_detail on contract.contract_id = contract_detail.contract_id
left join attach_service on contract_detail.attach_service_id = attach_service.attach_service_id
group by contract.contract_id;