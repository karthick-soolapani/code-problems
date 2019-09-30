-- QUESTION
-- We want to grab all parts that have a part_number that starts with 3. Write a SELECT query to get this information. This table may show all attributes of the parts table.

-- ANSWER

SELECT * FROM parts
WHERE part_number::TEXT SIMILAR TO '3%';

-- DISCUSSION

-- We'll need two important tools to solve this exercise: one is type conversion, and the other is the LIKE operator.

-- You may be thinking that looking for 3 followed by any character is too loose of a condition. If part_number was originally of type text then this would certainly be true. Technically, % could match non-integer characters as well. But, since part_number is actually of type integer, there is no way that it could have a non-digit character. This is a temporary conversion for use in this query. The above query statement works just fine for our purposes.

-- FURTHER EXPLORATION

-- OTHER ANSWERS

-- 1
SELECT * FROM parts WHERE LEFT(part_number::text, 1) = '3';

-- 2
SELECT * FROM parts WHERE SUBSTRING(part_number::text from 1 for 1) = '3';

-- 3
SELECT * FROM parts WHERE cast(part_number AS text) LIKE '3%';

-- 4
SELECT * FROM parts WHERE CAST(part_number AS TEXT) ~ '^3';