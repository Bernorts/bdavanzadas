--------------------------------------------------------
-- Archivo creado  - viernes-febrero-16-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for DB Link ANTEA.QRO.ITESM.MX
--------------------------------------------------------

  CREATE DATABASE LINK ANTEA.QRO.ITESM.MX
   CONNECT TO A1209023 IDENTIFIED BY VALUES '06212D88B268157E0C31AE1F605BA3FC0A138C2134D2314E8AD8382B509F66C62CC510F031CED8ADD92B87B897C18B082C28B5BB1586CC18BB059B0D3439748FAE095ACF34F28419A9B1F09A3E835ECCAD6AA36E5F87E218682421BBC77F5D351DA4D38073B85F423AEB775DDF2224F6084BE3869B4BB0EF3820715833AB7E82'
   USING 'qro';
--------------------------------------------------------
--  DDL for DB Link BETA.QRO.ITESM.MX
--------------------------------------------------------

  CREATE DATABASE LINK BETA.QRO.ITESM.MX
   CONNECT TO A1204805 IDENTIFIED BY VALUES '06302D45AF6BB05A6F0D33C44052D79446962E0968B006008FC2EADB343A149EC84F2B08CFDA07241C1F8ACC2A1E8C23DF485384E8BF77293AE3A016DCDE0D00E0D21749DE1D2A90608D37B86EF106563FB95913ECD73F65F33271A8F2EFABFF473BABD3A094F004DA7E40A098C63B5366BEA278C2EFB4B81DF40CB7897FCE27'
   USING 'slp';
--------------------------------------------------------
--  DDL for DB Link BULE.QRO.ITESM.MX
--------------------------------------------------------

  CREATE DATABASE LINK BULE.QRO.ITESM.MX
   CONNECT TO A1205935 IDENTIFIED BY VALUES '06D600B5F4AD33F4C63E0458CF8899CB9DBF629C02E3160878472D542151244CC828A6289FA6D3F427FF1C2CFDD39042E210398259897BAAE8B36E2B5008AF28ABB56B82D47E8291DD4CBB33C6D853D47251639FAADFAB6E957EBF8610332A99CC0C4CCF0164C8E5B8D14EFFF8539F24B8A9202C0B7BD0389C16D89A1B7C7274'
   USING 'qro';
--------------------------------------------------------
--  DDL for DB Link DIST.QRO.ITESM.MX
--------------------------------------------------------

  CREATE DATABASE LINK DIST.QRO.ITESM.MX
   CONNECT TO A1209023 IDENTIFIED BY VALUES '069B44F5E49CE57F980815933E9CC1EC69CDA75CE26073E28D69BC98A31F2BDF65833565AB9C12A432A38E0C2DFFD7A80489D365199724555B86EF9BC9222FD17D6A0F002A9E5F88115E025778CF4B659A235F8E083B0C590254B2129001A23001C6AF10018AFFD75585285C0174AF58F47D476B1752D7334C22351B01E3101F'
   USING 'slp';
