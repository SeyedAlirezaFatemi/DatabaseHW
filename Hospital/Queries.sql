USE hospital;

# 1
SELECT MAX(medicine.price)
FROM medicine
WHERE medicine.id IN (SELECT prescription.medicine_id
                      FROM prescription
                      WHERE prescription.visit_id IN (SELECT visit.id
                                                      FROM visit
                                                      WHERE doctor_id = 1
                                                        AND patient_id = 2));


# 2
SELECT doctor.profession
FROM doctor
         LEFT JOIN visit ON doctor.id = visit.doctor_id
WHERE visit.room_number IS NOT NULL
GROUP BY doctor.profession
ORDER BY COUNT(*) DESC
LIMIT 1;


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

