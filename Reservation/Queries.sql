USE reservation;


# 1
SELECT teacher.teacher_id
FROM teacher
WHERE 2 < (SELECT COUNT(*)
           FROM reserve
           WHERE reserve.teacher_id = teacher.teacher_id
             AND reserve.state = 'Rejected');


# 2
SELECT AVG(teacher.salary)
FROM teacher
WHERE teacher.teacher_id IN (SELECT reserve.teacher_id
                             FROM reserve
                             WHERE reserve.room_number IN (SELECT room.room_number
                                                           FROM room
                                                           WHERE room.price = (SELECT MAX(room.price)
                                                                               FROM room)));


# 3
SELECT room.capacity
FROM room
         LEFT JOIN reserve On room.room_number = reserve.room_number
WHERE reserve.teacher_id = 1
GROUP BY room.capacity
ORDER BY COUNT(*) DESC
LIMIT 1;


# 4
SELECT SUM(DATEDIFF(reserve.finishing_date, reserve.starting_date))
FROM reserve
WHERE reserve.teacher_id = 1
  AND reserve.state = 'Finished';
