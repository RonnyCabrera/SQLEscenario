CREATE TABLE [dbo].[CIUDAD]
(
[IDCIUDAD] [int] NOT NULL,
[CODIGOCIUD] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL,
[NOMBRECIUD] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CIUDAD] ADD CONSTRAINT [PK_CIUDAD] PRIMARY KEY CLUSTERED  ([IDCIUDAD]) ON [PRIMARY]
GO
