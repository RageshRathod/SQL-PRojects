show databases;
use production;
show tables;
select * from nights;
select * from project_2 p ;
select count(id) from nights n ;
select count(id) from project_2 p ;


#1
select name from project_2 p ;

#2
select count(id) from project_2 p ;

#3
select count(id) from nights n  ;

#4
select * from project_2 p ;
select count(host_id) from project_2 p ;

#5
select  count(distinct host_id) from project_2 p ;

#6
select * from project_2 p group by neighbourhood_group ;

#7
select  count(distinct neighbourhood_group) from project_2 p ;

#8
select * from project_2 p ;
select distinct room_type as special_room_types from project_2 p ;

#9
select * from project_2 p where neighbourhood_group  in ('brooklyn','manhattan');

#10
select distinct room_type from project_2 p ;

#11
select * from nights n ;
select max(price) from nights n ;

#12
select min(price) from nights n ;

#13
select avg(price) from nights n ;

#14
select min(minimum_nights) from nights n ;
 
#15
select max(minimum_nights) from nights n ;

#16
select avg(availability_365) from nights n ;

#17
select id,availability_365 from nights where availability_365 >=300;

#18
select count(id) from nights n where price  like 300 and 400;
select count(id) from nights n where availability_365 = 300 and 400;

#19
select count(id) from nights n where minimum_nights <=5;

#20
select count(id) from nights n where minimum_nights >=100;

#21
select * from project_2 inner join nights on project_2.id = nights.id ;
select * from project_2 join nights on project_2.id = nights.id ;

#22
select project_2.host_name ,nights.price from project_2 inner join nights on project_2.id = nights.id ;

#23
select project_2.room_type ,nights.price from project_2 inner join nights on project_2.id=nights.id;

#24
select project_2.neighbourhood_group,nights.minimum_nights from project_2 inner join nights on project_2.id=nights.id ; 

#25
select * from project_2 join nights on project_2.id = nights.id ;
select project_2.neighbourhood_group, nights.availability_365 from project_2 inner join nights on project_2.id =nights.id ;

#26
select project_2.neighbourhood_group, nights.price  from project_2 inner join nights on project_2.id =nights.id ;
select project_2.neighbourhood_group, sum(nights.price) from project_2 inner join nights on project_2.id=nights.id group by project_2.neighbourhood_group ;

#27
select project_2.neighbourhood_group, max(nights.price) 
from project_2 inner join nights on project_2.id=nights.id group by project_2.neighbourhood_group ;

#28
select project_2.neighbourhood_group,max(nights.minimum_nights)
from project_2 inner join nights on project_2.id =nights.id group by project_2.neighbourhood_group ;

#29
select project_2.neighbourhood,max(nights.reviews_per_month) as max_review
from project_2 inner join nights on project_2.id =nights.id group by project_2.neighbourhood ;

#30
select * from project_2 join nights on project_2.id = nights.id ;
select project_2.room_type ,max(nights.price) from project_2 inner join nights on project_2.id =nights.id group by project_2.room_type;

#31
select * from project_2 join nights on project_2.id = nights.id ;
select project_2.room_type ,avg(nights.number_of_reviews) as average_number
from project_2 inner join nights on project_2.id =nights.id group by project_2.room_type ;

#32
select project_2.room_type ,avg(nights.price) as average_number
from project_2 inner join nights on project_2.id =nights.id group by project_2.room_type ;

#33
select project_2.room_type ,avg(nights.minimum_nights) as average_night
from project_2 inner join nights on project_2.id =nights.id group by project_2.room_type ;

#34
select distinct room_type from project_2 p ;
select project_2.room_type ,avg(nights.price)
from project_2 inner join nights on project_2.id = nights.id 
group by project_2.room_type having avg(nights.price)<100 ;

#35
select * from project_2 join nights on project_2.id = nights.id ;
select distinct project_2.neighbourhood,avg(nights.minimum_nights) as average_night from project_2 inner join nights 
on project_2.id =nights.id group by project_2.neighbourhood having  average_night>5;

#36
select * from nights where price >200;
select * from project_2 inner join nights on project_2.id =nights.id  having  price >(select price from nights where price = 200) ;

SELECT * FROM project_2 INNER JOIN nights
ON project_2.id = nights.id
HAVING price > (
  SELECT price
  FROM nights
  WHERE price = 200
);

