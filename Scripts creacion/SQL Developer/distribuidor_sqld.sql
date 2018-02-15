--------------------------------------------------------
-- Archivo creado  - jueves-febrero-15-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for DB Link ALFA.QRO.ITESM.MX
--------------------------------------------------------

  CREATE DATABASE LINK "ALFA.QRO.ITESM.MX"
   CONNECT TO "A1209023" IDENTIFIED BY VALUES '06D709D42F1A81E0C99969146D9112A66EE9313B7139E81DA65982EECC1519787760BF68A5B8312045F6A08C89694AFB81A99F09595558576B1A3311458F54D5A5022E4778A4C885AA0E4F347E1FAFBF0EF8F7EBACB9E7E96274E69543FBF5F2F45BF8DEA0DB33383BADC34BEDA48B88D75AB43AE6B4AD7928FA22AE709C090F'
   USING 'qro';
--------------------------------------------------------
--  DDL for DB Link ANTEA.QRO.ITESM.MX
--------------------------------------------------------

  CREATE DATABASE LINK "ANTEA.QRO.ITESM.MX"
   CONNECT TO "A1209023" IDENTIFIED BY VALUES '062C00E36E5F8DE519CEBC2805A83D8133CAB7D28196BAF77044A529B76D9E3C24BC329601EF7F29292F8CE31596267F78C93A402F4A938C883296640BED7099B697BFF39E6F2B0ECB62F84067AD16D61C6A0D231CDD8E9C4E852774BDE6193C202DA5E8A24A7698AA3F5AD27B4A0E9269540D15684F28C7499882D631D69EB2'
   USING 'qro';
--------------------------------------------------------
--  DDL for DB Link BULE.QRO.ITESM.MX
--------------------------------------------------------

  CREATE DATABASE LINK "BULE.QRO.ITESM.MX"
   CONNECT TO "A1205935" IDENTIFIED BY VALUES '067188516EAA828879E12EA2FD1DFEE0C7C09EA869D5D1346692110F2E07098D5171FCD536DD3FF4BE2FED7364DD0A56DC43763A544A2AF70A1FFC2281C04B2302CBA6ECE0B93151EA7E0975C89D9E0255338D3CCBC1521D48B08BE118AF7AFFB1B18935F12C13BA21AC2DB30EDDC886DC7E0260C30CD1128C34638BCED9F0DA'
   USING 'qro';
--------------------------------------------------------
--  DDL for DB Link GALE.QRO.ITESM.MX
--------------------------------------------------------

  CREATE DATABASE LINK "GALE.QRO.ITESM.MX"
   CONNECT TO "A1204805" IDENTIFIED BY VALUES '0645960BA78F309D9C8EFFB486B14AF009E3CC069537EE0070462BB4B0532D01434B8CC09492CA25733731E7BCEE8EDFA6BF540A9D6A81CF1722ACA53106F27010482828594A2CBD977A2F95FEBE895928F8B3D171DEBE2520EC96E9ECB6303205C44FAB09382FBEDF2D0AA7DB38519DEE625DB2EADB1852B8D49D12B62C00D2'
   USING 'qro';
--------------------------------------------------------
--  DDL for Sequence PROY_PEDIDO_SEQ2
--------------------------------------------------------

   CREATE SEQUENCE  "A1209023"."PROY_PEDIDO_SEQ2"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_PRODUCTO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "A1209023"."PROY_PRODUCTO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROY_PROVEEDOR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "A1209023"."PROY_PROVEEDOR_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table PROY_PEDIDO
