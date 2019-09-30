-- QUESTION
-- We've realized that the last two parts we're using for device number 2, "Gyroscope", actually belong to an "Accelerometer". Write an SQL statement that will associate the last two parts from our parts table with an "Accelerometer" instead of a "Gyroscope".

-- ANSWER

UPDATE parts
SET device_id = 1
WHERE part_number IN (7, 8);

-- DISCUSSION

-- FURTHER EXPLORATION
-- What if we wanted to set the part with the smallest part_number to be associated with "Gyroscope"? How would we go about doing that?

UPDATE parts
SET device_id = 1
WHERE part_number = (SELECT MIN(part_number) FROM parts WHERE device_id = 2);

-- OTHER ANSWERS

-- 1
UPDATE parts
SET device_id = (
    SELECT id FROM devices WHERE name = 'Gyroscope'
    )
WHERE part_number = (
    SELECT MIN(part_number) FROM parts
    )
;
