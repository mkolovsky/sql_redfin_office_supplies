# 🏡 SQL Practice – Redfin Real Estate & Office Supplies Analysis

## 📘 Overview

This repository contains practice SQL queries applied to two datasets:

* **`redfin_data`**: Real estate listings in Los Angeles
* **`office_supplies`**: Retail transactions dataset
  These exercises were completed as part of **LMU's BSAN 6040** course to build foundational SQL skills in data analysis.

---

## 🛠️ Datasets Used

### `redfin_data`

Contains property listings including:

* Address, City, Beds, Price, and other real estate features

### `office_supplies`

Superstore-style transactional data with fields such as:

* Category, Sub-Category, Profit, and Sales

---

## 🧪 Query Highlights

### 🔍 Basic Data Exploration

```sql
SELECT * FROM redfin_data;
SELECT * FROM redfin_data LIMIT 5;
DESCRIBE redfin_data;
```

### 🏠 Filtering by Property Features

```sql
SELECT ADDRESS, CITY, BEDS, PRICE
FROM redfin_data
WHERE BEDS <= 3 AND CITY = 'Los Angeles';
```

### 📈 Ordering & Limiting Results

```sql
SELECT ADDRESS, BEDS, PRICE
FROM redfin_data
WHERE BEDS <= 4
ORDER BY PRICE;
```

```sql
SELECT *
FROM redfin_data
WHERE BEDS <= 5
ORDER BY PRICE DESC;
```

### 🔄 Random Sampling

```sql
SELECT *
FROM redfin_data
WHERE BEDS <= 5
ORDER BY RAND()
LIMIT 10;
```

### 🔢 Aggregations & Counts

```sql
SELECT COUNT(*) 
FROM redfin_data 
WHERE BEDS = 4;

SELECT COUNT(DISTINCT CITY)
FROM redfin_data
WHERE BEDS = 4;
```

```sql
SELECT CITY, COUNT(*) AS Listing
FROM redfin_data
GROUP BY CITY
HAVING Listing > 1;
```

### 💰 Office Supplies Profit Analysis

```sql
SELECT `Sub-Category`, 
       SUM(Profit) AS Subcategory_Profit
FROM office_supplies
WHERE Category IN ('Technology', 'Furniture')
GROUP BY `Sub-Category`
HAVING Subcategory_Profit > 1000
ORDER BY Subcategory_Profit DESC;
```

---

## 🎯 Learning Objectives

* Practice SQL fundamentals: `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `COUNT`, `GROUP BY`, `HAVING`
* Explore real estate market trends through filtering and aggregation
* Analyze profitability by sub-category for retail data
* Apply random sampling and subsetting in SQL

