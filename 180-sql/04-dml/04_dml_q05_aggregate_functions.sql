-- QUESTION
-- Write an SQL query that returns a result table with the name of each device in our database together with the number of parts for that device.

-- ANSWER

SELECT name, COUNT(*) FROM devices
  INNER JOIN parts ON (devices.id = parts.device_id)
GROUP BY name;

-- OTHER ANSWERS

-- Our database has no uniqueness constraint on the devices.name column. This would suggest that the GROUP BY clause should group on the ID since it this column is constrained to be unique. It could be conceivable that we have devices with the same name but different IDs. This would result in an incorrect count of parts.
SELECT devices.name, COUNT(parts.id) AS number_of_parts FROM devices
INNER JOIN parts ON parts.device_id = devices.id
GROUP BY devices.id;
