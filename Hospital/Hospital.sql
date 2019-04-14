

CREATE TABLE `doctor` (
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `id` int(11) NOT NULL,
  `profession` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `company` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `nurse` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `shift` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `patient` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `prescription` (
  `medicine_id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `relative` (
  `id` int(11) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `room` (
  `room_number` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `supervision` (
  `nurse_id` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `visit` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `room_number` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `prescription`
  ADD PRIMARY KEY (`medicine_id`,`visit_id`),
  ADD KEY `c8` (`visit_id`);


ALTER TABLE `relative`
  ADD PRIMARY KEY (`id`,`patient_id`),
  ADD KEY `c3` (`patient_id`);


ALTER TABLE `room`
  ADD PRIMARY KEY (`room_number`);


ALTER TABLE `supervision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1` (`nurse_id`),
  ADD KEY `c2` (`room_number`);


ALTER TABLE `visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c4` (`doctor_id`),
  ADD KEY `c5` (`patient_id`),
  ADD KEY `c6` (`room_number`);


ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `nurse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `room`
  MODIFY `room_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `supervision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `prescription`
  ADD CONSTRAINT `c7` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`),
  ADD CONSTRAINT `c8` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`id`);


ALTER TABLE `relative`
  ADD CONSTRAINT `c3` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`);


ALTER TABLE `supervision`
  ADD CONSTRAINT `c1` FOREIGN KEY (`nurse_id`) REFERENCES `nurse` (`id`),
  ADD CONSTRAINT `c2` FOREIGN KEY (`room_number`) REFERENCES `room` (`room_number`);


ALTER TABLE `visit`
  ADD CONSTRAINT `c4` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`),
  ADD CONSTRAINT `c5` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  ADD CONSTRAINT `c6` FOREIGN KEY (`room_number`) REFERENCES `room` (`room_number`);
