select * from uni;

-- Research of AVg and MAx
select 
	MAX(`overall score`) as MAx_score,
	round(Avg(`overall score`),2) as aVg_score,
    MAx(`teaching`) as max_teach,
    round(AVG(`Teaching`),2) as avg_teach,
    MAx(`research environment`) as max_environment,
    round(AVG(`research environment`),2) as avg_environment,
    MAx(`research quality`) as max_quality,
    round(AVG(`research quality`),2)
From uni;

-- quantity of university by year
select year , count(*) as num
from uni
group by year;


-- yearly average of the overall score
SELECT year, AVG(`overall score`) AS avg_score
FROM uni
GROUP BY year
ORDER BY year;



-- top 10  univesity according to countries
select country, count(*) as num_uni
from uni
GROup by country
order by num_uni desc
limit 10;


--  Top Ranked Universities Each Year
select `Rank`, NAME,  year
from uni   
where `Rank` =1;


-- countries with the most international students
With Students as (
	select country,
    Sum(`Student Population`) as full_student,
    Round(SUm(`student population` * international_students_perc/100), 0) as inter_stud
	from uni
    Group by 1
),
students1 as (
	select * ,
    round(((inter_Stud*100)/full_student),2) as per_int_stud
    from students
)
select * from students1
order by inter_stud desc
limit 10;


-- this query granting universities their result `Case`
Select *,
	Case
		when `overall score`>=91 Then 'Excellent'
		When `overall score`>=71 Then 'Good'
		when `overall score`>=50 Then 'Noramally'
		elSe 'low'
	End as Score_category
from uni;

-- this gives avg and max scores acorrding to countries
SELECT country, 
	   round(AVG(`overall score`),2) AS avg_score, 
       MAX(`overall score`) AS max_score
FROM uni
GROUP BY country
ORDER BY avg_score DESC;



-- top 5 country with avg_score rank
select country, round(avg(`overall score`),2) as avg_score
from uni
Group by country
order by avg_Score desc; -- avg score according to country


-- top 5 average score bu country and year
with avg_score as (
	select country,  round(avg(`overall score`),2) as A_V_G, year
    from uni
    group by 1,3
    
),
avg_score1 as(
select *,
Dense_rank() over(partition by year order by A_V_G desc) as rank_
from avg_score
)
select * from avg_score1
where rank_ <=5;


-- top 5 university with max score according to year

With uni_score as (
	select Name, max(`overall score`) as max_score , year
    from uni
    Group by 1,3
),
uni_score1 as (
	select * ,
    Dense_rank() over(partition by year  order by max_Score desc) as rank_
    from uni_score
    
)

select * from uni_Score1
where rank_ <=5;


