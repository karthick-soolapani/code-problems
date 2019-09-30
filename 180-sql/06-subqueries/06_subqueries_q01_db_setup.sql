-- QUESTION
-- Setup database as per the provided files

-- ANSWER

CREATE DATABASE auction;

CREATE TABLE bidders (
  PRIMARY KEY (id),
  id SERIAL,
  name TEXT NOT NULL
);

CREATE TABLE items (
  PRIMARY KEY (id),
  id SERIAL,
  name TEXT NOT NULL,
  initial_price NUMERIC(6,2) NOT NULL
    CHECK (initial_price >= 0.0),
  sales_price NUMERIC(6,2)
);

CREATE TABLE bids (
  PRIMARY KEY (id),
  id SERIAL,
  bidder_id INTEGER NOT NULL
    REFERENCES bidders (id) ON DELETE CASCADE,
  item_id INTEGER NOT NULL
    REFERENCES items (id) ON DELETE CASCADE,
  amount NUMERIC(6,2) NOT NULL
);

CREATE INDEX ON bids (bidder_id, item_id);

\copy bidders FROM 'bidders.csv' WITH HEADER CSV
\copy items FROM 'items.csv' WITH HEADER CSV
\copy bids FROM 'bids.csv' WITH HEADER CSV

-- DISCUSSION

-- We opt for \copy because it offers a nice benefit compared with COPY: you can use a relative path to the file you wish to import. However, when using COPY, we have to use the absolute path, which can be tedious.

-- We use three copy commands, one for each table data we wish to import. It's important to remember to use the HEADER and CSV options: HEADER tells PostgreSQL to expect headers on the first line of each file, while the CSV tells PostgreSQL that we are importing a CSV file. Without this second option, the \copy meta-command would not work.

-- FURTHER EXPLORATION

-- OTHER ANSWERS

-- 1
-- SYNTAX SHORTCUT : It seems that you can get rid of the simple quotes for the filename and also of the WITH word :
\copy bids FROM bids.csv HEADER CSV

-- By default with CSV files, the delimiter is a Comma. If the delimiter in your file is not a comma but, let's say a semi-colon (;), you have to add a DELIMITER option
\copy bids FROM bids.csv DELIMITER ';' HEADER CSV

-- You can also use \copy to write the result of a query into a file :
\copy (SELECT * FROM bidders) TO 'bidders.csv' CSV HEADER

