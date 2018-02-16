--------------------------------------------------------
-- Archivo creado  - viernes-febrero-16-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for DB Link BETA.QRO.ITESM.MX
--------------------------------------------------------

  CREATE DATABASE LINK "BETA.QRO.ITESM.MX"
   CONNECT TO "A1209023" IDENTIFIED BY VALUES '0601FE970CCEA26C65B8433BAB545BCE9C6AD3822D733A0812ACE70FF3A19F828A52CB8DD77D0F784986AEFD56A78B1CDEAC0648DDF9CB1353BC504535EDB730B0B77371891BFB32FCE88E16AF042F696FB9736490BE768789A20DDB9E01657B2F8BBEF696C37E392B077DD24D3263B5A232F07278751E9B498D6E43B1863216'
   USING 'slp';
--------------------------------------------------------
--  DDL for DB Link BULE.QRO.ITESM.MX
--------------------------------------------------------

  CREATE DATABASE LINK "BULE.QRO.ITESM.MX"
   CONNECT TO "A1205935" IDENTIFIED BY VALUES '06E17A334E577ABBC16052E203E7978693229A2C2C73922829378856C31CED58BDF19B3AABA23C923F4878C0730E534AF368F5BD69C9E9D35FF984680D8FB365B9E57F9F1A4FF2E843228209CA0AA5584A30AB479875F14C5933B2F1F5285B63784D08E15E6DF73E763784BBA019D276934A23F530DED7FB9C88BA76BB4A1464'
   USING 'qro';
--------------------------------------------------------
--  DDL for DB Link DIST.QRO.ITESM.MX
--------------------------------------------------------

  CREATE DATABASE LINK "DIST.QRO.ITESM.MX"
   CONNECT TO "A1209023" IDENTIFIED BY VALUES '06801E5831ED9A3ED9C8A8162D14BD907D6D8857312F4DF551AE0AAFCD42DA35D1950E051CF5E4529110629291A7BBDD0E0FED2D832E2996AF02B6B19AA572E6CA234A04D0D2D513A44CAD4881DA641B3C47C4C23951D3F4246046F3D4441E6C163D090BBA30CEF969AB75B864D36E0106395ABF2DCB1BEBAB68DC81E424F654'
   USING 'slp';
--------------------------------------------------------
--  DDL for DB Link GALE.QRO.ITESM.MX
--------------------------------------------------------

  CREATE DATABASE LINK "GALE.QRO.ITESM.MX"
   CONNECT TO "A1204805" IDENTIFIED BY VALUES '06AF9EDDB0AB6885B030CB0A01255A8ECBA84541AC515E8422F17748436455F8060E90661F2F738FADE262ACB11D43F3BA1E3785091F2EBF97C1FAFED9A374424C4CC9D3881EF276FB24C1E1F561D8775F063E9037B9E5E8D2BE2B9782E76D5AC67B8FB640A451C9FF3E86364C3DF7D8C3004C4F0549274C0268AD5C9D881F1C'
   USING 'qro';
