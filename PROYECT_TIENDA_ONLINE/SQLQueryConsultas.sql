/*CONSULTAS*/
USE db_Carrito/*--->Selecciono la DB_Carrito*/

GO
/*A�ADO UN USUARIO DE PRUEBA*/
INSERT INTO USUARIOS(Nombres,Apellidos,Correo,Clave)/*Activo y reestablecer son por default al momento de este INSERT*/
VALUES ('Gaston','Ramir�z','gastrami@gmail.com','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5');/*Clave es encriptada y que no sea visualizada por un programador*/
SELECT * FROM USUARIOS

/*A�ADO ALGUNAS CATEGORIAS*/
INSERT INTO CATEGORIAS(Descripcion) VALUES ('Tecnologia'),
										   ('Muebles'),
										   ('Deportes'),
										   ('Dormitorio');
SELECT * FROM CATEGORIAS

/*A�ADO ALGUNAS MARCAS*/
INSERT INTO MARCAS (Descripcion) VALUES 
										('SONY'),
										('PHILIPS'),
										('LG'),
										('CANON'),
										('BLUESKY');
SELECT * FROM MARCAS

/*DONDE SE ENVIA EL PRODUCTO, PARA EL CLIENTE*/
INSERT INTO LOCALIDADES (IDLocalidades,Descripcion) VALUES
															  ('01','Lan�s Oeste'),
															  ('02','Avellaneda'),
															  ('03','Caballito');
SELECT * FROM LOCALIDADES 

/*PROVINCIA DE DONDE SE ENVIARA*/
INSERT INTO PROVINCIAS (IDProvincia,Descripcion,IDLocalidades) VALUES 
																      ('0101','GBA (Buenos Aires)','01'),
																	  ('0201','GBA (Buenos Aires)','02'),
																	  ('0301','Capital Federal','03');
SELECT * FROM PROVINCIAS;

/*Direcciones*/
INSERT INTO DIRECCIONES (IDDireccion,Descripcion,IDProvincia,IDLocalidades)
VALUES 
	  ('010101','Av. Hip�lito Yrigoyen 2193','0101','01'),/*IDDireccion = 01 (IDLocalidad) 01 (IDProv) 01 (IDDireccion)*/
	  ('020101','Av. Mitre 782','0201','02'), /*IDDireccion = 02 (IDLocalidad) 01 (IDProv) 01 (IDDireccion)*/
	  ('030101','Rosario 400','0301','03'), /*IDDireccion = 03 (IDLocalidad) 01 (IDProv) 01 (IDDireccion)*/
	  ('030102','Neuqu�n 1600','0302','03')
SELECT * FROM DIRECCIONES;