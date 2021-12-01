
-- Black Friday

UPDATE `products`
    SET discount = '0.03'
WHERE
    discount IS NULL OR discount = '0.00';


UPDATE `supplies`
    SET date = date + INTERVAL 7 DAY
WHERE
    supplier = 'Allen Organ Company'
    AND
    date >= CURDATE();