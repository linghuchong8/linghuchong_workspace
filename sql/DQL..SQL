DQL�����ݲ�ѯ���ԣ�select
1.�򵥲�ѯ
�﷨�ṹ��select distinct * |col1,col2 from table_name where
select * from product;
select pname from product;
select pname,price from product;
select pname,price,category_id from product;
select pid,pname,price,category_id from product;
select distinct category_id from product;--�Է���id����ȥ���õ�ȥ��֮����
select distinct price,category_id from product;--һ�ζԶ���ֶν���ȥ�ص�ʱ��
--���ǽ�����ֶε�ֵ��ƴ����һ����ȥ��
select pname as ppp from product;
select pname as ppp,pname from product;
select pname as xiuer,pname from product;
select pname as xiuer,pname p from product t1;--���ֶκͱ�ȡ������as����ʡ�Բ�д
select product.pname,price from product;
select product.pname,price from product t1;--����
select t1.pname,price from product t1;--ȡ����֮��������ԭ�������ñ�������ֶ�
select price*0.8 from product;
select price*0.8+10 from product;--select����д��������

2.������ѯ where
select * from product where category_id='c002';
select * from product where price>=200 and price<=2000;
select * from product where price between 200 and 2000;
select * from product where category_id !='c002'; --������
select * from product where category_id <> 'c002';--������
select * from product where category_id='c002' or category_id='c003';
select * from product where category_id in ('c002','c003');
ģ��ƥ�䣬�ؼ���like --%���ⳤ�������ַ� _һ�����������ַ�
select * from product where pname like '%��%';  --...��...
select * from product where pname like '��%';   --��.....
select * from product where pname like '_��%';  -- x��...........
select * from product where pname like '��%';--��........
select * from product where pname like '_��';--x��
select * from product where pname like '%˹';--......˹
--nullֵ�ж� is null \is not null------------------------------
select * from product where category_id is not null;
select * from product where category_id is null;
select * from product where not category_id is null;
select * from product where category_id ��= null;--����
----null �������κ�����-------------------------------------

---------�߼��������and or not-----------
--and ����
select * from product where category_id='c001' and price >3000;
--or ����
select * from product where price<100 or price =440;
--not ȡ��
select * from product where price<100 or not price =440;
--------------------------------------------------------------------

---------order by:����--------------------------------
--����asc��Ĭ��������
--����desc
select * from product order by price desc;
select * from product order by price;
select * from product order by category_id desc;
select * from product order by category_id asc ,price desc;--�ȶԵ�һ�������ֶε�ֵ���򣬵���һ���ֶε�ֵ����Ƚ����ʱ���ٶԵڶ����ֶε�ֵ��������
--ע�⣺
--������ֵ���͵��ֶν�������
-------------------------------------------------

�ܽ᣺
DML��
���룺 insert into
insert into  student values(1,'����',20),(2,'����',22);
insert into student(id,name) values(3,'���');
insert into student(name,id) values('���',4);
����:update 
update student set age=100;  ����ȫ��
update student set age=100 where sex='Ů';��ȫ��
ɾ���� delete from 
delete from student;
delete from student where age>100 and sex='Ů' ;
truncate  student;
DQL��	
�򵥲�ѯ :
select * from product;
select pname ,price from product;
select pname as productname, price p from product   t1;
select distinct category_id from product;
distinct ֻ�ܽ���select���������ֶ�֮��
������ѯ : <  >  <= >=  != <>  between and   is null  is not null   like  in 
select * from product where price >=2000 and price <=5000;
select * from product where price between 2000 and 5000;
select * from product where category_id ='c002';
select * from product where category_id !='c002';
select * from product where category_id <> 'c002';
select * from product where pname is not null ;
select * from product where pname like '_��%';
select * from product where category_id in ('c001','c002','c003');
select * from product where category_id ='c001' or category_id ='c002' or category_id ='c003' ;

