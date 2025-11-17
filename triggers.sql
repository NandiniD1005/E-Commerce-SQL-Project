USE ecommerce_db;

DROP TRIGGER IF EXISTS reduce_stock_after_order;

DELIMITER $$

CREATE TRIGGER reduce_stock_after_order
AFTER INSERT ON order_items
FOR EACH ROW
BEGIN
    UPDATE products
    SET stock = stock - NEW.quantity
    WHERE product_id = NEW.product_id;
END$$

DELIMITER ;

