USE data_cleaning_project;
GO

WITH clean_data as (

SELECT 	
	order_id,

-- Standardize Customer Name
CASE WHEN customer_name = 'NULL' THEN 'Not Available'
ELSE
	(SELECT ' ' + UPPER(LEFT(value,1)) + LOWER(SUBSTRING(value,2,100))
	FROM STRING_SPLIT(customer_name,' ')
	FOR XML PATH('')) 
END	as customer_name,

-- Standardize Email ID
ISNULL(LOWER (email), 'No Email') as email,

-- Standardize Date
FORMAT(CAST(order_date as DATE), 'dd-MM-yyyy') as order_date,	

-- Standardize Product Name
LTRIM((
    SELECT ' ' + UPPER(LEFT(value,1)) + LOWER(SUBSTRING(value,2,100))
    FROM STRING_SPLIT(product_name, ' ')
    FOR XML PATH('')
)) as product_name,

-- Clean Quantity Column
CASE
    WHEN TRY_CAST(quantity as INT) IS NOT NULL 
        THEN CAST(quantity as INT)
    WHEN LOWER(quantity) = 'one'   THEN 1
    WHEN LOWER(quantity) = 'two'   THEN 2
    WHEN LOWER(quantity) = 'three' THEN 3
    WHEN LOWER(quantity) = 'four'  THEN 4
    WHEN LOWER(quantity) = 'five'  THEN 5
    WHEN LOWER(quantity) = 'six'   THEN 6
    WHEN LOWER(quantity) = 'seven' THEN 7
    WHEN LOWER(quantity) = 'eight' THEN 8
    WHEN LOWER(quantity) = 'nine'  THEN 9
    WHEN LOWER(quantity) = 'ten'   THEN 10
    ELSE NULL
END as quantity,

-- Standardize Price
ISNULL(
		TRY_CAST(
		REPLACE(REPLACE(REPLACE(price,'₹',''),'$',''),',','') as DECIMAL(10,2))
		,0) as price,

-- Clean Country Column
CASE
    WHEN LOWER(country) IN ('usa', 'us', 'united state', 'united states') 
        THEN 'United States'
    WHEN LOWER(country) IN ('uk', 'u.k', 'united kingdom', 'united kindom') 
        THEN 'United Kingdom'
    ELSE
        UPPER(LEFT(country,1)) + LOWER(SUBSTRING(country,2,100))
END as country,

-- Standardize order_status

UPPER(LEFT(order_status, 1)) + LOWER(SUBSTRING(order_status,2,100)) as order_status, 

-- Clean Note Column
CASE
    WHEN notes IS NULL OR notes IN ('-','Null')
        THEN 'No Comments'
    ELSE
	REPLACE(
    LTRIM((
        SELECT ' ' + UPPER(LEFT(REPLACE(value,'"',''),1)) 
                 + LOWER(SUBSTRING(REPLACE(value,'"',''),2,100))
        FROM STRING_SPLIT(TRIM(notes),' ')
        FOR XML PATH('')
          )),'"','')
END as notes

FROM customer_order),

-- Remove Duplicate
duplicate_data as (
				SELECT * ,
					   ROW_NUMBER() OVER (PARTITION BY email , product_name ORDER BY order_id) as rnk
				FROM clean_data)

-- Final Clean Data
SELECT 
	  order_id,
	  customer_name,
	  email,
	  order_date,
	  product_name,
	  quantity,
	  price,
	  country,
	  order_status,
	  notes
	  FROM duplicate_data
WHERE rnk = 1
ORDER BY order_id;




