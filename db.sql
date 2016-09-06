USE [dbsystem]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 09/06/2016 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[idcliente] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[telefono] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[estatus] [bit] NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CATEGORIA]    Script Date: 09/06/2016 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEGORIA](
	[idcategoria] [int] NOT NULL,
	[categoria] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_CATEGORIA_1] PRIMARY KEY CLUSTERED 
(
	[idcategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ACTIVITIES]    Script Date: 09/06/2016 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ACTIVITIES](
	[idactivitiy] [int] NOT NULL,
	[activity] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_ACTIVITIES_1] PRIMARY KEY CLUSTERED 
(
	[idactivitiy] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PERMISO]    Script Date: 09/06/2016 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERMISO](
	[idpermisos] [int] NOT NULL,
	[permisos] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_PERMISO] PRIMARY KEY CLUSTERED 
(
	[idpermisos] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ROL]    Script Date: 09/06/2016 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ROL](
	[idrol] [int] NOT NULL,
	[rol] [varchar](50) NULL,
 CONSTRAINT [PK_ROL] PRIMARY KEY CLUSTERED 
(
	[idrol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROVEEDOR]    Script Date: 09/06/2016 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROVEEDOR](
	[idproveedor] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[telefono] [varchar](20) NULL,
	[direccion] [varchar](50) NULL,
	[estatus] [bit] NULL,
 CONSTRAINT [PK_PROVEEDOR_1] PRIMARY KEY CLUSTERED 
(
	[idproveedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USER_LOG]    Script Date: 09/06/2016 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_LOG](
	[iduser_log] [int] NOT NULL,
	[login_time] [int] NULL,
	[logout_time] [int] NULL,
 CONSTRAINT [PK_USER_LOG] PRIMARY KEY CLUSTERED 
(
	[iduser_log] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_LOG_DETAILS]    Script Date: 09/06/2016 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_LOG_DETAILS](
	[iduser_log] [int] NULL,
	[idactivity] [int] NULL,
	[datetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_SELECT_CLIENTE]    Script Date: 09/06/2016 15:28:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SELECT_CLIENTE]

AS

	SELECT * FROM CLIENTE
GO
/****** Object:  StoredProcedure [dbo].[SP_FILTERID_CLIENTE]    Script Date: 09/06/2016 15:28:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_FILTERID_CLIENTE]

@idcliente int 

AS

	SELECT * FROM CLIENTE WHERE idcliente = @idcliente
GO
/****** Object:  StoredProcedure [dbo].[SP_FILTERBYNAME_CLIENTE]    Script Date: 09/06/2016 15:28:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_FILTERBYNAME_CLIENTE]
@nombre varchar(200)

as

	SELECT * FROM CLIENTE WHERE nombre LIKE @nombre + '%';
GO
/****** Object:  StoredProcedure [dbo].[SP_DELETE_CLIENTE]    Script Date: 09/06/2016 15:28:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DELETE_CLIENTE]

@idcliente int

as
	DELETE FROM CLIENTE WHERE idcliente = @idcliente
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTCLIENTE]    Script Date: 09/06/2016 15:28:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ACTCLIENTE]

@idcliente int,
@nombre varchar(50),
@apellido varchar(50),
@direccion varchar(50),
@telefono varchar(20),
@email varchar(50),
@estatus bit

AS

-- si no existe el registro ingresado 
IF not (EXISTS(SELECT * FROM CLIENTE WHERE idcliente = @idcliente))
	INSERT INTO CLIENTE 
	VALUES(@idcliente, @nombre, @apellido, @direccion, @telefono, @email, @estatus)
else 
	
	UPDATE CLIENTE 
	SET nombre =@nombre, apellido = @apellido, direccion = @direccion, telefono = @telefono, email = @email, estatus = @estatus
	WHERE idcliente = @idcliente

SELECT * FROM CLIENTE WHERE idcliente = @idcliente
GO
/****** Object:  Table [dbo].[ROL_VS_PERMISO]    Script Date: 09/06/2016 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROL_VS_PERMISO](
	[idrol] [int] NULL,
	[idpermiso] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 09/06/2016 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[idproducto] [int] NOT NULL,
	[idcategoria] [int] NULL,
	[idproveedor] [int] NULL,
	[nombre] [varchar](50) NULL,
	[precio] [money] NULL,
	[stock] [int] NULL,
	[punto_reorden] [int] NULL,
	[impuesto] [int] NULL,
 CONSTRAINT [PK_PRODUCTO] PRIMARY KEY CLUSTERED 
(
	[idproducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FACTURA]    Script Date: 09/06/2016 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURA](
	[numfactura] [int] NOT NULL,
	[idcliente] [int] NULL,
	[fecha] [date] NULL,
 CONSTRAINT [PK_FACTURA] PRIMARY KEY CLUSTERED 
(
	[numfactura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_FACTURA]    Script Date: 09/06/2016 15:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_FACTURA](
	[numfactura] [int] NULL,
	[idproducto] [int] NULL,
	[cantidad] [int] NULL,
	[precio_venta] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_DETALLE_FACTURA_FACTURA1]    Script Date: 09/06/2016 15:28:16 ******/
ALTER TABLE [dbo].[DETALLE_FACTURA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_FACTURA_FACTURA1] FOREIGN KEY([numfactura])
REFERENCES [dbo].[FACTURA] ([numfactura])
GO
ALTER TABLE [dbo].[DETALLE_FACTURA] CHECK CONSTRAINT [FK_DETALLE_FACTURA_FACTURA1]
GO
/****** Object:  ForeignKey [FK_DETALLE_FACTURA_PRODUCTO1]    Script Date: 09/06/2016 15:28:16 ******/
ALTER TABLE [dbo].[DETALLE_FACTURA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_FACTURA_PRODUCTO1] FOREIGN KEY([idproducto])
REFERENCES [dbo].[PRODUCTO] ([idproducto])
GO
ALTER TABLE [dbo].[DETALLE_FACTURA] CHECK CONSTRAINT [FK_DETALLE_FACTURA_PRODUCTO1]
GO
/****** Object:  ForeignKey [FK_FACTURA_CLIENTE]    Script Date: 09/06/2016 15:28:16 ******/
ALTER TABLE [dbo].[FACTURA]  WITH CHECK ADD  CONSTRAINT [FK_FACTURA_CLIENTE] FOREIGN KEY([idcliente])
REFERENCES [dbo].[CLIENTE] ([idcliente])
GO
ALTER TABLE [dbo].[FACTURA] CHECK CONSTRAINT [FK_FACTURA_CLIENTE]
GO
/****** Object:  ForeignKey [FK_PRODUCTO_CATEGORIA1]    Script Date: 09/06/2016 15:28:16 ******/
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTO_CATEGORIA1] FOREIGN KEY([idcategoria])
REFERENCES [dbo].[CATEGORIA] ([idcategoria])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [FK_PRODUCTO_CATEGORIA1]
GO
/****** Object:  ForeignKey [FK_PRODUCTO_PROVEEDOR1]    Script Date: 09/06/2016 15:28:16 ******/
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTO_PROVEEDOR1] FOREIGN KEY([idproveedor])
REFERENCES [dbo].[PROVEEDOR] ([idproveedor])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [FK_PRODUCTO_PROVEEDOR1]
GO
/****** Object:  ForeignKey [FK_ROL_VS_PERMISO_PERMISO]    Script Date: 09/06/2016 15:28:16 ******/
ALTER TABLE [dbo].[ROL_VS_PERMISO]  WITH CHECK ADD  CONSTRAINT [FK_ROL_VS_PERMISO_PERMISO] FOREIGN KEY([idpermiso])
REFERENCES [dbo].[PERMISO] ([idpermisos])
GO
ALTER TABLE [dbo].[ROL_VS_PERMISO] CHECK CONSTRAINT [FK_ROL_VS_PERMISO_PERMISO]
GO
/****** Object:  ForeignKey [FK_ROL_VS_PERMISO_ROL]    Script Date: 09/06/2016 15:28:16 ******/
ALTER TABLE [dbo].[ROL_VS_PERMISO]  WITH CHECK ADD  CONSTRAINT [FK_ROL_VS_PERMISO_ROL] FOREIGN KEY([idrol])
REFERENCES [dbo].[ROL] ([idrol])
GO
ALTER TABLE [dbo].[ROL_VS_PERMISO] CHECK CONSTRAINT [FK_ROL_VS_PERMISO_ROL]
GO
/****** Object:  ForeignKey [FK_USER_LOG_DETAILS_ACTIVITIES]    Script Date: 09/06/2016 15:28:16 ******/
ALTER TABLE [dbo].[USER_LOG_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_USER_LOG_DETAILS_ACTIVITIES] FOREIGN KEY([idactivity])
REFERENCES [dbo].[ACTIVITIES] ([idactivitiy])
GO
ALTER TABLE [dbo].[USER_LOG_DETAILS] CHECK CONSTRAINT [FK_USER_LOG_DETAILS_ACTIVITIES]
GO
/****** Object:  ForeignKey [FK_USER_LOG_DETAILS_USER_LOG]    Script Date: 09/06/2016 15:28:16 ******/
ALTER TABLE [dbo].[USER_LOG_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_USER_LOG_DETAILS_USER_LOG] FOREIGN KEY([iduser_log])
REFERENCES [dbo].[USER_LOG] ([iduser_log])
GO
ALTER TABLE [dbo].[USER_LOG_DETAILS] CHECK CONSTRAINT [FK_USER_LOG_DETAILS_USER_LOG]
GO
