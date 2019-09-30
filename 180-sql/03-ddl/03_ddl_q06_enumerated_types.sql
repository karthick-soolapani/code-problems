-- QUESTION
-- In the previous exercise, we added a CHECK constraint to the stars table to enforce that the value stored in the spectral_type column for each row is valid. In this exercise, we will use an alternate approach to the same problem.
-- PostgreSQL provides what is called an enumerated data type; that is, a data type that must have one of a finite set of values. For instance, a traffic light can be red, green, or yellow: these are enumerate values for the color of the currently lit signal light.
-- Modify the stars table to remove the CHECK constraint on the spectral_type column, and then modify the spectral_type column so it becomes an enumerated type that restricts it to one of the following 7 values: 'O', 'B', 'A', 'F', 'G', 'K', and 'M'.

-- ANSWER

ALTER TABLE stars
  DROP CONSTRAINT stars_spectral_type_check;

CREATE TYPE spectral AS ENUM ('O', 'B', 'A', 'F', 'G', 'K', 'M');

ALTER TABLE stars
  ALTER COLUMN spectral_type TYPE spectral
  USING spectral_type::spectral;

-- DISCUSSION

-- https://www.postgresql.org/docs/11/datatype-enum.html

-- If the USING clause is omitted:
ERROR:  column "spectral_type" cannot be cast automatically to type spectral_type_enum
HINT:  You might need to specify "USING spectral_type::spectral_type_enum".

-- OTHER ANSWERS

ALTER TYPE spectral_type_enum ADD VALUE 'L';