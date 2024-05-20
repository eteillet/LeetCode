/* Write your T-SQL query statement below */

-- we add 1 from the odd Ids
SELECT id + 1 as id, student
FROM Seat
WHERE id % 2 = 1 AND id <> (SELECT MAX(id) as maxId FROM Seat)

UNION

-- we subtract 1 from the even Ids
SELECT id - 1 as id, student
FROM Seat
WHERE id % 2 = 0

UNION

-- we do nothing if the last Id is odd
SELECT id, student
FROM Seat
WHERE id % 2 = 1 AND id = (SELECT MAX(id) as maxId FROM Seat)