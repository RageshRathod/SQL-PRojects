show databases;
use production;
show tables;
select * from project1 ;

# 1
select * from project1 p ;

#2
select Count(Item_Identifier) from project1 p ;

select count(*) from project1 p ;

#3
select max(item_weight) from project1 p ;

#4
select min(item_weight) as minimum_weight from project1 p ;

#5
select avg(item_weight) as average_weight from project1 p ;

#6
select * from project1 p ;
select  count(Item_Fat_Content) from project1 p  where Item_Fat_Content ='low fat';

select count(Item_Fat_Content) from project1 p  where Item_Fat_Content ='regular';

select * from project1 p2 group by (item_fat_content);
select * from project1 p2 group by (item_fat_content) having Item_Fat_Content ='low fat';

#7
select count(item_fat_content) from project1 p where Item_Fat_Content = 'regular';

#8
select max(item_mrp) from project1 p ;

#9
select min(item_mrp) from project1 p ;

#10
select * from project1 p ;
select item_identifier,item_fat_content,item_type,item_mrp from project1 p where item_mrp >= 200;

#11
select max(item_mrp) from project1 p where Item_Fat_Content ='low fat';

#12
select min(item_mrp) from project1 p where Item_Fat_Content = 'low fat';

#13
select * from project1 p where Item_MRP between 50 and 100 ;

#14
select distinct(Item_Fat_Content)  from project1 p ;

#15
select distinct(item_type) from project1 p ;

#16
select * from project1 p order by item_mrp desc;

#17
select * from project1 p order by Item_Outlet_Sales asc ;

#18
select * from project1 p order by Item_Type asc ;

#19
select distinct(Item_Type) from project1 p2 ;

select * from project1 p where Item_Type in ('dairy','meat');

select * from project1 p where Item_Type like 'dairy' or 'meat';
select * from project1 p where Item_Type like 'dairy' union select * from project1 p where Item_Type like 'meat';

#20
select distinct (outlet_size) from project1 p ;

#21
select distinct(outlet_location_type) from project1 p ;

#22
select distinct(outlet_type) from project1 p ;

#23
select * from project1 p2 ;
select  item_type, count(item_identifier) from project1 p group by Item_Type order by count(Item_Identifier) desc;

#24
select outlet_size, count(item_identifier) from project1 group by Outlet_Size order by Item_Identifier ;

select outlet_size, count(item_identifier) from project1 group by Outlet_Size order by count(Item_Identifier)  ;

#25
select * from project1 p ;
select outlet_establishment_year, count(item_identifier) from project1 p  group by Outlet_Establishment_Year order by count(Item_Identifier);

#26
select outlet_type, count(item_identifier) from project1 p group by Outlet_Type order by count(Item_Identifier);

select * from project1 p group by(outlet_type); count(item_identifier);

#27
select * from project1 p group by Outlet_Location_Type;
select Outlet_Location_Type ,count(Item_Identifier) from project1 p2 group by Outlet_Location_Type order by Item_Identifier desc;

#28
select item_type ,max(item_mrp) from project1 p group by Item_Type order by max(Item_MRP) desc;

#29
select item_type, min(item_mrp) from project1 p group by item_type order by min(item_mrp) desc;

#30
select outlet_establishment_year, min(item_mrp) from project1 p group by Outlet_Establishment_Year order by min(Item_MRP) desc;

#31
select Outlet_Establishment_Year, max(item_mrp) from project1 p group by Outlet_Establishment_Year order by max(Item_MRP) desc;

#32
select * from project1 p;
select outlet_size ,avg(item_mrp) from project1 p group by outlet_size order by avg(item_mrp) desc;
select outlet_size ,avg(item_mrp) from project1 p group by outlet_size order by item_mrp desc;

#33
select outlet_size, avg(item_mrp) as average_price from project1 p group by Outlet_Size ;

#34
select outlet_size ,avg(item_mrp) from project1 p group by outlet_size order by avg(item_mrp) asc;

#35
select Outlet_Type,max(Item_MRP) from project1 p group by Outlet_Type order by max(Item_MRP) desc;


#36
select Item_Type,max(item_weight) as miinimum_average from project1 p group by Item_Type order by max(Item_Weight) desc;

#37
select Outlet_Type,max(item_weight) as miinimum_average from project1 p group by Outlet_Type order by max(Item_Weight) desc;

#38
select Outlet_Type,min(item_weight) as miinimum_average from project1 p group by Outlet_Type order by max(Item_Weight) desc;

#39
select outlet_location_type, avg(item_weight) as average_weight from project1 p group by Outlet_Location_Type order by average_weight desc;

#40
select * from project1 p2 ;
select item_type,max(item_outlet_sales) as max_sales from project1 p group by Item_Type ;

#41
select item_type,min(item_outlet_sales) as min_sales from project1 p group by Item_Type ;

#42
select outlet_establishment_year,min(item_outlet_sales) as min_sales from project1 p group by Outlet_Establishment_Year ;

#43
select outlet_establishment_year,max(item_outlet_sales) as max_sales from project1 p group by Outlet_Establishment_Year order by max_sales desc;

#44
select Outlet_Size,avg(item_outlet_sales) as avg_sales from project1 p group by Outlet_size order by avg_sales desc;

#45
select Outlet_Size,avg(item_outlet_sales) as avg_sales from project1 p group by Outlet_size order by avg_sales ;

#46
select Outlet_type,avg(item_outlet_sales) as avg_sales from project1 p group by Outlet_Type  order by avg_sales;

#47
select Outlet_type,max(item_outlet_sales) as max_sales from project1 p group by Outlet_Type  order by max_sales;

#48
select outlet_establishment_year,sum(item_outlet_sales) as sum_sales from project1 p group by Outlet_Establishment_Year order by sum_sales ;

#49
select Item_Type,sum(item_outlet_sales) as sum_sales from project1 p group by Item_Type order by sum_sales ;

#50
select Outlet_Location_Type ,sum(item_outlet_sales) as sum_sales from project1 p group by Outlet_Location_Type order by sum_sales ;


#51
select * from project1 p ;
select Item_Fat_Content ,sum(item_outlet_sales) as sum_sales from project1 p group by Item_Fat_Content order by sum_sales ;

#52
select item_visibility,max(Item_Type) from project1 p group by Item_Visibility order by Item_type ;

#53
select item_visibility,min(Item_Type) from project1 p group by Item_Visibility order by Item_type ;

#54
select Item_Type,sum(item_outlet_sales) as sum_sales from project1  where Outlet_Location_Type ='tier 1'group by Item_Type order by sum_sales desc;

#55
select item_type, sum(item_outlet_sales) as sum_sales from project1 p
where Item_Fat_Content in('low fat','ft')
group by Item_Type order by sum_sales desc;







