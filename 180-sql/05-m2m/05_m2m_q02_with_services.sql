-- QUESTION
-- Write a query to retrieve the customer data for every customer who currently subscribes to at least one service.

-- ANSWER

SELECT DISTINCT customers.* FROM customers
  INNER JOIN customers_services ON (customers.id = customers_services.customer_id);

-- OR

SELECT * FROM customers
WHERE id IN (SELECT customer_id FROM customers_services);
