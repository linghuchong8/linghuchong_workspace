1.增加一个字段
alter table category add salary int;

2.修改category表，将salary在1000到9999这个范围里面的cname改成‘不差钱’
update category set cname = '不差钱' where between 1000 and 9999

3.修改category 表，将salary 增加1000
update category set salary=salary+1000