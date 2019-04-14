USE hospital;

# 4
SELECT medicine.company
FROM medicine
WHERE medicine.name LIKE '%fen'
   OR '%phen'
GROUP BY medicine.company
ORDER BY COUNT(*) DESC
LIMIT 1;
