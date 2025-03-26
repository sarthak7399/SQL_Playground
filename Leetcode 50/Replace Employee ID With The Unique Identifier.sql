-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

-- Example 1:
-- Input: 
-- Employees table:
-- +----+----------+
-- | id | name     |
-- +----+----------+
-- | 1  | Alice    |
-- | 7  | Bob      |
-- | 11 | Meir     |
-- | 90 | Winston  |
-- | 3  | Jonathan |
-- +----+----------+
-- EmployeeUNI table:
-- +----+-----------+
-- | id | unique_id |
-- +----+-----------+
-- | 3  | 1         |
-- | 11 | 2         |
-- | 90 | 3         |
-- +----+-----------+
-- Output: 
-- +-----------+----------+
-- | unique_id | name     |
-- +-----------+----------+
-- | null      | Alice    |
-- | null      | Bob      |
-- | 2         | Meir     |
-- | 3         | Winston  |
-- | 1         | Jonathan |
-- +-----------+----------+
-- Explanation: 
-- Alice and Bob do not have a unique ID, We will show null instead.
-- The unique ID of Meir is 2.
-- The unique ID of Winston is 3.
-- The unique ID of Jonathan is 1.

-- Method 1
SELECT EmployeeUNI.unique_id,Employees.name 
FROM Employees 
NATURAL LEFT JOIN EmployeeUNI;

-- NATURAL LEFT JOIN: The join is automatic based on shared column names, which can sometimes lead to unexpected results if multiple columns share the same name.

--  Method 2
-- SELECT EmployeeUNI.unique_id,Employees.name 
-- FROM EmployeeUNI
-- LEFT JOIN Employees
-- ON EmployeeUNI.id = Employees.id