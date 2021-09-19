create database bank_management
use bank_management
create table customer(
customer_number int not null,
fullname varchar(45),
phone varchar(45) unique,
email varchar(45),
address varchar(45),
primary key(customer_number)
)
create table accounts(
account_number int not null,
account_type varchar(45),
date_open date,
balance float,
primary key(account_number)
)
create table transactions(
tran_number int not null,
account_number int,
trading_date date,
amounts float,
foreign key(`account_number`) references `accounts`(`account_number`)
)