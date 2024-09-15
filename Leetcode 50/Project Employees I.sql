-- -- https://leetcode.com/problems/project-employees-i/

-- Example 1:
-- Input: 
-- Project table:
-- +-------------+-------------+
-- | project_id  | employee_id |
-- +-------------+-------------+
-- | 1           | 1           |
-- | 1           | 2           |
-- | 1           | 3           |
-- | 2           | 1           |
-- | 2           | 4           |
-- +-------------+-------------+
-- Employee table:
-- +-------------+--------+------------------+
-- | employee_id | name   | experience_years |
-- +-------------+--------+------------------+
-- | 1           | Khaled | 3                |
-- | 2           | Ali    | 2                |
-- | 3           | John   | 1                |
-- | 4           | Doe    | 2                |
-- +-------------+--------+------------------+
-- Output: 
-- +-------------+---------------+
-- | project_id  | average_years |
-- +-------------+---------------+
-- | 1           | 2.00          |
-- | 2           | 2.50          |
-- +-------------+---------------+
-- Explanation: The average experience years for the first project is (3 + 2 + 1) / 3 = 2.00 and for the second project is (3 + 2) / 2 = 2.50

-- Method 1
SELECT project_id, ROUND(SUM(experience_years)/COUNT(employee_id),2) AS average_years
FROM Project
JOIN Employee
USING (employee_id)
GROUP BY project_id;

-- Method 2
SELECT p.project_id, ROUND(AVG(e.experience_years),2) AS average_years
FROM Project p
LEFT JOIN Employee e 
ON p.employee_id=e.employee_id
GROUP BY p.project_id;