/*INGRESO DE PRODUCTOS YA EXISTENTES*/
SET @INICIO = '2018-10-08 08:00:00';
SET @FIN='2018-10-08 23:00:00';
select movement_details.movement_id, documents.description, movement_details.product_id,
products.description, movement_details.cost, movement_details.quantity from movement_details 
INNER JOIN products on movement_details.product_id=products.id
INNER JOIN documents on movement_details.document_id=documents.id
where movement_details.created_at >= @INICIO and movement_details.created_at <=@FIN ;
