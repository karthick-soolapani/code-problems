-- QUESTION
-- Write a SELECT query that returns a list of names of everyone who has bid in the auction. While it is possible (and perhaps easier) to do this with a JOIN clause, we're going to do things differently: use a subquery with the EXISTS clause instead.

-- ANSWER

SELECT name FROM bidders
WHERE EXISTS (SELECT 1 FROM bids WHERE bidder_id = bidders.id);

-- DISCUSSION

-- As for the initial part of the subquery, SELECT 1, that is arbitrary. We only need a row to be returned to utilize the EXISTS clause; what's in that row doesn't usually matter.

-- FURTHER EXPLORATION

-- More often than not, we can get an equivalent result by using a JOIN clause, instead of a subquery. Can you figure out a SELECT query that uses a JOIN clause that returns the same output as our solution above?

SELECT DISTINCT name FROM bidders
  JOIN bids ON (bidders.id = bids.bidder_id);

-- OTHER ANSWERS