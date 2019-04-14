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


# 5
SELECT *
FROM patient
WHERE EXISTS(SELECT *
             FROM relative
             WHERE relative.patient_id = patient.id
               AND relative.lname IN (SELECT nurse.lname
                                      FROM nurse
                                      WHERE nurse.shift = 2
                                        AND nurse.id IN (SELECT supervision.nurse_id
                                                         FROM supervision
                                                         WHERE supervision.date = relative.date)))

