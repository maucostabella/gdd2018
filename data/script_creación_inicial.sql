--------------------CREACION DE ESQUEMA--------------------
--CREATE SCHEMA LOS_PI

--------------------CREACION DE TABLAS--------------------

CREATE TABLE LOS_PI.Funcionalidad(
	func_id int identity(1,1) primary key,
	func_nombre varchar(100) unique not null,
)
GO

CREATE TABLE LOS_PI.Rol(
	rol_id int identity(1,1) primary key,
	rol_nombre varchar(100) unique not null,
	rol_habilitado BIT default 1 not null,
)
GO

CREATE TABLE LOS_PI.FuncionalidadXRol(
	func_id int foreign key references LOS_PI.Funcionalidad,
	rol_id int foreign key references LOS_PI.Rol,
	PRIMARY KEY(func_id, rol_id)
)
GO

CREATE TABLE LOS_PI.Usuario(
	user_id int identity(1,1) primary key,
	user_usuario varchar(100) unique not null,
	user_contra varchar(255) not null,
	user_intentos_fallidos int not null default 0,
	user_estado BIT default 1 not null,
)
GO

CREATE TABLE LOS_PI.UsuarioXRol(
	user_id int foreign key references LOS_PI.Usuario,
	rol_id int foreign key references LOS_PI.Rol,
	PRIMARY KEY(user_id, rol_id)	
)
GO

CREATE TABLE LOS_PI.DatosTarjeta(
	dat_tarj_id int identity(1,1) primary key,
	dat_tarj_nombre varchar(50) not null,
	dat_tarj_numero numeric(18,0) not null,
	dat_tarj_cod varchar(10) not null,
	dat_tarj_venc datetime not null,
)
GO

CREATE TABLE LOS_PI.Cliente(
	clie_id int identity(1,1) primary key,
	clie_nombre nvarchar(255) not null,
	clie_apellido nvarchar(255) not null,
	clie_num_doc numeric(18,0) not null unique,
	clie_tipo_doc nvarchar(5) not null,
	clie_cuil nvarchar(255) not null unique,
	clie_mail nvarchar(255) not null,
	clie_telefono numeric(18,0) not null,
	clie_calle nvarchar(255) not null,
	clie_nro_calle numeric(18,0) not null,
	clie_dpto nvarchar(255) not null,
	clie_piso numeric(18,0) not null,
	clie_fecha_nac datetime not null,
	clie_cp nvarchar(255) not null,
	clie_fecha_creaccion datetime not null default getdate(),
	user_id int foreign key references LOS_PI.Usuario,
)
GO

CREATE TABLE LOS_PI.Empresa(
	emp_id int identity(1,1) primary key,
	emp_razon_social  nvarchar(255) not null unique,
	emp_mail  nvarchar(50) not null,
	emp_telefono numeric(18,0) not null,
	emp_calle  nvarchar(50) not null,
	emp_nro_calle numeric(18,0) not null,
	emp_piso numeric(18,0) not null,
	emp_dpto  nvarchar(50) not null,
	emp_cp nvarchar(50) not null,
	emp_ciudad  nvarchar(50) not null,
	emp_cuit  nvarchar(255) not null unique,
	emp_habitilitado BIT default 1 not null,
	user_id int foreign key references LOS_PI.Usuario,
	emp_fecha_creacion datetime not null,
)
GO

CREATE TABLE LOS_PI.Rubro(
	rubro_id int identity (1,1) primary key,
	rubro_descripcion nvarchar(255) not null unique,
)
GO

CREATE TABLE LOS_PI.Grado(
	grado_id int identity (1,1) primary key,
	grado_nombre varchar(100) not null unique,	
	grado_porcentaje numeric(18,2) not null,	
)
GO

CREATE TABLE LOS_PI.Estado_publicacion(
	estado_id int identity (1,1) primary key,
	descripcion nvarchar(255) not null unique,
)
GO