����: order by 
���� asc ��Ĭ��
���� desc 
select * from product order by price desc,category_id desc;


--------------�ۺϺ���----------------------------------------------------------
select count(1),count(*) from product;
#1 ��ѯ��Ʒ��������
SELECT COUNT(*) FROM product;
#2 ��ѯ�۸����200��Ʒ��������
SELECT COUNT(*) FROM product WHERE price > 200;
�ۺϺ�����
count(1):��������������������
max(): �����ֵ
min()������Сֵ
avg()����ƽ��ֵ
sum(): ���
select  count(1) from product where price>200 ;
select max(price) max_p from product;
select min(price) from product;
select avg(price) from product ;
select sum(price) from product;
-------------------�ۺϺ���---------------------------------------------------------
------------group by ---------------------------------------------------
select category_id,count(1) from product group by category_id;
���ӣ�
create table person(name varchar(20),sex varchar(4));
select sex,count(1) from person group by sex;
--���� ��group  by 
--������ ����ʲô���з��飬��group  by ʲô����group by ��ôselect��ֻ��дʲô�����˾ۺϺ�����
--------------------------------------------------------------------------------------------------
having������group by����֮��Ķ��ι���
select category_id,count(1) cn from product 
where category_id is not null or category_id <>''  
group by category_id
having cn >1
order by cn desc
;
having����д�ۺϺ���������where���治��д�ۺϺ�����
where�ǵ�һ�ι��ˣ�having�ǵڶ��ι���




�عˣ�	
�ۺϺ��� ��
count
max 
min 
avg 
sum
SELECT  COUNT(1) AS cn ,max(price ) as max_p,min(price) min_p,sum(price) sum_p,
round(avg(price)) avg_p,round(sum(price)/count(1),2) as avg_2 from product;


group  by : ���顣group by ʲô�ֶΣ�select��ֻ��дʲô�ֶΣ����˾ۺϺ���
Select sex,count(1) as cn  from person group by sex;--�����Ա�ά��ͳ������

------------�ؼ��ֲ����ִ�Сд------------------
select * from Product;--����
use Bigdata;--����
select Pname from product;--������
--------���������ݿ������ִ�Сд���ֶβ����ִ�Сд----


select * from product limit 2;
Limit : ȡ���������ݣ��з�ҳ����
select * from product limit 10; �鿴����������
Limit M ,N => M ��0��ʼ����ʼλ�ã�N����ÿһҳ����������С
select * from product limit 1,5;

insert into :���������д���Ӧ�ı�
���󣺰��Ա�ͳ������
select sex,count(1) as cn from person group by sex;
create table sex_cn(sex varchar(6),cn int);
�����д��������
insert into sex_cn 
select sex,count(1) as cn from person group by sex;