#37
select * from project_2 join nights on project_2.id = nights.id ;

select project_2.host_id ,nights.id,nights.price,nights.minimum_nights ,nights.number_of_reviews ,
nights.reviews_per_month ,nights.calculated_host_listings_count ,nights.availability_365 
from project_2 right join nights on project_2.id =nights.id  having host_id =314941;

#38
select distinct project_2.id ,nights.id  from project_2 inner join nights on project_2.id =nights.id ;

#39
select * from project_2 join nights on project_2.id = nights.id ;
select * from project_2 p where name like "%cozy%";

#40
select nights.price,project_2.host_id ,project_2.neighbourhood_group from project_2 inner join nights 
on project_2.id =nights.id  where  project_2.neighbourhood_group ='Manhattan';

#41
select project_2.host_id ,project_2.neighbourhood ,project_2.host_name ,nights.price from project_2 inner join nights on project_2.id =nights.id 
having project_2.neighbourhood in  ('upper west side','williamsburg') and nights.price >'100'; 

select project_2.host_id ,project_2.neighbourhood ,project_2.host_name ,nights.price from project_2 inner join nights on project_2.id =nights.id 
where project_2.neighbourhood in  ('upper west side','williamsburg') and nights.price >'100'; 


#42
select project_2.id ,project_2.neighbourhood ,project_2.host_name ,nights.price from project_2 inner join nights on project_2.id =nights.id 
where project_2.host_name = 'elise' and project_2.neighbourhood= 'bedfort-stuyvesant';

SELECT p.id, p.host_name, p.neighbourhood, n.price
FROM project_2 p
INNER JOIN nights n ON p.id = n.id
WHERE p.host_name = 'Elise' AND p.neighbourhood = 'Bedford-Stuyvesant';

select p.id,p.host_name,p.neighbourhood,n.price from project_2 p inner join nights n on
p.id =n.id where p.host_name ='elise' and p.neighbourhood ='bedford-stuyvesant';

#43
select * from nights;
select * from nights where minimum_nights >100 and availability_365 >100;

select project_2.host_name ,nights.minimum_nights ,nights.availability_365 from project_2 inner join nights
where nights.minimum_nights >100 and nights.availability_365 >100;

select  distinct project_2.host_name ,nights.minimum_nights ,nights.availability_365 from project_2 inner join nights
where nights.minimum_nights >=100 and nights.availability_365 >=100;

#44
select p.id,p.host_name,n.number_of_reviews,n.reviews_per_month from project_2 p inner join nights n 
on p.id =n.id where n.number_of_reviews>=500 and n.reviews_per_month>=5;

#45
select project_2.neighbourhood_group,nights.number_of_reviews from project_2 inner join nights on project_2,id =nights.id 
group by project_2.neighbourhood_group order by nights.number_of_reviews desc limit 1;

SELECT project_2.neighbourhood_group, sum(nights.number_of_reviews)
FROM project_2 inner join nights
on project_2.id = nights.id group by project_2.neighbourhood_group 
order by sum(nights.number_of_reviews) desc limit 1;

select p.neighbourhood_group,max(n.number_of_reviews) as max_review from project_2 p inner join nights n on p.id =n.id 
group by p.neighbourhood_group;

#46
select price from nights n order by price asc;
select p.host_name,sum(n.price) as total_price from project_2 p inner join nights n 
on p.id =n.id  group by p.host_name 
order by total_price asc limit 1,2;


#47
select price from nights n order by price desc;
select p.host_name,sum(n.price) from project_2 p inner join nights n on p.id =n.id 
group by p.host_name 
order by sum(n.price) desc limit 1;


select project_2.host_name,nights.price from project_2 join nights 
where night.price=(select sum(price) from nights order by sum(price) desc limit 1;



#48
select max(price) from nights n ;
select project_2.host_name from project_2 p where in =(select project_2.host_name from project_2 where project_2.price=(select max(price) from nights));

select max(price) from nights n ;
select project_2.host_name,nights.price from project_2 join nights  where nights.price=(select max(price) from nights);


#49
select project_2.neighbourhood_group ,nights.price from project_2 inner join nights 
on project_2.id = nights.id where nights.price<=100;

#50
select project_2.room_type ,max(nights.price),avg(nights.availability_365) from project_2 inner join nights
on project_2.id =nights.id  group by project_2.room_type 
order by max(nights.price) asc; 