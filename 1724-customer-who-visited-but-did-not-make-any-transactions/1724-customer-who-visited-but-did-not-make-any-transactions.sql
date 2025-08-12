SELECT V.customer_id ,count(V.visit_id) as count_no_trans 
FROM Visits v
LEFT JOIN Transactions T
ON V.visit_id = T.visit_id
WHERE T.transaction_id is NULL
GROUP BY  V.customer_id;

