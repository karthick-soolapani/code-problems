-- QUESTION
-- Our workshop has decided to not make an Accelerometer after all. Delete any data related to "Accelerometer", this includes the parts associated with an Accelerometer.

-- ANSWER

DELETE FROM parts WHERE device_id = 1;
DELETE FROM devices WHERE name = 'Accelerometer';

-- DISCUSSION
-- What if we tried to run those two SQL statement above in reverse order?
-- ERROR:  update or delete on table "devices" violates foreign key constraint "parts_device_id_fkey" on table "parts"
-- DETAIL:  Key (id)=(1) is still referenced from table "parts".
-- First we have to delete all the parts associated with the Accelerometer, then we can delete the Accelerometer itself from the database. If we try to do this the other way around, we'll get an error because we'll have parts that try to reference a non-existent device.

-- FURTHER EXPLORATION
-- This process may have been a bit simpler if we had initially defined our devices tables a bit differently. We could delete both a device and its associated parts with one SQL statement if that were the case. What change would have to be made to table parts to make this possible? Also, what SQL statement would you have to write that can delete both a device and its parts all in one go?

ALTER TABLE parts
  DROP CONSTRAINT parts_device_id_fkey,
  ADD FOREIGN KEY (device_id) REFERENCES devices (id) ON DELETE CASCADE;

DELETE FROM devices
WHERE name = 'Accelerometer';

-- OTHER ANSWERS

-- With our current parts schema implementation, we are prohibited from deleting a device from the devices table if there is a part in the parts table whose device_id column is a foreign key to the would-be deleted device. Such action would violate the basic foreign key constraint, as we cannot have a foreign key that references a non-existent primary key. This is a way of maintaining the referential integrity of the database.

-- We can still accomplish all of this with ease having already defined the parts table. We simply have to:
-- delete the foreign key constraint from the device_id column as it currently exists
-- add a foreign key constraint back to the device_id column that includes an ON DELETE ... constraint
-- re-enter our delete statement

-- NOTE: You cannot directly add ON DELETE condition to an existing CONSTRAINT. You will have to DROP and ADD a new CONSTRAINT.