CREATE TABLE LOS_PI.Publicacion(
	publi_id numeric(18,0) identity (1,1) primary key,
	publi_descripcion nvarchar(255) not null,
	publi_fecha_publicacion datetime not null DEFAULT getdate(),
	publi_fecha_espectaculo datetime not null,
	rubro_id int foreign key references LOS_PI.Rubro not null,
	publi_direccion varchar(255) not null,
	grado_id int foreign key references LOS_PI.Grado not null,
	user_id int foreign key references LOS_PI.Usuario,
	estado_id int foreign key references LOS_PI.Estado_publicacion not null,
)
GO


CREATE TABLE LOS_PI.Factura(
	fact_id numeric(18,0) identity(1,1) primary key,
	emp_id int foreign key references LOS_PI.Empresa not null,
	fact_fecha datetime not null default getdate(),
	fact_importe_totel numeric(18,2) not null,
)
GO


CREATE TABLE LOS_PI.MediosDePago(
	med_id int identity(1,1) primary key not null,
	med_descripcion nvarchar(255) not null
)
GO

CREATE TABLE LOS_PI.Compra(
	compra_id int identity(1,1) primary key,
	--comision_rendida numeric (18,2) not null,
	cliente_id int foreign key references LOS_PI.Cliente not null,
	compra_fecha datetime not null default getdate(),
	--fact_id numeric(18,0) foreign key references LOS_PI.Factura,
	med_id int foreign key references LOS_PI.MediosDePago not null,
)
GO

CREATE TABLE LOS_PI.Tipo_Ubicacion(
	tipo_ubi_id numeric(18,0) identity(1,1) primary key,
	descripcion nvarchar(255) not null unique,
)
GO

CREATE TABLE LOS_PI.Ubicacion(
	ubi_id int identity(1,1) primary key,
	publi_id numeric(18,0) foreign key references LOS_PI.Publicacion,
	ubi_fila varchar(3),
	ubi_asiento numeric(18,0),
	UNIQUE(publi_id, ubi_fila, ubi_asiento),
	ubi_precio numeric(18,0) not null,
	ubi_tipo_id numeric(18,0) foreign key references LOS_PI.Tipo_Ubicacion not null,
	--compra_id int foreign key references LOS_PI.Compra,
)
GO

CREATE TABLE LOS_PI.Item_Compra(
	item_compra_id int identity (1,1) primary key,
	ubi_id int foreign key references LOS_PI.Ubicacion not null,
	compra_id int foreign key references LOS_PI.Compra not null,
)
GO

CREATE TABLE LOS_PI.Item_Factura(
	item_factura_id int identity (1,1) primary key,
	fact_id numeric(18,0) foreign key references LOS_PI.Factura not null,
	compra_id int foreign key references LOS_PI.Compra not null,
	monto numeric(18,2) not null
)
GO

INSERT INTO LOS_PI.MediosDePago(med_descripcion) VALUES ('EFECTIVO')
INSERT INTO LOS_PI.Rubro(rubro_descripcion) VALUES ('SIN RUBRO')
INSERT INTO LOS_PI.Grado(grado_nombre, grado_porcentaje) VALUES ('ESTANDAR',10)
INSERT INTO LOS_PI.Estado_publicacion(descripcion) VALUES ('BORRADOR')
INSERT INTO LOS_PI.Estado_publicacion(descripcion) VALUES ('ACTIVO/PUBLICADO')
INSERT INTO LOS_PI.Estado_publicacion(descripcion) VALUES ('FINALIZADA')
GO

--------------------MIGRACION--------------------

