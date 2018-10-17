SELECT products.id, products.description, categories.description, inventory.current, costs.unit_cost, costs.unit_price, (inventory.current*costs.unit_cost) as TOTAL
FROM inventario.products 
INNER JOIN inventory on products.id=inventory.product_id
INNER JOIN costs on products.id=costs.product_id
INNER JOIN product_category on products.id=product_category.product_id
INNER JOIN categories on product_category.category_id=categories.id
where inventory.current>0;

