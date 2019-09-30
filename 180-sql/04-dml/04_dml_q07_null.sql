-- QUESTION
-- Write two SQL queries:
-- One that generates a listing of parts that currently belong to a device.
-- One that generates a listing of parts that don't belong to a device.
-- Do not include the id column in your queries.

-- ANSWER

-- Does belong to a device
SELECT part_number, device_id FROM parts
WHERE device_id IS NOT NULL;

-- Doesn't belong to a device
SELECT part_number, device_id FROM parts
WHERE device_id IS NULL;
