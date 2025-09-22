-- Question 1:

SELECT 
    paymentDate AS payment_date,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2

SELECT 
    customerName AS customer_name,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

-- Question 3: 

SELECT 
    productCode AS product_code,
    quantityOrdered AS quantity_ordered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4

SELECT 
    checkNumber AS check_number,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
