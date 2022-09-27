#Listado de usuarios con el rol, mostrar datos nombre, apellido y rol.
use sistematic_cutex;
select names, surnames, name FROM user inner join rol on user.rol_id= rol.id order by user.id limit 2 offset 0;

#total de paginas usuarios
select count(id) DIV 2 as pages from user;

#detalle de una factura
# 
Select i.id, i.date, i.total, c.name, di.stock, di.subtotal, p.name, p.reference
from invoice as i left join client as c on i.client_id=c.id
inner join detail_invoice as di on di.invoice_id= i.id
inner join product as p on di.product_id=p.id;

# total de productos activos
SELECT p.name as nombre,  p.stock - SUM(di.stock) as total_productos FROM product as p INNER JOIN detail_invoice as di ON di.product_id=p.id GROUP BY p.id;

#Reporte de venta de 1 dia

SELECT sum(total) as total
FROM invoice
where date = '2022-09-01';

#productos vendidos por un empleado y nombre de usuario

SELECT p.name
FROM product as p inner join user as u on p.user_id = u.id 
inner join rol as r on u.rol_id = r.id 
where u.id=4;

#Cuantos productos hay disponibles por un color de los productos que quedan disponibles 
SELECT p.stock - SUM(di.stock)  as total, c.name, p.name
FROM product as p inner join color as c on p.color_id = c.id
inner join detail_invoice as di on di.product_id = p.id 
group by p.id;










