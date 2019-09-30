-- QUESTION
-- For this set of exercises we'll want to create a new database and some tables to work with. The theme for the exercise is that of a workshop. Create a database to store information and tables related to this workshop.

-- One table should be called devices. This table should have columns that meet the following specifications:
-- Includes a primary key called id that is auto-incrementing.
-- A column called name, that can contain a String. It cannot be NULL.
-- A column called created_at that lists the date this device was created. It should be of type timestamp and it should also have a default value related to when a device is created.

-- In the workshop, we have several devices, and each device should have many different parts. These parts are unique to each device, so one device can have various parts, but those parts won't be used in any other device. Make a table called parts that reflects the information listed above. Table parts should have the following columns that meet the following specifications:
-- An id which auto-increments and acts as the primary key
-- A part_number. This column should be unique and not null.
-- A foreign key column called device_id. This will be used to associate various parts with a device.

-- ANSWER

CREATE TABLE devices (
  PRIMARY KEY (id),
  id serial,
  name TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE parts (
  PRIMARY KEY (id),
  id serial,
  part_number INTEGER NOT NULL UNIQUE,
  device_id INTEGER REFERENCES devices (id)
);

-- DISCUSSION

-- created_at column - The directions specify that it should be of type timestamp, so we go ahead and write that in. It should also default to the time of creation for this particular device. To accomplish this we can set a DEFAULT constraint: if no value is entered, a default value of the current time is used. We get this by using either NOW() or its alias CURRENT_TIMESTAMP. Either one will work.
