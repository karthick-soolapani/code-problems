-- QUESTION
-- The company president is looking to increase revenue. As a prelude to his decision making, he asks for two numbers: the amount of expected income from "big ticket" services (those services that cost more than $100) and the maximum income the company could achieve if it managed to convince all of its customers to select all of the company's big ticket items.

-- For simplicity, your solution should involve two separate SQL queries: one that reports the current expected income level, and one that reports the hypothetical maximum.

-- ANSWER

SELECT SUM(price) FROM services
  INNER JOIN customers_services ON (services.id = service_id)
WHERE price > 100;

SELECT SUM(price) FROM customers
  CROSS JOIN services
WHERE price > 100;

-- DISCUSSION

-- FURTHER EXPLORATION

-- OTHER ANSWERS

-- 1
SELECT
  (SELECT count(id) FROM customers)
  *
  (SELECT sum(price) FROM services WHERE price > 100)
AS sum;

-- First, it calculates the total customers. Second, it calculates the sum of high value services.
-- Finally multiplies them.