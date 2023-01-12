create table product
(
    id          serial primary key,
    name        VARCHAR(50),
    description VARCHAR(50),
    price       INT,
    wight       INT
);

create table product_info
(
    id              serial primary key,
    expiration_date DATE,
    country         VARCHAR(50),
    colour          VARCHAR(50),
    product_id      INT REFERENCES product (id)
);
create table customers
(
    id           serial primary key,
    first_name   VARCHAR(50),
    last_name    VARCHAR(50),
    email        VARCHAR(50),
    phone_number VARCHAR(50)
);

create table basket
(
    id           serial primary key,
    basket_name  VARCHAR(50),
    customers_id INT REFERENCES customers (id)
);

create table product_basket
(
    product_id INT REFERENCES product (id),
    basket_id  INT REFERENCES basket (id)
);

insert into product (name, description, price, wight)
values ('Matsoft', 'Jermain', 203, 100);
insert into product (name, description, price, wight)
values ('Holdlamis', 'Batholomew', 102, 9);
insert into product (name, description, price, wight)
values ('Redhold', 'Scotti', 2552, 40);
insert into product (name, description, price, wight)
values ('Aerified', 'Haven', 106, 24);
insert into product (name, description, price, wight)
values ('Voyatouch', 'Valentine', '1302', 4);
insert into product (name, description, price, wight)
values ('Zaam-Dox', 'Klaus', 35, 50);
insert into product (name, description, price, wight)
values ('Greenlam', 'Mick', 33, 84);
insert into product (name, description, price, wight)
values ('Bamity', 'Beauregard', 565, 75);
insert into product (name, description, price, wight)
values ('Fintone', 'Shurlocke', 50, 15);
insert into product (name, description, price, wight)
values ('Subin', 'Temple', 49, 25);
insert into product (name, description, price, wight)
values ('Bytecard', 'Vidovic', 2082, 19);
insert into product (name, description, price, wight)
values ('Namfix', 'Todd', 3110, 74);
insert into product (name, description, price, wight)
values ('Bigtax', 'Gustaf', 426, 86);
insert into product (name, description, price, wight)
values ('Cardguard', 'Sylvester', 87, 49);
insert into product (name, description, price, wight)
values ('Viva', 'Haskell', 168, 68);


insert into product_info (expiration_date, country, colour, product_id)
values (date'2022-01-10', 'Portugal', 'Mauv', 1);
insert into product_info (expiration_date, country, colour, product_id)
values (date'2022-02-02', 'Venezuela', 'Mauv', 2);
insert into product_info (expiration_date, country, colour, product_id)
values (date'2022-03-03', 'Peru', 'Turquoise', 3);
insert into product_info (expiration_date, country, colour, product_id)
values (date'2022-04-04', 'Finland', 'Maroon', 4);
insert into product_info (expiration_date, country, colour, product_id)
values (date'2022-05-05', 'Lithuania', 'Teal', 5);
insert into product_info (expiration_date, country, colour, product_id)
values (date'2022-06-06', 'France', 'Red', 6);
insert into product_info (expiration_date, country, colour, product_id)
values (date'2022-07-07', 'China', 'Orange', 7);
insert into product_info (expiration_date, country, colour, product_id)
values (date'2022-08-08', 'Iraq', 'Indigo', 8);
insert into product_info (expiration_date, country, colour, product_id)
values (date'2022-09-09', 'Miralipta', 'Red', 9);
insert into product_info (expiration_date, country, colour, product_id)
values (date'2022-10-10', 'United States', 'Maroon', 10);
insert into product_info (expiration_date, country, colour, product_id)
values (date'2022-11-11', 'China', 'Indigo', 11);
insert into product_info (expiration_date, country, colour, product_id)
values (date'2022-12-12', 'China', 'Aquamarine', 12);
insert into product_info (expiration_date, country, colour, product_id)
values (date'2023-01-01', 'Philippines', 'Teal', 13);
insert into product_info (expiration_date, country, colour)
values (date'2023-02-02', 'Malazia', 'Puce');
insert into product_info (expiration_date, country, colour)
values (date'2023-03-03', 'Russia', 'Turquoise');

