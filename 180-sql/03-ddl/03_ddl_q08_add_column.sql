-- QUESTION
-- Add a semi_major_axis column for the semi-major axis of each planet's orbit; the semi-major axis is the average distance from the planet's star as measured in astronomical units (1 AU is the average distance of the Earth from the Sun). Use a data type of numeric, and require that each planet have a value for the semi_major_axis.

-- ANSWER

ALTER TABLE planets
  ADD COLUMN semi_major_axis NUMERIC NOT NULL;

-- FURTHER EXPLORATION

-- 1) Add back the semi_major_axis column without the NOT NULL constraint.
ALTER TABLE planets
  ADD COLUMN semi_major_axis numeric;

-- 2) Update rows in planets table to include the corresponding semi_major_axis values. We assume that Alpha Centauri B has a star_id of 1 and Epsilon Eridani has a star_id of 2.
UPDATE planets SET semi_major_axis = 0.04 WHERE star_id = 1; -- or another star_id
UPDATE planets SET semi_major_axis = 40 WHERE star_id = 2; -- or another star_id

-- 3) Finally, add the NOT NULL constraint to the semi_major_axis column.
ALTER TABLE planets
  ALTER COLUMN semi_major_axis SET NOT NULL;

-- OTHER ANSWERS

