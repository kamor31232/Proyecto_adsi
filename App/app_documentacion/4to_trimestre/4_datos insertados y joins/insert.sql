use sistematic_cutex;

# inserción tabla document_type
 INSERT INTO document_type (name, acronym)
 VALUES 
('Cédula de ciudadania', 'C.C'),
('Cédula de extrangería', 'C.E'),
('Pasaporte', 'P.A');

select * from document_type;

# inserción tabla rol
 INSERT INTO rol (name)
 VALUES 
('Administrador'),
('Auxiliar de Bodega'),
('Vendedor');
select * from rol;

# inserción tabla color
 INSERT INTO color (name, color_code)
 VALUES 
('Negro', '#000000' ),
('Café', '#3F2212' ),
('Mostaza', '#FFDB58' ),
('Vinotinto', '#820000' ),
('Amarillo', '#eeb600' ),
('Azul', '	#003153' ),
('Morado', '#800080' ),
('Palo de rosa', '#DD969C' ),
('Beige', '#E8C39E' ),
('Verde', '#009D71' );

select * from color;

# inserción tabla category
INSERT INTO category (name)
VALUES
('Hombre'),
('Mujer'),
('Pieles');

select * from category;

# inserción tabla subcategory
INSERT INTO subcategory (name,category_id)
VALUES
('Bolsos', 1),('Correas', 1),('Billeteras', 1),
('Bolsos', 2),('Correas', 2),('Billeteras', 2),
('Grabadas', 3),('lisas', 3);
select * from subcategory;

  #Insercion tabla company
INSERT INTO company (name, nit, owner_name, date_fundation, address, email, cellphone)
VALUES
('Peleteria Cuero y Color', '10836758493', 'Yaneth Ortiz', '2000-01-16', 'Cra 12 # 22-74 Bogotá D.C', 'peleteriacueroycolor@gmail.com', '3133525077'),
('Peleteria Pieles', '10836758448', 'Rodrigo Jurado', '2013-11-24', 'Cra 24 # 12-56 Bogotá D.C', 'peleteriapielesr@gmail.com', '3124531256');
select * from company;


  #Insercion tabla provider
INSERT INTO provider (business_name, admin_name, cellphone, email, address)
VALUES
('Bolsos Bag', 'Andres Ortiz', '3214568974', 'bolsosbag@gmail.com', 'Calle 45 # 45-98 Bogotá D.C'),
('Bolsos Pedraza', 'Carolina Pedraza', '3125689741', 'todocuero@gmail.com', 'Cra 45 # 12-03 Bogotá D.C'),
('Billeteras Salhur', 'Salomón Hurtado', '3125687941', 'industria@gmail.com', 'Av 12 # 18-23 Bogotá D.C'),
('El mundo de las billeteras', 'Erika Gonzales', '31356289565', 'mundobilleteras@gmail.com', 'Calle 12 # 45-23 Bogotá D.C'),
('Correas JC', 'Julian Ordoñez', '3125681234', 'juliano@gmail.com', 'Cra 78 # 45-12 Bogotá D.C'),
('Surti correas', 'Sandra Peña', '3135689445', 'surticorreas@gmail.com', 'Av 12 # 89-23 Bogotá D.C'),
('Expopiel', 'Santiago Alarcon', '3124315628', 'axpopiel@gmail.com', 'Cra 10 # 02-23 Bogotá D.C'),
('Piles y colores', 'Elena Cuña', '3125648957', 'pielycolores@gmail.com', 'Calle 32 # 45-23 Bogotá D.C');
select * from provider;

