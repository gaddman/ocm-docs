SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChargerType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[IsFastChargeCapable] [bit] NOT NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_ChargerType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
