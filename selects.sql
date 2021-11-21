SELECT operationId, sum, operationDate FROM `operations` WHERE sum BETWEEN 0.1 AND 150; 

SELECT firstName FROM `clients` WHERE phoneNumber IN ('375123456789', '375123456780');


SELECT firstName FROM `clients` WHERE firstName LIKE '%dick%' LIMIT 1;

SELECT fullName FROM `employees` WHERE position = 'Clean master';


SELECT name, price, description, discount, (price-discount) AS currentPrice FROM `products` WHERE name = 'ukulele'
ORDER BY currentPrice;



-- Lab 5
 SELECT name, COUNT(*) FROM `products` GROUP BY name;

 
SELECT 
    productId,
    (SELECT name FROM products WHERE products.productId = operations.productId) AS name,
    (SELECT description FROM products WHERE products.productId = operations.productId) AS description
FROM operations WHERE 
    employeePassport = 'HB3000002' 
ORDER BY sum DESC LIMIT 1;

SELECT 
    (SELECT firstName FROM clients WHERE clients.phoneNumber = operations.clientPhone) AS clientName, 
    clientPhone, 
    sum,
    productId,
    operationDate 
FROM operations WHERE 
    shopUNP = 'S9DRG23C3'
     AND 
    operationDate >= '2021-09-01' AND operationDate < '2021-10-01'
ORDER BY clientName;