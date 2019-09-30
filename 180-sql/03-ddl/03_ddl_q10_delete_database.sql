-- QUESTION
-- Delete the extrasolar database. Use the psql console -- don't use the terminal level commands.

-- ANSWER

\c other_database
DROP DATABASE extrasolar;

-- DISCUSSION

-- Note that DROP DATABASE is extremely destructive: there is no confirmation prompt, and no backups are made of the database. Use this statement with extreme care. In particular, it's a good idea to make a backup of your database before you drop it (also called a database dump). You can make a backup like this from the terminal:
$ pg_dump --inserts extrasolar > extrasolar.dump.sql

-- OTHER ANSWERS

