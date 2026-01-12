CREATE DATABASE hospital;
USE hospital;

INSERT INTO staff VALUES(101, 'Liisa', 'Virta', 'lääkäri', 'yleislääkäri', 'Uusikatu 2');
INSERT INTO staff VALUES(102, 'Ville', 'Joki', 'lääkäri', 'anestesialääkäri', 'Isokatu 4');
INSERT INTO departments VALUES('AC01', 'Sisätaudit', 'B2', 101);
INSERT INTO departments VALUES('AC02', 'Psykiatria', 'C5', 102);
INSERT INTO patients VALUES(1, 'Teppo', 'Tese', '2001-01-02', 'Kotikatu 6', '040 123 345', 'mies');
INSERT INTO patients VALUES(2, 'Joni', 'Maksa', '1996-06-09', 'Kamakatu 6', '040 321 345', 'muu');
INSERT INTO stays (admitted, id_patients, department_code, responsible_doctor) VALUES(NOW(), 1, 'AC01', 101);
INSERT INTO treatments(id_staff, id_patients, treatment_date) VALUES(102, 2, NOW());
UPDATE treatments SET treatment='Murskattiin polvilumpio.' WHERE id_treatments=1;
INSERT INTO medication VALUES(1, '9 mm', 1, 'Tarvittaessa lisäannos.', '2026-01-05', 2);
INSERT INTO appointments (id_patients, id_doctors, appointment_time) VALUES(2, 101, '2026-01-15 14:25:00');