#Insertar datos a la tabla user
INSERT INTO user (names, surnames, document_number, address, email, password, cellphone, document_type_id, rol_id, company_id)
VALUES
#Administradores
('Camilo', 'Hernandez', '1056894123', 'Cra 23 # 12-03 Bogotá D.C', 'camiloh@gmail.com', SHA1('admincamilo'),'3135689472',1,1,1),
('Andres Camilo', 'Montenegro Estupiñan', '102356894', 'Calle 4 # 67-90 Bogotá D.C', 'andresc@gmail.com',SHA1('adminandres'), '3214568974', 2,1,1),
('Katalina', 'Zuluaga', '102568947', 'Cra 12 # 56-12 Bogotá D.C', 'katalinaz@gmail.com', SHA1('adminkatalina'), '3125689745',3,1,1),
#Auxiliares de bodega
('Sebastian', 'Ortiz Camargo', '2356985456', 'Calle 4 # 67-90 Bogotá D.C', 'sebastiano@gmail.com', SHA1('auxsebastian'), '3568947562',1,2,1),
('Isabella', 'Hurtado Cabal', '45689235568', 'Cra 12 # 45-69 Bogotá D.C', 'isabellah@gmail.com',SHA1('auxisabella'), '3135628947', 2,2,1),
('Carlos', 'Molina', '1236589', 'Av 78 # 56-45 Bogotá D.C', 'carlosm@gmail.com', SHA1('auxcarlos'), '3124562389',3,2,1),
#Vendedores
('Elena', 'Aristizabal Carlozama', '4569871235', 'Cra 4 # 45-90 Bogotá D.C', 'elenaacar@gmail.com', SHA1('vendelena'), '3125684975',1,3,1),
('Sara', 'Paladines ', '1083814235', 'Av 89 # 47-12 Bogotá D.C', 'sarap@gmail.com',SHA1('vendsara'), '3124314569', 2,3,1),
('Michell', 'Ordoñez', '10044152365', 'Calle 56 # 24-12 Bogotá D.C', 'michelor@gmail.com', SHA1('vendmichell'), '3134158965',3,3,1);

