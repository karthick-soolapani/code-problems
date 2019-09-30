-- QUESTION
-- The spectral_type column in the stars table is currently defined as a one-character string that contains one of the following 7 values: 'O', 'B', 'A', 'F', 'G', 'K', and 'M'. However, there is currently no enforcement on the values that may be entered. Add a constraint to the table stars that will enforce the requirement that a row must hold one of the 7 listed values above. Also, make sure that a value is required for this column.

-- ANSWER

ALTER TABLE stars
  ADD CHECK (spectral_type ~* '[OBAFGKM]'),
  ALTER COLUMN spectral_type SET NOT NULL;

-- FURTHER EXPLORATION

-- Assume the stars table contains one or more rows that are missing a spectral_type value, or that have an illegal value. What will happen when you try to alter the table schema? How would you go about adjusting the data to work around this problem.

-- The two possible errors are:
ERROR:  column "spectral_type" contains null values
ERROR:  check constraint "stars_spectral_type_check" is violated by some row

-- To delete these rows of data you could use a statement like this, which uses the companion to IN, NOT IN:
DELETE FROM stars
WHERE (spectral_type NOT IN ('O', 'B', 'A', 'F', 'G', 'K', 'M'))
OR spectral_type IS NULL;

-- OTHER ANSWERS

-- 1
ALTER TABLE stars
ADD CHECK (spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M')),
ALTER COLUMN spectral_type SET NOT NULL;

-- 2
ALTER TABLE stars ADD CHECK (spectral_type SIMILAR TO 'O|B|A|F|G|K|M'),
  ALTER COLUMN spectral_type SET NOT NULL;

-- 3
CREATE TYPE spectral_types AS ENUM ('O', 'B', 'A', 'F', 'G', 'K', 'M');

ALTER TABLE stars
  ALTER COLUMN spectral_type TYPE spectral_types
  USING spectral_type::spectral_types;