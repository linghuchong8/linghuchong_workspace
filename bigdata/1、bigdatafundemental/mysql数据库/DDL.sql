DDL之数据库定义
语法：
create database  bigdata;  --创建数据库
create datbase if not exists bigdata;--查看数据库的时候检查数据库是否存在

show databases;--显示当前MySQL下面有哪些数据库，一定要加s,否则报错

use  bigdata;--使用数据库bigdata,使用表的时候一定要指定是哪个数据库下面的表
select database(); --查看当前正在使用的是哪个数据库

drop database bigdata; --删除数据库

mysql -uroot -p123456;--进入mysql

DDL之表操作
use bigdata; 
--使用数据库
create table student(
name varchar(2000),
age int,
sex  char(10)  
);--创建一张表student
show tables ；--查看使用的数据库里面有哪些表

desc student;--查看表结构
drop  table student;--删除表
DDL之表字段、表名称的操作
1. 添加字段
	alter table student add  address varchar(200);-- 给表添加字段，如果是添加的字段为MySQL关键字就一定要加反引号
2. 删除字段
	alter table student drop address ;--删除字段
3. 修改表字段
	alter table student change sex gender varchar(20);-- 修改表字段
4. 修改表名称
	rename table student to  stu; --修改表名称
	
DML： 数据操作语言，写数据，修改数据，删除数据. 不加table
insert into stu values ('xiuer',18,"男性");
insert into stu(name) values('李四');
insert into stu(name,age,gender) values('王五','30','女性');
insert into stu values('王五','28','男性'),('王五','30','男性'),('王五','33','女性');

create table teacher(id  int,name varchar(200),subject  varchar(20));  --创建表
show tables;
desc teacher;
insert into teacher values(443543,'张三','大数据学科'),(443544,'李四','大数据学科'),(443545,'王五','大数据学科');


update teacher set name='itcast';--全表修改数据
update teacher set name='xiuer' where id =443545;-- 加where条件修改部分数据 
update  teacher set name='张三' where id=443545 and subject='大数据学科';--多条件更新数据
create table stu2(
id int primary key auto_increment,
name varchar(20)
);
insert into stu2 values(1,'张三'),(2,'李四'),(3,'王五');
delete from stu2;--删除整个表的数据
delete from stu2 where id =4;--删除表里面的部分数据，根据where条件判断
truncate stu2;--先删表后新建一张一模一样的表,hive里面没有delete,只有truncate

约束：
create table student2(
 id int primary key,
 name varchar(20),
 age int
); 
alter table student2 drop primary key;
CREATE TABLE Persons2
(
  FirstName varchar(255),
  LastName  varchar(255),
  Address   varchar(255),
  City      varchar(255),
  CONSTRAINT pk_PersonID PRIMARY KEY (FirstName, LastName)
)--联合主键

create table stu3(
id int primary key auto_increment,
name varchar(20),
score int
);
ALTER TABLE stu3 AUTO_INCREMENT=1000;

create table stu4
(
id int primary key,
name varchar(20) not null,--不为空
score int
)
insert into stu4 values (2,'',100); --空字符串可以运行成功
insert into stu4 values (2,null,100);--为null,运行不成功


create table stu6
(
id int primary key,
name varchar(20) not null,
age int not null,
id_card varchar(200) unique,
tel_no varchar(20) unique --被修饰的字段不能重复，null与null不一样
);