#Insercion tabla product
INSERT INTO product (name, reference, description, stock, price,measure, company_id, provider_id, color_id, subcategory_id, user_id)
VALUES
#HOMBRE
#Billeteras caballero , provedor id= 3, 1,2,3 para colores id : 1,2 ,3  subcateg 3 aux id=4 y 5
('Billetera porta billetes', '001', 'Billetera que contiene click para porta billetes', 25, 18000,0, 1,3,1,3,4),
('Billetera con costuras', '002', 'Billetera que contiene visiblemente las costuras combinadas en el cuero', 23, 25000,0, 1,3,2,3,4),
('Billetera sin costuras', '003', 'Billetera que no contiene las costuras combinadas en el cuero', 30, 30000,0, 1,3,3,3,5),
#Billeteras caballero , provedor id= 4, para colores id: 4, 9, 6 subcateg3 aux id= 5 y 6
('Billetera porta billetes', '004', 'Billetera que contiene click para porta billetes', 10, 15000,0, 1,4,4,3,5),
('Billetera con costuras', '005', 'Billetera que contiene visiblemente las costuras combinadas en el cuero', 23, 20000,0, 1,4,9,3,6),
('Billetera sin costuras', '006', 'Billetera que no contiene las costuras combinadas en el cuero', 12, 28000,0, 1,4,6,3,6),
#Bolsos caballero , provedor id= 1 para colores id : 1,2 ,3  subcateg 1 aux id= 4 y 5
('Bolso grande', '007', 'Bolso de 60 cm de ancho por 80 cm de alto', 23, 160000,0, 1,1,1,1,4),
('Bolso mediano', '008', 'Bolso de 40cm de ancho por 35cm de alto', 25, 100000,0, 1,1,2,1,4),
('Bolso pequeño', '009', 'Bolso de 20cm de ancho por 25cm de alto', 30, 68000,0, 1,1,3,1,5),
#Bolsos caballero , provedor id= 2 para colores id : 4,9 ,6  subcateg 1 aux id= 5 y 6
('Bolso grande', '0010', 'Bolso de 60 cm de ancho por 80 cm de alto', 40, 165000,0, 1,2,4,1,5),
('Bolso mediano', '0011', 'Bolso de 40cm de ancho por 35cm de alto', 28, 110000,0, 1,2,9,1,6),
('Bolso pequeño', '0012', 'Bolso de 20cm de ancho por 25cm de alto', 32, 78000,0, 1,2,6,1,6),
#Correas caballero , provedor id= 5 para colores id : 1,2 ,3  subcateg 2 aux id= 4 y 5
('correa caballero doble faz','0013', 'Correa de cuero para caballero doble color con negro de base', 15, 25000,0, 1,5,2,2,4),
('correa caballero marcas ','0014', 'Correa de cuero para caballero marcas', 20, 30000,0, 1,5,1,2,4),
('correa caballero evilla','0015', 'Correa de cuero para caballero evilla', 10, 20000,0, 1,5,3,2,5),
#Correas caballero , provedor id= 6 para colores id : 4,9,10  subcateg 2 aux id= 5 y 6
('correa caballero doble faz','0016', 'Correa de cuero para caballero doble color con negro de base', 20, 20000,0,1,6,4,2,5),
('correa caballero marcas ','0017', 'Correa de cuero para caballero marcas', 12, 35000,0, 1,6,9,2,6),
('correa caballero evilla','0018', 'Correa de cuero para caballero evilla', 8, 25000,0, 1,6,10,2,6),
#MUJER 
#Billeteras mujer , proveedor id= 3 para colores id : 1,2 ,3  categ 6 aux id=4 y 5
('Billetera una cremallera', '0019', 'Billetera que contiene una cremallera', 10, 15000,0, 1,3,1,6,4),
('Billetera dos cremalleras', '0020', 'Billetera que contiene dos cremalleras', 15, 25000,0, 1,3,2,6,4),
('Billetera broches', '0021', 'Billetera que no contiene cremallera , solo broche', 23, 12000,0, 1,3,3,6,5),
#Billeteras mujer , proveedor id= 4 para colores id: 7,8,9 categ 6  aux id= 5 y 6
('Billetera una cremallera', '0022', 'Billetera que contiene una cremallera', 12, 18000,0, 1,4,7,6,5),
('Billetera dos cremalleras', '0023', 'Billetera que contiene dos cremalleras', 25, 22000,0, 1,4,8,6,6),
('Billetera broches', '0024', 'Billetera que no contiene cremallera , solo broche', 15, 16000,0, 1,4,9,6,6),
#Bolsos mujer , provedor id= 1 para colores id : 1,2 ,3  subcateg 4 aux id=4 y 5
('Bolso grande', '0025', 'Bolso de 60 cm de ancho por 80 cm de alto', 21, 160000,0, 1,1,1,4,4),
('Bolso mediano', '0026', 'Bolso de 40cm de ancho por 35cm de alto', 25, 100000,0, 1,1,2,4,4),
('Bolso pequeño', '0027', 'Bolso de 20cm de ancho por 25cm de alto', 30, 68000,0, 1,1,3,4,5),
#Bolsos mujer , provedor id= 2 para colores id : 8,7 ,6  subcateg 4 aux id= 5 y 6
('Bolso grande', '0028', 'Bolso de 60 cm de ancho por 80 cm de alto', 23, 165000,0,1,2,8,4,5),
('Bolso mediano', '0029', 'Bolso de 40cm de ancho por 35cm de alto', 28, 110000,0,1,2,7,4,6),
('Bolso pequeño', '0030', 'Bolso de 20cm de ancho por 25cm de alto', 35, 78000,0,1,2,6,4,6),
#Correas dama , provedor id= 5 para colores id : 1,2 ,3  subcateg 5 aux id= 4 y 5
('correa dama doble faz','0031', 'Correa de cuero para dama doble color con negro de base', 15, 20000,0, 1,5,2,5,4),
('correa dama delgada ','0032', 'Correa dama delgada de 2cm de grosor', 20, 15000,0, 1,5,1,5,4),
('correa dama gruesa','0033', 'Correa dama gruesa de 5 cm de grosor', 10, 18000,0, 1,5,3,5,5),
#Correas dama , provedor id= 6 para colores id : 8,7,6  subcateg 5 aux id= 5 y 6
('correa dama doble faz','0034', 'Correa de cuero para dama doble color con negro de base', 20, 20000,0, 1,6,8,5,5),
('correa dama delgada ','0035', 'Correa dama delgada de 2cm de grosor', 12, 15000,0, 1,6,7,5,6),
('correa dama gruesa','0036', 'Correa dama gruesa de 5 cm de grosor', 8, 18000,0, 1,6,6,5,6),
#PIELES
#PIELES , provedor id= 7 para colores id : 1,2 ,3, 4 ,5   subcateg 7 aux id= 4 y 5
('piel grabada ','0037', 'piel con grabados y formas', 45, 750,1,1,7,1,7,4),
('piel grabada ','0038', 'piel con grabados y formas', 30, 750,1,1,7,2,7,4),
('piel grabada ','0039', 'piel con grabados y formas', 25, 750,1,1,7,3,7,4),
('piel grabada ','0040', 'piel con grabados y formas', 32, 750,1,1,7,4,7,5),
('piel grabada ','0041', 'piel con grabados y formas', 20, 750,1,1,7,5,7,5),
#PIELES , provedor id= 8  para colores id : 6, 7, 8, 9 10  subcateg 8 aux id= 5 Y 6
('piel lisa ','0042', 'piel lisa de colores', 30, 550,1,1,8,6,8,5),
('piel lisa ','0043', 'piel lisa de colores', 28, 550,1,1,8,7,8,6),
('piel lisa ','0044', 'piel lisa de colores', 32, 550,1,1,8,8,8,6),
('piel lisa ','0045', 'piel lisa de colores', 30, 550,1,1,8,9,8,6),
('piel lisa ','0046', 'piel lisa de colores', 20, 550,1,1,8,10,8,6);
 select * from product;
