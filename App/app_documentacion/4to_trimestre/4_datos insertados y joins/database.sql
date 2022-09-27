create database sistematic_cutex;
use sistematic_cutex;

create table document_type (id int primary key auto_increment, 
name varchar (25) NOT NULL,
acronym varchar (5) NOT NULL
);

create table rol (id int primary key auto_increment, 
name varchar (25) NOT NULL
);

create table color (id int primary key auto_increment, 
name varchar (25) NOT NULL,
color_code varchar (10) NOT NULL
);

create table category (id int primary key auto_increment, 
name varchar (25) NOT NULL
);

create table subcategory (id int primary key auto_increment, 
name varchar (25) NOT NULL,
category_id int NOT NULL
);
alter table subcategory add foreign key (category_id) references category(id);

create table company (id int primary key auto_increment, 
name varchar (45) NOT NULL,
nit varchar (20) NOT NULL,
owner_name varchar (45) NOT NULL,
date_fundation date NOT NULL,
address varchar (45) NOT NULL,
email varchar (45) NOT NULL UNIQUE,
cellphone varchar(20) NOT NULL
);

create table provider (id int primary key auto_increment, 
business_name varchar (45) NOT NULL,
admin_name varchar (25) NOT NULL,
cellphone varchar (25) NOT NULL,
email varchar (25) NOT NULL UNIQUE,
address varchar (45) NOT NULL
);
create table user (id int primary key auto_increment, 
names varchar (45) NOT NULL,
surnames varchar (70) NOT NULL,
document_number varchar (15) NOT NULL UNIQUE,
address varchar (45) NOT NULL,
email varchar (45) NOT NULL UNIQUE,
password varchar (250) NOT NULL,
cellphone varchar (20) NOT NULL,
document_type_id int NOT NULL,
rol_id int NOT NULL,
company_id int NOT NULL
);
alter table user add foreign key (document_type_id) references document_type(id);
alter table user add foreign key (rol_id) references rol(id);
alter table user add foreign key (company_id) references company(id);

create table product (id int primary key auto_increment, 
name varchar (45) NOT NULL,
reference varchar (20) NOT NULL,
description text NOT NULL,
stock int NOT NULL,
price float NOT NULL,
measure float NOT NULL,
company_id int NOT NULL,
provider_id int NOT NULL,
color_id int NOT NULL,
subcategory_id int NOT NULL,
user_id int NOT NULL
);
alter table product add foreign key (company_id) references company(id);
alter table product add foreign key (provider_id) references provider(id);
alter table product add foreign key (color_id) references color(id);
alter table product add foreign key (subcategory_id) references subcategory(id);
alter table product add foreign key (user_id) references user(id);


create table invoice (id int primary key auto_increment, 
date date NOT NULL,
hour time NOT NULL,
total int NOT NULL,
user_id int NOT NULL,
client_id int NULL
);
alter table invoice add foreign key (user_id) references user(id);

create table detail_invoice (id int primary key auto_increment, 
price float NOT NULL,
stock int NOT NULL,
subtotal float NOT NULL,
invoice_id int NOT NULL,
product_id int NOT NULL
);
alter table detail_invoice add foreign key (invoice_id) references invoice(id);
alter table detail_invoice add foreign key (product_id) references product(id);

create table client (id int primary key auto_increment, 
name varchar (45) NULL,
surname varchar (45) NULL,
cellphone varchar (20) NULL,
email varchar (45) NULL,
address varchar (45) NULL
);
alter table invoice add foreign key (client_id) references client(id);



