-- Step 1: Show all databases
SHOW DATABASES;

-- Step 2: Use the same database (school) or create if not exists
CREATE DATABASE IF NOT EXISTS school;
USE school;

-- Step 3: Drop table if already exists
DROP TABLE IF EXISTS rectangle;

-- Step 4: Create table for rectangle dimensions
CREATE TABLE rectangle (
    id INT PRIMARY KEY,
    length INT,
    breadth INT
);

-- Step 5: Insert sample values
INSERT INTO rectangle VALUES
(1, 10, 10),   -- Square
(2, 15, 20);   -- Rectangle

-- Step 6: Query to check Square or Rectangle
SELECT id, length, breadth,
CASE
    WHEN length = breadth THEN 'Square'
    ELSE 'Rectangle'
END AS shape
from rectangle;