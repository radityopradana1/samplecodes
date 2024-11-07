
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL
);

-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales');
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting');
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales');

-- fetch 
SELECT * FROM EMPLOYEE WHERE dept = 'Sales';

-- update
UPDATE EMPLOYEE SET dept = 'Sales' WHERE name = 'Dave';


-- fetch 
SELECT * FROM EMPLOYEE WHERE dept = 'Sales';

-- delete
DELETE FROM EMPLOYEE WHERE name = 'Ava';

-- fetch 
SELECT * FROM EMPLOYEE WHERE dept = 'Sales';