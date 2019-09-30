-- QUESTION
-- Now that we have the infrastructure for our workshop set up, let's start adding in some data. Add in two different devices. One should be named, "Accelerometer". The other should be named, "Gyroscope".

-- The first device should have 3 parts (this is grossly simplified). The second device should have 5 parts. The part numbers may be any number between 1 and 10000. There should also be 3 parts that don't belong to any device yet.

-- ANSWER

INSERT INTO devices (name)
VALUES ('Accelerometer'),
       ('Gyroscope');

INSERT INTO parts (part_number, device_id)
VALUES (1, 1),
       (2, 1),
       (3, 1),
       (4, 2),
       (5, 2),
       (6, 2),
       (7, 2),
       (8, 2),
       (9, NULL),
       (10, NULL),
       (11, NULL);

-- OTHER ANSWERS

CREATE FUNCTION rand_10000()
RETURNS integer
AS 'SELECT CAST((random() * 10000 + 1) AS integer);'
LANGUAGE SQL;

-- There are several things should be noticed:
-- The syntax to create basic function in Postgresql
-- The return type of random() function is double precision, but we need integer, so we need to CAST it into integer. We could also use round, whose return type is numeric, so we need conversion too.
-- an alternative solution is to create a SEQUENCE and set a MAXVALUE constraint to it(CREATE SEQUENCE part_num_seq START WITH 1000 MAXVALUE 10000;).