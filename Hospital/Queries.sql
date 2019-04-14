USE hospital;


# 3
SELECT *
FROM room
WHERE room.room_number NOT IN (SELECT supervision.room_number
                               FROM supervision
                               WHERE supervision.nurse_id = 1);


# 4
SELECT medicine.company
FROM medicine
WHERE medicine.name LIKE '%fen'
   OR '%phen'
GROUP BY medicine.company
ORDER BY COUNT(*) DESC
LIMIT 1;
