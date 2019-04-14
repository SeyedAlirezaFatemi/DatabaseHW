USE hospital;

INSERT INTO doctor
VALUES ('Ali', 'Fatemi', 1, 1);

INSERT INTO doctor
VALUES ('Reza', 'Kashfi', 2, 2);

INSERT INTO doctor
VALUES ('Mohammad', 'Kiani', 3, 3);

INSERT INTO doctor
VALUES ('Ahmad', 'Sarvari', 4, 3);

INSERT INTO medicine
VALUES (1, 'Acifluorfen', 'Aray', 100);

INSERT INTO medicine
VALUES (2, 'Fenoprofen', 'Trident', 200);

INSERT INTO medicine
VALUES (3, 'Actifen', 'Abidi', 300);

INSERT INTO medicine
VALUES (4, 'Butibufen', 'Aray', 400);

INSERT INTO nurse
VALUES (1, 'Sara', 'Abidi', 14);

INSERT INTO nurse
VALUES (2, 'Ali', 'Mohammadi', 12);

INSERT INTO nurse
VALUES (3, 'Ahmad', 'Khani', 5);

INSERT INTO nurse
VALUES (4, 'Hamed', 'Kiani', 8);

INSERT INTO patient
VALUES ('Ali', 'Abidi', 1);

INSERT INTO patient
VALUES ('Arash', 'Kaboli', 2);

INSERT INTO patient
VALUES ('Ali', 'Golestani', 3);

INSERT INTO room
VALUES (1, 1);

INSERT INTO room
VALUES (2, 2);

INSERT INTO room
VALUES (3, 1);

INSERT INTO room
VALUES (4, 2);

INSERT INTO relative
VALUES (1, 'Abidi', 1, '1390/11/11');

INSERT INTO supervision
VALUES (1, 1, 1, '1390/11/11');

INSERT INTO visit
VALUES (1, 1, 1, 1, '1390/11/11');

INSERT INTO prescription
VALUES (1, 1);