insert into customers (first_name, last_name, email, phone_number)
values ('Tibold', 'Cardo', 'tcardo0@last.fm', '335-480-9447');
insert into customers (first_name, last_name, email, phone_number)
values ('Xylia', 'Mayze', 'xmayze1@unesco.org', '666-201-1033');
insert into customers (first_name, last_name, email, phone_number)
values ('Waverly', 'Fiennes', 'wfiennes2@uiuc.edu', '805-986-9927');
insert into customers (first_name, last_name, email, phone_number)
values ('Yuri', 'Vaulkhard', 'yvaulkhard3@jalbum.net', '538-356-6914');
insert into customers (first_name, last_name, email, phone_number)
values ('Dalila', 'Sidnell', 'dsidnell4@ihg.com', '111-839-1207');
insert into customers (first_name, last_name, email, phone_number)
values ('Lilia', 'Gebhardt', 'lgebhardt5@usgs.gov', '449-162-7399');
insert into customers (first_name, last_name, email, phone_number)
values ('Sashenka', 'Ivanov', 'sivanov6@nymag.com', '131-693-6253');
insert into customers (first_name, last_name, email, phone_number)
values ('Tandy', 'Gosson', 'tgosson7@answers.com', '637-975-4243');
insert into customers (first_name, last_name, email, phone_number)
values ('Gladi', 'MacCafferky', 'gmaccafferky8@auda.org.au', '383-679-4897');
insert into customers (first_name, last_name, email, phone_number)
values ('Karrie', 'Paudin', 'kpaudin9@marketwatch.com', '134-649-0361');
insert into customers (first_name, last_name, email, phone_number)
values ('Calypso', 'Dowdle', 'cdowdlea@spiegel.de', '504-641-5217');
insert into customers (first_name, last_name, email, phone_number)
values ('Morry', 'Melton', 'mmeltonb@wordpress.com', '467-600-2385');
insert into customers (first_name, last_name, email, phone_number)
values ('Casper', 'Iorns', 'ciornsc@altervista.org', '611-328-1706');
insert into customers (first_name, last_name, email, phone_number)
values ('Melicent', 'Corstorphine', 'mcorstorphined@techcrunch.com', '525-910-8765');
insert into customers (first_name, last_name, email, phone_number)
values ('Rodney', 'Bassick', 'rbassicke@over-blog.com', null);



insert into basket (basket_name, customers_id)
values ('Zamit', 1);
insert into basket (basket_name, customers_id)
values ('Toughjoyfax', 2);
insert into basket (basket_name, customers_id)
values ('Bamity', 3);
insert into basket (basket_name, customers_id)
values ('Greenlam', 4);
insert into basket (basket_name, customers_id)
values ('Zamit', 5);
insert into basket (basket_name, customers_id)
values ('Tin', 6);
insert into basket (basket_name, customers_id)
values ('Fix San', 7);
insert into basket (basket_name, customers_id)
values ('Voyatouch', 8);
insert into basket (basket_name, customers_id)
values ('Zathin', 9);
insert into basket (basket_name, customers_id)
values ('Sonsing', 10);
insert into basket (basket_name, customers_id)
values ('Mat Lam Tam', 11);
insert into basket (basket_name, customers_id)
values ('Sonair', 12);
insert into basket (basket_name, customers_id)
values ('Tres-Zap', 13);
insert into basket (basket_name, customers_id)
values ('Fix San', 14);
insert into basket (basket_name, customers_id)
values ('Temp', 15);

insert into product_basket(product_id, basket_id)
values (1, 1);
insert into product_basket(product_id, basket_id)
values (2, 2);
insert into product_basket(product_id, basket_id)
values (3, 3);
insert into product_basket(product_id, basket_id)
values (4, 4);
insert into product_basket(product_id, basket_id)
values (5, 5);
insert into product_basket(product_id, basket_id)
values (6, 6);
insert into product_basket(product_id, basket_id)
values (7, 7);
insert into product_basket(product_id, basket_id)
values (8, 8);
insert into product_basket(product_id, basket_id)
values (9, 9);
insert into product_basket(product_id, basket_id)
values (10, 10);
insert into product_basket(product_id, basket_id)
values (11, 11);
insert into product_basket(product_id, basket_id)
values (12, 12);
insert into product_basket(product_id, basket_id)
values (13, 13);
insert into product_basket(product_id, basket_id)
values (14, 14);
insert into product_basket(product_id, basket_id)
values (15, 15);

