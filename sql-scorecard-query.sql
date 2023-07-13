SELECT
	/* summarize by */
	YEAR(order_date) AS Order_Year,
    MONTH(order_date) AS Order_Month,
    region,
    category,
    subcategory,
	/* summary of */
    SUM(Sales) AS Sales,
    SUM(Quantity) AS Quantity,
    SUM(Profit) AS Profit,
    SUM(Discount) AS Discount
FROM superstore_data
WHERE YEAR(order_date) IN (2016, 2017)
GROUP BY
	YEAR(order_date),
    MONTH(order_date),
    region,
    category,
    subcategory
;
    
    