insert overwrite:��ɾ��ԭ�����ݣ���д���µ�����(hive�����ã�sql��֧�֣�
create table sex_cn2 
as 
select sex,count(1) as cn from person group by sex;--����ѯ���ı��ֶ�ӳ�䵽�½��ı�sex_cn2��
drop table sex_cn2;

---------------------------------------------
---�������ϵ��һ���������ָ������һ�������������γ��������ϵ
----���� �� ��ָ���Ǹ�����������
-----�ӱ� �� ������ı��Ǵӱ�
----��� �� �ӱ�����ָ���������Ǹ��ֶ�
---******�������ݵ�ʱ���������ʼ************--------------
---******ɾ�����ݴӴӱ���ʼ****------------------------------
--###���������
create table category(
cid varchar(32) PRIMARY KEY ,
cname varchar(100)  #��������
);

--# ��Ʒ��
CREATE TABLE products (
pid varchar(32) PRIMARY KEY  ,
name VARCHAR(40) ,
price DOUBLE ,
category_id varchar(32)
);
--#����Լ��
alter table products add constraint product_fk foreign key (category_id) references category (cid);
----------------------------------------------------------------------------------------------------------------------

--*************�ص�
���Ӳ�ѯ
��ʼ������
--����
INSERT INTO category(cid,cname) VALUES('c001','�ҵ�');
INSERT INTO category(cid,cname) VALUES('c002','����');
INSERT INTO category(cid,cname) VALUES('c003','��ױƷ');
drop table products;
CREATE TABLE products(
  pid VARCHAR(32) PRIMARY KEY ,
  pname VARCHAR(50),
  price INT,
  flag VARCHAR(2),    #�Ƿ��ϼܱ��Ϊ��1��ʾ�ϼܡ�0��ʾ�¼�
  category_id VARCHAR(32)
);

--��Ʒ
INSERT INTO products(pid, pname,price,flag,category_id) VALUES('p001','����',5000,'1','c001');
INSERT INTO products(pid, pname,price,flag,category_id) VALUES('p002','����',3000,'1','c001');
INSERT INTO products(pid, pname,price,flag,category_id) VALUES('p003','����',5000,'1','c001');
INSERT INTO products (pid, pname,price,flag,category_id) VALUES('p004','JACK JONES',800,'1','c002');
INSERT INTO products (pid, pname,price,flag,category_id) VALUES('p005','��ά˹',200,'1','c002');
INSERT INTO products (pid, pname,price,flag,category_id) VALUES('p006','��������',440,'1','c002');
INSERT INTO products (pid, pname,price,flag,category_id) VALUES('p007','����',2000,'1','c002');

INSERT INTO products (pid, pname,price,flag,category_id) VALUES('p008','���ζ�',800,'1','c003');
INSERT INTO products (pid, pname,price,flag,category_id) VALUES('p009','���˱���',200,'1','c003');


������ ���������У�
��ʽ������ �� select  * from products , category;--�ѿ�����(2*9=18��)
select  * from products , category where products.category_id=category.cid;

��ʾ������: inner join     on(��������)
select  * from products inner join category ;�ѿ�����
select  * from products t1 inner join category t2 on t1.category_id=t2.cid; 
select  * from products t1 inner join category t2 where t1.category_id=t2.cid; 
inner���Բ�Ҫ
select  * from products t1  join category t2 where t1.category_id=t2.cid; 
�ص���գ��������߶����������������ʲô

������ : left join ,right join  
select * from products t1 left join category t2 on t1.category_id=t2.cid;
select * from products t1 right join category t2 on t1.category_id=t2.cid;
select * from products t1 right join category t2 on t1.category_id=t2.cid where t1.category_id is null; --��
select * from products t1 left join category t2 on t1.category_id=t2.cid where t2.cid is null;--��

�Ӳ�ѯ �� �Ὣ�Ӳ�ѯ�Ľ������һ��ֵ��һ�����ϣ�һ����
���� ��ѯ�ǻ�ױƷ����Ĳ�Ʒ
select * from products ,category where category_id=cid and cname='��ױƷ';
�������
select * from products where category_id = (select cid from category where cname='��ױƷ');����һ��ֵ
select cid from category where cname='��ױƷ' or cname='�ҵ�';
select * from products where category_id = (select cid from category where cname='��ױƷ' or cname='�ҵ�');--����
select * from products where category_id in (select cid from category where cname='��ױƷ' or cname='�ҵ�');--����һ������
select * from products  inner join
    (select cid from category where cname='��ױƷ' or cname='�ҵ�') t1
on products.category_id=t1.cid; --����һ����

--������
--		MySQL����������B+��
--		���������ã���߼�������ѯ���ٶȣ����ٶ�λҪ���ҵ�����
--		������ȱ�㣺
--			1�� ���������ı����棬���ӻ���ɾ�����ݣ���Ӱ�쵽�����ļ�����Ϊ���ӻ���ɾ�����ݣ�����Ҫ�������ļ������޸�
--			2. �����ļ��ڲ�ѯ�����ݵ�ʱ����Ҫ���ص��ڴ����棬��Ҫ�ķ���Դ
--			3. ����������㴴���ģ�ֻ����һ���ֶξ������ڲ�ѯ��ʱ�򣬿��Զ�����ֶδ�������
create index index_cname on category(cname(20));     --�������ڲ�ѯ��������
alter table products add index index_comment(price);
SHOW INDEX FROM category;
DROP INDEX index_cname ON category;
-----------------�õ���-------------------------------------------------------------------------
--������������mysql��������8.0�Ժ���е�
		1. row_number() over()
		2.rank() over()
		3. dense_rank() over()
		

------------------*************��Ҫ����������⣬ֻҪ������˵��Ҫ���������뵽���ں���****----------------
	
 ;
 --����׼��
create table employee (empid int,ename varchar(20) ,deptid int ,salary decimal(10,2));

insert into employee values(1,'����',10,5500.00);
insert into employee values(2,'����',10,4500.00);
insert into employee values(2,'�ŷ�',10,3500.00);
insert into employee values(2,'����',10,4500.00);

insert into employee values(3,'�ܲ�',20,1900.00);
insert into employee values(4,'����',20,4800.00);
insert into employee values(5,'����',20,6500.00);
insert into employee values(6,'���',20,14500.00);

insert into employee values(7,'��Ȩ',30,44500.00);
insert into employee values(8,'���',30,6500.00);
insert into employee values(9,'½ѷ',30,7500.00);
-----------------------------------------------------------------------------------------
select ename,salary
from employee 
group by deptid
order by salary 
desc; ---��н�ʽ��н������У�ִ�в�ͨ��group by �����select ����һ�£����˾ۺϺ���
--ע�⣺���ں������԰���group by �������,partition by ��group by ͬ����˼
select ename,salary,row number() over(partition by deptid order by salary) row1
from employee;

select ename,salary,
       row_number() over (partition by deptid order by salary) row1,--1234
       rank() over (partition by deptid order by salary) row2,--1224
       dense_rank() over (partition by deptid order by salary) row3--1223
from employee

----------------------------------------------------------------------------------------
�ܽ᣺
DML��
--���룺insert into
----�ֶκ��ֶ�����Ҫһ��------------------------------------
insert into student values (1,'����',20),(2,'����',22);
insert into student(id,name) values (3,'���'��
insert into student(name,id) values ('���',4�� 
-----------------------------------------------------------
--���� update
update student set age =100;--����ȫ����������
update student set age =100 where sex='Ů';--��ȫ
--ɾ�� delete from 
delete from student;
delete from student where age>100 and sex='Ů';
truncate student;
truncate  table student;--table�ɼӿɲ��ӣ���ԭ��ɾ�����ؽ���ͬ��һ�ű�

DQL��
�򵥲�ѯ��
select * from product;--*��ʾ�����ֶ�
select pname,price from product;
select pname as productname,price p from product t1;
select distinct category_id from product;
select pname,distinct category_id from product;--������distinct ֻ��дselect���棬�������ֶ��м�
������ѯ��> <  <=   >=   =  <> !=  between and    is null   is not null  like  in 
select * from product where price >=2000 and price <=5000;
select * from product where price between 2000 and 5000;
select * from product where category_id ='c002';
-----------------------------------------------------
select * from product where category_id !='c002';----д��һ��-----
select * from product where category_id <>'c002';----д��һ��-----
-----------------------------------------------------------
select * from product where pname is not null;
select * from product where pname like '_��%'; --%�����ַ�
-------------------------------------------------------------------------------------------------
select * from product where category_id in ('c001','c002','c003')----------------------------------------
select * from product where category_id='c001' or  category_id='c002' or category_id='c003'---------------д��һ�� 
---------------------------------------------------------------------------------------------------------

����order by 
����asc,Ĭ��
����desc
select * from product order by price desc,category_id desc; 
