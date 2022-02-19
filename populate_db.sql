USE olist_db;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE geoloc;
load data local infile 'C:/Users/Frank Wan/Desktop/MSBA Files/Semester 2/Big Data/LAB/olist_geolocation_dataset.csv'
replace into table olist_db.geoloc
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE olist_db.o_item;
load data local infile 'C:/Users/Frank Wan/Desktop/MSBA Files/Semester 2/Big Data/LAB/olist_order_items_dataset.csv'
into table olist_db.o_item
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows
(order_id, order_item_id, product_id, seller_id, @shipping_limit_date, price, freight_value)
SET shipping_limit_date = STR_TO_DATE(@shipping_limit_date,'%Y-%m-%d %H:%i:%s');

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE olist_db.o_payment;
load data local infile 'C:/Users/Frank Wan/Desktop/MSBA Files/Semester 2/Big Data/LAB/olist_order_payments_dataset.csv'
into table olist_db.o_payment
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;


SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE olist_db.order;
load data local infile 'C:/Users/Frank Wan/Desktop/MSBA Files/Semester 2/Big Data/LAB/olist_orders_dataset.txt'
into table olist_db.order
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;


SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE olist_db.prod_cat_name_tr;
load data local infile 'C:/Users/Frank Wan/Desktop/MSBA Files/Semester 2/Big Data/LAB/product_category_name_translation.csv'
into table olist_db.prod_cat_name_tr
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE olist_db.product;
load data local infile 'C:/Users/Frank Wan/Desktop/MSBA Files/Semester 2/Big Data/LAB/olist_products_dataset.csv'
into table olist_db.product
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE olist_db.seller;
load data local infile 'C:/Users/Frank Wan/Desktop/MSBA Files/Semester 2/Big Data/LAB/olist_sellers_dataset.csv'
into table olist_db.seller
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE olist_db.review;
load data local infile 'C:/Users/Frank Wan/Desktop/MSBA Files/Semester 2/Big Data/LAB/olist_order_reviews_dataset.csv'
into table olist_db.review
CHARACTER SET latin1 
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE olist_db.customer;
load data local infile 'C:/Users/Frank Wan/Desktop/MSBA Files/Semester 2/Big Data/LAB/olist_customers_dataset.csv'
into table olist_db.customer
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;
