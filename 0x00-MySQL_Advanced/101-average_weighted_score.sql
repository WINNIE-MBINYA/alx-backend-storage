-- Ensures a column is updated to NULL if it contains 2022

UPDATE some_table
SET some_column = NULL
WHERE some_column = 2022;
