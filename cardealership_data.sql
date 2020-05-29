INSERT INTO customer (
	customer_id, 
	first_name,
	last_name
)
VALUES (
	1, 
	'Joel',
	'Carter'
);
INSERT INTO customer (
	customer_id, 
	first_name,
	last_name
)
VALUES (
	2, 
	'Ripal',
	'Patel'
);
INSERT INTO customer (
	customer_id, 
	first_name,
	last_name
)
VALUES (
	3, 
	'Lauren',
	'Weber'
);
INSERT INTO salesperson (
	salesperson_id, 
	first_name,
	last_name
)
VALUES (
	1, 
	'Celeste',
	'Barrios'
);
INSERT INTO salesperson (
	salesperson_id, 
	first_name,
	last_name
)
VALUES (
	2, 
	'Jack',
	'Nolan'
);
INSERT INTO mechanic (
	mechanic_id, 
	first_name,
	last_name
)
VALUES (
	1, 
	'Jackie',
	'Holtsnider'
);
INSERT INTO mechanic (
	mechanic_id, 
	first_name,
	last_name
)
VALUES (
	2, 
	'Aaron',
	'A.'
);
INSERT INTO parts (
	parts_id, 
	parts_amount
)
VALUES (
	345678, 
	5.00
);
INSERT INTO parts (
	parts_id, 
	parts_amount
)
VALUES (
	876543, 
	99.00
);
INSERT INTO car_servicing (
	car_services_id, 
	quantity,
	date_of
)
VALUES (
	4455, 
	1,
	'05/29/2020'
);
INSERT INTO car_servicing (
	car_services_id, 
	quantity,
	date_of
)
VALUES (
	6677, 
	1,
	'06/01/2020'
);
INSERT INTO cars (
	vin, 
	is_new,
	make,
	model,
	year,
	salesperson_id,
	customer_id,
	service_ticket_id
)
VALUES (
	001122334455, 
	TRUE,
	'Tesla',
	'S',
	2020,
	1,
	1,
	NULL
);
INSERT INTO cars (
	vin, 
	is_new,
	make,
	model,
	year,
	salesperson_id,
	customer_id,
	service_ticket_id
)
VALUES (
	001122334454, 
	TRUE,
	'Tesla',
	'Roadster',
	2019,
	2,
	2,
	NULL
);
INSERT INTO cars (
	vin, 
	is_new,
	make,
	model,
	year,
	salesperson_id,
	customer_id,
	service_ticket_id
)
VALUES (
	001122334456,
	FALSE,
	'Land Rover',
	'Discovery',
	1967,
	2,
	3,
	NULL
);
INSERT INTO service_invoice (
	service_ticket_id,
	service_amount,
	vin,
	parts_id,
	car_services_id,
	mechanic_id
)
VALUES (
	1,
	0.00,
	001122334456,
	345678,
	6677,
	2
);
INSERT INTO service_invoice (
	service_ticket_id,
	service_amount,
	vin,
	parts_id,
	car_services_id,
	mechanic_id
)
VALUES (
	2,
	0.00,
	001122334456,
	345678,
	4455,
	1
);
INSERT INTO invoice (
	invoice_id,
	salesperson_id,
	customer_id,
	vin
)
VALUES (
	1,
	1,
	1,
	001122334455
);
INSERT INTO invoice (
	invoice_id,
	salesperson_id,
	customer_id,
	vin
)
VALUES (
	2,
	2,
	2,
	001122334454
);

UPDATE cars
SET service_ticket_id = 1
WHERE vin = 001122334456;

SELECT *
FROM cars

ALTER TABLE invoice
ADD amount numeric(8, 2);

UPDATE invoice
SET amount = 99000.00
WHERE invoice_id = 1

UPDATE invoice
SET amount = 88000.00
WHERE invoice_id = 2

SELECT * 
FROM invoice

ALTER TABLE car_servicing
ADD service varchar(100);

ALTER TABLE car_servicing
ADD amount numeric(8, 2);

SELECT *
FROM car_servicing

UPDATE car_servicing
SET service = 'Oil change'
WHERE car_services_id = 4455;

UPDATE car_servicing
SET service = 'Tires rotation'
WHERE car_services_id = 6677;

UPDATE car_servicing
SET amount = 30.00
WHERE car_services_id = 4455;

UPDATE car_servicing
SET amount = 50.00
WHERE car_services_id = 6677;

