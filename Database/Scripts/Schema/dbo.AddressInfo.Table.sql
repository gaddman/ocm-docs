SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[AddressLine1] [nvarchar](1000) NULL,
	[AddressLine2] [nvarchar](1000) NULL,
	[Town] [nvarchar](100) NULL,
	[StateOrProvince] [nvarchar](100) NULL,
	[Postcode] [nvarchar](100) NULL,
	[CountryID] [int] NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[ContactTelephone1] [nvarchar](200) NULL,
	[ContactTelephone2] [nvarchar](200) NULL,
	[ContactEmail] [nvarchar](500) NULL,
	[AccessComments] [nvarchar](max) NULL,
	[GeneralComments] [nvarchar](max) NULL,
	[RelatedURL] [nvarchar](500) NULL,
 CONSTRAINT [PK_AddressInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[AddressInfo]  WITH CHECK ADD  CONSTRAINT [FK_AddressInfo_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[AddressInfo] CHECK CONSTRAINT [FK_AddressInfo_Country]
GO