--1.Баардык продукталарды(Products) жана информацияларды чыгар.
select *
from product
         inner join product_info pi on product.id = pi.product_id;
--2. Информациясы бар болгон продукталарды гана чыгар.
select *
from product
         right join product_info pi on product.id = pi.product_id;
--3. Информациясы жок(null) болгон продукталарды чыгар.
select *
from product
         left join product_info pi on product.id = pi.product_id
where pi.id is null;
--4.Баардык продукталардын атын жана срогун чыгар.
select name, expiration_date
from product
         join product_info pi on product.id = pi.product_id;
--5. Баардык продукталарды жана анын мамлекеттери "М" менен башталган шаарларын чыгар.
select *
from product
         join product_info pi on product.id = pi.product_id
where pi.country like 'M%';
--6. Баардык кардардын(Customers) аттарын жана кардарга тийешелуу карзинанын(Basket_терин) аттарын сорттоп чыгар.(asc,desc)
select *
from customers
         inner join basket b on customers.id = b.customers_id
order by b.id asc;
select *
from customers
         inner join basket b on customers.id = b.customers_id
order by b.id desc;
--7. Кардардын аты жана кардардын продуктулары чыксын.
select first_name, name
from product
         join product_basket pb on product.id = pb.product_id
         join basket b on b.id = pb.basket_id
         join customers c on c.id = b.customers_id;
--8. Кардардын аты, кардар алган продуктун аты, баасы, салмагы чыксын.
select first_name, name, price, wight
from product
         join product_basket pb on product.id = pb.product_id
         join basket b on b.id = pb.basket_id
         join customers c on c.id = b.customers_id;

--9. Бир кардар эки окшош продукт алган болсо, кардардын аты,
--кардар алган продукталарынын аты уникалдуу болуп баасы жана салмагы кошулуп чыгар.
select c.first_name, pg_ndistinct_in(p.name), p.price, p.wight
from Customers c
         join product p on c.id = p.id;
--10.Бир өлкөдө чыккан продукталдын баарын чыгар.
select name, country
from product
         join product_info pi on product.id = pi.product_id
where country = 'China';
--11.Кардарлардын баарын жана алган продукталарынын баасынын суммасын тегеректеп (округлить) чыгар.
select round(sum(price))
from product
         join product_basket pb on product_id = pb.product_id
         join basket b on b.id = pb.basket_id
         join customers c on c.id = b.customers_id
group by first_name;
--12."2021" ден "2023" кө чейинки сроктогу продукталардын атын жана срокторун чыгар.
select name, expiration_date
from product
         join product_info pi on product.id = pi.product_id
where expiration_date between date'2022-01-01' and date'2022-12-31';
--13.Срогу "2022" болгон продукталардын шаарын , продукталардын атын жана баасын чыгар бирок баалары 0 болуп калсын.
select country, expiration_date, name, price
from product
         right join product_info pi on product.id = pi.product_id
where expiration_date between date '2022-1-1' and date '2022-12-31'
   or price is null;

--14.Баардык кардарлардын продукталарынын сумассын чыгар.
select sum(price)
from customers
         join basket b on customers.id = b.customers_id
         join product_basket pb on b.id = pb.basket_id
         join product p on pb.product_id = p.id;
--15.Кардардын аты жана ал сатып алган продуктунун аты, тусу чыксын.
select first_name, name, colour
from customers
         join public.basket b on customers.id = b.customers_id
         join product_basket pb on b.id = pb.basket_id
         join product p on p.id = pb.product_id
         join product_info pi on p.id = pi.product_id;
--16.Баардык продуктулардын салмактарын чыгар.
select name, wight
from product
         join product_info pi on product.id = pi.product_id;
--17.Кардарлардын email_дары "com" менен буткон кардарлардын аттары, корзинасынын аты чыксын.
select first_name, basket_name, email
from customers
         join public.basket b on customers.id = b.customers_id;
--18.Продуклардын атын, кыскача маалыматын(description), кардардын атын чыгар качан кардарлардын номери жок(null) болсо.
select name, description, first_name, phone_number
from product
         join product_basket pb on product.id = pb.product_id
         join basket b on b.id = pb.basket_id
         left join customers c on c.id = b.customers_id
where phone_number is null;
--19.Бардык продуктунун тустору жана тустору окшош продукталары чыксын.
select name, colour
from product
         join product_info pi on product.id = pi.product_id;
--20