--------------------------------------------------------

  CREATE TABLE "A1209023"."PROY_PEDIDO" 
   (	"IDPEDIDO" NUMBER, 
	"IDPROV" NUMBER, 
	"FECHAPEDIDO" DATE, 
	"FECHAENTREGADIST" DATE, 
	"FECHAENTREGASUC" DATE, 
	"PAISORIGEN" VARCHAR2(20 BYTE), 
	"MODOENVIO" VARCHAR2(20 BYTE)
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
	"IDPEDIDO" NUMBER, 
	"IDSUCURSAL" NUMBER, 
	"PRECIOPROV" NUMBER, 
	"NOMBRE" VARCHAR2(512 BYTE), 
	"DESCRIPCION" VARCHAR2(1024 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROY_PROVEEDOR
--------------------------------------------------------

  CREATE TABLE "A1209023"."PROY_PROVEEDOR" 
   (	"IDPROV" NUMBER, 
	"NOMBRE" VARCHAR2(20 BYTE), 
	"DIRECCION" VARCHAR2(20 BYTE), 
	"CIUDAD" VARCHAR2(20 BYTE), 
	"ESTADO" VARCHAR2(20 BYTE), 
	"TELEFONO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View CATALOGOAB
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."CATALOGOAB" ("CODIGOALFA", "CODIGOBETA", "ALEACION", "DIAMETROEXTERNO", "DIAMETROINTERNO", "ESPESOR") AS 
  SELECT ca.codigoalfa, cb.codigobeta, ca.aleacion, ca.diametroexterno, ca.diametrointerno, cb.espesor
    
FROM catalogoalfa@alfa ca, catalogobeta cb
    
WHERE ca.aleacion = cb.aleacion and ca.DiametroExterno = cb.DiametroExterno and cb.Espesor = ca.DiametroExterno - ca.DiametroInterno
;
--------------------------------------------------------
--  DDL for View CATALOGOFUSION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."CATALOGOFUSION" ("CODIGOALFA", "CODIGOBETA", "ALEACION", "DIAMETROEXTERNO", "DIAMETROINTERNO", "ESPESOR") AS 
  SELECT cab.codigoalfa, cab.codigobeta, cab.aleacion, cab.diametroexterno, cab.diametrointerno, cab.espesor
    
FROM CATALOGOAB cab

UNION

SELECT codigoalfa, 'SCB', aleacion, diametroexterno, diametrointerno, (diametroexterno - diametrointerno)

FROM CATALOGOALFA@alfa

WHERE codigoalfa NOT IN (Select codigoalfa from CATALOGOAB)

UNION

SELECT 'SCA', codigobeta , aleacion, diametroexterno, (diametroexterno - espesor), espesor

FROM CATALOGOBETA

WHERE codigobeta NOT IN (Select codigobeta from CATALOGOAB)
;
--------------------------------------------------------
--  DDL for View INVENTARIOAB
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."INVENTARIOAB" ("CODIGOALFA", "CODIGOBETA", "INVENTARIO") AS 
  SELECT ia.codigoalfa, ib.codigobeta, (ib.existencias + ia.entradas - ia.salidas) as inventario
    
FROM inventarioalfa@alfa ia, inventariobeta ib, catalogoab cab
    
WHERE ia.codigoalfa = cab.codigoalfa and ib.codigobeta = cab.codigobeta
;
--------------------------------------------------------
--  DDL for View INVENTARIOFUSION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "A1209023"."INVENTARIOFUSION" ("CODIGOALFA", "CODIGOBETA", "INVENTARIO") AS 
  SELECT iab.codigoalfa, iab.codigobeta, inventario
    
FROM INVENTARIOAB iab
    
UNION

SELECT codigoalfa, 'SCB', (entradas - salidas)

FROM INVENTARIOALFA@alfa

WHERE codigoalfa NOT IN (SELECT codigoalfa FROM INVENTARIOAB)

UNION

SELECT 'SCA', codigobeta, existencias

FROM INVENTARIOBETA

WHERE codigobeta NOT IN (SELECT codigobeta FROM INVENTARIOAB)
;
REM INSERTING into A1209023.PROY_PEDIDO
SET DEFINE OFF;
Insert into A1209023.PROY_PEDIDO (IDPEDIDO,IDPROV,FECHAPEDIDO,FECHAENTREGADIST,FECHAENTREGASUC,PAISORIGEN,MODOENVIO) values (5,14,to_date('15/02/18','DD/MM/RR'),null,null,'Estados Unidos','Terrestre');
Insert into A1209023.PROY_PEDIDO (IDPEDIDO,IDPROV,FECHAPEDIDO,FECHAENTREGADIST,FECHAENTREGASUC,PAISORIGEN,MODOENVIO) values (1,14,to_date('05/01/18','DD/MM/RR'),to_date('10/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),'Estados Unidos','Terrestre');
Insert into A1209023.PROY_PEDIDO (IDPEDIDO,IDPROV,FECHAPEDIDO,FECHAENTREGADIST,FECHAENTREGASUC,PAISORIGEN,MODOENVIO) values (2,15,to_date('06/01/18','DD/MM/RR'),to_date('11/01/18','DD/MM/RR'),to_date('13/01/18','DD/MM/RR'),'Estados Unidos','Aereo');
Insert into A1209023.PROY_PEDIDO (IDPEDIDO,IDPROV,FECHAPEDIDO,FECHAENTREGADIST,FECHAENTREGASUC,PAISORIGEN,MODOENVIO) values (3,16,to_date('07/01/18','DD/MM/RR'),to_date('12/01/18','DD/MM/RR'),to_date('14/01/18','DD/MM/RR'),'China','Aereo');
REM INSERTING into A1209023.PROY_PRODUCTO
SET DEFINE OFF;
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (96,5,2,900,'Overwatch','Nuevo juego de Blizzard');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (1,1,1,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (2,1,1,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (3,1,1,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (4,1,1,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (5,1,1,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (6,1,1,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (7,1,1,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (8,1,1,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (9,1,1,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (10,1,1,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (11,1,1,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (12,1,1,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (13,1,1,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (14,1,1,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (15,1,1,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (16,1,1,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (17,1,1,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (18,1,1,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (19,1,1,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (20,1,1,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (21,1,1,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (22,1,1,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (23,1,1,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (24,1,1,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (25,1,1,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (26,1,1,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (27,1,1,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (28,1,1,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (29,1,1,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (30,1,1,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (31,2,2,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (32,2,2,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (33,2,2,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (34,2,2,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (35,2,2,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (36,2,2,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (37,2,2,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (38,2,2,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (39,2,2,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (40,2,2,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (41,2,2,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (42,2,2,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (43,2,2,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (44,2,2,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (45,2,2,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (46,2,2,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (47,2,2,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (48,2,2,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (49,2,2,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (50,2,2,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (51,2,2,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (52,2,2,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (53,2,2,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (54,2,2,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (55,2,2,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (56,2,2,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (57,2,2,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (58,2,2,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (59,2,2,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (60,2,2,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (61,3,3,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (62,3,3,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (63,3,3,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (64,3,3,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (65,3,3,800,'Call of Duty WWII','Call of Duty regresa a sus raices con¿Call of Duty:¿WWII, una experiencia sobrecogedora que redefine la Segunda Guerra Mundial para una nueva generacion');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (66,3,3,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (67,3,3,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (68,3,3,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (69,3,3,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (70,3,3,900,'Star Wars Batllefront II','Convi¿rtete en el h¿roe de una galaxia en guerra con Star Wars¿Battlefront II.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (71,3,3,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (72,3,3,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (73,3,3,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (74,3,3,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (75,3,3,700,'Mario Kart 8','Vuelven las carreras m¿s locas de las consolas de Nintendo.');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (76,3,3,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (77,3,3,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (78,3,3,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (79,3,3,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (80,3,3,5000,'Xbox One S','Empieza a disfrutar de la mejor oferta en videojuegos y entretenimiento 4K con la consola Xbox One  REACONDICIONADA.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (81,3,3,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (82,3,3,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (83,3,3,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (84,3,3,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (85,3,3,6000,'Playstation 4','Este bundle es ideal para los fans de PlayStation que est¿n adquiriendo su consola de PS4');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (86,3,3,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (87,3,3,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (88,3,3,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (89,3,3,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
Insert into A1209023.PROY_PRODUCTO (IDPRODUCTO,IDPEDIDO,IDSUCURSAL,PRECIOPROV,NOMBRE,DESCRIPCION) values (90,3,3,4000,'Wii U Negro Deluxe','Con Wii U, experimentaras una nueva forma de vivir la experiencia de juego ¿ envolvente.¿');
REM INSERTING into A1209023.PROY_PROVEEDOR
SET DEFINE OFF;
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (14,'Yambee','3 Dryden Road','Knoxville','Tennessee','865-831-1406');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (15,'Youspan','79679 Columbus Way','Pittsburgh','Pennsylvania','412-598-0723');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (16,'Trudoo','80710 Susan Park','Rockford','Illinois','815-814-9701');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (17,'Kazio','64370 Toban Place','Fort Lauderdale','Florida','754-462-4090');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (18,'Youbridge','71 Utah Park','Bloomington','Illinois','309-410-9818');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (19,'Zava','12 Fair Oaks Street','Bradenton','Florida','941-207-7951');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (20,'Cogilith','07 Mallard Point','Richmond','Virginia','804-717-2353');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (21,'Rhynyx','1959 Muir Crossing','Atlanta','Georgia','404-634-7096');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (22,'Youspan','23 Mallard Crossing','Virginia Beach','Virginia','757-600-8784');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (23,'Twitterbeat','5999 Marquette Trail','Allentown','Pennsylvania','610-563-6551');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (24,'Trudeo','62 Merry Hill','Columbia','South Carolina','803-456-8686');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (25,'Midel','776 8th Circle','New York City','New York','212-287-5120');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (26,'Fiveclub','0622 Artisan Road','Anchorage','Alaska','907-468-3830');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (27,'Devshare','03 Forest Run Hill','Atlanta','Georgia','404-210-5445');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (28,'Skippad','17 Sunnyside Center','Saint Louis','Missouri','314-287-6356');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (29,'Edgeclub','81785 Shasta Place','New York City','New York','212-903-2541');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (30,'Mynte','26 Corscot Park','Wichita','Kansas','316-526-9981');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (31,'Eare','8 Nancy Way','Huntington','West Virginia','304-857-8975');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (32,'Tekfly','1 Summit Pass','San Jose','California','408-271-0973');
Insert into A1209023.PROY_PROVEEDOR (IDPROV,NOMBRE,DIRECCION,CIUDAD,ESTADO,TELEFONO) values (33,'Dynazzy','12 Crescent Oaks','North Port','Florida','941-504-2867');
--------------------------------------------------------
--  DDL for Index PROY_PEDIDO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "A1209023"."PROY_PEDIDO_PK" ON "A1209023"."PROY_PEDIDO" ("IDPEDIDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROY_PRODUCTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "A1209023"."PROY_PRODUCTO_PK" ON "A1209023"."PROY_PRODUCTO" ("IDPRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROY_PROVEEDOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "A1209023"."PROY_PROVEEDOR_PK" ON "A1209023"."PROY_PROVEEDOR" ("IDPROV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger PROY_PEDIDO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "A1209023"."PROY_PEDIDO_TRG" 
BEFORE INSERT ON PROY_PEDIDO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "A1209023"."PROY_PEDIDO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_PEDIDO_TRG1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "A1209023"."PROY_PEDIDO_TRG1" 
BEFORE INSERT ON PROY_PEDIDO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "A1209023"."PROY_PEDIDO_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_PEDIDO_TRG2
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "A1209023"."PROY_PEDIDO_TRG2" 
BEFORE INSERT ON PROY_PEDIDO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDPEDIDO IS NULL THEN
      SELECT PROY_PEDIDO_SEQ2.NEXTVAL INTO :NEW.IDPEDIDO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "A1209023"."PROY_PEDIDO_TRG2" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_PRODUCTO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "A1209023"."PROY_PRODUCTO_TRG" 
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
ALTER TRIGGER "A1209023"."PROY_PRODUCTO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROY_PROVEEDOR_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "A1209023"."PROY_PROVEEDOR_TRG" 
BEFORE INSERT ON PROY_PROVEEDOR 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDPROV IS NULL THEN
      SELECT PROY_PROVEEDOR_SEQ.NEXTVAL INTO :NEW.IDPROV FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "A1209023"."PROY_PROVEEDOR_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Procedure CREAOPERACION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "A1209023"."CREAOPERACION" 
(
  P_CVECUENTA IN NUMBER 
, P_TIPOOPERACION IN CHAR 
, P_MONTOOPERACION IN NUMBER 
) 

AS 
--variables
v_saldo number;

BEGIN
if p_tipooperacion = 'D' then
    update cuentasbeta set balance = balance + p_montooperacion where cvecuenta = p_cvecuenta;
    insert into operacionesbeta values (seq_cveoperacion.nextval, p_cvecuenta, sysdate, p_tipooperacion, p_montooperacion);
    commit;
else 
    if p_tipooperacion = 'R' then
        select balance into v_saldo from cuentasbeta where cvecuenta = p_cvecuenta;
        if v_saldo >= p_montooperacion then
             update cuentasbeta set balance = balance - p_montooperacion where cvecuenta = p_cvecuenta;
             insert into operacionesbeta values (seq_cveoperacion.nextval, p_cvecuenta, sysdate, p_tipooperacion, p_montooperacion);
             commit;
        else
            raise_application_error(-20000, 'El monto de la operación es mayor al saldo disponible en la cuenta');
        end if;
    else
        raise_application_error(-20000, 'Ese tipo de operación no está permitido');
    end if;
end if;

        
END CREAOPERACION;

/
--------------------------------------------------------
--  DDL for Procedure TRANSDIST
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "A1209023"."TRANSDIST" 
(
  P_CVECTAORIG IN NUMBER 
, P_CVECTADEST IN NUMBER 
, P_MONTOOPERACION IN NUMBER 
) AS 
v_saldo number;
v_existecuenta number; --uso estas variables locales de acuerdo a la lógica de programación que use
BEGIN
    select count(1) into v_existecuenta from cuentasbeta where cvecuenta = p_cvectaorig;
  -- aqui va una consulta para saber si la cuenta de origen existe cuando se hace una 
  -- consulta y se quiere dejar el valor en una variable se usa algo como esto: select count(1) into variable from ... en este caso me daria 0/1 dependiendo 
  -- si existe o no la cuenta
  if v_existecuenta=0 then
    raise_application_error(-20000,'{La cuenta origen no existe}'); -- aqui mando a decir que no existe la cuenta
  else
      -- aqui va una consulta para saber si la cuenta de destino existe 
      select count(1) into v_existecuenta from cuentasalfa@alfa where cvecuenta = p_cvectadest;
    if v_existecuenta=0 then
      raise_application_error(-20000,'{La cuenta destino no existe}');
    else
      --debo obtener el balance para ver si puedo realizar el retiro de la cuenta origen
      select balance into v_saldo from cuentasbeta where cvecuenta = p_cvectaorig;
      if v_saldo >= P_MONTOOPERACION then	-- si tengo saldo suficiente
        creaoperacion(p_cvectaorig,'R', p_montooperacion);
        creaoperacion@alfa(p_cvectadest,'D', p_montooperacion);
        --uso el procedimiento local creaoperacion con R-retiro
        --uso el procedimiento remoto creaoperacion con D-deposito
        insert into transferenciasbeta values(seq_cvetrans.nextval,P_CVECTAORIG,P_CVECTADEST,-P_MONTOOPERACION); -- le pongo menos como referencia que hice un retiro
        insert into transferenciasalfa@alfa values(seq_cvetrans.nextval@alfa,P_CVECTADEST,P_CVECTAORIG,P_MONTOOPERACION); -- intercambio las cuentas como referencia de constraint local
        commit;
      else
        raise_application_error(-20000,'{No se tiene el saldo suficiente para la operacion}');
      end if;
    end if;
  end if;
END TRANSDIST;

/
--------------------------------------------------------
--  Constraints for Table PROY_PEDIDO
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_PEDIDO" ADD CONSTRAINT "PROY_PEDIDO_PK" PRIMARY KEY ("IDPEDIDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "A1209023"."PROY_PEDIDO" MODIFY ("IDPEDIDO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROY_PRODUCTO
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_PRODUCTO" ADD CONSTRAINT "PROY_PRODUCTO_PK" PRIMARY KEY ("IDPRODUCTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "A1209023"."PROY_PRODUCTO" MODIFY ("IDPRODUCTO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROY_PROVEEDOR
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_PROVEEDOR" ADD CONSTRAINT "PROY_PROVEEDOR_PK" PRIMARY KEY ("IDPROV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "A1209023"."PROY_PROVEEDOR" MODIFY ("IDPROV" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PROY_PEDIDO
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_PEDIDO" ADD CONSTRAINT "IDPROV_FK" FOREIGN KEY ("IDPROV")
	  REFERENCES "A1209023"."PROY_PROVEEDOR" ("IDPROV") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROY_PRODUCTO
--------------------------------------------------------

  ALTER TABLE "A1209023"."PROY_PRODUCTO" ADD CONSTRAINT "IDPEDIDO_FK" FOREIGN KEY ("IDPEDIDO")
	  REFERENCES "A1209023"."PROY_PEDIDO" ("IDPEDIDO") ON DELETE CASCADE ENABLE;
