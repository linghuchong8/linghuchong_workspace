mysql�Ķ�λ������ҵ�����ݵĿ��ټ��������ڲ��롢���¡���ѯ����

�عˣ�
group by:���飬group byʲô��ֻ��selectʲô�����˾ۺϺ���
select catagory_id,max(price),count(1) from product group by catagory_id;
limit:ȡ����������
select * from product limit 5;
select * from product limit 0,10;


insert into (hive���泣��insert overwrite table):��һ����ѯ���д����һ�����������
��һ�������ݽ�����ݴ�����
�ڶ��������������д�봴���ı�����

�ۺϺ���
count:������
max�������ֵ
min������Сֵ
avg����ƽ��ֵ
sum�����

���Ӳ�ѯ
 ������
    ��ʽ      ,
	select * from A,B where A.id=B.id;
	select * from products t1,category t2 where ti.catagory_id=t2.cid;
	��ʽ    inner join
		select * from A inner join B on A.id=B.id;onҲ����дwhere
		select * from products t1,category t2 on ti.catagory_id=t2.cid;
 ������
    ����:left outer join
	select * from products t1 left join category t2 on ti.catagory_id=t2.cid;
	����:right outer join
	select * from products t1 right join category t2 on ti.catagory_id=t2.cid;
 һ�㶼��дleft join ,right join
 
 �Ӳ�ѯ���Ӳ�ѯ�Ľ������һ��ֵ��һ�����ϣ�һ����
 
 �������ϵ��һ��������ָ������һ���������
 ������ָ���Ǹ���
 �ӱ���������Ǹ���
 ע�⣺
    �����ݴ�����ʼ
	ɾ���ݴӴӱ�ʼ

	��������߲�ѯ�ٶ�

	����������
	row_number():û���ظ�������
	rank():���ظ������������ǻ������ظ�����
	dense_rank():���ظ������������������ظ�����������