-- QUESTION
-- Hmm... it turns out that 25 characters isn't enough room to store a star's complete name. For instance, the star "Epsilon Trianguli Australis A" requires 30 characters. Modify the column so that it allows star names as long as 50 characters.

-- ANSWER

ALTER TABLE stars
  ALTER COLUMN name
  TYPE VARCHAR(50);

-- FURTHER EXPLORATION

-- In this particular example, if you change the data type from a varchar(25) to a varchar(50), no error will be thrown. It will accept the change and change the data type of the column. However, if you attempted to change it to a lower character length, say 10, then it would give this error:

ALTER TABLE stars
ALTER COLUMN name TYPE varchar(10);
ERROR:  value too long for type character varying(10)

-- Inorder to mitigate the error we need to convert the existing data with USING keyword

ALTER TABLE stars
ALTER COLUMN name TYPE VARCHAR(10)
USING name::VARCHAR(10);

-- This will truncate existing names to 10 characters

-- OTHER ANSWERS

