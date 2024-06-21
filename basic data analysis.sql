SELECT  * FROM sales.transactions;

SELECT COUNT(*) FROM sales.transactions;

SELECT COUNT(*) FROM sales.customers;

SELECT * FROM sales.transactions WHERE currency="USD";
# we will convert the USD into INR 

SELECT * FROM sales.date;

SELECT sales.transactions.* , sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date;
# lets get the data for year 2020

SELECT sales.transactions.* , sales.date.* 
FROM sales.transactions 
INNER JOIN sales.date 
ON sales.transactions.order_date = sales.date.date 
WHERE sales.date.year="2020";

# lets see the total revenue in year 2020

SELECT SUM(sales.transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = "2020";

# Lets see the revenue for 2019

SELECT SUM(sales.transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = "2019";

# Sales revenue 2020 - 142235559
# Sales revenue 2019 - 336452114
# As we can see that the sales revenue is declining from the previous year

# now lets see how much revenue we did in Chennai

SELECT SUM(sales.transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = "2020" AND sales.transactions.market_code = "Mark001";
