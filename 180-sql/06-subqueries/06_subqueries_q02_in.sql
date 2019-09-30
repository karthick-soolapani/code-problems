-- QUESTION
-- Write a SQL query that shows all items that have had bids put on them. Use the logical operator IN for this exercise, as well as a subquery.

-- ANSWER

SELECT name AS "Bid on Items" FROM items
WHERE id IN (SELECT item_id FROM bids);

-- DISCUSSION

-- FURTHER EXPLORATION

-- OTHER ANSWERS

SELECT name AS "Bid on Items" FROM items
WHERE id IN (SELECT DISTINCT item_id FROM bids);
-- Usage of DISTINCT
-- The expression IN (subquery) would return true upon hitting the first match, so it doesn't really make any difference in the final result if you have redundant elements in the array returned from the subquery.
-- Performance wise though this probably would result in longer processing time, as the false values would have to be matched against every element of a redundant array. Also a larger memory footprint for temporary storage of the array. (assuming there is no built-in optimization in the RDBMS.)
