-- Question 1: Show the total payment amount for each payment date from the payments table.
-- Display the payment date and total amount paid on that date.
-- Sort the results by payment date in descending order.
-- Show only the top 5 latest payment dates.

SELECT paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2: Find the average credit limit of each customer from the customers table.
-- Display the customer name, country, and the average credit limit.
-- Group the results by customer name and country.

SELECT customerName, country, AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

-- Question 3: Find the total price of products ordered from the orderdetails table.
-- Display the product code, quantity ordered, and the total price for each product.
-- Group the results by product code and quantity ordered.

SELECT productCode, quantityOrdered, SUM(priceEach * quantityOrdered) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4: Find the highest payment amount for each check number from the payments table.
-- Display the check number and the highest amount paid for that check number.
-- Group the results by check number.

SELECT checkNumber, MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
