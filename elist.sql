-- Questions and queries from the operations team

--What is the date of the earliest and latest order, returned in one query?
--select min and max of purchase_ts from the table orders.
SELECT min(purchase_ts), max(purchase_ts)
FROM core.orders