--------------------------------------------------------
--  DDL for Sequence PROY_CLIENTE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "A1209023"."PROY_CLIENTE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_EMPLEADO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "A1209023"."PROY_EMPLEADO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_PRODUCTO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "A1209023"."PROY_PRODUCTO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_SUCURSAL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "A1209023"."PROY_SUCURSAL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_TRANSACCION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "A1209023"."PROY_TRANSACCION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table PROY_CLIENTE
--------------------------------------------------------

  CREATE TABLE "A1209023"."PROY_CLIENTE" 
   (	"IDCLIENTE" NUMBER, 
	"NOMBRE" VARCHAR2(512 BYTE), 
	"APELLIDOS" VARCHAR2(512 BYTE), 
	"DIRECCION" VARCHAR2(512 BYTE), 
	"CIUDAD" VARCHAR2(512 BYTE), 
	"ESTADO" VARCHAR2(512 BYTE), 
	"TELEFONO" VARCHAR2(512 BYTE), 
	"EMAIL" VARCHAR2(512 BYTE), 
	"FECHAREGISTRO" DATE, 
	"SALDO" NUMBER(7,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROY_CONSOLA
--------------------------------------------------------

  CREATE TABLE "A1209023"."PROY_CONSOLA" 
   (	"IDPRODUCTO" NUMBER, 
	"EMPRESA" VARCHAR2(512 BYTE), 
	"ALMACENAMIENTO" VARCHAR2(512 BYTE), 
	"ACCESORIOS" VARCHAR2(512 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROY_EMPLEADO
--------------------------------------------------------

  CREATE TABLE "A1209023"."PROY_EMPLEADO" 
   (	"IDEMPLEADO" NUMBER, 
	"IDSUCURSAL" NUMBER, 
	"NOMBRE" VARCHAR2(512 BYTE), 
	"APELLIDOS" VARCHAR2(512 BYTE), 
	"DIRECCION" VARCHAR2(512 BYTE), 
	"TELEFONO" VARCHAR2(512 BYTE), 
	"EMAIL" VARCHAR2(512 BYTE), 
	"FECHAREGISTRO" DATE, 
	"PUESTO" VARCHAR2(512 BYTE), 
	"SALARIO" NUMBER(7,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROY_PRODUCTO
--------------------------------------------------------

  CREATE TABLE "A1209023"."PROY_PRODUCTO" 
   (	"IDPRODUCTO" NUMBER, 
	"IDSUCURSAL" NUMBER, 
	"NOMBRE" VARCHAR2(512 BYTE), 
	"DESCRIPCION" VARCHAR2(512 BYTE), 
	"FECHALANZAMIENTO" DATE, 
	"ESTADO" VARCHAR2(512 BYTE) DEFAULT 'Nuevo', 
	"DISPONIBLE" NUMBER(2,0), 
	"PRECIOVENTA" NUMBER(6,2), 
	"DESCUENTO" NUMBER(6,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROY_SUCURSAL
--------------------------------------------------------

  CREATE TABLE "A1209023"."PROY_SUCURSAL" 
   (	"IDSUCURSAL" NUMBER, 
	"DIRECCION" VARCHAR2(512 BYTE), 
	"CIUDAD" VARCHAR2(20 BYTE), 
	"ESTADO" VARCHAR2(20 BYTE), 
	"TELEFONO" VARCHAR2(20 BYTE), 
	"NOMBRE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROY_TRANSACCION
--------------------------------------------------------

  CREATE TABLE "A1209023"."PROY_TRANSACCION" 
   (	"IDTRANSACCION" NUMBER, 
	"IDPRODUCTO" NUMBER, 
	"IDCLIENTE" NUMBER, 
	"IDEMPLEADO" NUMBER, 
	"TIPO" VARCHAR2(512 BYTE), 
	"MONTO" NUMBER(6,2), 
	"FECHA" DATE, 
	"METODOPAGO" VARCHAR2(512 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROY_VIDEOJUEGO
--------------------------------------------------------

  CREATE TABLE "A1209023"."PROY_VIDEOJUEGO" 
   (	"IDPRODUCTO" NUMBER, 
	"RATING" NUMBER, 
	"CLASIFICACION" VARCHAR2(512 BYTE), 
	"GENERO" VARCHAR2(512 BYTE), 
	"DESARROLLADOR" VARCHAR2(512 BYTE), 
	"JUGADORES" VARCHAR2(512 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View PROY_CONSOLAMASVENDIDA
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."PROY_CONSOLAMASVENDIDA" ("NOMBRE") AS 
  SELECT nombre
FROM (SELECT nombre, sum(contadorSucursal) as contadorGlobal
FROM ((SELECT nombre, count(*) as contadorSucursal
FROM proy_producto, proy_consola, proy_transaccion
Where  proy_producto.idproducto = proy_consola.idproducto and proy_producto.idproducto = proy_transaccion.idproducto
group by proy_producto.nombre)

UNION

(SELECT nombre, count(*) as contadorSucursal
FROM proy_producto@bule, proy_consola@bule, proy_transaccion@bule
Where  proy_producto.idproducto = proy_consola.idproducto and proy_producto.idproducto = proy_transaccion.idproducto
group by proy_producto.nombre)

UNION

(SELECT nombre, count(*) as contadorSucursal
FROM proy_producto@gale, proy_consola@gale, proy_transaccion@gale
Where  proy_producto.idproducto = proy_consola.idproducto and proy_producto.idproducto = proy_transaccion.idproducto
group by proy_producto.nombre))
group by nombre 
order by contadorGlobal desc)
WHERE rownum = 1
;
--------------------------------------------------------
--  DDL for View PROY_CONSOLAS_GLOBALES_TOTALES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."PROY_CONSOLAS_GLOBALES_TOTALES" ("IDSUCURSAL", "CIUDAD", "NOMBRE", "IDPRODUCTO", "Producto", "ALMACENAMIENTO") AS 
  (SELECT su.idSucursal ,su.ciudad,su.nombre ,pro.idProducto ,pro.nombre as "Producto"  ,co.almacenamiento
FROM proy_sucursal su, proy_producto pro, proy_consola co
WHERE pro.idProducto=co.idProducto
and su.idSucursal=pro.idsucursal)
UNION
(SELECT su.idSucursal ,su.ciudad,su.nombre ,pro.idProducto ,pro.nombre as "Producto",co.almacenamiento
FROM proy_sucursal@bule su, proy_producto@bule pro, proy_consola@bule co
WHERE pro.idProducto=co.idProducto
and su.idSucursal=pro.idsucursal)
UNION
(SELECT su.idSucursal ,su.ciudad,su.nombre ,pro.idProducto ,pro.nombre as "Producto" ,co.almacenamiento
FROM proy_sucursal@gale su, proy_producto@gale pro, proy_consola@gale co
WHERE pro.idProducto=co.idProducto
and su.idSucursal=pro.idsucursal)
;
--------------------------------------------------------
--  DDL for View PROY_EMPLEADOS_GLOBALES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."PROY_EMPLEADOS_GLOBALES" ("IDEMPLEADO", "Sucursal", "NOMBRE", "APELLIDOS", "PUESTO", "SALARIO") AS 
  SELECT em.idEmpleado,su.nombre as "Sucursal",em.nombre,em.apellidos,em.puesto,em.salario
FROM proy_empleado em,proy_sucursal su
WHERE su.idSucursal=em.idSucursal
union
SELECT em.idEmpleado,su.nombre as "Sucursal",em.nombre,em.apellidos,em.puesto,em.salario
FROM proy_empleado@bule em,proy_sucursal@bule su
WHERE su.idSucursal=em.idSucursal
union
SELECT em.idEmpleado,su.nombre as "Sucursal",em.nombre,em.apellidos,em.puesto,em.salario
FROM proy_empleado@gale em,proy_sucursal@gale su
WHERE su.idSucursal=em.idSucursal
;
--------------------------------------------------------
--  DDL for View PROY_EMPLEADOVENDEMAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."PROY_EMPLEADOVENDEMAS" ("NOMBRE") AS 
  SELECT nombre
FROM (SELECT nombre, sum(contadorEmpleado) as contadorGlobal
FROM((SELECT nombre, count(*) as contadorEmpleado
FROM proy_empleado, proy_transaccion
WHERE proy_empleado.idempleado = proy_transaccion.idempleado
group by nombre)

UNION

(SELECT nombre, count(*) as contadorEmpleado
FROM proy_empleado@bule, proy_transaccion@bule
WHERE proy_empleado.idempleado = proy_transaccion.idempleado
group by nombre)

UNION

(SELECT nombre, count(*) as contadorEmpleado
FROM proy_empleado@gale, proy_transaccion@gale
WHERE proy_empleado.idempleado = proy_transaccion.idempleado
group by nombre))
group by nombre 
order by contadorGlobal desc)
WHERE rownum = 1
;
--------------------------------------------------------
--  DDL for View PROY_PRODUCTOS_BOLEVARES_DIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."PROY_PRODUCTOS_BOLEVARES_DIST" ("IDSUCURSAL", "CIUDAD", "Sucursal", "IDPRODUCTO", "Producto", "PRECIOVENTA", "Distribuidor") AS 
  SELECT su.idSucursal ,su.ciudad,su.nombre as "Sucursal", pro.idProducto , pro.nombre as "Producto",pro.precioVenta, prov.nombre as "Distribuidor"
FROM proy_sucursal su, proy_producto pro, proy_pedido@dist pe, proy_proveedor@dist prov
WHERE su.idSucursal=pro.idSucursal
and prov.idProv=pe.idProv
and pro.idsucursal=pe.idPedido
;
--------------------------------------------------------
--  DDL for View PROY_PRODUCTOS_DISPONIBLES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."PROY_PRODUCTOS_DISPONIBLES" ("IDPRODUCTO", "IDSUCURSAL", "NOMBRE", "PRECIOVENTA") AS 
  SELECT "IDPRODUCTO","IDSUCURSAL","NOMBRE","PRECIOVENTA"
FROM PROY_PRODUCTO prod
WHERE prod.disponible = 1

UNION ALL

SELECT "IDPRODUCTO","IDSUCURSAL","NOMBRE","PRECIOVENTA"
FROM PROY_PRODUCTO@gale prodg
WHERE prodg.disponible = 1


UNION ALL

SELECT "IDPRODUCTO","IDSUCURSAL","NOMBRE","PRECIOVENTA"
FROM PROY_PRODUCTO@bule prodb
WHERE prodb.disponible = 1
;
--------------------------------------------------------
--  DDL for View PROY_TODOS_EMPLEADOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."PROY_TODOS_EMPLEADOS" ("IDEMPLEADO", "IDSUCURSAL", "NOMBRE", "APELLIDOS", "DIRECCION", "TELEFONO", "EMAIL", "FECHAREGISTRO", "PUESTO", "SALARIO") AS 
  SELECT "IDEMPLEADO","IDSUCURSAL","NOMBRE","APELLIDOS","DIRECCION","TELEFONO","EMAIL","FECHAREGISTRO","PUESTO","SALARIO"
FROM PROY_EMPLEADO
UNION ALL
SELECT "IDEMPLEADO","IDSUCURSAL","NOMBRE","APELLIDOS","DIRECCION","TELEFONO","EMAIL","FECHAREGISTRO","PUESTO","SALARIO"
FROM PROY_EMPLEADO@gale
UNION ALL
SELECT "IDEMPLEADO","IDSUCURSAL","NOMBRE","APELLIDOS","DIRECCION","TELEFONO","EMAIL","FECHAREGISTRO","PUESTO","SALARIO"
FROM PROY_EMPLEADO@bule
;
--------------------------------------------------------
--  DDL for View PROY_TOTAL_PRODUCTOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."PROY_TOTAL_PRODUCTOS" ("NOMBRE", "TOTAL") AS 
  select prod.Nombre, COUNT(*) AS "TOTAL"
from (select Nombre from PROY_PRODUCTO
union all
select Nombre from PROY_PRODUCTO@gale
union all
select Nombre from PROY_PRODUCTO@bule
) prod
group by Nombre
order by Nombre
;
--------------------------------------------------------
--  DDL for View PROY_VIDEO_COMPLETO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."PROY_VIDEO_COMPLETO" ("IDPRODUCTO", "IDSUCURSAL", "IDPEDIDO", "NOMBRE", "DESCRIPCION", "PRECIOVENTA", "DESCUENTO", "FECHALANZAMIENTO", "ESTADO", "DISPONIBLE", "RATING", "CLASIFICACION", "GENERO", "DESARROLLADOR", "JUGADORES", "PRECIOPROV") AS 
  SELECT prod.IDPRODUCTO, prod.idSucursal, prodist.idpedido, prod.nombre, prod.descripcion, prod.precioVenta, prod.descuento, prod.fechaLanzamiento, prod.estado, prod.disponible, video.rating, video.clasificacion, video.genero, video.desarrollador, video.jugadores, prodist.precioprov
FROM PROY_VIDEOJUEGO video, PROY_PRODUCTO prod, PROY_PRODUCTO@dist prodist
WHERE video.IDPRODUCTO = prod.IDPRODUCTO AND prod.IDPRODUCTO = prodist.IDPRODUCTO
;
--------------------------------------------------------
--  DDL for View PROY_VIDEOJUEGOMASVENDIDO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."PROY_VIDEOJUEGOMASVENDIDO" ("NOMBRE") AS 
  SELECT nombre
FROM (SELECT nombre, sum(contadorSucursal) as contadorGlobal
FROM ((SELECT nombre, count(*) as contadorSucursal
FROM proy_producto, proy_videojuego, proy_transaccion
Where  proy_producto.idproducto = proy_videojuego.idproducto and proy_producto.idproducto = proy_transaccion.idproducto
group by proy_producto.nombre)

UNION

(SELECT nombre, count(*) as contadorSucursal
FROM proy_producto@bule, proy_videojuego@bule, proy_transaccion@bule
Where  proy_producto.idproducto = proy_videojuego.idproducto and proy_producto.idproducto = proy_transaccion.idproducto
group by proy_producto.nombre)

UNION

(SELECT nombre, count(*) as contadorSucursal
FROM proy_producto@gale, proy_videojuego@gale, proy_transaccion@gale
Where  proy_producto.idproducto = proy_videojuego.idproducto and proy_producto.idproducto = proy_transaccion.idproducto
group by proy_producto.nombre))
group by nombre 
order by contadorGlobal desc)
WHERE rownum = 1
;
REM INSERTING into A1209023.PROY_CLIENTE
SET DEFINE OFF;
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (1,'Boycie','Malt','8 Merrick Road','Albany','New York','(518) 1306163','bmalt0@aboutads.info',to_date('01/12/12','DD/MM/RR'),13.46);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (2,'Annabella','Behemod','80155 Del Mar Terrace','Cincinnati','Ohio','(513) 3897367','abeamont1@uiuc.edu',to_date('02/03/17','DD/MM/RR'),41.97);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (3,'Vallie','Baine','51 Johnson Hill','Tyler','Texas','(903) 4209867','vbaine2@miitbeian.gov.cn',to_date('01/12/11','DD/MM/RR'),90.04);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (4,'Sandye','Feenan','6004 Lunder Pass','Seattle','Washington','(206) 4603386','sfeenan3@hostgator.com',to_date('02/03/10','DD/MM/RR'),72.5);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (5,'Halie','Frackiewicz','06427 Fuller Circle','Van Nuys','California','(213) 6789426','hfrackiewicz4@uol.com.br',to_date('02/03/17','DD/MM/RR'),77.75);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (6,'Cosetta','Demougeot','6 Melody Terrace','Austin','Texas','(512) 4304682','cdemougeot5@alexa.com',to_date('01/12/15','DD/MM/RR'),54.19);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (7,'Gertrud','Iceton','41 Quincy Way','Corpus Christi','Texas','(361) 2640917','giceton6@google.com',to_date('01/12/13','DD/MM/RR'),78.19);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (8,'Tandy','Ivens','9 Burrows Crossing','Springfield','Illinois','(217) 9951973','tivens7@bloomberg.com',to_date('01/12/18','DD/MM/RR'),89.28);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (9,'Kort','Mowsdale','15 Katie Plaza','Northridge','California','(818) 8184086','kmowsdale8@storify.com',to_date('01/12/12','DD/MM/RR'),64.39);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (10,'Alick','Dunnet','6704 Debs Plaza','Frederick','Maryland','(240) 8666284','adunnet9@example.com',to_date('02/03/17','DD/MM/RR'),47.79);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (11,'Therine','Sangar','2 Dwight Parkway','Escondido','California','(760) 9205964','tsangara@constantcontact.com',to_date('01/12/17','DD/MM/RR'),10.13);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (12,'Ethelin','Julyan','52 Scofield Pass','Houston','Texas','(713) 1550059','ejulyanb@sphinn.com',to_date('02/03/08','DD/MM/RR'),96.8);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (13,'Birgitta','Toone','38030 Boyd Drive','Lansing','Michigan','(517) 4656237','btoonec@theatlantic.com',to_date('02/03/01','DD/MM/RR'),78.24);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (14,'Bevin','Quixley','549 Granby Circle','Fort Worth','Texas','(817) 1873280','bquixleyd@utexas.edu',to_date('01/12/92','DD/MM/RR'),32.29);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (15,'Thane','Wilks','37849 Cody Street','Newark','New Jersey','(862) 6214265','twilkse@dion.ne.jp',to_date('02/03/07','DD/MM/RR'),0.47);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (16,'Julina','Terzi','2586 Red Cloud Hill','Memphis','Tennessee','(901) 6644456','jterzif@sfgate.com',to_date('02/03/17','DD/MM/RR'),99.3);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (17,'Hubey','Grist','36598 Mesta Park','Winston Salem','North Carolina','(336) 9487067','hgristg@oracle.com',to_date('01/12/17','DD/MM/RR'),80.43);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (18,'Roz','Imason','79542 Warrior Alley','Denver','Colorado','(720) 2438214','rimasonh@java.com',to_date('02/03/17','DD/MM/RR'),35.8);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (19,'Amandie','Ogilby','53577 Farragut Court','Independence','Missouri','(816) 6263066','aogilbyi@addthis.com',to_date('01/12/17','DD/MM/RR'),55.68);
Insert into A1209023.PROY_CLIENTE (IDCLIENTE,NOMBRE,APELLIDOS,DIRECCION,CIUDAD,ESTADO,TELEFONO,EMAIL,FECHAREGISTRO,SALDO) values (20,'Alphonso','Negus','178 Rieder Road','Harrisburg','Pennsylvania','(717) 9502295','anegusj@freewebs.com',to_date('01/12/17','DD/MM/RR'),35.59);
REM INSERTING into A1209023.PROY_CONSOLA
SET DEFINE OFF;
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (46,'Microsoft','500GB','Dos controles, fuente de poder.');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (47,'Microsoft','500GB','Dos controles, fuente de poder.');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (48,'Microsoft','500GB','Dos controles, fuente de poder.');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (49,'Microsoft','500GB','Dos controles, fuente de poder.');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (50,'Microsoft','500GB','Dos controles, fuente de poder.');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (51,'Sony','1TB','Un control');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (52,'Sony','1TB','Un control');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (53,'Sony','1TB','Un control');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (54,'Sony','1TB','Un control');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (55,'Sony','1TB','Un control');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (56,'Nintendo','500GB','Dos controles, un juego.');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (57,'Nintendo','500GB','Dos controles, un juego.');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (58,'Nintendo','500GB','Dos controles, un juego.');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (59,'Nintendo','500GB','Dos controles, un juego.');
Insert into A1209023.PROY_CONSOLA (IDPRODUCTO,EMPRESA,ALMACENAMIENTO,ACCESORIOS) values (60,'Nintendo','500GB','Dos controles, un juego.');
REM INSERTING into A1209023.PROY_EMPLEADO
SET DEFINE OFF;
Insert into A1209023.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (9,2,'Addie','Coxon','93903 Steensland Circle','919-116-5308','acoxon8@mit.edu',to_date('01/12/12','DD/MM/RR'),'Accounting',69.97);
Insert into A1209023.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (10,2,'Tabor','Marshal','78781 Armistice Pass','237-739-0694','tmarshal9@nature.com',to_date('02/03/17','DD/MM/RR'),'Accounting',20.55);
Insert into A1209023.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (11,2,'Lorianna','Kneesha','2875 Trailsway Place','269-876-7162','lkneeshaa@yahoo.co.jp',to_date('01/12/17','DD/MM/RR'),'Support',70.13);
Insert into A1209023.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (12,2,'Lolita','Youngman','24 Merchant Point','538-327-9379','lyoungmanb@mlb.com',to_date('02/03/08','DD/MM/RR'),'Services',74.81);
Insert into A1209023.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (13,2,'Caria','Heino','6 Donald Plaza','503-543-2143','cheinoc@newyorker.com',to_date('02/03/01','DD/MM/RR'),'Sales',61.92);
Insert into A1209023.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (14,2,'Hardy','Ornelas','3 Loomis Trail','105-463-8108','hornelasd@vk.com',to_date('01/12/92','DD/MM/RR'),'Legal',84.23);
Insert into A1209023.PROY_EMPLEADO (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (8,2,'Melvin','O''Callaghan','43512 Grover Drive','621-487-9308','mocallaghan7@java.com',to_date('01/12/18','DD/MM/RR'),'Human Resources',70.11);
REM INSERTING into A1209023.PROY_PRODUCTO
SET DEFINE OFF;
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (96,2,'Overwatch','Nuevo juego de Blizzard',to_date('01/06/17','DD/MM/RR'),'Nuevo',0,1200,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (31,2,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',to_date('01/06/17','DD/MM/RR'),'Nuevo',1,1000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (32,2,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',to_date('01/06/17','DD/MM/RR'),'Nuevo',1,1000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (33,2,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',to_date('01/06/17','DD/MM/RR'),'Nuevo',1,1000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (34,2,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',to_date('01/06/17','DD/MM/RR'),'Nuevo',1,1000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (35,2,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',to_date('01/06/17','DD/MM/RR'),'Nuevo',1,1000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (36,2,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.',to_date('01/11/17','DD/MM/RR'),'Nuevo',1,1200,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (37,2,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.',to_date('01/11/17','DD/MM/RR'),'Nuevo',1,1200,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (38,2,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.',to_date('01/11/17','DD/MM/RR'),'Nuevo',1,1200,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (39,2,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.',to_date('01/11/17','DD/MM/RR'),'Nuevo',1,1200,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (40,2,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.',to_date('01/11/17','DD/MM/RR'),'Nuevo',1,1200,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (41,2,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.',to_date('01/09/17','DD/MM/RR'),'Nuevo',1,900,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (42,2,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.',to_date('01/09/17','DD/MM/RR'),'Nuevo',1,900,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (43,2,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.',to_date('01/09/17','DD/MM/RR'),'Nuevo',1,900,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (44,2,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.',to_date('01/09/17','DD/MM/RR'),'Nuevo',1,900,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (45,2,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.',to_date('01/09/17','DD/MM/RR'),'Nuevo',1,900,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (46,2,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿',to_date('01/01/16','DD/MM/RR'),'Nuevo',1,6000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (47,2,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿',to_date('01/01/16','DD/MM/RR'),'Nuevo',1,6000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (48,2,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿',to_date('01/01/16','DD/MM/RR'),'Nuevo',1,6000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (49,2,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿',to_date('01/01/16','DD/MM/RR'),'Nuevo',1,6000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (50,2,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿',to_date('01/01/16','DD/MM/RR'),'Nuevo',1,6000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (51,2,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4',to_date('01/04/16','DD/MM/RR'),'Nuevo',1,7000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (52,2,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4',to_date('01/04/16','DD/MM/RR'),'Nuevo',1,7000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (53,2,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4',to_date('01/04/16','DD/MM/RR'),'Nuevo',1,7000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (54,2,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4',to_date('01/04/16','DD/MM/RR'),'Nuevo',1,7000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (55,2,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4',to_date('01/04/16','DD/MM/RR'),'Nuevo',1,7000,0);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (56,2,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿',to_date('01/02/17','DD/MM/RR'),'Nuevo',1,5000,0.2);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (57,2,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿',to_date('01/02/17','DD/MM/RR'),'Nuevo',1,5000,0.2);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (58,2,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿',to_date('01/02/17','DD/MM/RR'),'Nuevo',1,5000,0.2);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (59,2,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿',to_date('01/02/17','DD/MM/RR'),'Nuevo',1,5000,0.2);
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDSUCURSAL,NOMBRE,DESCRIPCION,FECHALANZAMIENTO,ESTADO,DISPONIBLE,PRECIOVENTA,DESCUENTO) values (60,2,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿',to_date('01/02/17','DD/MM/RR'),'Nuevo',1,5000,0.2);
REM INSERTING into A1209023.PROY_SUCURSAL
SET DEFINE OFF;
Insert into A1209023.PROY_SUCURSAL (IDSUCURSAL,DIRECCION,CIUDAD,ESTADO,TELEFONO,NOMBRE) values (1,'Prol. Blvd. Bernardo Quintana 4100, Plaza Boulevares, 76160','Queretaro','Queretaro','(518) 1306163','Boulevares');
Insert into A1209023.PROY_SUCURSAL (IDSUCURSAL,DIRECCION,CIUDAD,ESTADO,TELEFONO,NOMBRE) values (2,'Carretera San Luis Potos¿ Quer¿taro 12401, Ejido El Satelite, 76127','Queretaro','Queretaro','(215) 1239210','Antea');
Insert into A1209023.PROY_SUCURSAL (IDSUCURSAL,DIRECCION,CIUDAD,ESTADO,TELEFONO,NOMBRE) values (3,'Av. 5 de Febrero 99, Los Virreyes, 76175','Queretaro','Queretaro','(203) 2930399','Galerias');
REM INSERTING into A1209023.PROY_TRANSACCION
SET DEFINE OFF;
Insert into A1209023.PROY_TRANSACCION (IDTRANSACCION,IDPRODUCTO,IDCLIENTE,IDEMPLEADO,TIPO,MONTO,FECHA,METODOPAGO) values (46,null,5,10,'Venta',6000,to_date('14/02/18','DD/MM/RR'),'Tarjeta');
REM INSERTING into A1209023.PROY_VIDEOJUEGO
SET DEFINE OFF;
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (96,5,'T','Shooter','Blizzard','1 a 16');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (32,4,'M','FPS','Activition','1 a 16');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (33,4,'M','FPS','Activition','1 a 16');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (34,4,'M','FPS','Activition','1 a 16');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (35,4,'M','FPS','Activition','1 a 16');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (36,5,'M','TPS, FPS','EA DICE','1 a 40');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (37,5,'M','TPS, FPS','EA DICE','1 a 40');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (38,5,'M','TPS, FPS','EA DICE','1 a 40');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (39,5,'M','TPS, FPS','EA DICE','1 a 40');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (40,5,'M','TPS, FPS','EA DICE','1 a 40');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (41,3,'E','Carreras','Nintendo','1 a 6');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (42,3,'E','Carreras','Nintendo','1 a 6');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (43,3,'E','Carreras','Nintendo','1 a 6');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (44,3,'E','Carreras','Nintendo','1 a 6');
Insert into A1209023.PROY_VIDEOJUEGO (IDPRODUCTO,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES) values (45,3,'E','Carreras','Nintendo','1 a 6');
REM INSERTING into A1209023.PROY_CONSOLAMASVENDIDA
SET DEFINE OFF;
Insert into A1209023.PROY_CONSOLAMASVENDIDA (NOMBRE) values ('Xbox One S');
REM INSERTING into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES
SET DEFINE OFF;
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',16,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',17,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',18,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',19,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',20,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',21,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',22,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',23,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',24,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',25,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',26,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',27,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',28,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',29,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (1,'Queretaro','Boulevares',30,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',46,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',47,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',48,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',49,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',50,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',51,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',52,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',53,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',54,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',55,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',56,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',57,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',58,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',59,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (2,'Queretaro','Antea',60,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',76,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',77,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',78,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',79,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',80,'Xbox One S','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',81,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',82,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',83,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',84,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',85,'Playstation 4','1TB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',86,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',87,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',88,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',89,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',90,'Wii U Negro Deluxe','500GB');
Insert into A1209023.PROY_CONSOLAS_GLOBALES_TOTALES (IDSUCURSAL,CIUDAD,NOMBRE,IDPRODUCTO,"Producto",ALMACENAMIENTO) values (3,'Queretaro','Galerias',97,'PSP','10gb');
REM INSERTING into A1209023.PROY_EMPLEADOS_GLOBALES
SET DEFINE OFF;
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (1,'Galerias','Cordelia','Houlworth','Human Resources',16.04);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (2,'Galerias','Carin','Fellis','Services',84.62);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (3,'Galerias','Marcus','Vink','Services',55.64);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (4,'Galerias','Meggie','McVitty','Training',68.4);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (5,'Galerias','Jenny','Bardnam','Support',44.97);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (6,'Galerias','Annmaria','Mulheron','Training',95.11);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (8,'Antea','Melvin','O''Callaghan','Human Resources',70.11);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (9,'Antea','Addie','Coxon','Accounting',69.97);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (10,'Antea','Tabor','Marshal','Accounting',20.55);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (11,'Antea','Lorianna','Kneesha','Support',70.13);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (12,'Antea','Lolita','Youngman','Services',74.81);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (13,'Antea','Caria','Heino','Sales',61.92);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (14,'Antea','Hardy','Ornelas','Legal',84.23);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (21,'Boulevares','Alastair','Eminson','Engineering',44.97);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (22,'Boulevares','Ev','Devenport','Services',87.81);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (23,'Boulevares','Olympie','Sunter','Legal',18.78);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (24,'Boulevares','Keriann','Corder','Marketing',80.41);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (25,'Boulevares','Livvy','Plane','Support',58.34);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (26,'Boulevares','Delila','Dalziell','Business Development',84.39);
Insert into A1209023.PROY_EMPLEADOS_GLOBALES (IDEMPLEADO,"Sucursal",NOMBRE,APELLIDOS,PUESTO,SALARIO) values (27,'Boulevares','Michal','Tidmas','Human Resources',60.05);
REM INSERTING into A1209023.PROY_EMPLEADOVENDEMAS
SET DEFINE OFF;
Insert into A1209023.PROY_EMPLEADOVENDEMAS (NOMBRE) values ('Marcus');
REM INSERTING into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST
SET DEFINE OFF;
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',96,'Overwatch',1200,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',60,'Wii U Negro Deluxe',5000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',32,'Call of Duty WWII',1000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',33,'Call of Duty WWII',1000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',34,'Call of Duty WWII',1000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',35,'Call of Duty WWII',1000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',36,'Star Wars Batllefront II',1200,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',37,'Star Wars Batllefront II',1200,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',38,'Star Wars Batllefront II',1200,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',39,'Star Wars Batllefront II',1200,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',40,'Star Wars Batllefront II',1200,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',41,'Mario Kart 8',900,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',42,'Mario Kart 8',900,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',43,'Mario Kart 8',900,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',44,'Mario Kart 8',900,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',45,'Mario Kart 8',900,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',46,'Xbox One S',6000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',47,'Xbox One S',6000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',48,'Xbox One S',6000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',49,'Xbox One S',6000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',50,'Xbox One S',6000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',51,'Playstation 4',7000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',52,'Playstation 4',7000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',53,'Playstation 4',7000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',54,'Playstation 4',7000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',55,'Playstation 4',7000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',56,'Wii U Negro Deluxe',5000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',57,'Wii U Negro Deluxe',5000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',58,'Wii U Negro Deluxe',5000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',59,'Wii U Negro Deluxe',5000,'Youspan');
Insert into A1209023.PROY_PRODUCTOS_BOLEVARES_DIST (IDSUCURSAL,CIUDAD,"Sucursal",IDPRODUCTO,"Producto",PRECIOVENTA,"Distribuidor") values (2,'Queretaro','Antea',31,'Call of Duty WWII',1000,'Youspan');
REM INSERTING into A1209023.PROY_PRODUCTOS_DISPONIBLES
SET DEFINE OFF;
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (31,2,'Call of Duty WWII',1000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (32,2,'Call of Duty WWII',1000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (33,2,'Call of Duty WWII',1000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (34,2,'Call of Duty WWII',1000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (35,2,'Call of Duty WWII',1000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (36,2,'Star Wars Batllefront II',1200);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (37,2,'Star Wars Batllefront II',1200);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (38,2,'Star Wars Batllefront II',1200);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (39,2,'Star Wars Batllefront II',1200);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (40,2,'Star Wars Batllefront II',1200);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (41,2,'Mario Kart 8',900);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (42,2,'Mario Kart 8',900);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (43,2,'Mario Kart 8',900);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (44,2,'Mario Kart 8',900);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (45,2,'Mario Kart 8',900);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (46,2,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (47,2,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (48,2,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (49,2,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (50,2,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (51,2,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (52,2,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (53,2,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (54,2,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (55,2,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (56,2,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (57,2,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (58,2,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (59,2,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (60,2,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (61,3,'Call of Duty WWII',1000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (62,3,'Call of Duty WWII',1000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (63,3,'Call of Duty WWII',1000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (64,3,'Call of Duty WWII',1000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (65,3,'Call of Duty WWII',1000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (66,3,'Star Wars Batllefront II',1200);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (67,3,'Star Wars Batllefront II',1200);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (68,3,'Star Wars Batllefront II',1200);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (69,3,'Star Wars Batllefront II',1200);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (70,3,'Star Wars Batllefront II',1200);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (71,3,'Mario Kart 8',900);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (72,3,'Mario Kart 8',900);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (73,3,'Mario Kart 8',900);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (74,3,'Mario Kart 8',900);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (75,3,'Mario Kart 8',900);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (76,3,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (77,3,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (78,3,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (79,3,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (80,3,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (81,3,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (82,3,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (83,3,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (84,3,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (85,3,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (86,3,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (87,3,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (88,3,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (89,3,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (90,3,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (16,1,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (17,1,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (18,1,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (19,1,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (20,1,'Xbox One S',6000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (21,1,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (22,1,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (23,1,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (24,1,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (25,1,'Playstation 4',7000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (26,1,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (27,1,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (28,1,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (29,1,'Wii U Negro Deluxe',5000);
Insert into A1209023.PROY_PRODUCTOS_DISPONIBLES (IDPRODUCTO,IDSUCURSAL,NOMBRE,PRECIOVENTA) values (30,1,'Wii U Negro Deluxe',5000);
REM INSERTING into A1209023.PROY_TODOS_EMPLEADOS
SET DEFINE OFF;
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (9,2,'Addie','Coxon','93903 Steensland Circle','919-116-5308','acoxon8@mit.edu',to_date('01/12/12','DD/MM/RR'),'Accounting',69.97);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (10,2,'Tabor','Marshal','78781 Armistice Pass','237-739-0694','tmarshal9@nature.com',to_date('02/03/17','DD/MM/RR'),'Accounting',20.55);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (11,2,'Lorianna','Kneesha','2875 Trailsway Place','269-876-7162','lkneeshaa@yahoo.co.jp',to_date('01/12/17','DD/MM/RR'),'Support',70.13);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (12,2,'Lolita','Youngman','24 Merchant Point','538-327-9379','lyoungmanb@mlb.com',to_date('02/03/08','DD/MM/RR'),'Services',74.81);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (13,2,'Caria','Heino','6 Donald Plaza','503-543-2143','cheinoc@newyorker.com',to_date('02/03/01','DD/MM/RR'),'Sales',61.92);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (14,2,'Hardy','Ornelas','3 Loomis Trail','105-463-8108','hornelasd@vk.com',to_date('01/12/92','DD/MM/RR'),'Legal',84.23);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (8,2,'Melvin','O''Callaghan','43512 Grover Drive','621-487-9308','mocallaghan7@java.com',to_date('01/12/18','DD/MM/RR'),'Human Resources',70.11);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (1,3,'Cordelia','Houlworth','9 Montana Center','717-253-2027','choulworthe@flavors.me',to_date('02/03/07','DD/MM/RR'),'Human Resources',16.04);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (2,3,'Carin','Fellis','86976 Morningstar Alley','964-912-5217','cfellisf@1688.com',to_date('02/03/17','DD/MM/RR'),'Services',84.62);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (3,3,'Marcus','Vink','6784 Alpine Road','992-212-7339','mvinkg@va.gov',to_date('01/12/17','DD/MM/RR'),'Services',55.64);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (4,3,'Meggie','McVitty','7458 3rd Point','837-277-5174','mmcvittyh@soundcloud.com',to_date('02/03/17','DD/MM/RR'),'Training',68.4);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (5,3,'Jenny','Bardnam','7 Hintze Hill','612-199-1436','jbardnami@theglobeandmail.com',to_date('01/12/17','DD/MM/RR'),'Support',44.97);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (6,3,'Annmaria','Mulheron','63 Lighthouse Bay Parkway','245-963-0455','amulheronj@acquirethisname.com',to_date('01/12/17','DD/MM/RR'),'Training',95.11);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (21,1,'Alastair','Eminson','3 Dexter Court','923-796-9227','aeminson0@bigcartel.com',to_date('01/12/12','DD/MM/RR'),'Engineering',44.97);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (22,1,'Ev','Devenport','758 Stone Corner Parkway','355-264-4618','edevenport1@vimeo.com',to_date('02/03/17','DD/MM/RR'),'Services',87.81);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (23,1,'Olympie','Sunter','6 Dakota Center','754-436-8876','osunter2@php.net',to_date('01/12/11','DD/MM/RR'),'Legal',18.78);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (24,1,'Keriann','Corder','5432 Reindahl Avenue','530-626-1567','kcorder3@eepurl.com',to_date('02/03/10','DD/MM/RR'),'Marketing',80.41);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (25,1,'Livvy','Plane','83 Magdeline Park','633-193-4746','lplane4@slashdot.org',to_date('02/03/17','DD/MM/RR'),'Support',58.34);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (26,1,'Delila','Dalziell','67859 Duke Parkway','914-805-7847','ddalziell5@disqus.com',to_date('01/12/15','DD/MM/RR'),'Business Development',84.39);
Insert into A1209023.PROY_TODOS_EMPLEADOS (IDEMPLEADO,IDSUCURSAL,NOMBRE,APELLIDOS,DIRECCION,TELEFONO,EMAIL,FECHAREGISTRO,PUESTO,SALARIO) values (27,1,'Michal','Tidmas','4 Roth Way','409-662-0301','mtidmas6@barnesandnoble.com',to_date('01/12/13','DD/MM/RR'),'Human Resources',60.05);
REM INSERTING into A1209023.PROY_TOTAL_PRODUCTOS
SET DEFINE OFF;
Insert into A1209023.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Call of Duty WWII',10);
Insert into A1209023.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Mario Kart 8',10);
Insert into A1209023.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Overwatch',1);
Insert into A1209023.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Playstation 4',15);
Insert into A1209023.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('PSP',1);
Insert into A1209023.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Star Wars Batllefront II',10);
Insert into A1209023.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Wii U Negro Deluxe',15);
Insert into A1209023.PROY_TOTAL_PRODUCTOS (NOMBRE,TOTAL) values ('Xbox One S',15);
REM INSERTING into A1209023.PROY_VIDEO_COMPLETO
SET DEFINE OFF;
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (96,2,5,'Overwatch','Nuevo juego de Blizzard',1200,0,to_date('01/06/17','DD/MM/RR'),'Nuevo',0,5,'T','Shooter','Blizzard','1 a 16',900);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (32,2,2,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',1000,0,to_date('01/06/17','DD/MM/RR'),'Nuevo',1,4,'M','FPS','Activition','1 a 16',800);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (33,2,2,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',1000,0,to_date('01/06/17','DD/MM/RR'),'Nuevo',1,4,'M','FPS','Activition','1 a 16',800);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (34,2,2,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',1000,0,to_date('01/06/17','DD/MM/RR'),'Nuevo',1,4,'M','FPS','Activition','1 a 16',800);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (35,2,2,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion',1000,0,to_date('01/06/17','DD/MM/RR'),'Nuevo',1,4,'M','FPS','Activition','1 a 16',800);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (36,2,2,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.',1200,0,to_date('01/11/17','DD/MM/RR'),'Nuevo',1,5,'M','TPS, FPS','EA DICE','1 a 40',900);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (37,2,2,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.',1200,0,to_date('01/11/17','DD/MM/RR'),'Nuevo',1,5,'M','TPS, FPS','EA DICE','1 a 40',900);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (38,2,2,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.',1200,0,to_date('01/11/17','DD/MM/RR'),'Nuevo',1,5,'M','TPS, FPS','EA DICE','1 a 40',900);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (39,2,2,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.',1200,0,to_date('01/11/17','DD/MM/RR'),'Nuevo',1,5,'M','TPS, FPS','EA DICE','1 a 40',900);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (40,2,2,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.',1200,0,to_date('01/11/17','DD/MM/RR'),'Nuevo',1,5,'M','TPS, FPS','EA DICE','1 a 40',900);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (41,2,2,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.',900,0,to_date('01/09/17','DD/MM/RR'),'Nuevo',1,3,'E','Carreras','Nintendo','1 a 6',700);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (42,2,2,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.',900,0,to_date('01/09/17','DD/MM/RR'),'Nuevo',1,3,'E','Carreras','Nintendo','1 a 6',700);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (43,2,2,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.',900,0,to_date('01/09/17','DD/MM/RR'),'Nuevo',1,3,'E','Carreras','Nintendo','1 a 6',700);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (44,2,2,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.',900,0,to_date('01/09/17','DD/MM/RR'),'Nuevo',1,3,'E','Carreras','Nintendo','1 a 6',700);
Insert into A1209023.PROY_VIDEO_COMPLETO (IDPRODUCTO,IDSUCURSAL,IDPEDIDO,NOMBRE,DESCRIPCION,PRECIOVENTA,DESCUENTO,FECHALANZAMIENTO,ESTADO,DISPONIBLE,RATING,CLASIFICACION,GENERO,DESARROLLADOR,JUGADORES,PRECIOPROV) values (45,2,2,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.',900,0,to_date('01/09/17','DD/MM/RR'),'Nuevo',1,3,'E','Carreras','Nintendo','1 a 6',700);
REM INSERTING into A1209023.PROY_VIDEOJUEGOMASVENDIDO
SET DEFINE OFF;
Insert into A1209023.PROY_VIDEOJUEGOMASVENDIDO (NOMBRE) values ('Call of Duty WWII');
--------------------------------------------------------
--  DDL for Index PROY_CLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "A1209023"."PROY_CLIENTE_PK" ON "A1209023"."PROY_CLIENTE" ("IDCLIENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROY_CONSOLA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "A1209023"."PROY_CONSOLA_PK" ON "A1209023"."PROY_CONSOLA" ("IDPRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROY_EMPLEADO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "A1209023"."PROY_EMPLEADO_PK" ON "A1209023"."PROY_EMPLEADO" ("IDEMPLEADO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROY_SUCURSAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "A1209023"."PROY_SUCURSAL_PK" ON "A1209023"."PROY_SUCURSAL" ("IDSUCURSAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROY_TRANSACCION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "A1209023"."PROY_TRANSACCION_PK" ON "A1209023"."PROY_TRANSACCION" ("IDTRANSACCION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "A1209023"."TABLE1_PK" ON "A1209023"."PROY_PRODUCTO" ("IDPRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VIDEOJUEGO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "A1209023"."VIDEOJUEGO_PK" ON "A1209023"."PROY_VIDEOJUEGO" ("IDPRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger PROY_CLIENTE_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "A1209023"."PROY_CLIENTE_TRG" 
BEFORE INSERT ON PROY_CLIENTE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDCLIENTE IS NULL THEN
      SELECT PROY_CLIENTE_SEQ.NEXTVAL INTO :NEW.IDCLIENTE FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "A1209023"."PROY_CLIENTE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_PRODUCTO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "A1209023"."PROY_PRODUCTO_TRG" 
BEFORE INSERT ON PROY_PRODUCTO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "A1209023"."PROY_PRODUCTO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_PRODUCTO_TRG1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "A1209023"."PROY_PRODUCTO_TRG1" 
BEFORE INSERT ON PROY_PRODUCTO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "A1209023"."PROY_PRODUCTO_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_PRODUCTO_TRG2
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "A1209023"."PROY_PRODUCTO_TRG2" 
BEFORE INSERT ON PROY_PRODUCTO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDPRODUCTO IS NULL THEN
      SELECT PROY_PRODUCTO_SEQ.NEXTVAL INTO :NEW.IDPRODUCTO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "A1209023"."PROY_PRODUCTO_TRG2" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_SUCURSAL_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "A1209023"."PROY_SUCURSAL_TRG" 
BEFORE INSERT ON PROY_SUCURSAL 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDSUCURSAL IS NULL THEN
      SELECT PROY_SUCURSAL_SEQ.NEXTVAL INTO :NEW.IDSUCURSAL FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "A1209023"."PROY_SUCURSAL_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_VIDEOJUEGO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "A1209023"."PROY_VIDEOJUEGO_TRG" 
BEFORE INSERT ON PROY_VIDEOJUEGO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "A1209023"."PROY_VIDEOJUEGO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Procedure PROY_BORRAPRODUCTO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "A1209023"."PROY_BORRAPRODUCTO" 
(
 nombre_juego IN VARCHAR 
) 
AS 
auxLocal number;
auxBule number;
auxGalerias number;
existencia_Producto number;
BEGIN
----------------------------------------------------------------checar que exista el id

select count(nombre) into auxLocal --LOCAL BOULEVARES
 from proy_producto 
 where nombre = nombre_juego;

select count(nombre) into auxBule --LOCAL BOULEVARES
 from proy_producto@bule
 where nombre = nombre_juego;

select count(nombre) into auxGalerias --LOCAL BOULEVARES
 from proy_producto@gale
 where nombre = nombre_juego;


 if auxLocal > 0 or auxBule > 0 or auxGalerias > 0 then
 existencia_Producto:= 1;
 else
 existencia_Producto :=0;
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
    FROM proy_consola con
    WHERE con.idproducto IN (
    select pro.idproducto
    from proy_producto@bule pro
    where nombre=nombre_juego);

    DELETE -- borrar videojuego
    FROM proy_videojuego vid
    WHERE vid.idproducto IN (
    select pro.idproducto
    from proy_producto@bule pro
    where nombre=nombre_juego);

    DELETE FROM proy_producto
    WHERE nombre = nombre_juego;
    ----------------------------ANTEA

    ----------------------------GALERIAS
       DELETE -- borrar consola
    FROM proy_consola@gale con
    WHERE con.idproducto IN (
    select pro.idproducto
    from proy_producto@gale pro
    where nombre=nombre_juego);

    DELETE -- borrar videojuego
    FROM proy_videojuego@gale vid
    WHERE vid.idproducto IN (
    select pro.idproducto
    from proy_producto@gale pro
    where nombre=nombre_juego);

    DELETE FROM proy_producto@gale
    WHERE nombre = nombre_juego;

    ----------------------------GALERIAS

    commit;

   end if;

END PROY_BORRAPRODUCTO;

/
--------------------------------------------------------
--  DDL for Procedure PROY_CANCELAR_PEDIDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "A1209023"."PROY_CANCELAR_PEDIDO" 
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
    delete --local ANTEA
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

/
--------------------------------------------------------
--  DDL for Procedure PROY_REGISTRARPEDIDOCONSOLA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "A1209023"."PROY_REGISTRARPEDIDOCONSOLA" 
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
var_idpedido number := proy_pedido_seq2.nextval@dist;
var_idproducto number := proy_producto_seq.nextval@dist;
var_idsucursal number := 2;
BEGIN
    dbms_output.Put_line(var_idpedido);
   INSERT INTO PROY_PEDIDO@dist VALUES (var_idpedido, P_IDPROV, SYSDATE, NULL, NULL, P_PAISORIGEN, P_MODOENVIO);
   commit;
   INSERT INTO PROY_PRODUCTO@dist VALUES (var_idproducto, var_idpedido, var_idsucursal, P_PRECIOPROV, P_NOMBRE, P_DESCRIPCION);
   commit;
   INSERT INTO PROY_PRODUCTO VALUES (var_idproducto, var_idsucursal, P_NOMBRE, P_DESCRIPCION, TO_DATE(P_FECHALANZAMIENTO, 'DD/MM/YY') , 'Nuevo', 0, P_PRECIOVENTA, 0);
   commit;
   INSERT INTO PROY_CONSOLA VALUES (var_idproducto, P_EMPRESA , P_ALMACENAMIENTO, P_ACCESORIOS);
   commit;
END PROY_RegistrarPedidoConsola;


/
--------------------------------------------------------
--  DDL for Procedure PROY_REGISTRARPEDIDOVIDEOJUEGO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "A1209023"."PROY_REGISTRARPEDIDOVIDEOJUEGO" 
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
var_idpedido number := proy_pedido_seq2.nextval@dist;
var_idproducto number := proy_producto_seq.nextval@dist;
var_idsucursal number := 2;
BEGIN
    dbms_output.Put_line(var_idpedido);
   INSERT INTO PROY_PEDIDO@dist VALUES (var_idpedido, P_IDPROV, SYSDATE, NULL, NULL, P_PAISORIGEN, P_MODOENVIO);
   commit;
   INSERT INTO PROY_PRODUCTO@dist VALUES (var_idproducto, var_idpedido, var_idsucursal, P_PRECIOPROV, P_NOMBRE, P_DESCRIPCION);
   commit;
   INSERT INTO PROY_PRODUCTO VALUES (var_idproducto, var_idsucursal, P_NOMBRE, P_DESCRIPCION, TO_DATE(P_FECHALANZAMIENTO, 'DD/MM/YY') , 'Nuevo', 0, P_PRECIOVENTA, 0);
   commit;
   INSERT INTO PROY_VIDEOJUEGO VALUES (var_idproducto, P_RATING, P_CLASIFICACION, P_GENERO, P_DESARROLLADOR, P_JUGADORES);
   commit;
END PROY_RegistrarPedidoVideojuego;

/
--------------------------------------------------------
--  DDL for Procedure PROY_TRANSFERIR_EMPLEADO_BULE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "A1209023"."PROY_TRANSFERIR_EMPLEADO_BULE" 
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

v_idsucursal:= 1;

SELECT emp.nombre, emp.apellidos, emp.direccion, emp.telefono, emp.email, emp.fecharegistro, emp.puesto, emp.salario
INTO v_nombre, v_apellidos, v_direccion, v_telefono, v_email,  v_fregistro, v_puesto,  v_salario
from PROY_EMPLEADO emp
Where emp.idempleado = P_IDEMPLEADO;

DELETE from PROY_EMPLEADO WHERE idEmpleado = P_IDEMPLEADO;

INSERT INTO PROY_EMPLEADO@bule(idempleado, idsucursal, nombre, apellidos, direccion, telefono, email, fecharegistro, puesto, salario) VALUES (P_IDEMPLEADO, v_idsucursal, v_nombre, v_apellidos, v_direccion, v_telefono, v_email,  v_fregistro, v_puesto,  v_salario);

END PROY_TRANSFERIR_EMPLEADO_BULE;

/
--------------------------------------------------------
--  DDL for Procedure PROY_TRANSFERIR_EMPLEADO_GALE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "A1209023"."PROY_TRANSFERIR_EMPLEADO_GALE" 
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

v_idsucursal:= 3;

SELECT emp.nombre, emp.apellidos, emp.direccion, emp.telefono, emp.email, emp.fecharegistro, emp.puesto, emp.salario
INTO v_nombre, v_apellidos, v_direccion, v_telefono, v_email,  v_fregistro, v_puesto,  v_salario
from PROY_EMPLEADO emp
Where emp.idempleado = P_IDEMPLEADO;

DELETE from PROY_EMPLEADO WHERE idEmpleado = P_IDEMPLEADO;

INSERT INTO PROY_EMPLEADO@gale(idempleado, idsucursal, nombre, apellidos, direccion, telefono, email, fecharegistro, puesto, salario) VALUES (P_IDEMPLEADO, v_idsucursal, v_nombre, v_apellidos, v_direccion, v_telefono, v_email,  v_fregistro, v_puesto,  v_salario);

END PROY_TRANSFERIR_EMPLEADO_GALE;

/
--------------------------------------------------------
--  Constraints for Table PROY_CLIENTE
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_CLIENTE" MODIFY ("IDCLIENTE" NOT NULL ENABLE);
  ALTER TABLE "A1209023"."PROY_CLIENTE" ADD CONSTRAINT "PROY_CLIENTE_PK" PRIMARY KEY ("IDCLIENTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROY_CONSOLA
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_CONSOLA" MODIFY ("IDPRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "A1209023"."PROY_CONSOLA" ADD CONSTRAINT "PROY_CONSOLA_PK" PRIMARY KEY ("IDPRODUCTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROY_EMPLEADO
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_EMPLEADO" MODIFY ("IDEMPLEADO" NOT NULL ENABLE);
  ALTER TABLE "A1209023"."PROY_EMPLEADO" ADD CONSTRAINT "PROY_EMPLEADO_PK" PRIMARY KEY ("IDEMPLEADO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "A1209023"."PROY_EMPLEADO" MODIFY ("IDSUCURSAL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROY_PRODUCTO
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_PRODUCTO" MODIFY ("IDPRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "A1209023"."PROY_PRODUCTO" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("IDPRODUCTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "A1209023"."PROY_PRODUCTO" MODIFY ("IDSUCURSAL" NOT NULL ENABLE);
  ALTER TABLE "A1209023"."PROY_PRODUCTO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "A1209023"."PROY_PRODUCTO" MODIFY ("ESTADO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROY_SUCURSAL
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_SUCURSAL" MODIFY ("IDSUCURSAL" NOT NULL ENABLE);
  ALTER TABLE "A1209023"."PROY_SUCURSAL" ADD CONSTRAINT "PROY_SUCURSAL_PK" PRIMARY KEY ("IDSUCURSAL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "A1209023"."PROY_SUCURSAL" MODIFY ("NOMBRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROY_TRANSACCION
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_TRANSACCION" MODIFY ("IDTRANSACCION" NOT NULL ENABLE);
  ALTER TABLE "A1209023"."PROY_TRANSACCION" ADD CONSTRAINT "PROY_TRANSACCION_PK" PRIMARY KEY ("IDTRANSACCION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROY_VIDEOJUEGO
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_VIDEOJUEGO" MODIFY ("IDPRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "A1209023"."PROY_VIDEOJUEGO" ADD CONSTRAINT "VIDEOJUEGO_PK" PRIMARY KEY ("IDPRODUCTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROY_CONSOLA
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_CONSOLA" ADD CONSTRAINT "IDPRODUCTO_SUC_CON_FK" FOREIGN KEY ("IDPRODUCTO")
	  REFERENCES "A1209023"."PROY_PRODUCTO" ("IDPRODUCTO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROY_EMPLEADO
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_EMPLEADO" ADD CONSTRAINT "PROY_EMPLEADO_FK1" FOREIGN KEY ("IDSUCURSAL")
	  REFERENCES "A1209023"."PROY_SUCURSAL" ("IDSUCURSAL") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROY_PRODUCTO
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_PRODUCTO" ADD CONSTRAINT "IDSUCURSAL_SUC_FK" FOREIGN KEY ("IDSUCURSAL")
	  REFERENCES "A1209023"."PROY_SUCURSAL" ("IDSUCURSAL") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROY_TRANSACCION
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_TRANSACCION" ADD CONSTRAINT "IDCLIENTE_FK" FOREIGN KEY ("IDCLIENTE")
	  REFERENCES "A1209023"."PROY_CLIENTE" ("IDCLIENTE") ON DELETE CASCADE ENABLE;
  ALTER TABLE "A1209023"."PROY_TRANSACCION" ADD CONSTRAINT "IDEMPLEADO_FK" FOREIGN KEY ("IDEMPLEADO")
	  REFERENCES "A1209023"."PROY_EMPLEADO" ("IDEMPLEADO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "A1209023"."PROY_TRANSACCION" ADD CONSTRAINT "IDPRODUCTO_FK" FOREIGN KEY ("IDPRODUCTO")
	  REFERENCES "A1209023"."PROY_PRODUCTO" ("IDPRODUCTO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROY_VIDEOJUEGO
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_VIDEOJUEGO" ADD CONSTRAINT "IDPRODUCTO_SUC_FK" FOREIGN KEY ("IDPRODUCTO")
	  REFERENCES "A1209023"."PROY_PRODUCTO" ("IDPRODUCTO") ON DELETE CASCADE ENABLE;
