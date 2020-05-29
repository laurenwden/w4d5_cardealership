CREATE TABLE "customer" (
  "customer_id" serial,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "mechanic" (
  "mechanic_id" Serial,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("mechanic_id")
);

CREATE TABLE "invoice" (
  "invoice_id" serial,
  "salesperson_id" integer,
  "customer_id" integer,
  "vin" serial,
  PRIMARY KEY ("invoice_id"),
  FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id) 
);

CREATE TABLE "salesperson" (
  "salesperson_id" serial,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("salesperson_id")
);

CREATE TABLE "service_invoice" (
  "service_ticket_id" serial,
  "service_amount" numeric(6,2),
  "vin" serial,
  "parts_id" integer,
  "car_services_id" integer,
  "mechanic_id" integer,
  PRIMARY KEY ("service_ticket_id"),
  FOREIGN KEY (parts_id) REFERENCES parts(parts_id),
  FOREIGN KEY (car_services_id) REFERENCES car_servicing(car_services_id),
  FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE "car_servicing" (
  "car_services_id" serial,
  "quantity" integer,
  "date_of" DATE,
  PRIMARY KEY ("car_services_id")
);

CREATE TABLE "cars" (
  "vin" serial,
  "is_new" BOOLEAN,
  "make" VARCHAR(100),
  "model" VARCHAR(100),
  "year" integer,
  "salesperson_id" integer,
  "customer_id" integer,
  "service_ticket_id" integer,
  PRIMARY KEY ("vin"),
  FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (service_ticket_id) REFERENCES service_invoice(service_ticket_id)
);

CREATE TABLE "parts" (
  "parts_id" serial,
  "parts_amount" numeric(6,2),
  PRIMARY KEY ("parts_id")
);

