-- QUESTION
-- Write an SQL query to display all devices along with all the parts that make them up. We only want to display the name of the devices. Its parts should only display the part_number.

-- ANSWER

SELECT name, part_number FROM devices
  INNER JOIN parts ON (devices.id = parts.device_id);

-- DISCUSSION

SELECT devices.name, parts.part_number
-- Since we are taking data from two different tables, we should specify which tables these two values come from. This isn't actually needed in this case since the column names are unique, but it doesn't hurt to use clear code in your queries.
