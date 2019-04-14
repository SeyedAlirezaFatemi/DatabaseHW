USE reservation;

INSERT INTO room
VALUES (1, 100, 1);

INSERT INTO room
VALUES (2, 200, 2);

INSERT INTO room
VALUES (3, 300, 3);

INSERT INTO room
VALUES (4, 400, 4);

INSERT INTO room
VALUES (5, 500, 5);

INSERT INTO room
VALUES (6, 500, 5);

INSERT INTO teacher
values (1, 100, 'Ali', 'Fatemi', '1360/06/06');

INSERT INTO teacher
values (2, 200, 'Reza', 'Mohammadi', '1358/08/08');

INSERT INTO teacher
values (3, 300, 'Hamed', 'Madadi', '1365/05/05');

INSERT INTO teacher
values (4, 400, 'Amir', 'Kashfi', '1362/02/02');

INSERT INTO reserve
VALUES (1, '1397/06/06', 'Rejected', '1397/07/07', 1, DEFAULT, 1, 1);

INSERT INTO reserve
VALUES (2, '1397/06/06', 'Rejected', '1397/07/07', 1, DEFAULT, 1, 1);

INSERT INTO reserve
VALUES (3, '1397/06/06', 'Rejected', '1397/07/07', 1, DEFAULT, 1, 1);

INSERT INTO reserve
VALUES (4, '1397/06/06', 'Rejected', '1397/07/07', 1, DEFAULT, 3, 5);

INSERT INTO reserve
VALUES (5, '1397/06/06', 'Rejected', '1397/07/07', 1, DEFAULT, 4, 6);

INSERT INTO reserve
VALUES (6, '1397/06/06', 'Rejected', '1397/07/07', 1, DEFAULT, 1, 3);

INSERT INTO reserve
VALUES (7, '1397/06/06', 'Rejected', '1397/07/07', 1, DEFAULT, 1, 3);

INSERT INTO reserve
VALUES (8, '1397/06/06', 'Rejected', '1397/07/07', 1, DEFAULT, 1, 3);

INSERT INTO reserve
VALUES (9, '1397/06/06', 'Rejected', '1397/07/07', 1, DEFAULT, 1, 3);
