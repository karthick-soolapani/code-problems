-- QUESTION
-- Insert one more device into the devices table.
-- INSERT INTO devices (name) VALUES ('Magnetometer');
-- INSERT INTO parts (part_number, device_id) VALUES (42, 3);
-- Assuming nothing about the existing order of the records in the database, write an SQL statement that will return the name of the oldest device from our devices table.

-- ANSWER

SELECT name AS oldest_device FROM devices
ORDER BY created_at
LIMIT 1;

-- OTHER ANSWERS

-- 1
-- The problem has an edge case when two devices have the exact same creation date/time.
SELECT name AS oldest_device FROM devices
WHERE created_at = (SELECT MIN(created_at) FROM devices);

-- 2
SELECT string_agg(name, ', ') AS "oldest device(s)" FROM devices
GROUP BY created_at
ORDER BY created_at LIMIT 1;

     oldest device(s)
---------------------------
 Accelerometer, Gryroscope
(1 row)

-- 3
SELECT name FROM devices
WHERE created_at <= all (SELECT created_at FROM devices);