-- QUESTION
-- add a star_id column to the planets table; this column will be used to relate each planet in the planets table to its home star in the stars table. Make sure the row is defined in such a way that it is required and must have a value that is present as an id in the stars table.

-- ANSWER

ALTER TABLE planets
  ADD COLUMN star_id INTEGER NOT NULL REFERENCES stars (id);

-- OTHER ANSWERS

ALTER TABLE planets
  ADD COLUMN star_id integer NOT NULL REFERENCES stars;

-- If we don't specify the column of referenced table, by default the FOREIGN KEY of table planets will reference the PRIMARY KEY of table stars. And the PRIMARY KEY of table stars in our case is column id.