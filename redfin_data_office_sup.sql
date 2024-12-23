SELECT *
FROM redfin_data;

SELECT ADDRESS, CITY, BEDS, PRICE
FROM redfin_data
WHERE BEDS <=3
	AND CITY in ('Los Angeles');
    
SELECT *
FROM redfin_data 
LIMIT 5;

DESCRIBE redfin_data;

SELECT ADDRESS, PRICE AS "Property Price"
FROM redfin_data
WHERE BEDS <= 3
LIMIT 5;

SELECT ADDRESS, BEDS, PRICE
FROM redfin_data
WHERE BEDS <= 4
ORDER BY PRICE; 

SELECT *
FROM redfin_data
WHERE BEDS <= 5
ORDER BY BEDS, PRICE; 

SELECT *
FROM redfin_data
WHERE BEDS <= 5
ORDER BY PRICE DESC; 

SELECT ADDRESS
FROM redfin_data
WHERE BEDS = 4
LIMIT 10, 3; 

SELECT ADDRESS, BEDS, PRICE
FROM redfin_data
WHERE BEDS <=4 
ORDER BY PRICE
LIMIT 50; 

SELECT *
FROM redfin_data
WHERE BEDS <= 5
ORDER BY RAND()
LIMIT 10;

SELECT COUNT(*)
FROM redfin_data
WHERE BEDS = 4;

SELECT COUNT(DISTINCT(CITY))
FROM redfin_data
WHERE BEDS = 4;

SELECT DISTINCT CITY, BEDS
FROM redfin_data;

SELECT CITY, COUNT(*) AS "Listing"
FROM redfin_data
GROUP BY CITY
HAVING Listing > 1;

SELECT *
FROM redfin_data
WHERE BEDS = 4
	AND PRICE >= 1000000;
    
SELECT `Sub-Category`, 
       SUM(Profit) AS Subcategory_Profit
FROM office_supplies
WHERE Category IN ('Technology', 'Furniture')
GROUP BY `Sub-Category`
HAVING Subcategory_Profit > 1000
ORDER BY Subcategory_Profit DESC;



