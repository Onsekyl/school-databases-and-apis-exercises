USE hospital;

SELECT * FROM staff;
SELECT * FROM departments;
SELECT * FROM patients;
SELECT * FROM stays;
SELECT NOW();
SELECT * FROM treatments;
SELECT * FROM medication;
SELECT name, date_format(time_period, "%d.%m.%y") AS vaikutusaika FROM medication;
SELECT * FROM appointments;
