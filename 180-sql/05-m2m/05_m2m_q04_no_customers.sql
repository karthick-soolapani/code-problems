-- QUESTION
-- Using RIGHT OUTER JOIN, write a query to display a list of all services that are not currently in use.

-- ANSWER

SELECT description FROM customers_services
  RIGHT JOIN services ON (customers_services.service_id = services.id)
WHERE service_id IS NULL;

-- OR

SELECT description FROM services
WHERE id NOT IN (SELECT service_id FROM customers_services);

-- DISCUSSION

-- FURTHER EXPLORATION

-- OTHER ANSWERS

