SELECT COUNT(*) FROM sales.transactions WHERE sales_amount <= 0;
USE sales;
SELECT DISTINCT(transactions.currency) FROM transactions;
SELECT COUNT(*) FROM transactions WHERE transactions.currency="INR\r";
SELECT COUNT(*) FROM transactions WHERE transactions.currency="INR";
SELECT COUNT(*) FROM transactions WHERE transactions.currency="USD";
SELECT COUNT(*) FROM transactions WHERE transactions.currency="USD\r";

SELECT * FROM transactions WHERE transactions.currency="USD" OR transactions.currency="USD\r";