-- QUESTION
-- For many of the closest stars, we know the distance from Earth fairly accurately; for instance, Proxima Centauri is roughly 4.3 light years away. Our database, as currently defined, only allows integer distances, so the most accurate value we can enter is 4. Modify the distance column in the stars table so that it allows fractional light years to any degree of precision required.

-- ANSWER

ALTER TABLE stars
  ALTER COLUMN distance TYPE NUMERIC;

-- FURTHER EXPLORATION

-- Similarly to the last exercise, in this particular example, no error would be thrown. The numeric data type without a specified precision or scale allows for an arbitrary number to be inserted, this includes integers or whole numbers.

-- Going the other way is a little more interesting. If the data type was already a numeric with a distance of 4.3 and we changed the data type to integer, it would not throw an error, it would simply round the decimal to the nearest integer. e.g. 4.3 would be 4 and 4.9 would be 5.

-- OTHER ANSWERS

