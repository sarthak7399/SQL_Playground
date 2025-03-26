-- https://leetcode.com/problems/rising-temperature/

-- Example 1:
-- Input: 
-- Weather table:
-- +----+------------+-------------+
-- | id | recordDate | temperature |
-- +----+------------+-------------+
-- | 1  | 2015-01-01 | 10          |
-- | 2  | 2015-01-02 | 25          |
-- | 3  | 2015-01-03 | 20          |
-- | 4  | 2015-01-04 | 30          |
-- +----+------------+-------------+
-- Output: 
-- +----+
-- | id |
-- +----+
-- | 2  |
-- | 4  |
-- +----+
-- Explanation: 
-- In 2015-01-02, the temperature was higher than the previous day (10 -> 25).
-- In 2015-01-04, the temperature was higher than the previous day (20 -> 30).

-- Method 1
SELECT w1.id
FROM Weather w1, Weather w2
WHERE w1.temperature > w2.temperature
AND DATEDIFF(w1.recordDate, w2.recordDate) = 1

-- Method 2
SELECT w2.id as Id
FROM Weather w1
JOIN Weather w2
ON DATEDIFF (w1.recordDate ,w2.recordDate ) = -1
AND w2.temperature>w1.temperature

-- Method 3
SELECT w1.id
FROM Weather w1, Weather w2
WHERE w1.temperature > w2.temperature
AND w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)