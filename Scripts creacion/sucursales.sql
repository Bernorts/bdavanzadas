create table PROY_CLIENTE
(
	IDCLIENTE NUMBER(0,-127) not null
		constraint PROY_CLIENTE_PK
			primary key,
	NOMBRE VARCHAR2(512),
	APELLIDOS VARCHAR2(512),
	DIRECCION VARCHAR2(512),
	CIUDAD VARCHAR2(512),
	ESTADO VARCHAR2(512),
	TELEFONO VARCHAR2(512),
	EMAIL VARCHAR2(512),
	FECHAREGISTRO DATE(7),
	SALDO NUMBER(7,2)
)
/

create table PROY_CONSOLA
(
	IDPRODUCTO NUMBER(0,-127) not null
		constraint PROY_CONSOLA_PK
			primary key,
	EMPRESA VARCHAR2(512),
	ALMACENAMIENTO VARCHAR2(512),
	ACCESORIOS VARCHAR2(512)
)
/

create table PROY_EMPLEADO
(
	IDEMPLEADO NUMBER(0,-127) not null
		constraint PROY_EMPLEADO_PK
			primary key,
	IDSUCURSAL NUMBER(0,-127) not null,
	NOMBRE VARCHAR2(512),
	APELLIDOS VARCHAR2(512),
	DIRECCION VARCHAR2(512),
	TELEFONO VARCHAR2(512),
	EMAIL VARCHAR2(512),
	FECHAREGISTRO DATE(7),
	PUESTO VARCHAR2(512),
	SALARIO NUMBER(7,2)
)
/

create table PROY_PRODUCTO
(
	IDPRODUCTO NUMBER(0,-127) not null
		constraint TABLE1_PK
			primary key,
	IDSUCURSAL NUMBER(0,-127) not null,
	NOMBRE VARCHAR2(512) not null,
	DESCRIPCION VARCHAR2(512),
	FECHALANZAMIENTO DATE(7),
	ESTADO VARCHAR2(512) default 'Nuevo'  not null,
	DISPONIBLE NUMBER(2),
	PRECIOVENTA NUMBER(6,2),
	DESCUENTO NUMBER(6,2)
)
/

alter table PROY_CONSOLA
	add constraint IDPRODUCTO_SUC_CON_FK
		foreign key (IDPRODUCTO) references PROY_PRODUCTO
/

create table PROY_SUCURSAL
(
	IDSUCURSAL NUMBER(0,-127) not null
		constraint PROY_SUCURSAL_PK
			primary key,
	DIRECCION VARCHAR2(512),
	CIUDAD VARCHAR2(20),
	ESTADO VARCHAR2(20),
	TELEFONO VARCHAR2(20),
	NOMBRE VARCHAR2(20) not null
)
/

alter table PROY_EMPLEADO
	add constraint PROY_EMPLEADO_FK1
		foreign key (IDSUCURSAL) references PROY_SUCURSAL
			on delete cascade
/

alter table PROY_PRODUCTO
	add constraint IDSUCURSAL_SUC_FK
		foreign key (IDSUCURSAL) references PROY_SUCURSAL
			on delete cascade
/

create table PROY_TRANSACCION
(
	IDTRANSACCION NUMBER(0,-127) not null
		constraint PROY_TRANSACCION_PK
			primary key,
	IDPRODUCTO NUMBER(0,-127)
		constraint IDPRODUCTO_FK
			references PROY_PRODUCTO
				on delete cascade,
	IDCLIENTE NUMBER(0,-127)
		constraint IDCLIENTE_FK
			references PROY_CLIENTE
				on delete cascade,
	IDEMPLEADO NUMBER(0,-127)
		constraint IDEMPLEADO_FK
			references PROY_EMPLEADO
				on delete cascade,
	TIPO VARCHAR2(512),
	MONTO NUMBER(6,2),
	FECHA DATE(7),
	METODOPAGO VARCHAR2(512)
)
/

create table PROY_VIDEOJUEGO
(
	IDPRODUCTO NUMBER(0,-127) not null
		constraint VIDEOJUEGO_PK
			primary key
		constraint IDPRODUCTO_SUC_FK
			references PROY_PRODUCTO
				on delete cascade,
	RATING NUMBER(0,-127),
	CLASIFICACION VARCHAR2(512),
	GENERO VARCHAR2(512),
	DESARROLLADOR VARCHAR2(512),
	JUGADORES VARCHAR2(512)
)

CREATE OR REPLACE VIEW PROY_TODOS_EMPLEADOS AS  SELECT "IDEMPLEADO","IDSUCURSAL","NOMBRE","APELLIDOS","DIRECCION","TELEFONO","EMAIL","FECHAREGISTRO","PUESTO","SALARIO"
FROM PROY_EMPLEADO
UNION ALL
SELECT "IDEMPLEADO","IDSUCURSAL","NOMBRE","APELLIDOS","DIRECCION","TELEFONO","EMAIL","FECHAREGISTRO","PUESTO","SALARIO"
FROM PROY_EMPLEADO@gale
UNION ALL
SELECT "IDEMPLEADO","IDSUCURSAL","NOMBRE","APELLIDOS","DIRECCION","TELEFONO","EMAIL","FECHAREGISTRO","PUESTO","SALARIO"
FROM PROY_EMPLEADO@bule
/

CREATE OR REPLACE VIEW PROY_TOTAL_PRODUCTOS AS  select prod.Nombre, COUNT(*) AS "TOTAL"
from (select Nombre from PROY_PRODUCTO
union all
select Nombre from PROY_PRODUCTO@gale
union all
select Nombre from PROY_PRODUCTO@bule
) prod
group by Nombre
order by Nombre
/

CREATE OR REPLACE VIEW PROY_VIDEO_COMPLETO AS  SELECT prod.IDPRODUCTO, prod.idSucursal, prod.nombre, prod.descripcion, prod.precioVenta, prod.descuento, prod.fechaLanzamiento, prod.estado, prod.disponible, video.rating, video.clasificacion, video.genero, video.desarrollador, video.jugadores, prodist.precioprov
FROM PROY_VIDEOJUEGO video, PROY_PRODUCTO prod, PROY_PRODUCTO@dist prodist
WHERE video.IDPRODUCTO = prod.IDPRODUCTO AND prod.IDPRODUCTO = prodist.IDPRODUCTO


CREATE PROCEDURE PROY_RegistrarPedidoVideojuego
(
  P_IDPROV IN NUMBER,
  P_NOMBRE IN VARCHAR, 
  P_DESCRIPCION IN VARCHAR, 
  P_PRECIOPROV IN NUMBER,
  P_PRECIOVENTA IN NUMBER, 
  P_FECHALANZAMIENTO IN DATE, 
  P_PAISORIGEN IN VARCHAR, 
  P_MODOENVIO IN VARCHAR, 
  P_CONSOLA IN VARCHAR, 
  P_RATING IN NUMBER, 
  P_CLASIFICACION IN VARCHAR, 
  P_GENERO IN VARCHAR, 
  P_DESARROLLADOR IN VARCHAR, 
  P_JUGADORES IN VARCHAR
) 
AS 
var_idpedido number := proy_pedido_seq.nextval@dist;
var_idproducto number := proy_producto_seq.nextval@dist;
var_idsucursal number := 2;
BEGIN
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

CREATE PROCEDURE PROY_TRANSFERIR_EMPLEADO_GALE
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