CREATE PROCEDURE LOS_PI.Migrar AS
BEGIN
	--Variables a las cuales asignar los datos de cada fila
	DECLARE @Espec_Empresa_Razon_Social nvarchar(255)
	DECLARE @Espec_Empresa_Cuit nvarchar(255) 
	DECLARE @Espec_Empresa_Fecha_Creacion datetime
	DECLARE @Espec_Empresa_Mail  nvarchar(50)
	DECLARE @Espec_Empresa_Dom_Calle nvarchar(50)
	DECLARE @Espec_Empresa_Nro_Calle numeric(18,0)
	DECLARE @Espec_Empresa_Piso numeric(18,0)
	DECLARE @Espec_Empresa_Depto nvarchar(50)
	DECLARE @Espec_Empresa_Cod_Postal  nvarchar(50)
	DECLARE @Espectaculo_Cod numeric(18,0)
	DECLARE @Espectaculo_Descripcion nvarchar(255)
	DECLARE @Espectaculo_Fecha datetime
	DECLARE @Espectaculo_Fecha_Venc datetime
	DECLARE @Espectaculo_Rubro_Descripcion  nvarchar(255)
	DECLARE @Espectaculo_Estado  nvarchar(255)
	DECLARE @Ubicacion_Fila varchar(3)
	DECLARE @Ubicacion_Asiento numeric(18,0)
	DECLARE @Ubicacion_Sin_numerar BIT
	DECLARE @Ubicacion_Precio numeric(18,2)
	DECLARE @Ubicacion_Tipo_Codigo numeric(18,0)
	DECLARE @Ubicacion_Tipo_Descripcion nvarchar(255)
	DECLARE @Cli_Dni numeric(18,0)
	DECLARE @Cli_Apeliido nvarchar(255)
	DECLARE @Cli_Nombre nvarchar(255)
	DECLARE @Cli_Fecha_Nac datetime
	DECLARE @Cli_Mail  nvarchar(255)
	DECLARE @Cli_Dom_Calle nvarchar(255)
	DECLARE @Cli_Nro_Calle numeric(18,0)
	DECLARE @Cli_Piso numeric(18,0)
	DECLARE @Cli_Depto nvarchar(255)
	DECLARE @Cli_Cod_Postal nvarchar(255)
	DECLARE @Compra_Fecha datetime
	DECLARE @Item_Factura_Monto numeric(18,2)
	DECLARE @Factura_Nro numeric(18,0)
	DECLARE @Factura_Fecha datetime
	DECLARE @Factura_Total numeric(18,2)
	DECLARE @Forma_Pago_Desc nvarchar(255)

	DECLARE @emp_id int
	DECLARE @clie_id int
	DECLARE @estado_id int

	DECLARE fuente CURSOR FOR SELECT Espec_Empresa_Razon_Social, Espec_Empresa_Cuit, Espec_Empresa_Fecha_Creacion, Espec_Empresa_Mail, Espec_Empresa_Dom_Calle,
		Espec_Empresa_Nro_Calle, Espec_Empresa_Piso, Espec_Empresa_Depto, Espec_Empresa_Cod_Postal, Espectaculo_Cod, Espectaculo_Descripcion, Espectaculo_Fecha,
		Espectaculo_Fecha_Venc, Espectaculo_Rubro_Descripcion, Espectaculo_Estado, Ubicacion_Fila, Ubicacion_Asiento,
		Ubicacion_Sin_numerar, Ubicacion_Precio, Ubicacion_Tipo_Codigo, Ubicacion_Tipo_Descripcion, Cli_Dni, Cli_Apeliido, Cli_Nombre, Cli_Fecha_Nac, Cli_Mail,
		Cli_Dom_Calle, Cli_Nro_Calle, Cli_Piso, Cli_Depto, Cli_Cod_Postal, Compra_Fecha, Item_Factura_Monto, Factura_Nro, Factura_Fecha, Factura_Total,
		Forma_Pago_Desc FROM gd_esquema.Maestra

	OPEN fuente
	FETCH NEXT FROM fuente INTO @Espec_Empresa_Razon_Social, @Espec_Empresa_Cuit , @Espec_Empresa_Fecha_Creacion, @Espec_Empresa_Mail, @Espec_Empresa_Dom_Calle,
		@Espec_Empresa_Nro_Calle, @Espec_Empresa_Piso, @Espec_Empresa_Depto, @Espec_Empresa_Cod_Postal, @Espectaculo_Cod, @Espectaculo_Descripcion,
		@Espectaculo_Fecha, @Espectaculo_Fecha_Venc, @Espectaculo_Rubro_Descripcion, @Espectaculo_Estado, @Ubicacion_Fila, @Ubicacion_Asiento, @Ubicacion_Sin_numerar,
		@Ubicacion_Precio, @Ubicacion_Tipo_Codigo, @Ubicacion_Tipo_Descripcion, @Cli_Dni, @Cli_Apeliido, @Cli_Nombre, @Cli_Fecha_Nac, @Cli_Mail, @Cli_Dom_Calle,
		@Cli_Nro_Calle, @Cli_Piso, @Cli_Depto, @Cli_Cod_Postal, @Compra_Fecha, @Item_Factura_Monto, @Factura_Nro, @Factura_Fecha, @Factura_Total, @Forma_Pago_Desc

	WHILE @@FETCH_STATUS=0
		BEGIN
			
			IF(@Cli_Dni IS NOT NULL) --Cliente
				BEGIN
					IF NOT(@Cli_Dni IN(SELECT clie_num_doc FROM LOS_PI.Cliente WHERE  clie_num_doc = @Cli_Dni))
						BEGIN
							INSERT INTO LOS_PI.Cliente(clie_num_doc, clie_apellido, clie_nombre, clie_fecha_nac, clie_mail, clie_calle, clie_nro_calle, clie_piso, clie_cp, clie_cuil, clie_dpto, clie_telefono, clie_tipo_doc)
							VALUES (@Cli_Dni, @Cli_Apeliido, @Cli_Nombre, @Cli_Fecha_Nac, @Cli_Mail, @Cli_Dom_Calle, @Cli_Nro_Calle, @Cli_Piso, @Cli_Cod_Postal, @Cli_Dni, @Cli_Depto, 0, 'DNI')
						END
				
				END
			SELECT @clie_id = clie_id FROM LOS_PI.Cliente WHERE clie_num_doc = @Cli_Dni

			IF(@Espec_Empresa_Cuit IS NOT NULL) --Empresa
				BEGIN
					IF NOT(@Espec_Empresa_Cuit IN(SELECT emp_cuit FROM LOS_PI.Empresa WHERE  emp_cuit = @Espec_Empresa_Cuit))
						BEGIN
							INSERT INTO LOS_PI.Empresa(emp_razon_social, emp_cuit, emp_fecha_creacion, emp_mail, emp_calle, emp_nro_calle, emp_piso, emp_dpto, emp_cp, emp_telefono, emp_ciudad)
							VALUES (@Espec_Empresa_Razon_Social, @Espec_Empresa_Cuit, @Espec_Empresa_Fecha_Creacion, @Espec_Empresa_Mail, @Espec_Empresa_Dom_Calle, @Espec_Empresa_Nro_Calle, @Espec_Empresa_Piso, @Espec_Empresa_Depto, @Espec_Empresa_Cod_Postal, 0, 'No cargada')
						END
				
				END
			SELECT @emp_id = emp_id FROM LOS_PI.Empresa WHERE emp_cuit = @Espec_Empresa_Cuit

			
			IF(@Factura_Nro IS NOT NULL) --FACTURA
				BEGIN
					IF NOT(@Factura_Nro IN(SELECT fact_id FROM LOS_PI.Factura WHERE  fact_id = @Factura_Nro))
						BEGIN
							SET IDENTITY_INSERT LOS_PI.Factura ON;
							INSERT INTO LOS_PI.Factura(fact_id, fact_fecha, fact_importe_totel, emp_id)
							VALUES (@Factura_Nro, @Factura_Fecha, @Factura_Total, @emp_id)
							SET IDENTITY_INSERT LOS_PI.Factura OFF;
						END
				
				END

			IF(@Espectaculo_Cod IS NOT NULL) --PUBLICACION
				BEGIN
					set @estado_id = 1
					IF (getdate() > @Espectaculo_Fecha_Venc) OR (getdate() > @Espectaculo_Fecha)
						BEGIN
							set @estado_id = 3
						END

					IF NOT(@Espectaculo_Cod IN(SELECT publi_id FROM LOS_PI.Publicacion WHERE  publi_id = @Espectaculo_Cod))
						BEGIN
							SET IDENTITY_INSERT LOS_PI.Publicacion ON;
							INSERT INTO LOS_PI.Publicacion(publi_id, publi_descripcion, publi_fecha_espectaculo, rubro_id, publi_direccion, grado_id, estado_id)
							VALUES (@Espectaculo_Cod, @Espectaculo_Descripcion, @Espectaculo_Fecha, 1, 'SIN ESPECIFICAR', 1, @estado_id)
							SET IDENTITY_INSERT LOS_PI.Publicacion OFF;
						END
				
				END
			
			IF(@Ubicacion_Tipo_Codigo IS NOT NULL) --Tipo ubicacion
				BEGIN
					IF NOT(@Ubicacion_Tipo_Codigo IN(SELECT tipo_ubi_id FROM LOS_PI.Tipo_Ubicacion WHERE tipo_ubi_id = @Ubicacion_Tipo_Codigo))
						BEGIN
							SET IDENTITY_INSERT LOS_PI.Tipo_Ubicacion ON;
							INSERT INTO LOS_PI.Tipo_Ubicacion(tipo_ubi_id, descripcion)
							VALUES (@Ubicacion_Tipo_Codigo, @Ubicacion_Tipo_Descripcion)
							SET IDENTITY_INSERT LOS_PI.Tipo_Ubicacion OFF;
						END
				
				END

			IF(@Ubicacion_Fila IS NOT NULL) --Ubicacion
				BEGIN
					IF NOT(CONCAT( @Espectaculo_Cod, @Ubicacion_Fila, @Ubicacion_Asiento)
							IN(SELECT CONCAT(publi_id, ubi_fila, ubi_asiento) FROM LOS_PI.Ubicacion
							WHERE  @Espectaculo_Cod = publi_id AND @Ubicacion_Fila = ubi_fila AND @Ubicacion_Asiento = ubi_asiento))
						BEGIN
							
							INSERT INTO LOS_PI.Ubicacion(publi_id, ubi_fila, ubi_asiento, ubi_precio, ubi_tipo_id)
							VALUES (@Espectaculo_Cod, @Ubicacion_Fila, @Ubicacion_Asiento, @Ubicacion_Precio, @Ubicacion_Tipo_Codigo)
							
						END
				
				END


			FETCH NEXT FROM fuente INTO @Espec_Empresa_Razon_Social, @Espec_Empresa_Cuit , @Espec_Empresa_Fecha_Creacion, @Espec_Empresa_Mail, @Espec_Empresa_Dom_Calle,
				@Espec_Empresa_Nro_Calle, @Espec_Empresa_Piso, @Espec_Empresa_Depto, @Espec_Empresa_Cod_Postal, @Espectaculo_Cod, @Espectaculo_Descripcion,
				@Espectaculo_Fecha, @Espectaculo_Fecha_Venc, @Espectaculo_Rubro_Descripcion, @Espectaculo_Estado, @Ubicacion_Fila, @Ubicacion_Asiento, @Ubicacion_Sin_numerar,
				@Ubicacion_Precio, @Ubicacion_Tipo_Codigo, @Ubicacion_Tipo_Descripcion, @Cli_Dni, @Cli_Apeliido, @Cli_Nombre, @Cli_Fecha_Nac, @Cli_Mail, @Cli_Dom_Calle,
				@Cli_Nro_Calle, @Cli_Piso, @Cli_Depto, @Cli_Cod_Postal, @Compra_Fecha, @Item_Factura_Monto, @Factura_Nro, @Factura_Fecha, @Factura_Total, @Forma_Pago_Desc
		END
	CLOSE fuente
	DEALLOCATE fuente

	--Ingreso de las compras
