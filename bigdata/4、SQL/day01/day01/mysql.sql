-- 单行注释
-- 有两种方式（--空格 注释内容 或 # 注释内容）
/* 多行注释 */

-- MySQL中查询五子句
select * from 数据表 ① where子句 ② group by分组子句 ③ having子句 ④ order by子句 ⑤ limit子句
① where子句
② group by子句
③ having子句
④ order by子句
⑤ limit子句
注意事项：①②③④⑤五子句是SQL中最重要的五个子句，而且其顺序不能颠倒。

-- 普通查询
select * from tb_student;
select id, name, address from tb_student;

-- 回顾where子句
-- 等于和不等于，= 和 !=或<>
-- 查询姓名为貂蝉的同学信息
select * from tb_student where name = '貂蝉';
-- 查询姓名不为貂蝉的同学信息!=
select * from tb_student where name != '貂蝉';
-- 查询年龄大于20岁的同学信息
select * from tb_student where age > 20;

-- 查询结合与and、或or、非not
-- 查询年龄为34岁且性别为male的同学信息
select * from tb_student where age = 34 and gender='male';

-- 查询id编号为1或3或5的同学信息
select * from tb_student where id = 1 or id = 3 or id = 5;

-- 查询id编号不为1或3或5的同学信息
select * from tb_student where id not in (1, 3, 5);

-- where子句与like模糊查询，like模糊查询有两个符号%百分号 和 _下划线
-- %百分号代表任意个任意字符
-- _下划线代表任意的某个字符（只能表示一个字符）
-- 查询班级中姓"孙"的同学信息
select * from tb_student where name like '孙%';
-- 查询班级中姓"刘"且姓名为两个字的同学信息
select * from tb_student where name like '刘_';
-- 查询班级中以"蝉"字结尾的同学信息
select * from tb_student where name like '%蝉';
-- 查询班级中包含"乔"字的同学信息
select * from tb_student where name like '%乔%';


-- 范围查询，between...and...，in
-- 查询班级中在18~24岁之间的同学信息
select * from tb_student where age between 18 and 24;
-- 查询班级中不在18~24岁之间的同学信息
select * from tb_student where age not between 18 and 24;
-- 查询id编号为1、3、5的同学信息
select * from tb_student where id in (1, 3, 5);

-- 空值判断（NULL）
-- 查询age年龄为Null的同学信息
select * from tb_student where age is null;

-- order by子句（排序子句，升序1 2 3 4 5、降序5 4 3 2 1）
-- order by不仅可以对数字进行排序还可以对字母进行排序，升序a b c d e，降序e d c b a
-- order by 字段名称 asc
-- order by 字段名称 desc
-- 查询班级中所有同学信息，按年龄从小到大排序
select * from tb_student order by age asc;
-- 注：在排序过程中，NULL会被当成最小值

-- limit子句（五子句中的最后一个子句）：主要是限制查询数量
-- 获取班级中年龄最大的同学信息
select * from tb_student order by age desc limit 1;
-- limit子句还有一个参数limit 偏移量，查询数量。
-- 举个栗子：求班级中第二、第三高的同学信息
select * from tb_student order by age desc limit 1,2;

-- 聚合函数（统计函数）
-- 1. count(col): 表示求指定列的总行数
-- 2. max(col): 表示求指定列的最大值
-- 3. min(col): 表示求指定列的最小值
-- 4. sum(col): 表示求指定列的和
-- 5. avg(col): 表示求指定列的平均值

-- 求班级中所有同学的数量
select count(id) from tb_student;
-- 统计班级中年龄的最大值
select max(age) from tb_student;
-- 统计班级中年龄的最小值
select min(age) from tb_student;
-- 统计班级中所有年龄的总和
select sum(age) from tb_student;
-- 统计班级中所有同学年龄的平均值
select avg(age) from tb_student;

-- 扩展：对NULL处理的函数ifnull(列名,默认值)，如果某个列的值为NULL值，则系统会自动将其设置为右边的默认值
-- 求班级中所有同学年龄的平均值
select sum(ifnull(age, 0)) / count(id) from tb_student;
select avg(ifnull(age, 0)) from tb_student;

-- group by分组子句：顾名思义，把要分析的数据通过某种形式进行分组，如按学科分组、性别分组、车次分组、部门分组
-- 为什么要进行分组？为了更好的进行数据的统计操作（group by结合5个聚合函数）
select gender from tb_student group by gender;
-- 统计班级中男女同学的比例（男同学多少人，女同学多少人）
select count(id) from tb_student where gender='male';
select count(id) from tb_student where gender='female';

select gender, count(*) from tb_student group by gender;
-- select从数据表中读取数据其实就是一个循环遍历的过程，首先读取第一条数据，然后读取第二条数据，以此类推，直至所以数据读取完毕！

-- 求每个学科中，年龄的最大值
select subject,max(age) from tb_student group by subject;

-- having子句：对查询结果进行过滤和筛选
-- 普通查询中，having子句可以替代where子句（含义相同）
select * from tb_student where age > 20;
select * from tb_student having age > 20;

-- 带有group by分组子句中，where和having执行的顺序有很大的不同
-- where子句  group by子句  having子句
-- having子句对分组后的结果进行过滤和筛选
-- 根据gender字段进行分组，统计分组条数大于2条以上的分组信息
select gender, count(*) from tb_student group by gender having count(*) > 2;