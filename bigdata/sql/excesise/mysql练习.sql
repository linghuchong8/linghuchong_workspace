create database learn_mysql;
use learn_mysql;
CREATE table Student(SId varchar(20),Sname varchar(20),Sage varchar(20),Ssex varchar(20));--学生表
insert into Student values('01' , '赵雷' , '1990-01-01' , '男');
insert into Student values('02' , '钱电' , '1990-12-21' , '男');
insert into Student values('03' , '孙风' , '1990-12-20' , '男');
insert into Student values('04' , '李云' , '1990-12-06' , '男');
insert into Student values('05' , '周梅' , '1991-12-01' , '女');
insert into Student values('06' , '吴兰' , '1992-01-01' , '女');
insert into Student values('07' , '郑竹' , '1989-01-01' , '女');
insert into Student values('09' , '张三' , '2017-12-20' , '女');
insert into Student values('10' , '李四' , '2017-12-25' , '女');
insert into Student values('11' , '李四' , '2012-06-06' , '女');
insert into Student values('12' , '赵六' , '2013-06-13' , '女');
insert into Student values('13' , '孙七' , '2014-06-01' , '女');
create table Course(CId varchar(20),Cname varchar(20),TId varchar(20) );--课程表
insert into Course values('01' , '语文' , '02');
insert into Course values('02' , '数学' , '01');
insert into Course values('03' , '英语' , '03');
create table SC(SId varchar(20) ,CId varchar(20),score decimal(18,1));--学生成绩表
insert into SC values('01' , '01' , 80);
insert into SC values('01' , '02' , 90);
insert into SC values('01' , '03' , 99);
insert into SC values('02' , '01' , 70);
insert into SC values('02' , '02' , 60);
insert into SC values('02' , '03' , 80);
insert into SC values('03' , '01' , 80);
insert into SC values('03' , '02' , 80);
insert into SC values('03' , '03' , 80);
insert into SC values('04' , '01' , 50);
insert into SC values('04' , '02' , 30);
insert into SC values('04' , '03' , 20);
insert into SC values('05' , '01' , 76);
insert into SC values('05' , '02' , 87);
insert into SC values('06' , '01' , 31);
insert into SC values('06' , '03' , 34);
insert into SC values('07' , '02' , 89);
insert into SC values('07' , '03' , 98);

--由CId，SId想到三表关联
#1. 一共有多少门课程？
select count(1)  as cn from Course;

#2. 一共有多少个学生？
select count(1) cn from Student;

#4. 每个学生最高的分数是多少？
select sid,max(score) from SC group by sid; --group by 有分组操作
select t2.sid,t2.sname,max(t1.score) from SC t1 inner join Student t2 on t1.sid=t2.sid group by t2.sname,t2.sid;

select t1.sname,t1.sid, case when max(score) is null then 0 else max(score) end as score from Student t1 left join SC t2 on t1.sid=t2.sid group by t1.sname,t1.sid;
--case when 条件判断语句

select t1.sname,sid, case when max(score) is null then 0 else max(score) end as score from Student t1 left join SC t2 on t1.sid=t2.sid group by t1.sname,sid; 报错原因是2个表都有sid,需要指明

#5. 每个学生的信息及考试分数？
select t1.sid,t1.sname,t1.ssex,t2.score from Student t1 left join SC t2 on t1.sid=t2.sid;


# 6. 每个学生的课程信息以及对应的分数？
--学生表，课程，SC
select  sname,cname,score from SC right join Student on SC.sid=Student.sid  --养成起别名好习惯
right join  Course on Course.cid=SC.cid;


# 7. 根据性别统计人数
select ssex,count(1)  from Student group by ssex;

#8.根据年统计人数，substr一部分字符串
select substr(sage,1,4) as year,count(1) as  cn  from Student group by substr(sage,1,4)

# 9.按照年和性别2个维度统计人数
select ssex,substr(sage,1,4),count(1)  from Student group by ssex,substr(sage,1,4) ;

# 10.统计每个学生的平均成绩
select  t1.sid,t1.sname,avg(score) from Student t1 left join SC t2 on t1.sid=t2.sid group by t1.sid,t1.sname;
   
# 11. 按性别分析最高分数
select ssex,max(score) from SC right join Student on SC.sid=Student.sid group by Student.ssex;
--看数值，代表什么含义，再关联表
# 12.按年、性别和课程3个维度分析分数

select substr(sage,1,4),ssex,cid,max(score),min(score) from Student t1 inner join SC t2 on t1.sid=t2.sid group by substr(sage,1,4),ssex,cid;
--什么时候用inner join,什么时候用外连接 ,求差集用外连接
select substr(t1.sage,1,4),ssex,t3.cname,max(score),min(score),sum(score) from Student t1 inner join SC t2 on t1.sid=t2.sid
    inner join Course t3 on t2.cid=t3.cid
group by substr(t1.sage,1,4),ssex,t3.cname;

 
# 13.统计每个分数出现了多少次，并按降序排列
 select score ,count(1) cn  from SC group by score order by cn desc ;
    
# 14.按课程维度分组求最大的分数
   select cname ,max(score) from SC t1 inner join Course t2 on t1.cid=t2.cid group by cname;


