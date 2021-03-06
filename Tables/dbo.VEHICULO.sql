CREATE TABLE [dbo].[VEHICULO]
(
[IDVEHICULO] [int] NOT NULL,
[IDREPARTIDOR] [int] NOT NULL,
[MATRICULAVEHI] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[ANOVEHI] [int] NOT NULL,
[MODELOVEHI] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VEHICULO] ADD CONSTRAINT [PK_VEHICULO] PRIMARY KEY CLUSTERED  ([IDVEHICULO]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CONDUCE_FK] ON [dbo].[VEHICULO] ([IDREPARTIDOR]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VEHICULO] ADD CONSTRAINT [FK_VEHICULO_CONDUCE_REPARTID] FOREIGN KEY ([IDREPARTIDOR]) REFERENCES [dbo].[REPARTIDOR] ([IDREPARTIDOR])
GO
