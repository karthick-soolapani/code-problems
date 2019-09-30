-- QUESTION
-- Write a query that displays the description for every service that is subscribed to by at least 3 customers. Include the customer count for each description in the report.

-- ANSWER

SELECT description, COUNT(customer_id) FROM services
  INNER JOIN customers_services ON (services.id = customers_services.service_id)
GROUP BY description
HAVING COUNT(customer_id) >= 3
ORDER BY description;

-- DISCUSSION

-- FURTHER EXPLORATION

-- OTHER ANSWERS

SELECT   description, count(1)
FROM services AS serv
  JOIN customers_services cs ON serv.id = cs.service_id
GROUP BY description
HAVING count(1) >= 3;