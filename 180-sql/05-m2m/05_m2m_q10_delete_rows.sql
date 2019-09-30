-- QUESTION
-- Write the necessary SQL statements to delete the "Bulk Email" service and customer "Chen Ke-Hua" from the database.

-- ANSWER

DELETE FROM customers
WHERE name = 'Chen Ke-Hua';

ALTER TABLE customers_services
  DROP CONSTRAINT customers_services_service_id_fkey,
  ADD FOREIGN KEY (service_id) REFERENCES services (id) ON DELETE CASCADE;

DELETE FROM services
WHERE description = 'Bulk Email';

-- DISCUSSION

-- FURTHER EXPLORATION

-- OTHER ANSWERS

DELETE FROM customers_services WHERE service_id =
(SELECT id FROM services WHERE description = 'Bulk Email');