#Insertar datos a la tabla cliente (client)
INSERT INTO client (name, surname, cellphone, email, address)
VALUES
('Diana','Gomez','','',''),
('Dora','Lopez','3125684975','',''),
('Rodolfo','','','rodolfo@gmail.com',''),
('Bairon','','','bairon@gmail.com',''),
('Marta','','','',''),
('Fausto','','3125684975','',''),
('Sergio','','','sergio@gmail.com',''),
('Karen','','','karen@gmail.com',''),
('Elena','','','',''),
('Leonidas','Lopez','3125684975','',''),
('Maura','','','maura@gmail.com',''),
('Rodrigo','','','rodrigo@gmail.com',''),
('Octavio','','','',''),
('Camilo','','','','');
#Insertar datos a la tabla factura (invoice)
INSERT INTO invoice (date, hour, total, user_id, client_id)
VALUES
#ventas del 1 sep 2022 , rol : 3 id usuarios: 7,8 9  FACTURAS 1-2-3
('2022-09-01', '8:30:15', 130000,7,1),
('2022-09-01', '10:26:15', 350000,8,2),
('2022-09-01', '14:10:15', 48000,9,3),
#ventas del 2 sep 2022 , rol : 3 id usuarios: 7,8 9  FACTURAS 4-5-6
('2022-09-02', '9:26:15', 69000,7,4),
('2022-09-02', '11:26:15', 36000,8,5),
('2022-09-02', '15:26:15', 264000,9,6),
#ventas del 3 sep 2022 , rol : 3 id usuarios: 7,8 9 FACTURAS 7 8 9
('2022-09-03', '10:26:15', 116000,7,7),
('2022-09-03', '12:26:15', 200000,8,8),
('2022-09-03', '14:26:15', 195000,9,9),
#ventas del 4 sep 2022 , rol : 3 id usuarios: 10  11  12  13  14
('2022-09-04', '9:26:15', 56000,7,10),
('2022-09-04', '11:26:15', 119000,8,11),
('2022-09-04', '12:26:15', 41000,9,12),
('2022-09-04', '14:26:15', 38500,7,13),
('2022-09-04', '15:26:15', 105000,8,14);
select * from client;
#Insertar datos en detalle de factura (detail_invoice)
INSERT INTO detail_invoice (price, stock, subtotal , invoice_id, product_id)
VALUES
#Para fact 1
(30000, 3, 90000 ,1,3),
(20000, 2, 40000 ,1,31),
#Para fact 2
(160000, 1, 160000 ,2,7),
(160000, 1, 160000 ,2,25),
(15000, 2, 30000 ,2,19),
#Para fact 3
(16000, 3, 48000 ,3,24),
#Para fact 4
(750, 60, 45000 ,4,12),
(550, 45, 24000 ,4,13),
#Para fact 5
(18000, 2, 36000 ,5,36),
#Para fact 6
(110000, 2, 220000 ,6,29),
(18000, 3, 44000 ,6,33),
#Para fact 7
(68000, 1, 68000 ,7,9),
(30000, 2, 30000 ,7,35),
(18000, 1, 18000 ,7,1),
#Para fact 8
(20000, 10, 200000 ,8,15),
#Para fact 9
(165000, 1, 165000 ,9,10),
(20000, 2, 40000 ,9,5), 
#Para fact 10
(28000, 2, 56000 ,10,6),
#Para fact 11
(25000, 3, 75000 ,11,20),
(22000, 2, 44000 ,11,23), 
#Para fact 12
(15000, 1, 15000 ,12,4),
(18000, 2, 36000 ,12,22),
#Para fact 13
(550, 70, 38500 ,13,2),
#Para fact 14
(35000, 3, 105000 ,14,17);






