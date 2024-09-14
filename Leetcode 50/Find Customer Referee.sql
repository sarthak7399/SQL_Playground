-- https://leetcode.com/problems/find-customer-referee/

-- Example 1:
-- Input: 
-- Customer table:
-- +----+------+------------+
-- | id | name | referee_id |
-- +----+------+------------+
-- | 1  | Will | null       |
-- | 2  | Jane | null       |
-- | 3  | Alex | 2          |
-- | 4  | Bill | null       |
-- | 5  | Zack | 1          |
-- | 6  | Mark | 2          |
-- +----+------+------------+
-- Output: 
-- +------+
-- | name |
-- +------+
-- | Will |
-- | Jane |
-- | Bill |
-- | Zack |
-- +------+

-- Method 1
SELECT name 
FROM customer 
WHERE referee_id <> 2 OR referee_id IS NULL; 

-- Method 2
-- SELECT name 
-- FROM customer
-- WHERE referee_id != 2 OR referee_id IS NULL; 