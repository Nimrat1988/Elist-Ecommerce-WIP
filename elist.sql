-- Questions and queries from the operations team

--What is the date of the earliest and latest order, returned in one query?
--select min and max of purchase_ts from the table orders.
SELECT min(purchase_ts), max(purchase_ts)
FROM core.orders;

--What is the average order value for purchases made in USD? What about average order value for purchases made in USD in 2019?
--select average of usd_price, currecny from orders table, filter where currency = USD and year 2019.
SELECT avg(usd_price) AS avg_usd_price
FROM core.orders
WHERE currency = 'USD' AND EXTRACT(year from purchase_ts) = 2019;

--Return the id, loyalty program status, and account creation date for customers who made an account on desktop or mobile. Rename the columns to more descriptive names.
--select the columns, filter where account created is desktop or mobile. Rename columns

SELECT id AS customer_id, 
  loyalty_program AS is_loyal_customer,
  account_creation_method,
  created_on AS account_creation_date
FROM core.customers_orig
WHERE account_creation_method IN ('desktop', 'mobile');

--What are all the unique products that were sold in AUD on website, sorted alphabetically?
--select distinct currency, filter where purchase platform = website and ORDER BY ASC

SELECT DISTINCT(product_name)
FROM `core.orders`
WHERE currency = 'AUD' AND purchase_platform = 'website'
ORDER BY product_name;

--What are the first 10 countries in the North American region, sorted in descending alphabetical order?
--select region and country code where region = NA and order by desc

SELECT region, country_code
FROM `core.geo_lookup`
WHERE region = 'NA'
ORDER BY country_code
LIMIT 10;
