SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetadataValue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ChargePointID] [int] NOT NULL,
	[MetadataFieldID] [int] NOT NULL,
	[ItemValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_MetadataValue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[MetadataValue]  WITH CHECK ADD  CONSTRAINT [FK_MetadataValue_ChargePoint] FOREIGN KEY([ChargePointID])
REFERENCES [dbo].[ChargePoint] ([ID])
GO
ALTER TABLE [dbo].[MetadataValue] CHECK CONSTRAINT [FK_MetadataValue_ChargePoint]
GO
ALTER TABLE [dbo].[MetadataValue]  WITH CHECK ADD  CONSTRAINT [FK_MetadataValue_MetadataField] FOREIGN KEY([MetadataFieldID])
REFERENCES [dbo].[MetadataField] ([ID])
GO
ALTER TABLE [dbo].[MetadataValue] CHECK CONSTRAINT [FK_MetadataValue_MetadataField]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID of POI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MetadataValue', @level2type=N'COLUMN',@level2name=N'ChargePointID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Metadata Field value relates to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MetadataValue', @level2type=N'COLUMN',@level2name=N'MetadataFieldID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Holds custom defined meta data values for a given POI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MetadataValue'
GO
