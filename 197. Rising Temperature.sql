SELECT w1.id
FROM Weather w1, Weather w2
WHERE DATEDIFF(w1.recordDate, w2.recordDate) = 1 AND w1.temperature > w2.temperature
-- Beats 68.19% of users with MySQL --
-- Do it again after sometime -- 