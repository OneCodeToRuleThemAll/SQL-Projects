drop table vehicle,model,brand,dealer,orders,customer

CREATE TABLE brand (
brand_id numeric(20) NOT NULL,
brand varchar(20) NOT NULL ,
PRIMARY KEY(brand_id)
);

CREATE TABLE model (
model_id numeric(20) NOT NULL,
brand_id numeric(20) NOT NULL,
Plain numeric(15),
Extra numeric(15),
FullExtra numeric(15),
PRIMARY KEY(model_id),
foreign key(brand_id) references brand(brand_id)
);

CREATE TABLE dealer (
dealer_id numeric(15,0) NOT NULL,
dealer_name varchar(20) NOT NULL ,
dealer_phone numeric(20) NOT NULL ,
dealer_address varchar(40) NOT NULL ,
PRIMARY KEY(dealer_id) 
);

CREATE TABLE vehicle (
vin numeric(15,0) NOT NULL,
brand_id numeric(20) NOT NULL ,
model_id numeric(20) NOT NULL ,
dealer_id numeric(35) NOT NULL,
PRIMARY KEY(vin), 
FOREIGN KEY (brand_id) references brand(brand_id),
foreign key(model_id) references model(model_id),
foreign key(dealer_id) references dealer(dealer_id)
);

CREATE TABLE customer (
customer_id numeric(20) NOT NULL,
cust_name varchar(20) NOT NULL,
cust_address varchar(40) NOT NULL,
cust_phone numeric(20) NOT NULL,
PRIMARY KEY(customer_id) 
);

CREATE TABLE orders (
order_id numeric(20) NOT NULL,
customer_id numeric(20) NOT NULL ,
final_price varchar(40) NOT NULL,
dealer_id numeric(20) NOT NULL,
Vin numeric(20) NOT NULL references vehicle(vin),
PRIMARY KEY(order_id) ,
foreign key(customer_id) references customer(customer_id),
foreign key(dealer_id) references dealer(dealer_id)
);

