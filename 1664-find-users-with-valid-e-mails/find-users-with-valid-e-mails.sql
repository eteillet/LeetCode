/* Write your T-SQL query statement below */
SELECT *
FROM Users
WHERE mail LIKE '[A-Za-z]%' -- Starts with a letter
    AND LEFT(mail, LEN(mail) - 13) NOT LIKE '%[^0-9a-zA-Z_.-]%' -- Only valid characters in the prefix
    AND mail LIKE '%@leetcode.com' -- Ends with '@leetcode.com'