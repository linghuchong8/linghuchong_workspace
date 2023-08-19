DQL：数据查询语言，select
1.简单查询
语法结构：select distinct * |col1,col2 from table_name where
select * from product;
select pname from product;
select pname,price from product;
select pname,price,category_id from product;
select pid,pname,price,category_id from product;
select distinct category_id from product;--对分类id进行去重拿到去重之后结果
select distinct price,category_id from product;--一次对多个字段进行去重的时候，
--就是将多个字段的值先拼接在一起，再去重
select pname as ppp from product;
select pname as ppp,pname from product;
select pname as xiuer,pname from product;
select pname as xiuer,pname p from product t1;--对字段和表取别名，as可以省略不写
select product.pname,price from product;
select product.pname,price from product t1;--报错
select t1.pname,price from product t1;--取别名之后不能再用原表名引用表里面的字段
select price*0.8 from product;
select price*0.8+10 from product;--select后面写四则运算

2.条件查询 where
select * from product where category_id='c002';
select * from product where price>=200 and price<=2000;
select * from product where price between 200 and 2000;
select * from product where category_id !='c002'; --不等于
select * from product where category_id <> 'c002';--不等于
select * from product where category_id='c002' or category_id='c003';
select * from product where category_id in ('c002','c003');
模糊匹配，关键字like --%任意长度任意字符 _一个长度任意字符
select * from product where pname like '%想%';  --...想...
select * from product where pname like '想%';   --想.....
select * from product where pname like '_想%';  -- x想...........
select * from product where pname like '香%';--香........
select * from product where pname like '_霸';--x霸
select * from product where pname like '%斯';--......斯
--null值判断 is null \is not null------------------------------
select * from product where category_id is not null;
select * from product where category_id is null;
select * from product where not category_id is null;
select * from product where category_id ！= null;--报错
----null 不属于任何类型-------------------------------------

---------逻辑运算符：and or not-----------
--and 交集
select * from product where category_id='c001' and price >3000;
--or 并集
select * from product where price<100 or price =440;
--not 取反
select * from product where price<100 or not price =440;
--------------------------------------------------------------------

---------order by:排序--------------------------------
--升序：asc，默认是升序
--降序：desc
select * from product order by price desc;
select * from product order by price;
select * from product order by category_id desc;
select * from product order by category_id asc ,price desc;--先对第一个排序字段的值排序，当第一个字段的值有相等结果的时候，再对第二个字段的值进行排序
--注意：
--根据数值类型的字段进行排序。
-------------------------------------------------

总结：
DML：
插入： insert into
insert into  student values(1,'张三',20),(2,'李四',22);
insert into student(id,name) values(3,'秀儿');
insert into student(name,id) values('秀儿',4);
更新:update 
update student set age=100;  不安全的
update student set age=100 where sex='女';安全的
删除： delete from 
delete from student;
delete from student where age>100 and sex='女' ;
truncate  student;
DQL：	
简单查询 :
select * from product;
select pname ,price from product;
select pname as productname, price p from product   t1;
select distinct category_id from product;
distinct 只能紧跟select，不能在字段之间
条件查询 : <  >  <= >=  != <>  between and   is null  is not null   like  in 
select * from product where price >=2000 and price <=5000;
select * from product where price between 2000 and 5000;
select * from product where category_id ='c002';
select * from product where category_id !='c002';
select * from product where category_id <> 'c002';
select * from product where pname is not null ;
select * from product where pname like '_霸%';
select * from product where category_id in ('c001','c002','c003');
select * from product where category_id ='c001' or category_id ='c002' or category_id ='c003' ;

排序: order by 
升序： asc ，默认
降序： desc 
select * from product order by price desc,category_id desc;


--------------聚合函数----------------------------------------------------------
select count(1),count(*) from product;
#1 查询商品的总条数
SELECT COUNT(*) FROM product;
#2 查询价格大于200商品的总条数
SELECT COUNT(*) FROM product WHERE price > 200;
聚合函数：
count(1):计算满足条件的数据量
max(): 求最大值
min()：求最小值
avg()：求平均值
sum(): 求和
select  count(1) from product where price>200 ;
select max(price) max_p from product;
select min(price) from product;
select avg(price) from product ;
select sum(price) from product;
-------------------聚合函数---------------------------------------------------------
------------group by ---------------------------------------------------
select category_id,count(1) from product group by category_id;
例子：
create table person(name varchar(20),sex varchar(4));
select sex,count(1) from person group by sex;
--分组 ：group  by 
--精华： 按照什么进行分组，就group  by 什么，你group by 那么select就只能写什么，除了聚合函数。
--------------------------------------------------------------------------------------------------
having：紧跟group by分组之后的二次过滤
select category_id,count(1) cn from product 
where category_id is not null or category_id <>''  
group by category_id
having cn >1
order by cn desc
;
having可以写聚合函数，但是where里面不能写聚合函数。
where是第一次过滤，having是第二次过滤




