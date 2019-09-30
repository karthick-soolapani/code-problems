-- QUESTION
-- Write a SQL query that shows all items that have not had bids put on them. Use the logical operator NOT IN for this exercise, as well as a subquery.

-- ANSWER

SELECT name AS "Not Bid On" FROM items
WHERE id NOT IN (SELECT DISTINCT item_id FROM bids);

-- DISCUSSION

-- FURTHER EXPLORATION

-- OTHER ANSWERS

SELECT name AS "Not Bid On" FROM items
WHERE NOT items.id IN (SELECT item_id FROM bids);