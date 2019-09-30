-- QUESTION
-- For this exercise, use a scalar subquery to determine the number of bids on each item. The entire query should return a table that has the name of each item along with the number of bids on an item.

-- ANSWER

SELECT name, (SELECT COUNT(item_id) FROM bids WHERE items.id = item_id)
FROM items;

-- DISCUSSION

-- Scalar subqueries
-- https://www.postgresql.org/docs/11/sql-expressions.html#SQL-SYNTAX-SCALAR-SUBQUERIES
  -- You may reference columns within your subquery from the outer SELECT query. Those values will act as constants for the current subquery evaluation.
  -- A scalar subquery must only return one column and one row.

-- FURTHER EXPLORATION

-- If we wanted to get an equivalent result, without using a subquery, then we would have to use a LEFT OUTER JOIN. Can you come up with the equivalent query that uses a JOIN clause?

SELECT name, COUNT(item_id) FROM items
  LEFT JOIN bids ON (items.id = bids.item_id)
GROUP BY name;

-- OTHER ANSWERS