回顾：	
聚合函数 ：
count
max 
min 
avg 
sum
SELECT  COUNT(1) AS cn ,max(price ) as max_p,min(price) min_p,sum(price) sum_p,
round(avg(price)) avg_p,round(sum(price)/count(1),2) as avg_2 from product;


group  by : 分组。group by 什么字段，select就只能写什么字段，除了聚合函数
Select sex,count(1) as cn  from person group by sex;--按照性别维度统计人数

------------关键字不区分大小写------------------
select * from Product;--报错
use Bigdata;--报错
select Pname from product;--不报错
--------表名，数据库名区分大小写，字段不区分大小写----


select * from product limit 2;
Limit : 取有限条数据，有分页功能
select * from product limit 10; 查看有限条数据
Limit M ,N => M 从0开始，起始位置，N代表每一页的数据量大小
select * from product limit 1,5;

insert into :将结果数据写入对应的表
需求：按性别统计人数
select sex,count(1) as cn from person group by sex;
create table sex_cn(sex varchar(6),cn int);
将结果写入结果表：
insert into sex_cn 
select sex,count(1) as cn from person group by sex;

insert overwrite:先删除原表数据，再写入新的数据(hive可以用，sql不支持）
create table sex_cn2 
as 
select sex,count(1) as cn from person group by sex;--将查询到的表字段映射到新建的表sex_cn2中
drop table sex_cn2;

---------------------------------------------
---主外键关系：一个表的外键指向另外一个表的主键，形成主外键关系
----主表 ： 被指的那个表就是主表
-----从表 ： 有外键的表是从表
----外键 ： 从表里面指向主表的那个字段
---******添加数据的时候从主表开始************--------------
---******删除数据从从表开始****------------------------------
--###创建分类表
create table category(
cid varchar(32) PRIMARY KEY ,
cname varchar(100)  #分类名称
);

--# 商品表
CREATE TABLE products (
pid varchar(32) PRIMARY KEY  ,
name VARCHAR(40) ,
price DOUBLE ,
category_id varchar(32)
);
--#添加约束
alter table products add constraint product_fk foreign key (category_id) references category (cid);
----------------------------------------------------------------------------------------------------------------------

--*************重点
连接查询
初始化数据
--分类
INSERT INTO category(cid,cname) VALUES('c001','家电');
INSERT INTO category(cid,cname) VALUES('c002','服饰');
INSERT INTO category(cid,cname) VALUES('c003','化妆品');
drop table products;
CREATE TABLE products(
  pid VARCHAR(32) PRIMARY KEY ,
  pname VARCHAR(50),
  price INT,
  flag VARCHAR(2),    #是否上架标记为：1表示上架、0表示下架
  category_id VARCHAR(32)
);

--商品
INSERT INTO products(pid, pname,price,flag,category_id) VALUES('p001','联想',5000,'1','c001');
INSERT INTO products(pid, pname,price,flag,category_id) VALUES('p002','海尔',3000,'1','c001');
INSERT INTO products(pid, pname,price,flag,category_id) VALUES('p003','雷神',5000,'1','c001');
INSERT INTO products (pid, pname,price,flag,category_id) VALUES('p004','JACK JONES',800,'1','c002');
INSERT INTO products (pid, pname,price,flag,category_id) VALUES('p005','真维斯',200,'1','c002');
INSERT INTO products (pid, pname,price,flag,category_id) VALUES('p006','花花公子',440,'1','c002');
INSERT INTO products (pid, pname,price,flag,category_id) VALUES('p007','劲霸',2000,'1','c002');

INSERT INTO products (pid, pname,price,flag,category_id) VALUES('p008','香奈儿',800,'1','c003');
INSERT INTO products (pid, pname,price,flag,category_id) VALUES('p009','相宜本草',200,'1','c003');


内连接 （你有我有）
隐式内连接 ： select  * from products , category;--笛卡尔积(2*9=18条)
select  * from products , category where products.category_id=category.cid;

显示内连接: inner join     on(连接条件)
select  * from products inner join category ;笛卡尔积
select  * from products t1 inner join category t2 on t1.category_id=t2.cid; 
select  * from products t1 inner join category t2 where t1.category_id=t2.cid; 
inner可以不要
select  * from products t1  join category t2 where t1.category_id=t2.cid; 
重点把握：两个或者多个表的连接条件是什么

外连接 : left join ,right join  
select * from products t1 left join category t2 on t1.category_id=t2.cid;
select * from products t1 right join category t2 on t1.category_id=t2.cid;
select * from products t1 right join category t2 on t1.category_id=t2.cid where t1.category_id is null; --求差集
select * from products t1 left join category t2 on t1.category_id=t2.cid where t2.cid is null;--求差集

子查询 ： 会将子查询的结果当做一个值，一个集合，一个表
需求： 查询是化妆品分类的产品
select * from products ,category where category_id=cid and cname='化妆品';
多表联查
select * from products where category_id = (select cid from category where cname='化妆品');当做一个值
select cid from category where cname='化妆品' or cname='家电';
select * from products where category_id = (select cid from category where cname='化妆品' or cname='家电');--报错
select * from products where category_id in (select cid from category where cname='化妆品' or cname='家电');--当做一个集合
select * from products  inner join
    (select cid from category where cname='化妆品' or cname='家电') t1
on products.category_id=t1.cid; --当做一个表

--索引：
--		MySQL里面索引是B+树
--		索引的作用：提高检索（查询）速度，快速定位要查找的内容
--		索引的缺点：
--			1， 在有索引的表里面，添加或者删除数据，会影响到索引文件，因为添加或者删除数据，都需要对索引文件进行修改
--			2. 索引文件在查询表数据的时候需要加载到内存里面，需要耗费资源
--			3. 索引不是随便创建的，只有在一个字段经常用于查询的时候，可以对这个字段创建索引
create index index_cname on category(cname(20));     --经常用于查询设置索引
alter table products add index index_comment(price);
SHOW INDEX FROM category;
DROP INDEX index_cname ON category;
-----------------用的少-------------------------------------------------------------------------
--开窗函数：在mysql里面是在8.0以后才有的
		1. row_number() over()
		2.rank() over()
		3. dense_rank() over()
		

------------------*************主要解决排名问题，只要需求是说我要排名，就想到窗口函数****----------------
	
 ;
 --数据准备
create table employee (empid int,ename varchar(20) ,deptid int ,salary decimal(10,2));

insert into employee values(1,'刘备',10,5500.00);
insert into employee values(2,'赵云',10,4500.00);
insert into employee values(2,'张飞',10,3500.00);
insert into employee values(2,'关羽',10,4500.00);

insert into employee values(3,'曹操',20,1900.00);
insert into employee values(4,'许褚',20,4800.00);
insert into employee values(5,'张辽',20,6500.00);
insert into employee values(6,'徐晃',20,14500.00);

insert into employee values(7,'孙权',30,44500.00);
insert into employee values(8,'周瑜',30,6500.00);
insert into employee values(9,'陆逊',30,7500.00);
-----------------------------------------------------------------------------------------
select ename,salary
from employee 
group by deptid
order by salary 
desc; ---按薪资进行降序排列，执行不通，group by 后面和select 后面一致，除了聚合函数
--注意：窗口函数可以摆脱group by 这个限制,partition by 和group by 同等意思
select ename,salary,row number() over(partition by deptid order by salary) row1
from employee;

select ename,salary,
       row_number() over (partition by deptid order by salary) row1,--1234
       rank() over (partition by deptid order by salary) row2,--1224
       dense_rank() over (partition by deptid order by salary) row3--1223
from employee

----------------------------------------------------------------------------------------
总结：
DML：
--插入：insert into
----字段和字段类型要一致------------------------------------
insert into student values (1,'张三',20),(2,'李四',22);
insert into student(id,name) values (3,'秀儿'）
insert into student(name,id) values ('秀儿',4） 
-----------------------------------------------------------
--更新 update
update student set age =100;--不安全，整表操作
update student set age =100 where sex='女';--安全
--删除 delete from 
delete from student;
delete from student where age>100 and sex='女';
truncate student;
truncate  table student;--table可加可不加，把原表删掉，重建相同的一张表

DQL：
简单查询：
select * from product;--*表示所有字段
select pname,price from product;
select pname as productname,price p from product t1;
select distinct category_id from product;
select pname,distinct category_id from product;--报错，distinct 只能写select后面，不能在字段中间
条件查询：> <  <=   >=   =  <> !=  between and    is null   is not null  like  in 
select * from product where price >=2000 and price <=5000;
select * from product where price between 2000 and 5000;
select * from product where category_id ='c002';
-----------------------------------------------------
select * from product where category_id !='c002';----写法一样-----
select * from product where category_id <>'c002';----写法一样-----
-----------------------------------------------------------
select * from product where pname is not null;
select * from product where pname like '_霸%'; --%任意字符
-------------------------------------------------------------------------------------------------
select * from product where category_id in ('c001','c002','c003')----------------------------------------
select * from product where category_id='c001' or  category_id='c002' or category_id='c003'---------------写法一样 
---------------------------------------------------------------------------------------------------------

排序：order by 
升序：asc,默认
降序：desc
select * from product order by price desc,category_id desc; 

