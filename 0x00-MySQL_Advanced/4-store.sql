-- Create a trigger to decrease the quantity of an item after adding a new order
DELIMITER $$

CREATE TRIGGER decrease_quantity_after_order
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    -- Update the quantity in the items table by decreasing it by the quantity ordered
    UPDATE items
    SET quantity = quantity - NEW.quantity
    WHERE item_id = NEW.item_id;
END$$

DELIMITER ;
