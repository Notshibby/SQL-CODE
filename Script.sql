SELECT expiration        
FROM dataset_1 d
WHERE expiration = "2h";



SELECT destination, 
AVG(temperature), 
COUNT(DISTINCT temperature), 
time 
FROM dataset_1 d
WHERE time != '10PM' 
group by destination, time
--HAVING occupation = 'student'
ORDER BY time;



SELECT * 
FROM dataset_1 d 
UNION ALL
SELECT * 
FROM table_to_union;

SELECT DISTINCT passanger
FROM 
(SELECT * 
FROM dataset_1 d 
UNION
SELECT *
FROM table_to_union);


SELECT * 
FROM table_to_join ttj;

SELECT destination , d.time, ttj.part_of_day 
FROM dataset_1 d 
LEFT JOIN table_to_join ttj 
ON d.time = ttj.time;


SELECT d.weather, ttj.part_of_day 
FROM dataset_1 d
LEFT JOIN table_to_join ttj 
on d.weather = ttj.part_of_day;



SELECT direction_same 
FROM dataset_1 d;

SELECT d.passanger, ttj.part_of_day, income 
FROM dataset_1 d 
left join table_to_join ttj 
on d.passanger = ttj.part_of_day;




SELECT * 
FROM table_to_join ttj;



SELECT destination, weather, AVG(temperature), time 
FROM dataset_1 d 
WHERE weather='Rainy' 
GROUP BY destination
HAVING time;


SELECT occupation, passanger, income 
FROM dataset_1 d 
WHERE passanger='Kid(s)' 


SELECT occupation, passanger
FROM dataset_1 d 
GROUP BY occupation,passanger 
HAVING COUNT(*) > 1;

SELECT weather , AVG(temperature)
FROM dataset_1 d 
WHERE weather='Rainy' 



