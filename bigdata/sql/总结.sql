mysql的定位：用于业务数据的快速检索，用于插入、更新、查询需求

回顾：
group by:分组，group by什么就只能select什么，除了聚合函数
select catagory_id,max(price),count(1) from product group by catagory_id;
limit:取有限条数据
select * from product limit 5;
select * from product limit 0,10;


insert into (hive里面常用insert overwrite table):将一个查询结果写入另一个结果表里面
第一步：根据结果数据创建表
第二步：将结果数据写入创建的表里面

聚合函数
count:求行数
max：求最大值
min：求最小值
avg：求平均值
sum：求和

连接查询
 内连接
    隐式      ,
	select * from A,B where A.id=B.id;
	select * from products t1,category t2 where ti.catagory_id=t2.cid;
	显式    inner join
		select * from A inner join B on A.id=B.id;on也可以写where
		select * from products t1,category t2 on ti.catagory_id=t2.cid;
 外连接
    左外:left outer join
	select * from products t1 left join category t2 on ti.catagory_id=t2.cid;
	右外:right outer join
	select * from products t1 right join category t2 on ti.catagory_id=t2.cid;
 一般都是写left join ,right join
 
 子查询：子查询的结果当作一个值，一个集合，一个表
 
 主外键关系：一个表的外键指向另外一个表的主键
 主表：被指的那个表
 从表：有外键的那个表
 注意：
    加数据从主表开始
	删数据从从表开始

	索引：提高查询速度

	开窗函数：
	row_number():没有重复的排名
	rank():有重复的排名，但是会跳过重复排名
	dense_rank():有重复的排名，不会跳过重复排名的名次