-- https://sqlite.org/fiddle
-- Use ctrl-enter or shift-enter to execute SQL. If only a subset
-- is currently selected, only that part is executed.
.nullvalue NULL
.mode box
.tables

-- DROP TABLE data_groups;
-- DROP TABLE record_groups;

CREATE TABLE IF NOT EXISTS data_groups (
  id integer PRIMARY KEY AUTOINCREMENT,
  data_group_id integer default NULL,
  name text NOT NULL,
  schema JSON NOT NULL,
  FOREIGN KEY (data_group_id)
       REFERENCES data_groups (id)
);
PRAGMA table_info(data_groups);

CREATE TABLE IF NOT EXISTS record_groups (
  id integer PRIMARY KEY AUTOINCREMENT,
  record_group_id integer default NULL,
  data_group_id integer default NULL,
  data JSON NOT NULL,
  FOREIGN KEY (record_group_id)
       REFERENCES record_groups (id),
  FOREIGN KEY (data_group_id)
       REFERENCES data_groups (id)
);
PRAGMA table_info(record_groups);

---------------------------------
-- `data_groups` SEED
---------------------------------
INSERT INTO data_groups VALUES (
  1,
  NULL,
  'Customers',
  json('{"first_name":{"sequence_order":0,"element_label":"First Name"},"last_name":{"sequence_order":10,"element_label":"Last Name"},"email":{"sequence_order":20,"element_label":"Email Address"},"phone":{"sequence_order":30,"element_label":"Mobile Number"},"age":{"sequence_order":40,"element_label":"Age"}}')
);
INSERT INTO data_groups VALUES (
  2,
  1,
  'Site Addresses',
  json('{"country":{"sequence_order":0,"element_label":"Country"},"city":{"sequence_order":10,"element_label":"City"},"street":{"sequence_order":20,"element_label":"Street"},"house_number":{"sequence_order":30,"element_label":"Building / House No."},"postcode":{"sequence_order":40,"element_label":"Postcode"}}')
);
INSERT INTO data_groups VALUES (
  3,
  2,
  'Appliances',
  json('{"make":{"sequence_order":0,"element_label":"Appliance Make"},"model":{"sequence_order":10,"element_label":"Appliance Model"},"type":{"sequence_order":20,"element_label":"Type"}}')
);
INSERT INTO data_groups VALUES (
  4,
  2,
  'Jobs',
  json('{"description":{"sequence_order":0,"element_label":"Job Description"},"due_date":{"sequence_order":10,"element_label":"Due Date"},"status":{"sequence_order":20,"element_label":"Completion Status"},"priority":{"sequence_order":30,"element_label":"Priority"}}')
);

---------------------------------
-- `record_groups` SEED EXAMPLE
---------------------------------
INSERT INTO record_groups VALUES (
  1,
  NULL,
  1,
  json('{"first_name":"Boris","last_name":"Johnson","email":"boris@example.com","phone":"+447723355677","age":30}')
);
INSERT INTO record_groups VALUES (
  2,
  NULL,
  1,
  json('{"first_name":"Teresa","last_name":"May","email":"teresa@example.com","phone":"+447723355678","age":40}')
);
INSERT INTO record_groups VALUES (
  3,
  NULL,
  1,
  json('{"first_name":"Clement","last_name":"Attlee","email":"clement@example.com","phone":"+447723355679","age":50}')
);

-- Boris's properties
INSERT INTO record_groups VALUES (
  4,
  1,
  2,
  json('{"country":"Great Britain","city":"London","street":"Downing","house_number":"10","postcode":"WC2H 1JQ"}')
);
INSERT INTO record_groups VALUES (
  5,
  1,
  2,
  json('{"country":"Great Britain","city":"London","street":"Downing","house_number":"12","postcode":"WC2H 2JQ"}')
);
INSERT INTO record_groups VALUES (
  6,
  1,
  2,
  json('{"country":"Great Britain","city":"London","street":"Downing","house_number":"13","postcode":"WC2H 3JQ"}')
);

-- Teresa's properties
INSERT INTO record_groups VALUES (
  7,
  2,
  2,
  json('{"country":"United Kingdom","city":"Lincoln","street":"High Street","house_number":"24","postcode":"TN2 5QQ"}')
);
INSERT INTO record_groups VALUES (
  8,
  2,
  2,
  json('{"country":"United Kingdom","city":"Lincoln","street":"Church Street","house_number":"33","postcode":"TN14 7DD"}')
);


-- Clements's properties
INSERT INTO record_groups VALUES (
  9,
  3,
  2,
  json('{"country":"Isle of Man","city":"Douglas","street":"Liberty road","house_number":"2","postcode":"MM2 3AN"}')
);
INSERT INTO record_groups VALUES (
  10,
  3,
  2,
  json('{"country":"Isle of Wight","city":"Puckaster","street":"Victoria road","house_number":"343","postcode":"IS7 3WT"}')
);

-- Appliances
INSERT INTO record_groups VALUES (11,4,3,json('{"make":"Bosch","model":"SuperSpeed 10s","type":"gas"}'));
INSERT INTO record_groups VALUES (12,4,3,json('{"make":"Phillips","model":"234 s/f","type":"water"}'));
INSERT INTO record_groups VALUES (13,6,3,json('{"make":"IKEA","model":"3 series","type":"electricity"}'));
INSERT INTO record_groups VALUES (14,6,3,json('{"make":"Anton","model":"N/A","type":"water"}'));
INSERT INTO record_groups VALUES (15,7,3,json('{"make":"Bosch","model":"SuperSpeed 10s","type":"gas"}'));
INSERT INTO record_groups VALUES (16,8,3,json('{"make":"Siemens","model":"234 s/f","type":"electricity"}'));
INSERT INTO record_groups VALUES (17,9,3,json('{"make":"GasGasGas","model":"SuperSpeed 10s","type":"gas"}'));
INSERT INTO record_groups VALUES (18,9,3,json('{"make":"Philips","model":"N/A","type":"electricity"}'));
INSERT INTO record_groups VALUES (19,9,3,json('{"make":"Bosch","model":"10s","type":"gas"}'));
INSERT INTO record_groups VALUES (20,10,3,json('{"make":"Sony","model":"234 s/f","type":"water"}'));

-- Jobs
INSERT INTO record_groups VALUES (21,11,4,json('{"description":"At fault, needs replacement","due_date":"02-12-2022","status":"Pending Payment","priority":"Low"}'));
INSERT INTO record_groups VALUES (22,13,4,json('{"description":"Minor repair needed","due_date":"01-11-2022","status":"In Progress","priority":"High"}'));
INSERT INTO record_groups VALUES (23,16,4,json('{"description":"Regular check due","due_date":"06-06-2022","status":"Pending","priority":"Medium"}'));
INSERT INTO record_groups VALUES (24,16,4,json('{"description":"Visual inspection needed","due_date":"07-07-2022","status":"Approved","priority":"Low"}'));
INSERT INTO record_groups VALUES (25,18,4,json('{"description":"At fault, needs replacement","due_date":"02-09-2022","status":"Pending Payment","priority":"High"}'));
INSERT INTO record_groups VALUES (26,19,4,json('{"description":"Minor repair","due_date":"02-12-2022","status":"Done","priority":"N/A"}'));

SELECT * FROM data_groups;
SELECT * FROM record_groups;