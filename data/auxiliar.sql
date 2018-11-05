--Borrar tablas--
DROP TABLE LOS_PI.Item_Compra
DROP TABLE LOS_PI.Item_Factura
DROP TABLE LOS_PI.Ubicacion
DROP TABLE LOS_PI.Tipo_Ubicacion
DROP TABLE LOS_PI.Compra
DROP TABLE LOS_PI.MediosDePago
DROP TABLE LOS_PI.Factura
DROP TABLE LOS_PI.Publicacion
DROP TABLE LOS_PI.Estado_publicacion
DROP TABLE LOS_PI.Grado
DROP TABLE LOS_PI.Rubro
DROP TABLE LOS_PI.Empresa
DROP TABLE LOS_PI.Cliente
DROP TABLE LOS_PI.DatosTarjeta
DROP TABLE LOS_PI.UsuarioXRol
DROP TABLE LOS_PI.Usuario
DROP TABLE LOS_PI.FuncionalidadXRol
DROP TABLE LOS_PI.Rol
DROP TABLE LOS_PI.Funcionalidad
DROP PROCEDURE LOS_PI.Migrar
DROP PROCEDURE LOS_PI.Compras_y_facturas

/*select distinct Cli_Dni, Espectaculo_Cod, Ubicacion_Fila, Ubicacion_Asiento, Ubicacion_Tipo_Codigo, Ubicacion_Tipo_Descripcion
from gd_esquema.Maestra
where Cli_Dni is not null and Compra_Fecha is not null
order by 1,2*/

--select distinct Espectaculo_Cod, Espectaculo_Descripcion, Espectaculo_Fecha from gd_esquema.Maestra

--select distinct Espectaculo_Cod, Espectaculo_Fecha, Ubicacion_Fila, Ubicacion_Asiento from gd_esquema.Maestra

--select * from LOS_PI.Ubicacion