END
GO

CREATE PROCEDURE LOS_PI.Compras_y_facturas AS
	BEGIN

	select distinct Cli_Dni, Espectaculo_Cod, Ubicacion_Fila, Ubicacion_Asiento, Ubicacion_Tipo_Codigo, 
		Compra_Fecha, Factura_Nro, Item_Factura_Monto
	into #compras
	from gd_esquema.Maestra M
	where Compra_Fecha is not null AND Factura_Nro is not null

	DECLARE @clie_id int
	DECLARE @nro_fact numeric(18,0)
	DECLARE @monto_item numeric(18,2)
	DECLARE @fecha_compra datetime
	DECLARE @ubi_id int
	DECLARE @i int
	SET @i = 1

	DECLARE compras CURSOR FOR SELECT Cli.clie_id, Compra_Fecha, U.ubi_id, Factura_Nro, Item_Factura_Monto
	from #compras Com JOIN LOS_PI.Cliente Cli ON (Com.Cli_Dni = Cli.clie_num_doc)
	JOIN LOS_PI.Ubicacion U ON (com.Espectaculo_Cod = U.publi_id AND com.Ubicacion_Asiento = U.ubi_asiento 
								AND com.Ubicacion_Fila = U.ubi_fila)

	OPEN compras

	SET IDENTITY_INSERT LOS_PI.Compra ON;

	FETCH NEXT FROM compras INTO @clie_id, @fecha_compra, @ubi_id, @nro_fact, @monto_item

	WHILE @@FETCH_STATUS=0
		BEGIN
			INSERT INTO LOS_PI.Compra(compra_id, cliente_id, compra_fecha, med_id) VALUES (@i, @clie_id, @fecha_compra,1)
			INSERT INTO LOS_PI.Item_Compra(compra_id, ubi_id) VALUES (@i, @ubi_id)
			INSERT INTO LOS_PI.Item_Factura(fact_id, compra_id, monto) VALUES (@nro_fact, @i, @monto_item)
			SET @i = @i + 1
			
			FETCH NEXT FROM compras INTO @clie_id, @fecha_compra, @ubi_id, @nro_fact, @monto_item
		END

	CLOSE compras
	DEALLOCATE compras
	SET IDENTITY_INSERT LOS_PI.Compra OFF;
	drop table #compras