--------------------------------------------------------
--  DDL for Sequence PROY_CLIENTE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  A1204805.PROY_CLIENTE_SEQ  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_CONSOLA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  A1204805.PROY_CONSOLA_SEQ  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_CONSOLA_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  A1204805.PROY_CONSOLA_SEQ1  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_EMPLEADO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  A1204805.PROY_EMPLEADO_SEQ  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_PRODUCTO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  A1204805.PROY_PRODUCTO_SEQ  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_PRODUCTO_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  A1204805.PROY_PRODUCTO_SEQ1  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_SUCURSAL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  A1204805.PROY_SUCURSAL_SEQ  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_TRANSACCION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  A1204805.PROY_TRANSACCION_SEQ  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_VIDEOJUEGO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  A1204805.PROY_VIDEOJUEGO_SEQ  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_VIDEOJUEGO_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  A1204805.PROY_VIDEOJUEGO_SEQ1  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table PROY_CLIENTE
--------------------------------------------------------

  CREATE TABLE A1204805.PROY_CLIENTE 
   (	IDCLIENTE NUMBER, 
	NOMBRE VARCHAR2(512 BYTE), 
	APELLIDOS VARCHAR2(512 BYTE), 
	DIRECCION VARCHAR2(512 BYTE), 
	CIUDAD VARCHAR2(512 BYTE), 
	ESTADO VARCHAR2(512 BYTE), 
	TELEFONO VARCHAR2(512 BYTE), 
	EMAIL VARCHAR2(512 BYTE), 
	FECHAREGISTRO DATE, 
	SALDO NUMBER(7,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Table PROY_CONSOLA
--------------------------------------------------------

  CREATE TABLE A1204805.PROY_CONSOLA 
   (	IDPRODUCTO NUMBER, 
	EMPRESA VARCHAR2(512 BYTE), 
	ALMACENAMIENTO VARCHAR2(512 BYTE), 
	ACCESORIOS VARCHAR2(512 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Table PROY_EMPLEADO
--------------------------------------------------------

  CREATE TABLE A1204805.PROY_EMPLEADO 
   (	IDEMPLEADO NUMBER, 
	IDSUCURSAL NUMBER, 
	NOMBRE VARCHAR2(512 BYTE), 
	APELLIDOS VARCHAR2(512 BYTE), 
	DIRECCION VARCHAR2(512 BYTE), 
	TELEFONO VARCHAR2(512 BYTE), 
	EMAIL VARCHAR2(512 BYTE), 
	FECHAREGISTRO DATE, 
	PUESTO VARCHAR2(512 BYTE), 
	SALARIO NUMBER(7,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Table PROY_PRODUCTO
--------------------------------------------------------

  CREATE TABLE A1204805.PROY_PRODUCTO 
   (	IDPRODUCTO NUMBER, 
	IDSUCURSAL NUMBER, 
	NOMBRE VARCHAR2(512 BYTE), 
	DESCRIPCION VARCHAR2(512 BYTE), 
	FECHALANZAMIENTO DATE, 
	ESTADO VARCHAR2(512 BYTE) DEFAULT 'Nuevo', 
	DISPONIBLE NUMBER(2,0), 
	PRECIOVENTA NUMBER(6,2), 
	DESCUENTO NUMBER(6,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Table PROY_SUCURSAL
--------------------------------------------------------

  CREATE TABLE A1204805.PROY_SUCURSAL 
   (	IDSUCURSAL NUMBER, 
	DIRECCION VARCHAR2(512 BYTE), 
	CIUDAD VARCHAR2(20 BYTE), 
	ESTADO VARCHAR2(20 BYTE), 
	TELEFONO VARCHAR2(20 BYTE), 
	NOMBRE VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Table PROY_TRANSACCION
--------------------------------------------------------

  CREATE TABLE A1204805.PROY_TRANSACCION 
   (	IDTRANSACCION NUMBER, 
	IDPRODUCTO NUMBER, 
	IDCLIENTE NUMBER, 
	IDEMPLEADO NUMBER, 
	TIPO VARCHAR2(512 BYTE), 
	MONTO NUMBER(6,2), 
	FECHA DATE, 
	METODOPAGO VARCHAR2(512 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Table PROY_VIDEOJUEGO
--------------------------------------------------------

  CREATE TABLE A1204805.PROY_VIDEOJUEGO 
   (	IDPRODUCTO NUMBER, 
	RATING NUMBER, 
	CLASIFICACION VARCHAR2(512 BYTE), 
	GENERO VARCHAR2(512 BYTE), 
	DESARROLLADOR VARCHAR2(512 BYTE), 
	JUGADORES VARCHAR2(512 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for View PROY_CONSOLAMASVENDIDA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW A1204805.PROY_CONSOLAMASVENDIDA (NOMBRE) AS 
  SELECT nombre
FROM (SELECT nombre, sum(contadorSucursal) as contadorGlobal
FROM ((SELECT nombre, count() as contadorSucursal
FROM proy_producto, proy_consola, proy_transaccion
Where  proy_producto.idproducto = proy_consola.idproducto and proy_producto.idproducto = proy_transaccion.idproducto
group by proy_producto.nombre)

UNION

(SELECT nombre, count() as contadorSucursal
FROM proy_producto@bule, proy_consola@bule, proy_transaccion@bule
Where  proy_producto.idproducto = proy_consola.idproducto and proy_producto.idproducto = proy_transaccion.idproducto
group by proy_producto.nombre)

UNION

(SELECT nombre, count() as contadorSucursal
FROM proy_producto@antea, proy_consola@antea, proy_transaccion@antea
Where  proy_producto.idproducto = proy_consola.idproducto and proy_producto.idproducto = proy_transaccion.idproducto
group by proy_producto.nombre))
group by nombre 
order by contadorGlobal desc)
WHERE rownum = 1
;
--------------------------------------------------------
--  DDL for View PROY_CONSOLAS_GLOBALES_TOTALES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL, CIUDAD, NOMBRE, IDPRODUCTO, Producto, ALMACENAMIENTO) AS 
  (SELECT su.idSucursal ,su.ciudad,su.nombre ,pro.idProducto ,pro.nombre as Producto  ,co.almacenamiento
FROM proy_sucursal su, proy_producto pro, proy_consola co
WHERE pro.idProducto=co.idProducto
and su.idSucursal=pro.idsucursal)
UNION
(SELECT su.idSucursal ,su.ciudad,su.nombre ,pro.idProducto ,pro.nombre as Producto,co.almacenamiento
FROM proy_sucursal@antea su, proy_producto@antea pro, proy_consola@antea co
WHERE pro.idProducto=co.idProducto
and su.idSucursal=pro.idsucursal)
UNION
(SELECT su.idSucursal ,su.ciudad,su.nombre ,pro.idProducto ,pro.nombre as Producto ,co.almacenamiento
FROM proy_sucursal@bule su, proy_producto@bule pro, proy_consola@bule co
WHERE pro.idProducto=co.idProducto
and su.idSucursal=pro.idsucursal)
;
--------------------------------------------------------
--  DDL for View PROY_EMPLEADOS_GLOBALES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO, Sucursal, NOMBRE, APELLIDOS, PUESTO, SALARIO) AS 
  SELECT em.idEmpleado,su.nombre as Sucursal,em.nombre,em.apellidos,em.puesto,em.salario
FROM proy_empleado em,proy_sucursal su
WHERE su.idSucursal=em.idSucursal
union
SELECT em.idEmpleado,su.nombre as Sucursal,em.nombre,em.apellidos,em.puesto,em.salario
FROM proy_empleado@antea em,proy_sucursal@antea su
WHERE su.idSucursal=em.idSucursal
union
SELECT em.idEmpleado,su.nombre as Sucursal,em.nombre,em.apellidos,em.puesto,em.salario
FROM proy_empleado@bule em,proy_sucursal@bule su
WHERE su.idSucursal=em.idSucursal
;
--------------------------------------------------------
--  DDL for View PROY_EMPLEADOVENDEMAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW A1204805.PROY_EMPLEADOVENDEMAS (NOMBRE) AS 
  SELECT nombre
FROM (SELECT nombre, sum(contadorEmpleado) as contadorGlobal
FROM((SELECT nombre, count() as contadorEmpleado
FROM proy_empleado, proy_transaccion
WHERE proy_empleado.idempleado = proy_transaccion.idempleado
group by nombre)

UNION

(SELECT nombre, count() as contadorEmpleado
FROM proy_empleado@bule, proy_transaccion@bule
WHERE proy_empleado.idempleado = proy_transaccion.idempleado
group by nombre)

UNION

(SELECT nombre, count() as contadorEmpleado
FROM proy_empleado@antea, proy_transaccion@antea
WHERE proy_empleado.idempleado = proy_transaccion.idempleado
group by nombre))
group by nombre 
order by contadorGlobal desc)
WHERE rownum = 1
;
--------------------------------------------------------
--  DDL for View PROY_PRODUCTOS_BOLEVARES_DIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL, CIUDAD, Sucursal, IDPRODUCTO, Producto, PRECIOVENTA, Distribuidor) AS 
  SELECT su.idSucursal ,su.ciudad,su.nombre as Sucursal, pro.idProducto , pro.nombre as Producto,pro.precioVenta, prov.nombre as Distribuidor
FROM proy_sucursal su, proy_producto pro, proy_pedido@dist pe, proy_proveedor@dist prov
WHERE su.idSucursal=pro.idSucursal
and prov.idProv=pe.idProv
and pro.idsucursal=pe.idPedido
;
--------------------------------------------------------
--  DDL for View PROY_PRODUCTOS_DISPONIBLES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO, IDSUCURSAL, NOMBRE, PRECIOVENTA) AS 
  SELECT IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA
FROM PROY_PRODUCTO prod
WHERE prod.disponible = 1

UNION ALL

SELECT IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA
FROM PROY_PRODUCTO@antea prodg
WHERE prodg.disponible = 1


UNION ALL

SELECT IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA
FROM PROY_PRODUCTO@bule prodb
WHERE prodb.disponible = 1
;
--------------------------------------------------------
--  DDL for View PROY_TODOS_EMPLEADOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO, IDSUCURSAL, NOMBRE, APELLIDOS, DIRECCION, TELEFONO, EMAIL, FECHAREGISTRO, PUESTO, SALARIO) AS 
  SELECT IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO
FROM PROY_EMPLEADO
UNION ALL
SELECT IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO
FROM PROY_EMPLEADO@antea
UNION ALL
SELECT IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO
FROM PROY_EMPLEADO@bule
;
--------------------------------------------------------
--  DDL for View PROY_TOTAL_PRODUCTOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW A1204805.PROY_TOTAL_PRODUCTOS (NOMBRE, TOTAL) AS 
  select prod.Nombre, COUNT() AS TOTAL
from (select Nombre from PROY_PRODUCTO
union all
select Nombre from PROY_PRODUCTO@antea
union all
select Nombre from PROY_PRODUCTO@bule
) prod
group by Nombre
order by Nombre
;
--------------------------------------------------------
--  DDL for View PROY_VIDEOJUEGOMASVENDIDO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW A1204805.PROY_VIDEOJUEGOMASVENDIDO (NOMBRE) AS 
  SELECT nombre
FROM (SELECT nombre, sum(contadorSucursal) as contadorGlobal
FROM ((SELECT nombre, count() as contadorSucursal
FROM proy_producto, proy_videojuego, proy_transaccion
Where  proy_producto.idproducto = proy_videojuego.idproducto and proy_producto.idproducto = proy_transaccion.idproducto
group by proy_producto.nombre)

UNION

(SELECT nombre, count() as contadorSucursal
FROM proy_producto@bule, proy_videojuego@bule, proy_transaccion@bule
Where  proy_producto.idproducto = proy_videojuego.idproducto and proy_producto.idproducto = proy_transaccion.idproducto
group by proy_producto.nombre)

UNION

(SELECT nombre, count() as contadorSucursal
FROM proy_producto@antea, proy_videojuego@antea, proy_transaccion@antea
Where  proy_producto.idproducto = proy_videojuego.idproducto and proy_producto.idproducto = proy_transaccion.idproducto
group by proy_producto.nombre))
group by nombre 
order by contadorGlobal desc)
WHERE rownum = 1
;
REM INSERTING into A1204805.PROY_CLIENTE
SET DEFINE OFF;
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (1,'Boycie','Malt','8 Merrick Road','Albany','New York','(518) 1306163','bmalt0@aboutads.info',to_date('011212','DDMMRR'),13.46);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (2,'Annabella','Behemod','80155 Del Mar Terrace','Cincinnati','Ohio','(513) 3897367','abeamont1@uiuc.edu',to_date('020317','DDMMRR'),41.97);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (3,'Vallie','Baine','51 Johnson Hill','Tyler','Texas','(903) 4209867','vbaine2@miitbeian.gov.cn',to_date('011211','DDMMRR'),90.04);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (4,'Sandye','Feenan','6004 Lunder Pass','Seattle','Washington','(206) 4603386','sfeenan3@hostgator.com',to_date('020310','DDMMRR'),72.5);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (5,'Halie','Frackiewicz','06427 Fuller Circle','Van Nuys','California','(213) 6789426','hfrackiewicz4@uol.com.br',to_date('020317','DDMMRR'),77.75);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (6,'Cosetta','Demougeot','6 Melody Terrace','Austin','Texas','(512) 4304682','cdemougeot5@alexa.com',to_date('011215','DDMMRR'),54.19);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (7,'Gertrud','Iceton','41 Quincy Way','Corpus Christi','Texas','(361) 2640917','giceton6@google.com',to_date('011213','DDMMRR'),78.19);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (8,'Tandy','Ivens','9 Burrows Crossing','Springfield','Illinois','(217) 9951973','tivens7@bloomberg.com',to_date('011218','DDMMRR'),89.28);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (9,'Kort','Mowsdale','15 Katie Plaza','Northridge','California','(818) 8184086','kmowsdale8@storify.com',to_date('011212','DDMMRR'),64.39);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (10,'Alick','Dunnet','6704 Debs Plaza','Frederick','Maryland','(240) 8666284','adunnet9@example.com',to_date('020317','DDMMRR'),47.79);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (11,'Therine','Sangar','2 Dwight Parkway','Escondido','California','(760) 9205964','tsangara@constantcontact.com',to_date('011217','DDMMRR'),10.13);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (12,'Ethelin','Julyan','52 Scofield Pass','Houston','Texas','(713) 1550059','ejulyanb@sphinn.com',to_date('020308','DDMMRR'),96.8);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (13,'Birgitta','Toone','38030 Boyd Drive','Lansing','Michigan','(517) 4656237','btoonec@theatlantic.com',to_date('020301','DDMMRR'),78.24);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (14,'Bevin','Quixley','549 Granby Circle','Fort Worth','Texas','(817) 1873280','bquixleyd@utexas.edu',to_date('011292','DDMMRR'),32.29);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (15,'Thane','Wilks','37849 Cody Street','Newark','New Jersey','(862) 6214265','twilkse@dion.ne.jp',to_date('020307','DDMMRR'),0.47);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (16,'Julina','Terzi','2586 Red Cloud Hill','Memphis','Tennessee','(901) 6644456','jterzif@sfgate.com',to_date('020317','DDMMRR'),99.3);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (17,'Hubey','Grist','36598 Mesta Park','Winston Salem','North Carolina','(336) 9487067','hgristg@oracle.com',to_date('011217','DDMMRR'),80.43);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (18,'Roz','Imason','79542 Warrior Alley','Denver','Colorado','(720) 2438214','rimasonh@java.com',to_date('020317','DDMMRR'),35.8);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (19,'Amandie','Ogilby','53577 Farragut Court','Independence','Missouri','(816) 6263066','aogilbyi@addthis.com',to_date('011217','DDMMRR'),55.68);
Insert into A1204805.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (20,'Alphonso','Negus','178 Rieder Road','Harrisburg','Pennsylvania','(717) 9502295','anegusj@freewebs.com',to_date('011217','DDMMRR'),35.59);
REM INSERTING into A1204805.PROY_CONSOLA
SET DEFINE OFF;
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (76,'Microsoft','500GB','Dos controles, fuente de poder.');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (77,'Microsoft','500GB','Dos controles, fuente de poder.');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (78,'Microsoft','500GB','Dos controles, fuente de poder.');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (79,'Microsoft','500GB','Dos controles, fuente de poder.');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (80,'Microsoft','500GB','Dos controles, fuente de poder.');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (81,'Sony','1TB','Un control');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (82,'Sony','1TB','Un control');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (83,'Sony','1TB','Un control');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (84,'Sony','1TB','Un control');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (85,'Sony','1TB','Un control');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (86,'Nintendo','500GB','Dos controles, un juego.');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (87,'Nintendo','500GB','Dos controles, un juego.');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (88,'Nintendo','500GB','Dos controles, un juego.');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (89,'Nintendo','500GB','Dos controles, un juego.');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (90,'Nintendo','500GB','Dos controles, un juego.');
Insert into A1204805.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (97,'Sony','10gb','Cargador');
REM INSERTING into A1204805.PROY_EMPLEADO
SET DEFINE OFF;
Insert into A1204805.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (1,3,'Cordelia','Houlworth','9 Montana Center','717-253-2027','choulworthe@flavors.me',to_date('020307','DDMMRR'),'Human Resources',16.04);
Insert into A1204805.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (2,3,'Carin','Fellis','86976 Morningstar Alley','964-912-5217','cfellisf@1688.com',to_date('020317','DDMMRR'),'Services',84.62);
Insert into A1204805.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (3,3,'Marcus','Vink','6784 Alpine Road','992-212-7339','mvinkg@va.gov',to_date('011217','DDMMRR'),'Services',55.64);
Insert into A1204805.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (4,3,'Meggie','McVitty','7458 3rd Point','837-277-5174','mmcvittyh@soundcloud.com',to_date('020317','DDMMRR'),'Training',68.4);
Insert into A1204805.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (5,3,'Jenny','Bardnam','7 Hintze Hill','612-199-1436','jbardnami@theglobeandmail.com',to_date('011217','DDMMRR'),'Support',44.97);
Insert into A1204805.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (6,3,'Annmaria','Mulheron','63 Lighthouse Bay Parkway','245-963-0455','amulheronj@acquirethisname.com',to_date('011217','DDMMRR'),'Training',95.11);
REM INSERTING into A1204805.PROY_PRODUCTO
SET DEFINE OFF;
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (61,3,'Call of Duty WWII','Call of Duty regresa a sus raices con Call of Duty WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',to_date('010617','DDMMRR'),'Nuevo',1,1000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (62,3,'Call of Duty WWII','Call of Duty regresa a sus raices con Call of Duty WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',to_date('010617','DDMMRR'),'Nuevo',1,1000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (63,3,'Call of Duty WWII','Call of Duty regresa a sus raices con Call of Duty WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',to_date('010617','DDMMRR'),'Nuevo',1,1000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (64,3,'Call of Duty WWII','Call of Duty regresa a sus raices con Call of Duty WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',to_date('010617','DDMMRR'),'Nuevo',1,1000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (65,3,'Call of Duty WWII','Call of Duty regresa a sus raices con Call of Duty WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',to_date('010617','DDMMRR'),'Nuevo',1,1000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (66,3,'Star Wars Batllefront II','Conviértete en el héroe de una galaxia en guerra con Star Wars Battlefront II.',to_date('011117','DDMMRR'),'Nuevo',1,1200,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (67,3,'Star Wars Batllefront II','Conviértete en el héroe de una galaxia en guerra con Star Wars Battlefront II.',to_date('011117','DDMMRR'),'Nuevo',1,1200,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (68,3,'Star Wars Batllefront II','Conviértete en el héroe de una galaxia en guerra con Star Wars Battlefront II.',to_date('011117','DDMMRR'),'Nuevo',1,1200,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (69,3,'Star Wars Batllefront II','Conviértete en el héroe de una galaxia en guerra con Star Wars Battlefront II.',to_date('011117','DDMMRR'),'Nuevo',1,1200,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (70,3,'Star Wars Batllefront II','Conviértete en el héroe de una galaxia en guerra con Star Wars Battlefront II.',to_date('011117','DDMMRR'),'Nuevo',1,1200,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (71,3,'Mario Kart 8','Vuelven las carreras møs locas de las consolas de Nintendo.',to_date('010917','DDMMRR'),'Nuevo',1,900,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (72,3,'Mario Kart 8','Vuelven las carreras møs locas de las consolas de Nintendo.',to_date('010917','DDMMRR'),'Nuevo',1,900,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (73,3,'Mario Kart 8','Vuelven las carreras møs locas de las consolas de Nintendo.',to_date('010917','DDMMRR'),'Nuevo',1,900,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (74,3,'Mario Kart 8','Vuelven las carreras møs locas de las consolas de Nintendo.',to_date('010917','DDMMRR'),'Nuevo',1,900,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (75,3,'Mario Kart 8','Vuelven las carreras møs locas de las consolas de Nintendo.',to_date('010917','DDMMRR'),'Nuevo',1,900,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (76,3,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA. ',to_date('010116','DDMMRR'),'Nuevo',1,6000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (77,3,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA. ',to_date('010116','DDMMRR'),'Nuevo',1,6000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (78,3,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA. ',to_date('010116','DDMMRR'),'Nuevo',1,6000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (79,3,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA. ',to_date('010116','DDMMRR'),'Nuevo',1,6000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (80,3,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA. ',to_date('010116','DDMMRR'),'Nuevo',1,6000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (81,3,'Playstation 4','Este bundle es ideal para los fans de PlayStation que estøn adquiriendo su consola de PS4',to_date('010416','DDMMRR'),'Nuevo',1,7000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (82,3,'Playstation 4','Este bundle es ideal para los fans de PlayStation que estøn adquiriendo su consola de PS4',to_date('010416','DDMMRR'),'Nuevo',1,7000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (83,3,'Playstation 4','Este bundle es ideal para los fans de PlayStation que estøn adquiriendo su consola de PS4',to_date('010416','DDMMRR'),'Nuevo',1,7000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (84,3,'Playstation 4','Este bundle es ideal para los fans de PlayStation que estøn adquiriendo su consola de PS4',to_date('010416','DDMMRR'),'Nuevo',1,7000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (85,3,'Playstation 4','Este bundle es ideal para los fans de PlayStation que estøn adquiriendo su consola de PS4',to_date('010416','DDMMRR'),'Nuevo',1,7000,0);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (86,3,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego – envolvente. ',to_date('010217','DDMMRR'),'Nuevo',1,5000,0.2);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (87,3,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego – envolvente. ',to_date('010217','DDMMRR'),'Nuevo',1,5000,0.2);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (88,3,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego – envolvente. ',to_date('010217','DDMMRR'),'Nuevo',1,5000,0.2);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (89,3,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego – envolvente. ',to_date('010217','DDMMRR'),'Nuevo',1,5000,0.2);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (90,3,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego – envolvente. ',to_date('010217','DDMMRR'),'Nuevo',1,5000,0.2);
Insert into A1204805.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (97,3,'PSP','ConsolaPort·til',to_date('150218','DDMMRR'),'Nuevo',0,600,0);
REM INSERTING into A1204805.PROY_SUCURSAL
SET DEFINE OFF;
Insert into A1204805.PROY_SUCURSAL (IDSUCURSAL,DIRECCION,CIUDAD,ESTADO,TELEFONO,NOMBRE) values (1,'Prol. Blvd. Bernardo Quintana 4100, Plaza Boulevares, 76160','Queretaro','Queretaro','(518) 1306163','Boulevares');
Insert into A1204805.PROY_SUCURSAL (IDSUCURSAL,DIRECCION,CIUDAD,ESTADO,TELEFONO,NOMBRE) values (2,'Carretera San Luis PotosÌ QuerÈtaro 12401, Ejido El Satelite, 76127','Queretaro','Queretaro','(215) 1239210','Antea');
Insert into A1204805.PROY_SUCURSAL (IDSUCURSAL,DIRECCION,CIUDAD,ESTADO,TELEFONO,NOMBRE) values (3,'Av. 5 de Febrero 99, Los Virreyes, 76175','Queretaro','Queretaro','(203) 2930399','Galerias');
REM INSERTING into A1204805.PROY_TRANSACCION
SET DEFINE OFF;
Insert into A1204805.PROY_TRANSACCION (IDTRANSACCION,IDPRODUCTO,IDCLIENTE,IDEMPLEADO,TIPO,MONTO,FECHA,METODOPAGO) values (1,61,1,1,'Venta',1000,to_date('080218','DDMMRR'),'Efectivo');
Insert into A1204805.PROY_TRANSACCION (IDTRANSACCION,IDPRODUCTO,IDCLIENTE,IDEMPLEADO,TIPO,MONTO,FECHA,METODOPAGO) values (2,77,10,3,'Venta',6000,to_date('080218','DDMMRR'),'Efectivo');
Insert into A1204805.PROY_TRANSACCION (IDTRANSACCION,IDPRODUCTO,IDCLIENTE,IDEMPLEADO,TIPO,MONTO,FECHA,METODOPAGO) values (3,77,11,3,'Venta',6000,to_date('080218','DDMMRR'),'Efectivo');
Insert into A1204805.PROY_TRANSACCION (IDTRANSACCION,IDPRODUCTO,IDCLIENTE,IDEMPLEADO,TIPO,MONTO,FECHA,METODOPAGO) values (4,67,5,3,'Venta',1000,to_date('140218','DDMMRR'),'Efectivo');
Insert into A1204805.PROY_TRANSACCION (IDTRANSACCION,IDPRODUCTO,IDCLIENTE,IDEMPLEADO,TIPO,MONTO,FECHA,METODOPAGO) values (5,61,2,1,'Venta',1000,to_date('140218','DDMMRR'),'Efectivo');
REM INSERTING into A1204805.PROY_VIDEOJUEGO
SET DEFINE OFF;
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (61,4,'M','FPS','Activition','1 a 16');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (62,4,'M','FPS','Activition','1 a 16');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (63,4,'M','FPS','Activition','1 a 16');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (64,4,'M','FPS','Activition','1 a 16');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (65,4,'M','FPS','Activition','1 a 16');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (66,5,'M','TPS, FPS','EA DICE','1 a 40');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (67,5,'M','TPS, FPS','EA DICE','1 a 40');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (68,5,'M','TPS, FPS','EA DICE','1 a 40');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (69,5,'M','TPS, FPS','EA DICE','1 a 40');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (70,5,'M','TPS, FPS','EA DICE','1 a 40');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (71,3,'E','Carreras','Nintendo','1 a 6');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (72,3,'E','Carreras','Nintendo','1 a 6');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (73,3,'E','Carreras','Nintendo','1 a 6');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (74,3,'E','Carreras','Nintendo','1 a 6');
Insert into A1204805.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (75,3,'E','Carreras','Nintendo','1 a 6');
REM INSERTING into A1204805.PROY_CONSOLAMASVENDIDA
SET DEFINE OFF;
Insert into A1204805.PROY_CONSOLAMASVENDIDA (NOMBRE) values ('Xbox One S');
REM INSERTING into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES
SET DEFINE OFF;
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',16,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',17,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',18,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',19,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',20,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',21,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',22,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',23,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',24,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',25,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',26,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',27,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',28,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',29,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (1,'Queretaro','Boulevares',30,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',46,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',47,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',48,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',49,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',50,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',51,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',52,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',53,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',54,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',55,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',56,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',57,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',58,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',59,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (2,'Queretaro','Antea',60,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',76,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',77,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',78,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',79,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',80,'Xbox One S','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',81,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',82,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',83,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',84,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',85,'Playstation 4','1TB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',86,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',87,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',88,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',89,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',90,'Wii U Negro Deluxe','500GB');
Insert into A1204805.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,Producto,ALMACENAMIENTO) values (3,'Queretaro','Galerias',97,'PSP','10gb');
REM INSERTING into A1204805.PROY_EMPLEADOS_GLOBALES
SET DEFINE OFF;
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (1,'Galerias','Cordelia','Houlworth','Human Resources',16.04);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (2,'Galerias','Carin','Fellis','Services',84.62);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (3,'Galerias','Marcus','Vink','Services',55.64);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (4,'Galerias','Meggie','McVitty','Training',68.4);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (5,'Galerias','Jenny','Bardnam','Support',44.97);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (6,'Galerias','Annmaria','Mulheron','Training',95.11);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (8,'Antea','Melvin','O''Callaghan','Human Resources',70.11);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (9,'Antea','Addie','Coxon','Accounting',69.97);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (10,'Antea','Tabor','Marshal','Accounting',20.55);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (11,'Antea','Lorianna','Kneesha','Support',70.13);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (12,'Antea','Lolita','Youngman','Services',74.81);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (13,'Antea','Caria','Heino','Sales',61.92);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (14,'Antea','Hardy','Ornelas','Legal',84.23);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (21,'Boulevares','Alastair','Eminson','Engineering',44.97);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (22,'Boulevares','Ev','Devenport','Services',87.81);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (23,'Boulevares','Olympie','Sunter','Legal',18.78);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (24,'Boulevares','Keriann','Corder','Marketing',80.41);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (25,'Boulevares','Livvy','Plane','Support',58.34);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (26,'Boulevares','Delila','Dalziell','Business Development',84.39);
Insert into A1204805.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,Sucursal,NOMBRE,APELLIDOS,PUESTO,SALARIO) values (27,'Boulevares','Michal','Tidmas','Human Resources',60.05);
REM INSERTING into A1204805.PROY_EMPLEADOVENDEMAS
SET DEFINE OFF;
Insert into A1204805.PROY_EMPLEADOVENDEMAS (NOMBRE) values ('Marcus');
REM INSERTING into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST
SET DEFINE OFF;
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',61,'Call of Duty WWII',1000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',97,'PSP',600,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',63,'Call of Duty WWII',1000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',64,'Call of Duty WWII',1000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',65,'Call of Duty WWII',1000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',66,'Star Wars Batllefront II',1200,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',67,'Star Wars Batllefront II',1200,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',68,'Star Wars Batllefront II',1200,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',69,'Star Wars Batllefront II',1200,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',70,'Star Wars Batllefront II',1200,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',71,'Mario Kart 8',900,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',72,'Mario Kart 8',900,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',73,'Mario Kart 8',900,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',74,'Mario Kart 8',900,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',75,'Mario Kart 8',900,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',76,'Xbox One S',6000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',77,'Xbox One S',6000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',78,'Xbox One S',6000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',79,'Xbox One S',6000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',80,'Xbox One S',6000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',81,'Playstation 4',7000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',82,'Playstation 4',7000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',83,'Playstation 4',7000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',84,'Playstation 4',7000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',85,'Playstation 4',7000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',86,'Wii U Negro Deluxe',5000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',87,'Wii U Negro Deluxe',5000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',88,'Wii U Negro Deluxe',5000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',89,'Wii U Negro Deluxe',5000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',90,'Wii U Negro Deluxe',5000,'Trudoo');
Insert into A1204805.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,Sucursal,IDPRODUCTO,Producto,PRECIOVENTA,Distribuidor) values (3,'Queretaro','Galerias',62,'Call of Duty WWII',1000,'Trudoo');
REM INSERTING into A1204805.PROY_PRODUCTOS_DISPONIBLES
SET DEFINE OFF;
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (61,3,'Call of Duty WWII',1000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (62,3,'Call of Duty WWII',1000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (63,3,'Call of Duty WWII',1000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (64,3,'Call of Duty WWII',1000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (65,3,'Call of Duty WWII',1000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (66,3,'Star Wars Batllefront II',1200);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (67,3,'Star Wars Batllefront II',1200);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (68,3,'Star Wars Batllefront II',1200);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (69,3,'Star Wars Batllefront II',1200);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (70,3,'Star Wars Batllefront II',1200);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (71,3,'Mario Kart 8',900);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (72,3,'Mario Kart 8',900);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (73,3,'Mario Kart 8',900);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (74,3,'Mario Kart 8',900);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (75,3,'Mario Kart 8',900);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (76,3,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (77,3,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (78,3,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (79,3,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (80,3,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (81,3,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (82,3,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (83,3,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (84,3,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (85,3,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (86,3,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (87,3,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (88,3,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (89,3,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (90,3,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (31,2,'Call of Duty WWII',1000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (32,2,'Call of Duty WWII',1000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (33,2,'Call of Duty WWII',1000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (34,2,'Call of Duty WWII',1000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (35,2,'Call of Duty WWII',1000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (36,2,'Star Wars Batllefront II',1200);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (37,2,'Star Wars Batllefront II',1200);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (38,2,'Star Wars Batllefront II',1200);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (39,2,'Star Wars Batllefront II',1200);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (40,2,'Star Wars Batllefront II',1200);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (41,2,'Mario Kart 8',900);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (42,2,'Mario Kart 8',900);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (43,2,'Mario Kart 8',900);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (44,2,'Mario Kart 8',900);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (45,2,'Mario Kart 8',900);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (46,2,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (47,2,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (48,2,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (49,2,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (50,2,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (51,2,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (52,2,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (53,2,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (54,2,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (55,2,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (56,2,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (57,2,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (58,2,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (59,2,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (60,2,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (16,1,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (17,1,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (18,1,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (19,1,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (20,1,'Xbox One S',6000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (21,1,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (22,1,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (23,1,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (24,1,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (25,1,'Playstation 4',7000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (26,1,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (27,1,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (28,1,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (29,1,'Wii U Negro Deluxe',5000);
Insert into A1204805.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (30,1,'Wii U Negro Deluxe',5000);
REM INSERTING into A1204805.PROY_TODOS_EMPLEADOS
SET DEFINE OFF;
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (1,3,'Cordelia','Houlworth','9 Montana Center','717-253-2027','choulworthe@flavors.me',to_date('020307','DDMMRR'),'Human Resources',16.04);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (2,3,'Carin','Fellis','86976 Morningstar Alley','964-912-5217','cfellisf@1688.com',to_date('020317','DDMMRR'),'Services',84.62);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (3,3,'Marcus','Vink','6784 Alpine Road','992-212-7339','mvinkg@va.gov',to_date('011217','DDMMRR'),'Services',55.64);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (4,3,'Meggie','McVitty','7458 3rd Point','837-277-5174','mmcvittyh@soundcloud.com',to_date('020317','DDMMRR'),'Training',68.4);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (5,3,'Jenny','Bardnam','7 Hintze Hill','612-199-1436','jbardnami@theglobeandmail.com',to_date('011217','DDMMRR'),'Support',44.97);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (6,3,'Annmaria','Mulheron','63 Lighthouse Bay Parkway','245-963-0455','amulheronj@acquirethisname.com',to_date('011217','DDMMRR'),'Training',95.11);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (9,2,'Addie','Coxon','93903 Steensland Circle','919-116-5308','acoxon8@mit.edu',to_date('011212','DDMMRR'),'Accounting',69.97);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (10,2,'Tabor','Marshal','78781 Armistice Pass','237-739-0694','tmarshal9@nature.com',to_date('020317','DDMMRR'),'Accounting',20.55);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (11,2,'Lorianna','Kneesha','2875 Trailsway Place','269-876-7162','lkneeshaa@yahoo.co.jp',to_date('011217','DDMMRR'),'Support',70.13);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (12,2,'Lolita','Youngman','24 Merchant Point','538-327-9379','lyoungmanb@mlb.com',to_date('020308','DDMMRR'),'Services',74.81);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (13,2,'Caria','Heino','6 Donald Plaza','503-543-2143','cheinoc@newyorker.com',to_date('020301','DDMMRR'),'Sales',61.92);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (14,2,'Hardy','Ornelas','3 Loomis Trail','105-463-8108','hornelasd@vk.com',to_date('011292','DDMMRR'),'Legal',84.23);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (8,2,'Melvin','O''Callaghan','43512 Grover Drive','621-487-9308','mocallaghan7@java.com',to_date('011218','DDMMRR'),'Human Resources',70.11);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (21,1,'Alastair','Eminson','3 Dexter Court','923-796-9227','aeminson0@bigcartel.com',to_date('011212','DDMMRR'),'Engineering',44.97);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (22,1,'Ev','Devenport','758 Stone Corner Parkway','355-264-4618','edevenport1@vimeo.com',to_date('020317','DDMMRR'),'Services',87.81);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (23,1,'Olympie','Sunter','6 Dakota Center','754-436-8876','osunter2@php.net',to_date('011211','DDMMRR'),'Legal',18.78);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (24,1,'Keriann','Corder','5432 Reindahl Avenue','530-626-1567','kcorder3@eepurl.com',to_date('020310','DDMMRR'),'Marketing',80.41);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (25,1,'Livvy','Plane','83 Magdeline Park','633-193-4746','lplane4@slashdot.org',to_date('020317','DDMMRR'),'Support',58.34);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (26,1,'Delila','Dalziell','67859 Duke Parkway','914-805-7847','ddalziell5@disqus.com',to_date('011215','DDMMRR'),'Business Development',84.39);
Insert into A1204805.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (27,1,'Michal','Tidmas','4 Roth Way','409-662-0301','mtidmas6@barnesandnoble.com',to_date('011213','DDMMRR'),'Human Resources',60.05);
REM INSERTING into A1204805.PROY_TOTAL_PRODUCTOS
SET DEFINE OFF;
Insert into A1204805.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Call of Duty WWII',10);
Insert into A1204805.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Mario Kart 8',10);
Insert into A1204805.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Overwatch',1);
Insert into A1204805.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Playstation 4',15);
Insert into A1204805.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('PSP',1);
Insert into A1204805.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Star Wars Batllefront II',10);
Insert into A1204805.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Wii U Negro Deluxe',15);
Insert into A1204805.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Xbox One S',15);
REM INSERTING into A1204805.PROY_VIDEOJUEGOMASVENDIDO
SET DEFINE OFF;
Insert into A1204805.PROY_VIDEOJUEGOMASVENDIDO (NOMBRE) values ('Call of Duty WWII');
--------------------------------------------------------
--  DDL for Index PROY_CLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX A1204805.PROY_CLIENTE_PK ON A1204805.PROY_CLIENTE (IDCLIENTE) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Index PROY_CONSOLA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX A1204805.PROY_CONSOLA_PK ON A1204805.PROY_CONSOLA (IDPRODUCTO) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Index PROY_EMPLEADO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX A1204805.PROY_EMPLEADO_PK ON A1204805.PROY_EMPLEADO (IDEMPLEADO) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Index PROY_SUCURSAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX A1204805.PROY_SUCURSAL_PK ON A1204805.PROY_SUCURSAL (IDSUCURSAL) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Index PROY_TRANSACCION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX A1204805.PROY_TRANSACCION_PK ON A1204805.PROY_TRANSACCION (IDTRANSACCION) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX A1204805.TABLE1_PK ON A1204805.PROY_PRODUCTO (IDPRODUCTO) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Index VIDEOJUEGO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX A1204805.VIDEOJUEGO_PK ON A1204805.PROY_VIDEOJUEGO (IDPRODUCTO) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS ;
--------------------------------------------------------
--  DDL for Trigger PROY_CLIENTE_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER A1204805.PROY_CLIENTE_TRG 
BEFORE INSERT ON PROY_CLIENTE 
FOR EACH ROW 
BEGIN
  COLUMN_SEQUENCES
  BEGIN
    IF INSERTING AND NEW.IDCLIENTE IS NULL THEN
      SELECT PROY_CLIENTE_SEQ.NEXTVAL INTO NEW.IDCLIENTE FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

ALTER TRIGGER A1204805.PROY_CLIENTE_TRG ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_CONSOLA_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER A1204805.PROY_CONSOLA_TRG 
BEFORE INSERT ON PROY_CONSOLA 
FOR EACH ROW 
BEGIN
  COLUMN_SEQUENCES
  BEGIN
    IF INSERTING AND NEW.IDPRODUCTO IS NULL THEN
      SELECT PROY_CONSOLA_SEQ.NEXTVAL INTO NEW.IDPRODUCTO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

ALTER TRIGGER A1204805.PROY_CONSOLA_TRG ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_CONSOLA_TRG_1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER A1204805.PROY_CONSOLA_TRG_1 
BEFORE INSERT ON PROY_CONSOLA 
FOR EACH ROW 
BEGIN
  COLUMN_SEQUENCES
  BEGIN
    IF INSERTING AND NEW.IDPRODUCTO IS NULL THEN
      SELECT PROY_CONSOLA_SEQ.NEXTVAL INTO NEW.IDPRODUCTO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

ALTER TRIGGER A1204805.PROY_CONSOLA_TRG_1 ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_EMPLEADO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER A1204805.PROY_EMPLEADO_TRG 
BEFORE INSERT ON PROY_EMPLEADO 
FOR EACH ROW 
BEGIN
  COLUMN_SEQUENCES
  BEGIN
    IF INSERTING AND NEW.IDEMPLEADO IS NULL THEN
      SELECT PROY_EMPLEADO_SEQ.NEXTVAL INTO NEW.IDEMPLEADO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

ALTER TRIGGER A1204805.PROY_EMPLEADO_TRG ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_PRODUCTO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER A1204805.PROY_PRODUCTO_TRG 
BEFORE INSERT ON PROY_PRODUCTO 
FOR EACH ROW 
BEGIN
  COLUMN_SEQUENCES
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;

ALTER TRIGGER A1204805.PROY_PRODUCTO_TRG ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_PRODUCTO_TRG1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER A1204805.PROY_PRODUCTO_TRG1 
BEFORE INSERT ON PROY_PRODUCTO 
FOR EACH ROW 
BEGIN
  COLUMN_SEQUENCES
  BEGIN
    IF INSERTING AND NEW.IDPRODUCTO IS NULL THEN
      SELECT PROY_PRODUCTO_SEQ1.NEXTVAL INTO NEW.IDPRODUCTO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

ALTER TRIGGER A1204805.PROY_PRODUCTO_TRG1 ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_SUCURSAL_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER A1204805.PROY_SUCURSAL_TRG 
BEFORE INSERT ON PROY_SUCURSAL 
FOR EACH ROW 
BEGIN
  COLUMN_SEQUENCES
  BEGIN
    IF INSERTING AND NEW.IDSUCURSAL IS NULL THEN
      SELECT PROY_SUCURSAL_SEQ.NEXTVAL INTO NEW.IDSUCURSAL FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

ALTER TRIGGER A1204805.PROY_SUCURSAL_TRG ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_TRANSACCION_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER A1204805.PROY_TRANSACCION_TRG 
BEFORE INSERT ON PROY_TRANSACCION 
FOR EACH ROW 
BEGIN
  COLUMN_SEQUENCES
  BEGIN
    IF INSERTING AND NEW.IDTRANSACCION IS NULL THEN
      SELECT PROY_TRANSACCION_SEQ.NEXTVAL INTO NEW.IDTRANSACCION FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

ALTER TRIGGER A1204805.PROY_TRANSACCION_TRG ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_VIDEOJUEGO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER A1204805.PROY_VIDEOJUEGO_TRG 
BEFORE INSERT ON PROY_VIDEOJUEGO 
FOR EACH ROW 
BEGIN
  COLUMN_SEQUENCES
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;

ALTER TRIGGER A1204805.PROY_VIDEOJUEGO_TRG ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_VIDEOJUEGO_TRG1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER A1204805.PROY_VIDEOJUEGO_TRG1 
BEFORE INSERT ON PROY_VIDEOJUEGO 
FOR EACH ROW 
BEGIN
  COLUMN_SEQUENCES
  BEGIN
    IF INSERTING AND NEW.JUGADORES IS NULL THEN
      SELECT PROY_VIDEOJUEGO_SEQ1.NEXTVAL INTO NEW.JUGADORES FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

ALTER TRIGGER A1204805.PROY_VIDEOJUEGO_TRG1 ENABLE;
--------------------------------------------------------
--  DDL for Procedure PROY_BORRAPRODUCTO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE A1204805.PROY_BORRAPRODUCTO 
(
 nombre_juego IN VARCHAR 
) 
AS 
auxLocal number;
auxAntea number;
auxBoulevares number;
existencia_Producto number;
BEGIN
----------------------------------------------------------------checar que exista el id

select count(nombre) into auxLocal --LOCAL Galerias
 from proy_producto 
 where nombre = nombre_juego;

select count(nombre) into auxAntea --LOCAL antea
 from proy_producto@antea
 where nombre = nombre_juego;

select count(nombre) into auxBoulevares --LOCAL BOULEVARES
 from proy_producto@bule
 where nombre = nombre_juego;


 if auxLocal  0 or auxAntea  0 or auxBoulevares  0 then
 existencia_Producto= 1;
 else
 existencia_Producto =0;
 end if;


  if existencia_Producto=0 then
    raise_application_error(-20000,'{EL JUEGO NO EXISTE}'); -- aqui mando a decir que no existe la cuenta

  else

    ----------------------------LOCAL
    DELETE -- borrar consola
    FROM proy_consola con
    WHERE con.idproducto IN (
    select pro.idproducto
    from proy_producto pro
    where nombre=nombre_juego);

    DELETE -- borrar videojuego
    FROM proy_videojuego vid
    WHERE vid.idproducto IN (
    select pro.idproducto
    from proy_producto pro
    where nombre=nombre_juego);

    DELETE FROM proy_producto
    WHERE nombre = nombre_juego;
    ----------------------------LOCAL

    ----------------------------ANTEA
    DELETE -- borrar consola
    FROM proy_consola@antea con
    WHERE con.idproducto IN (
    select pro.idproducto
    from proy_producto@antea pro
    where nombre=nombre_juego);

    DELETE -- borrar videojuego
    FROM proy_videojuego@antea vid
    WHERE vid.idproducto IN (
    select pro.idproducto
    from proy_producto@antea pro
    where nombre=nombre_juego);

    DELETE FROM proy_producto@antea
    WHERE nombre = nombre_juego;
    ----------------------------ANTEA

    ----------------------------GALERIAS
       DELETE -- borrar consola
    FROM proy_consola@bule con
    WHERE con.idproducto IN (
    select pro.idproducto
    from proy_producto@bule pro
    where nombre=nombre_juego);

    DELETE -- borrar videojuego
    FROM proy_videojuego@bule vid
    WHERE vid.idproducto IN (
    select pro.idproducto
    from proy_producto@bule pro
    where nombre=nombre_juego);

    DELETE FROM proy_producto@bule
    WHERE nombre = nombre_juego;

    ----------------------------GALERIAS

    commit;

   end if;

END PROY_BORRAPRODUCTO;


--------------------------------------------------------
--  DDL for Procedure PROY_CANCELAR_PEDIDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE A1204805.PROY_CANCELAR_PEDIDO 
(
 P_idPedido in number
) 
AS 
var_verificar_entregado date;
BEGIN
----------------------------------------------------------------checar que exista el id
 select fechaEntregadist into var_verificar_entregado--LOCAL BOULEVARES
 from proy_pedido@dist
 where idPedido = P_idPedido;

 if (var_verificar_entregado is null) then
    delete --local Galerias
    from proy_producto@dist
    where idpedido=P_idPedido;

    delete 
    from proy_pedido@dist
    where idpedido=P_idPedido;
    commit;
 else
    raise_application_error(-20000,'{El PEDIDO YA FUE ENTREGADO}');
 end if;

END PROY_CANCELAR_PEDIDO;


--------------------------------------------------------
--  DDL for Procedure PROY_REGISTRARPEDIDOCONSOLA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE A1204805.PROY_REGISTRARPEDIDOCONSOLA 
(
  P_IDPROV IN NUMBER,
  P_NOMBRE IN VARCHAR, 
  P_DESCRIPCION IN VARCHAR, 
  P_PRECIOPROV IN NUMBER,
  P_PRECIOVENTA IN NUMBER, 
  P_FECHALANZAMIENTO IN DATE, 
  P_PAISORIGEN IN VARCHAR, 
  P_MODOENVIO IN VARCHAR, 
  P_EMPRESA IN VARCHAR, 
  P_ALMACENAMIENTO IN VARCHAR,
  P_ACCESORIOS IN VARCHAR
) 
AS 
var_idpedido number = proy_pedido_seq2.nextval@dist;
var_idproducto number = proy_producto_seq.nextval@dist;
var_idsucursal number = 3;
BEGIN
    dbms_output.Put_line(var_idpedido);
   INSERT INTO PROY_PEDIDO@dist VALUES (var_idpedido, P_IDPROV, SYSDATE, NULL, NULL, P_PAISORIGEN, P_MODOENVIO);
   commit;
   INSERT INTO PROY_PRODUCTO@dist VALUES (var_idproducto, var_idpedido, var_idsucursal, P_PRECIOPROV, P_NOMBRE, P_DESCRIPCION);
   commit;
   INSERT INTO PROY_PRODUCTO VALUES (var_idproducto, var_idsucursal, P_NOMBRE, P_DESCRIPCION, TO_DATE(P_FECHALANZAMIENTO, 'DDMMYY') , 'Nuevo', 0, P_PRECIOVENTA, 0);
   commit;
   INSERT INTO PROY_CONSOLA VALUES (var_idproducto, P_EMPRESA , P_ALMACENAMIENTO, P_ACCESORIOS);
   commit;
END PROY_RegistrarPedidoConsola;


--------------------------------------------------------
--  DDL for Procedure PROY_REGISTRARPEDIDOVIDEOJUEGO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE A1204805.PROY_REGISTRARPEDIDOVIDEOJUEGO 
(
  P_IDPROV IN NUMBER,
  P_NOMBRE IN VARCHAR, 
  P_DESCRIPCION IN VARCHAR, 
  P_PRECIOPROV IN NUMBER,
  P_PRECIOVENTA IN NUMBER, 
  P_FECHALANZAMIENTO IN DATE, 
  P_PAISORIGEN IN VARCHAR, 
  P_MODOENVIO IN VARCHAR, 
  P_RATING IN NUMBER, 
  P_CLASIFICACION IN VARCHAR, 
  P_GENERO IN VARCHAR, 
  P_DESARROLLADOR IN VARCHAR, 
  P_JUGADORES IN VARCHAR
) 
AS 
var_idpedido number = proy_pedido_seq2.nextval@dist;
var_idproducto number = proy_producto_seq.nextval@dist;
var_idsucursal number = 3;
BEGIN
    dbms_output.Put_line(var_idpedido);
   INSERT INTO PROY_PEDIDO@dist VALUES (var_idpedido, P_IDPROV, SYSDATE, NULL, NULL, P_PAISORIGEN, P_MODOENVIO);
   commit;
   INSERT INTO PROY_PRODUCTO@dist VALUES (var_idproducto, var_idpedido, var_idsucursal, P_PRECIOPROV, P_NOMBRE, P_DESCRIPCION);
   commit;
   INSERT INTO PROY_PRODUCTO VALUES (var_idproducto, var_idsucursal, P_NOMBRE, P_DESCRIPCION, TO_DATE(P_FECHALANZAMIENTO, 'DDMMYY') , 'Nuevo', 0, P_PRECIOVENTA, 0);
   commit;
   INSERT INTO PROY_VIDEOJUEGO VALUES (var_idproducto, P_RATING, P_CLASIFICACION, P_GENERO, P_DESARROLLADOR, P_JUGADORES);
   commit;
END PROY_RegistrarPedidoVideojuego;


--------------------------------------------------------
--  DDL for Procedure PROY_TRANSFERIR_EMPLEADO_ANTEA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE A1204805.PROY_TRANSFERIR_EMPLEADO_ANTEA 
(
  P_IDEMPLEADO IN NUMBER 
) AS 
v_nombre varchar(512);
v_apellidos varchar(512);
v_direccion varchar(512);
v_ciudad varchar(512);
v_estado varchar(512);
v_telefono varchar(512);
v_email varchar(512);
v_fregistro date;
v_puesto varchar(512);
v_salario number;
v_instancia varchar(512);
v_idsucursal number;

BEGIN

v_idsucursal= 2;

SELECT emp.nombre, emp.apellidos, emp.direccion, emp.telefono, emp.email, emp.fecharegistro, emp.puesto, emp.salario
INTO v_nombre, v_apellidos, v_direccion, v_telefono, v_email,  v_fregistro, v_puesto,  v_salario
from PROY_EMPLEADO emp
Where emp.idempleado = P_IDEMPLEADO;

DELETE from PROY_EMPLEADO WHERE idEmpleado = P_IDEMPLEADO;

INSERT INTO PROY_EMPLEADO@antea(idempleado, idsucursal, nombre, apellidos, direccion, telefono, email, fecharegistro, puesto, salario) VALUES (P_IDEMPLEADO, v_idsucursal, v_nombre, v_apellidos, v_direccion, v_telefono, v_email,  v_fregistro, v_puesto,  v_salario);

END PROY_TRANSFERIR_EMPLEADO_ANTEA;


--------------------------------------------------------
--  DDL for Procedure PROY_TRANSFERIR_EMPLEADO_BULE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE A1204805.PROY_TRANSFERIR_EMPLEADO_BULE 
(
  P_IDEMPLEADO IN NUMBER 
) AS 
v_nombre varchar(512);
v_apellidos varchar(512);
v_direccion varchar(512);
v_ciudad varchar(512);
v_estado varchar(512);
v_telefono varchar(512);
v_email varchar(512);
v_fregistro date;
v_puesto varchar(512);
v_salario number;
v_instancia varchar(512);
v_idsucursal number;

BEGIN

v_idsucursal= 1;

SELECT emp.nombre, emp.apellidos, emp.direccion, emp.telefono, emp.email, emp.fecharegistro, emp.puesto, emp.salario
INTO v_nombre, v_apellidos, v_direccion, v_telefono, v_email,  v_fregistro, v_puesto,  v_salario
from PROY_EMPLEADO emp
Where emp.idempleado = P_IDEMPLEADO;

DELETE from PROY_EMPLEADO WHERE idEmpleado = P_IDEMPLEADO;

INSERT INTO PROY_EMPLEADO@bule(idempleado, idsucursal, nombre, apellidos, direccion, telefono, email, fecharegistro, puesto, salario) VALUES (P_IDEMPLEADO, v_idsucursal, v_nombre, v_apellidos, v_direccion, v_telefono, v_email,  v_fregistro, v_puesto,  v_salario);

END PROY_TRANSFERIR_EMPLEADO_BULE;



--------------------------------------------------------
--  Constraints for Table PROY_CLIENTE
--------------------------------------------------------

  ALTER TABLE A1204805.PROY_CLIENTE MODIFY (IDCLIENTE NOT NULL ENABLE);
  ALTER TABLE A1204805.PROY_CLIENTE ADD CONSTRAINT PROY_CLIENTE_PK PRIMARY KEY (IDCLIENTE)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROY_CONSOLA
--------------------------------------------------------

  ALTER TABLE A1204805.PROY_CONSOLA MODIFY (IDPRODUCTO NOT NULL ENABLE);
  ALTER TABLE A1204805.PROY_CONSOLA ADD CONSTRAINT PROY_CONSOLA_PK PRIMARY KEY (IDPRODUCTO)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROY_EMPLEADO
--------------------------------------------------------

  ALTER TABLE A1204805.PROY_EMPLEADO MODIFY (IDEMPLEADO NOT NULL ENABLE);
  ALTER TABLE A1204805.PROY_EMPLEADO MODIFY (IDSUCURSAL NOT NULL ENABLE);
  ALTER TABLE A1204805.PROY_EMPLEADO ADD CONSTRAINT PROY_EMPLEADO_PK PRIMARY KEY (IDEMPLEADO)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROY_PRODUCTO
--------------------------------------------------------

  ALTER TABLE A1204805.PROY_PRODUCTO MODIFY (IDPRODUCTO NOT NULL ENABLE);
  ALTER TABLE A1204805.PROY_PRODUCTO MODIFY (IDSUCURSAL NOT NULL ENABLE);
  ALTER TABLE A1204805.PROY_PRODUCTO MODIFY (NOMBRE NOT NULL ENABLE);
  ALTER TABLE A1204805.PROY_PRODUCTO MODIFY (ESTADO NOT NULL ENABLE);
  ALTER TABLE A1204805.PROY_PRODUCTO ADD CONSTRAINT TABLE1_PK PRIMARY KEY (IDPRODUCTO)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROY_SUCURSAL
--------------------------------------------------------

  ALTER TABLE A1204805.PROY_SUCURSAL MODIFY (IDSUCURSAL NOT NULL ENABLE);
  ALTER TABLE A1204805.PROY_SUCURSAL MODIFY (NOMBRE NOT NULL ENABLE);
  ALTER TABLE A1204805.PROY_SUCURSAL ADD CONSTRAINT PROY_SUCURSAL_PK PRIMARY KEY (IDSUCURSAL)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROY_TRANSACCION
--------------------------------------------------------

  ALTER TABLE A1204805.PROY_TRANSACCION MODIFY (IDTRANSACCION NOT NULL ENABLE);
  ALTER TABLE A1204805.PROY_TRANSACCION ADD CONSTRAINT PROY_TRANSACCION_PK PRIMARY KEY (IDTRANSACCION)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROY_VIDEOJUEGO
--------------------------------------------------------

  ALTER TABLE A1204805.PROY_VIDEOJUEGO MODIFY (IDPRODUCTO NOT NULL ENABLE);
  ALTER TABLE A1204805.PROY_VIDEOJUEGO ADD CONSTRAINT VIDEOJUEGO_PK PRIMARY KEY (IDPRODUCTO)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE USERS  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROY_CONSOLA
--------------------------------------------------------

  ALTER TABLE A1204805.PROY_CONSOLA ADD CONSTRAINT IDPRODUCTO_SUC_CON_FK FOREIGN KEY (IDPRODUCTO)
	  REFERENCES A1204805.PROY_PRODUCTO (IDPRODUCTO) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROY_EMPLEADO
--------------------------------------------------------

  ALTER TABLE A1204805.PROY_EMPLEADO ADD CONSTRAINT PROY_EMPLEADO_FK1 FOREIGN KEY (IDSUCURSAL)
	  REFERENCES A1204805.PROY_SUCURSAL (IDSUCURSAL) ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROY_PRODUCTO
--------------------------------------------------------

  ALTER TABLE A1204805.PROY_PRODUCTO ADD CONSTRAINT IDSUCURSAL_SUC_FK FOREIGN KEY (IDSUCURSAL)
	  REFERENCES A1204805.PROY_SUCURSAL (IDSUCURSAL) ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROY_TRANSACCION
--------------------------------------------------------

  ALTER TABLE A1204805.PROY_TRANSACCION ADD CONSTRAINT IDCLIENTE_FK FOREIGN KEY (IDCLIENTE)
	  REFERENCES A1204805.PROY_CLIENTE (IDCLIENTE) ON DELETE CASCADE ENABLE;
  ALTER TABLE A1204805.PROY_TRANSACCION ADD CONSTRAINT IDEMPLEADO_FK FOREIGN KEY (IDEMPLEADO)
	  REFERENCES A1204805.PROY_EMPLEADO (IDEMPLEADO) ON DELETE CASCADE ENABLE;
  ALTER TABLE A1204805.PROY_TRANSACCION ADD CONSTRAINT IDPRODUCTO_FK FOREIGN KEY (IDPRODUCTO)
	  REFERENCES A1204805.PROY_PRODUCTO (IDPRODUCTO) ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROY_VIDEOJUEGO
--------------------------------------------------------

  ALTER TABLE A1204805.PROY_VIDEOJUEGO ADD CONSTRAINT IDPRODUCTO_SUC_FK FOREIGN KEY (IDPRODUCTO)
	  REFERENCES A1204805.PROY_PRODUCTO (IDPRODUCTO) ON DELETE CASCADE ENABLE;
