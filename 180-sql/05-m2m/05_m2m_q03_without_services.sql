-- QUESTION
-- Write a query to retrieve the customer data for every customer who does not currently subscribe to any services.

-- ANSWER

SELECT DISTINCT customers.* FROM customers
  LEFT JOIN customers_services ON (customers.id = customers_services.customer_id)
WHERE customer_id IS NULL;

-- OR

SELECT * FROM customers
WHERE id NOT IN (SELECT customer_id FROM customers_services);

-- FURTHER EXPLORATION

-- Can you write a query that displays all customers with no services and all services that currently don't have any customers? The output should look like this:

SELECT customers.*, services.* FROM customers_services
  FULL JOIN customers ON (customers_services.customer_id = customers.id)
  FULL JOIN services ON (customers_services.service_id = services.id)
WHERE customers_services.id IS NULL;
