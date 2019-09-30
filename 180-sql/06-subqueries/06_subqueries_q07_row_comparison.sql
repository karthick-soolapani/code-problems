-- QUESTION
-- We want to check that a given item is in our database. There is one problem though: we have all of the data for the item, but we don't know the id number. Write an SQL query that will display the id for the item that matches all of the data that we know, but does not use the AND keyword. Here is the data we know:
-- 'Painting', 100.00, 250.00

-- ANSWER

-- single row comparison (https://www.postgresql.org/docs/current/functions-subquery.html)
SELECT id FROM items
WHERE ROW('Painting', 100.00, 250.00) = (SELECT name, initial_price, sales_price);

-- DISCUSSION

-- Row Constructors (https://www.postgresql.org/docs/current/sql-expressions.html#SQL-SYNTAX-ROW-CONSTRUCTORS)
-- Row-wise Comparison (https://www.postgresql.org/docs/current/functions-comparisons.html#ROW-WISE-COMPARISON)
SELECT id FROM items
WHERE ROW('Painting', 100.00, 250.00) =
  ROW(name, initial_price, sales_price);

-- FURTHER EXPLORATION

-- OTHER ANSWERS

-- The keyword ROW is optional so it could also be written as:
SELECT id FROM items
WHERE ('Painting', 100.00, 250.00) =
  (name, initial_price, sales_price);