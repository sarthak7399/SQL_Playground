-- https://leetcode.com/problems/employee-bonus/

-- Example 1:
-- Input: 
-- Employee table:
-- +-------+--------+------------+--------+
-- | empId | name   | supervisor | salary |
-- +-------+--------+------------+--------+
-- | 3     | Brad   | null       | 4000   |
-- | 1     | John   | 3          | 1000   |
-- | 2     | Dan    | 3          | 2000   |
-- | 4     | Thomas | 3          | 4000   |
-- +-------+--------+------------+--------+
-- Bonus table:
-- +-------+-------+
-- | empId | bonus |
-- +-------+-------+
-- | 2     | 500   |
-- | 4     | 2000  |
-- +-------+-------+
-- Output: 
-- +------+-------+
-- | name | bonus |
-- +------+-------+
-- | Brad | null  |
-- | John | null  |
-- | Dan  | 500   |
-- +------+-------+

-- Method 1
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
USING (empId)
WHERE b.bonus<1000
    OR b.bonus IS NULL
ORDER BY empId;

-- Method 2
SELECT name, bonus
FROM Employee e
LEFT JOIN Bonus b
USING (empId)
WHERE b.bonus IS NULL
    OR b.bonus < 1000