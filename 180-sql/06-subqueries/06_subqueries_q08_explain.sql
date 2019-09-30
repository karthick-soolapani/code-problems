-- QUESTION
-- First use just EXPLAIN, then include the ANALYZE option as well. For your answer, list any SQL statements you used, along with the output you get back, and your thoughts on what is happening in both cases.

-- ANSWER

EXPLAIN SELECT name FROM bidders
WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);

EXPLAIN ANALYZE SELECT name FROM bidders
WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);

-- DISCUSSION

-- FURTHER EXPLORATION

-- OTHER ANSWERS

-- Look at the html file for discussion and other answers