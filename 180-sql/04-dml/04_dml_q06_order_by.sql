-- QUESTION
-- In the previous exercise, we had to use a GROUP BY clause to obtain the expected output. Now, we want to work with the same query, but we want to guarantee that the devices and the count of their parts are listed in descending alphabetical order.

-- ANSWER

SELECT name, COUNT(*) FROM devices
  INNER JOIN parts ON (devices.id = parts.device_id)
GROUP BY devices.id
ORDER BY name DESC;
