CREATE DATABASE reservation;
USE reservation;


CREATE TABLE IF NOT EXISTS `reserve`
(
    `id`             int(11)                                                 NOT NULL,
    `starting_date`  date                                                             DEFAULT NULL,
    `state`          enum ('Rejected','Approved','New','Pending','Finished') NOT NULL DEFAULT 'New',
    `finishing_date` date                                                             DEFAULT NULL,
    `rate`           tinyint(1)                                                       DEFAULT NULL,
    `timestamp`      timestamp                                               NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `teacher_id`     int(11)                                                 NOT NULL DEFAULT '0',
    `room_number`    int(11)                                                 NOT NULL
) ENGINE = InnoDB
  AUTO_INCREMENT = 11
  DEFAULT CHARSET = latin1;


CREATE TABLE IF NOT EXISTS `room`
(
    `room_number` int(11) NOT NULL,
    `price`       int(10) NOT NULL,
    `capacity`    int(1)  NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;



CREATE TABLE IF NOT EXISTS `teacher`
(
    `teacher_id` int(10)     NOT NULL,
    `salary`     int(10)     NOT NULL,
    `first_name` varchar(30) NOT NULL,
    `last_name`  varchar(30) NOT NULL,
    `birthday`   date DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


ALTER TABLE `reserve`
    ADD PRIMARY KEY (`id`),
    ADD KEY `room_number` (`room_number`),
    ADD KEY `teacher_id` (`teacher_id`);


ALTER TABLE `room`
    ADD PRIMARY KEY (`room_number`);


ALTER TABLE `teacher`
    ADD PRIMARY KEY (`teacher_id`);


ALTER TABLE `reserve`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 11;

ALTER TABLE `reserve`
    ADD CONSTRAINT `room_number` FOREIGN KEY (`room_number`) REFERENCES `room` (`room_number`),
    ADD CONSTRAINT `teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

