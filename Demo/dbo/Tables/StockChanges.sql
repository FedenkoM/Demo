CREATE TABLE [dbo].[StockChanges] (
    [MedicineId] INT      NOT NULL,
    [DocID]      INT      NOT NULL,
    [DocType]    TINYINT  NOT NULL,
    [ChangeDate] DATETIME NULL,
    [Quantity]   INT      NOT NULL,
    CONSTRAINT [PK_StockChanges] PRIMARY KEY CLUSTERED ([MedicineId] ASC, [DocID] ASC, [DocType] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_ChangeDate]
    ON [dbo].[StockChanges]([ChangeDate] ASC)
    INCLUDE([Quantity]);

