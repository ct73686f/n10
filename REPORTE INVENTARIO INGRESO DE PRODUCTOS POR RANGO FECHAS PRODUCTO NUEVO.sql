SET @INICIO = '2018-10-09 08:00:00';
SET @FIN='2018-10-09 23:00:00';
SELECT inventory.id, products.description, inventory.initial FROM inventory 
INNER JOIN products on inventory.product_id=products.id
WHERE inventory.created_at >= @INICIO and inventory.created_at <=@FIN ;