END
GO


exec LOS_PI.Migrar;
GO

exec LOS_PI.Compras_y_facturas;
GO

--------------------LLENADO DE TABLAS--------------------
SET IDENTITY_INSERT LOS_PI.Funcionalidad ON;
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (1,'Login y seguridad');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (2,'ABM de Rol');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (3,'Registro de usuario');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (4,'ABM de Cliente');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (5,'ABM de Empresa de Espectaculo');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (6,'ABM de Categoria');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (7,'ABM de Grado de Publicacion');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (8,'Generar Publicacion');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (9,'Editar Publicacion');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (10,'Comprar');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (11,'Historial del cliente');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (12,'Canje y administracion de puntos');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (13,'Generar pago de comisiones');
INSERT INTO LOS_PI.Funcionalidad(func_id, func_nombre) VALUES (14,'Listado Estadistico');
SET IDENTITY_INSERT LOS_PI.Funcionalidad OFF;

SET IDENTITY_INSERT LOS_PI.Rol ON;
INSERT INTO LOS_PI.Rol(rol_id, rol_nombre) VALUES (1,'Empresa');
INSERT INTO LOS_PI.Rol(rol_id, rol_nombre) VALUES (2,'Aministrativo');
INSERT INTO LOS_PI.Rol(rol_id, rol_nombre) VALUES (3,'Cliente');
INSERT INTO LOS_PI.Rol(rol_id, rol_nombre) VALUES (4,'Admin general');
SET IDENTITY_INSERT LOS_PI.Rol OFF;

INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(1,1); --login / emp
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(1,2); --login / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(1,3); --login / clie
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(2,2); --rol / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(3,1); --user / emp
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(3,2); --user / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(3,3); --user / clie
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(4,2); --clie / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(5,2); --emp / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(7,2); --grado_publi / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(8,1); --crear_publi / emp
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(9,1); --modif_publi / emp
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(10,3); --comprar / clie
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(11,3); --historial / clie
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(12,3); --puntos / clie
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(13,2); --comis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(14,2); --estadis / admin

INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(1,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(2,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(3,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(4,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(5,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(6,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(7,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(8,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(9,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(10,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(11,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(12,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(13,4); --estadis / admin
INSERT INTO LOS_PI.FuncionalidadXRol(func_id, rol_id) VALUES(14,4); --estadis / admin

SET IDENTITY_INSERT LOS_PI.Usuario ON;
INSERT INTO LOS_PI.Usuario(user_id, user_usuario, user_contra) VALUES (1,'admin','w23e');
SET IDENTITY_INSERT LOS_PI.Usuario OFF;

INSERT INTO LOS_PI.UsuarioXRol (user_id, rol_id) VALUES (1,4);

INSERT INTO LOS_PI.Grado(grado_nombre, grado_porcentaje) VALUES ('BAJO',5)
INSERT INTO LOS_PI.Grado(grado_nombre, grado_porcentaje) VALUES ('ALTO',20)