SELECT operationId, sum, operationDate FROM `operations` WHERE sum BETWEEN 0.1 AND 150; 

SELECT firstName FROM `clients` WHERE phoneNumber IN ('375123456789', '375123456780');


SELECT firstName FROM `clients` WHERE firstName LIKE '%dick%' LIMIT 1;

SELECT fullName FROM `employees` WHERE position = 'Clean master';


SELECT name, price, description, discount, (price-discount) AS currentPrice FROM `products` WHERE name = 'ukulele'
ORDER BY currentPrice;