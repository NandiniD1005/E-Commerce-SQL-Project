USE ecommerce_db;
DELIMITER $$
DROP PROCEDURE IF EXISTS GetOrderDetails;
CREATE PROCEDURE GetOrderDetails(IN orderId INT)
BEGIN
    SELECT 
        o.order_id,
        o.order_date,
        c.full_name,
        c.email,
        p.name AS product_name,
        oi.quantity,
        oi.price,
        o.total_amount,
        pay.payment_status,
        pay.payment_method
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    JOIN payments pay ON o.order_id = pay.order_id
    WHERE o.order_id = orderId;
END$$

DELIMITER ;

DROP PROCEDURE IF EXISTS SearchProducts;
DELIMITER $$
CREATE PROCEDURE SearchProducts(IN keyword VARCHAR(100))
BEGIN
    SELECT 
        product_id,
        name,
        price,
        stock,
        description
    FROM products
    WHERE name LIKE CONCAT('%', keyword, '%')
       OR description LIKE CONCAT('%', keyword, '%');
END$$
DELIMITER ;
SHOW PROCEDURE STATUS
WHERE Db = 'ecommerce_db' AND Name = 'SearchProducts';
SHOW CREATE PROCEDURE ecommerce_db.SearchProducts ;

CALL SearchProducts('Pro');
CALL SearchProducts('Dress');
CALL SearchProducts('Earbuds');

DROP PROCEDURE IF EXISTS CustomerTotalSales;

DELIMITER $$

CREATE PROCEDURE CustomerTotalSales(IN custId INT)
BEGIN
    SELECT 
        c.full_name,
        COUNT(o.order_id) AS total_orders,
        SUM(o.total_amount) AS total_spent,
        MAX(o.order_date) AS last_order_date
    FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
    WHERE c.customer_id = custId
    GROUP BY c.customer_id;
END$$

DELIMITER ;

CALL CustomerTotalSales(1);
CALL CustomerTotalSales(2);
CALL CustomerTotalSales(3);



