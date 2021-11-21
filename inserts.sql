
INSERT INTO
  `music-shop` (UNP, address)
VALUES
  ('S9DRG23C3', 'Nezavisimosty 55'),
  ('HSXTMJ52B', 'Logoysky trakt 15'),
  ('QB8TU2C7X', 'Nezavisimosty 93'),
  ('3A78UQRPA', 'Nezavisimosty 58'),
  ('DMQXC9Q45', 'Logoysky trakt 22');
SELECT
  *
FROM
  `music-shop`;

INSERT INTO 
  `employees` (passport, position, fullName, shopUNP)
VALUES
  ('HB3000000', 'Owner', 'Grigory Konoplich', 'S9DRG23C3'),
  ('HB3000002', 'Consultant', 'Ananas', '3A78UQRPA'),
  ('HB3000003', 'Packer', 'Graham Coxon', 'S9DRG23C3'),
  ('HB3000001', 'Clean master', 'Alexey Grigarovich', 'S9DRG23C3');
SELECT
  *
FROM
  `employees`;

INSERT INTO
  `clients` (phoneNumber, firstName)
VALUES
  ('375123456789', 'Grigory'),
  ('375123453489', 'Marina'),
  ('375126786780', 'Alexey'),
  ('375123456389', 'Danik'),
  ('375122346780', 'Ananas'),
  ('375987956780', 'Vladick');
SELECT
  *
FROM
  `clients`;

INSERT INTO
  `supplies` (supplier, date)
VALUES
  ('Wooden Musical Instrument Model Gift', CURDATE()),
  ('Allen Organ Company', CURDATE()),
  ('Premier Promotions USA', CURDATE()),
  ('Allen Organ Company', CURDATE());
SELECT
  *
FROM
  `supplies`;
INSERT INTO
  `products` (productId, supplyId, price, name, description, discount)
VALUES
  (1, 1, 127.80, "acoustic guitar", "The best mahogany guitar", 0.00),
  (2, 2, 3.45, "mediator", "Mediator 0.8 mm", 0.00),
  (3, 1, 52, "ukulele", "Cheap ukulele", 3.50),
  (4, 2, 68.50, "ukulele", "Expensive ukulele", 30.10);
SELECT
  *
FROM
  `products`;

INSERT INTO 
  `operations` (operationDate, sum, productId, employeePassport, clientPhone, shopUNP)
VALUES
  ('2021-09-24 12:34:02', 127.80, 1, 'HB3000000', '375123456789', 'S9DRG23C3'),
  ('2021-09-24 12:34:02', 3.45, 2, 'HB3000002', '375123456389', 'S9DRG23C3'),
  ('2021-09-24 12:34:02', 38.40, 4, 'HB3000000', '375123456789', 'S9DRG23C3'),
  ('2021-10-24 12:34:02', 68.50, 4, 'HB3000002', '375123456789', 'S9DRG23C3'),
  ('2021-09-24 12:34:02', 127.80, 1, 'HB3000000', '375123456789', 'S9DRG23C3'),
  ('2021-09-24 12:34:02', 48.50, 3, 'HB3000001', '375123456389', 'S9DRG23C3'),
  ('2021-09-24 12:34:02', 52, 3, 'HB3000002', '375123456789', 'S9DRG23C3'),
  ('2021-09-24 12:34:02', 3.45, 2, 'HB3000001', '375123456389', 'S9DRG23C3'),
  ('2021-09-24 12:34:02', 127.80, 1, 'HB3000002', '375123456789', 'S9DRG23C3'),
  ('2021-09-24 12:34:02', 3.45, 2, 'HB3000001', '375123456389', 'S9DRG23C3');
SELECT
  *
FROM
  `operations`;