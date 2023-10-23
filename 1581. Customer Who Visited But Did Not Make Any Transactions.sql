SELECT v.customer_id, COUNT(v.customer_id) AS count_no_trans
FROM Visits v
    LEFT OUTER JOIN Transactions t
    ON v.visit_id = t.visit_id 
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id
ORDER BY count_no_trans DESC
-- Beats 91.38% of users with MySQL --