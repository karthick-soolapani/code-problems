-- QUESTION
-- For this exercise, you must use a subquery to generate a result table (or virtual table), and then query that table for the largest number of bids.

-- ANSWER

SELECT MAX(bid_counts.count) FROM
  (SELECT bidder_id, COUNT(item_id) FROM bids GROUP BY bidder_id) AS bid_counts;

-- DISCUSSION

-- Having a shorter query doesn't necessarily make it better though. Our SELECT query that uses a subquery is faster than the one that uses ORDER BY and LIMIT.
SELECT COUNT(bidder_id) AS max_bid FROM bids
  GROUP BY bidder_id
  ORDER BY max_bid DESC
  LIMIT 1;

-- FURTHER EXPLORATION

-- OTHER ANSWERS