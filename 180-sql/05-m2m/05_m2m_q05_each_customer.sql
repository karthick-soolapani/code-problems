-- QUESTION
-- Write a query to display a list of all customer names together with a comma-separated list of the services they use.

-- ANSWER

SELECT name, STRING_AGG(description, ', ') FROM customers
  LEFT JOIN customers_services ON (customer_id = customers.id)
  LEFT JOIN services ON (service_id = services.id)
GROUP BY name;

-- DISCUSSION

-- FURTHER EXPLORATION

-- Can you modify the above command so the output looks like this?

--   name         |    description
-- ---------------+--------------------
--  Chen Ke-Hua   | High Bandwidth
--                | Unix Hosting
--  Jim Pornot    | Dedicated Hosting
--                | Unix Hosting
--                | Bulk Email

-- Hint: you will need to use the window lag function together with a CASE condition in your SELECT.

SELECT CASE (lag(customers.name) OVER (ORDER BY customers.name))
       WHEN customers.name THEN NULL
       ELSE customers.name
       END AS name,
       services.description
FROM customers
  LEFT JOIN customers_services ON (customer_id = customers.id)
  LEFT JOIN services ON (service_id = services.id);

-- OTHER ANSWERS

-- 1
SELECT (NULLIF(customers.name, lag(customers.name) OVER (ORDER BY customers.name))) AS name,
       services.description
FROM customers
  LEFT JOIN customers_services ON customers.id = customers_services.customer_id
  LEFT JOIN services ON services.id = customers_services.service_id;

-- NULLIF returns NULL if both the arguments evaluate to true

-- 2
SELECT name, string_agg(services.description, E'\n') AS services FROM customers
  LEFT OUTER JOIN customers_services ON customer_id = customers.id
  LEFT OUTER JOIN services ON service_id = services.id
GROUP BY name ORDER BY name ASC;

-- E for escape