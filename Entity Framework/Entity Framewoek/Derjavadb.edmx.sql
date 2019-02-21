
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/21/2019 10:06:39
-- Generated from EDMX file: C:\Users\pqoal\Source\Repos\Entity-Framework2\Entity Framework\Entity Framewoek\Derjavadb.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Derjavadb];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Derjavas'
CREATE TABLE [dbo].[Derjavas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ExecutiveDirector] nvarchar(max)  NOT NULL,
    [ACCOUNTANT] nvarchar(max)  NOT NULL,
    [YerevanMallKFCId] int  NOT NULL,
    [DalmaMallKFCId] int  NOT NULL,
    [KomitasKFCId] int  NOT NULL,
    [MoskovyanKFCId] int  NOT NULL,
    [RIOKFCId] int  NOT NULL
);
GO

-- Creating table 'YerevanMallKFCs'
CREATE TABLE [dbo].[YerevanMallKFCs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LAstName] nvarchar(max)  NOT NULL,
    [Age] int  NOT NULL,
    [Gender] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MoskovyanKFCs'
CREATE TABLE [dbo].[MoskovyanKFCs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FristName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Age] int  NOT NULL,
    [Gender] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RIOKFCs'
CREATE TABLE [dbo].[RIOKFCs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Age] int  NOT NULL,
    [Gender] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DalmaMallKFCs'
CREATE TABLE [dbo].[DalmaMallKFCs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Age] int  NOT NULL,
    [Gender] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Delivaries'
CREATE TABLE [dbo].[Delivaries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DriverName] nvarchar(max)  NOT NULL,
    [CarType] nvarchar(max)  NOT NULL,
    [MoskovyanKFCId] int  NOT NULL,
    [KomitasKFCId] int  NOT NULL
);
GO

-- Creating table 'Suppliers'
CREATE TABLE [dbo].[Suppliers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DriverName] nvarchar(max)  NOT NULL,
    [CarType] nvarchar(max)  NOT NULL,
    [YerevanMallKFCId] int  NOT NULL
);
GO

-- Creating table 'KomitasKFCs'
CREATE TABLE [dbo].[KomitasKFCs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Age] int  NOT NULL,
    [Gender] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'YerevanMallKFCSupplier1'
CREATE TABLE [dbo].[YerevanMallKFCSupplier1] (
    [YerevanMallKFC1_Id] int  NOT NULL,
    [Suppliers_Id] int  NOT NULL
);
GO

-- Creating table 'DalmaMallKFCSupplier'
CREATE TABLE [dbo].[DalmaMallKFCSupplier] (
    [DalmaMallKFCs_Id] int  NOT NULL,
    [Suppliers_Id] int  NOT NULL
);
GO

-- Creating table 'MoskovyanKFCSupplier'
CREATE TABLE [dbo].[MoskovyanKFCSupplier] (
    [MoskovyanKFCs_Id] int  NOT NULL,
    [Suppliers_Id] int  NOT NULL
);
GO

-- Creating table 'RIOKFCSupplier'
CREATE TABLE [dbo].[RIOKFCSupplier] (
    [RIOKFCs_Id] int  NOT NULL,
    [Suppliers_Id] int  NOT NULL
);
GO

-- Creating table 'RIOKFCSupplier1'
CREATE TABLE [dbo].[RIOKFCSupplier1] (
    [RIOKFC_Id] int  NOT NULL,
    [Suppliers1_Id] int  NOT NULL
);
GO

-- Creating table 'KomitasKFCSupplier'
CREATE TABLE [dbo].[KomitasKFCSupplier] (
    [KomitasKFCs_Id] int  NOT NULL,
    [Suppliers_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Derjavas'
ALTER TABLE [dbo].[Derjavas]
ADD CONSTRAINT [PK_Derjavas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'YerevanMallKFCs'
ALTER TABLE [dbo].[YerevanMallKFCs]
ADD CONSTRAINT [PK_YerevanMallKFCs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MoskovyanKFCs'
ALTER TABLE [dbo].[MoskovyanKFCs]
ADD CONSTRAINT [PK_MoskovyanKFCs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RIOKFCs'
ALTER TABLE [dbo].[RIOKFCs]
ADD CONSTRAINT [PK_RIOKFCs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DalmaMallKFCs'
ALTER TABLE [dbo].[DalmaMallKFCs]
ADD CONSTRAINT [PK_DalmaMallKFCs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Delivaries'
ALTER TABLE [dbo].[Delivaries]
ADD CONSTRAINT [PK_Delivaries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Suppliers'
ALTER TABLE [dbo].[Suppliers]
ADD CONSTRAINT [PK_Suppliers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'KomitasKFCs'
ALTER TABLE [dbo].[KomitasKFCs]
ADD CONSTRAINT [PK_KomitasKFCs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [YerevanMallKFC1_Id], [Suppliers_Id] in table 'YerevanMallKFCSupplier1'
ALTER TABLE [dbo].[YerevanMallKFCSupplier1]
ADD CONSTRAINT [PK_YerevanMallKFCSupplier1]
    PRIMARY KEY CLUSTERED ([YerevanMallKFC1_Id], [Suppliers_Id] ASC);
GO

-- Creating primary key on [DalmaMallKFCs_Id], [Suppliers_Id] in table 'DalmaMallKFCSupplier'
ALTER TABLE [dbo].[DalmaMallKFCSupplier]
ADD CONSTRAINT [PK_DalmaMallKFCSupplier]
    PRIMARY KEY CLUSTERED ([DalmaMallKFCs_Id], [Suppliers_Id] ASC);
GO

-- Creating primary key on [MoskovyanKFCs_Id], [Suppliers_Id] in table 'MoskovyanKFCSupplier'
ALTER TABLE [dbo].[MoskovyanKFCSupplier]
ADD CONSTRAINT [PK_MoskovyanKFCSupplier]
    PRIMARY KEY CLUSTERED ([MoskovyanKFCs_Id], [Suppliers_Id] ASC);
GO

-- Creating primary key on [RIOKFCs_Id], [Suppliers_Id] in table 'RIOKFCSupplier'
ALTER TABLE [dbo].[RIOKFCSupplier]
ADD CONSTRAINT [PK_RIOKFCSupplier]
    PRIMARY KEY CLUSTERED ([RIOKFCs_Id], [Suppliers_Id] ASC);
GO

-- Creating primary key on [RIOKFC_Id], [Suppliers1_Id] in table 'RIOKFCSupplier1'
ALTER TABLE [dbo].[RIOKFCSupplier1]
ADD CONSTRAINT [PK_RIOKFCSupplier1]
    PRIMARY KEY CLUSTERED ([RIOKFC_Id], [Suppliers1_Id] ASC);
GO

-- Creating primary key on [KomitasKFCs_Id], [Suppliers_Id] in table 'KomitasKFCSupplier'
ALTER TABLE [dbo].[KomitasKFCSupplier]
ADD CONSTRAINT [PK_KomitasKFCSupplier]
    PRIMARY KEY CLUSTERED ([KomitasKFCs_Id], [Suppliers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [YerevanMallKFCId] in table 'Derjavas'
ALTER TABLE [dbo].[Derjavas]
ADD CONSTRAINT [FK_YerevanMallKFCDerjava]
    FOREIGN KEY ([YerevanMallKFCId])
    REFERENCES [dbo].[YerevanMallKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_YerevanMallKFCDerjava'
CREATE INDEX [IX_FK_YerevanMallKFCDerjava]
ON [dbo].[Derjavas]
    ([YerevanMallKFCId]);
GO

-- Creating foreign key on [DalmaMallKFCId] in table 'Derjavas'
ALTER TABLE [dbo].[Derjavas]
ADD CONSTRAINT [FK_DalmaMallKFCDerjava]
    FOREIGN KEY ([DalmaMallKFCId])
    REFERENCES [dbo].[DalmaMallKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DalmaMallKFCDerjava'
CREATE INDEX [IX_FK_DalmaMallKFCDerjava]
ON [dbo].[Derjavas]
    ([DalmaMallKFCId]);
GO

-- Creating foreign key on [MoskovyanKFCId] in table 'Derjavas'
ALTER TABLE [dbo].[Derjavas]
ADD CONSTRAINT [FK_MoskovyanKFCDerjava]
    FOREIGN KEY ([MoskovyanKFCId])
    REFERENCES [dbo].[MoskovyanKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MoskovyanKFCDerjava'
CREATE INDEX [IX_FK_MoskovyanKFCDerjava]
ON [dbo].[Derjavas]
    ([MoskovyanKFCId]);
GO

-- Creating foreign key on [RIOKFCId] in table 'Derjavas'
ALTER TABLE [dbo].[Derjavas]
ADD CONSTRAINT [FK_RIOKFCDerjava]
    FOREIGN KEY ([RIOKFCId])
    REFERENCES [dbo].[RIOKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RIOKFCDerjava'
CREATE INDEX [IX_FK_RIOKFCDerjava]
ON [dbo].[Derjavas]
    ([RIOKFCId]);
GO

-- Creating foreign key on [KomitasKFCId] in table 'Derjavas'
ALTER TABLE [dbo].[Derjavas]
ADD CONSTRAINT [FK_KomitasKFCDerjava]
    FOREIGN KEY ([KomitasKFCId])
    REFERENCES [dbo].[KomitasKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KomitasKFCDerjava'
CREATE INDEX [IX_FK_KomitasKFCDerjava]
ON [dbo].[Derjavas]
    ([KomitasKFCId]);
GO

-- Creating foreign key on [MoskovyanKFCId] in table 'Delivaries'
ALTER TABLE [dbo].[Delivaries]
ADD CONSTRAINT [FK_MoskovyanKFCDelivary]
    FOREIGN KEY ([MoskovyanKFCId])
    REFERENCES [dbo].[MoskovyanKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MoskovyanKFCDelivary'
CREATE INDEX [IX_FK_MoskovyanKFCDelivary]
ON [dbo].[Delivaries]
    ([MoskovyanKFCId]);
GO

-- Creating foreign key on [KomitasKFCId] in table 'Delivaries'
ALTER TABLE [dbo].[Delivaries]
ADD CONSTRAINT [FK_KomitasKFCDelivary]
    FOREIGN KEY ([KomitasKFCId])
    REFERENCES [dbo].[KomitasKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KomitasKFCDelivary'
CREATE INDEX [IX_FK_KomitasKFCDelivary]
ON [dbo].[Delivaries]
    ([KomitasKFCId]);
GO

-- Creating foreign key on [YerevanMallKFCId] in table 'Suppliers'
ALTER TABLE [dbo].[Suppliers]
ADD CONSTRAINT [FK_YerevanMallKFCSupplier]
    FOREIGN KEY ([YerevanMallKFCId])
    REFERENCES [dbo].[YerevanMallKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_YerevanMallKFCSupplier'
CREATE INDEX [IX_FK_YerevanMallKFCSupplier]
ON [dbo].[Suppliers]
    ([YerevanMallKFCId]);
GO

-- Creating foreign key on [YerevanMallKFC1_Id] in table 'YerevanMallKFCSupplier1'
ALTER TABLE [dbo].[YerevanMallKFCSupplier1]
ADD CONSTRAINT [FK_YerevanMallKFCSupplier1_YerevanMallKFC]
    FOREIGN KEY ([YerevanMallKFC1_Id])
    REFERENCES [dbo].[YerevanMallKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Suppliers_Id] in table 'YerevanMallKFCSupplier1'
ALTER TABLE [dbo].[YerevanMallKFCSupplier1]
ADD CONSTRAINT [FK_YerevanMallKFCSupplier1_Supplier]
    FOREIGN KEY ([Suppliers_Id])
    REFERENCES [dbo].[Suppliers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_YerevanMallKFCSupplier1_Supplier'
CREATE INDEX [IX_FK_YerevanMallKFCSupplier1_Supplier]
ON [dbo].[YerevanMallKFCSupplier1]
    ([Suppliers_Id]);
GO

-- Creating foreign key on [DalmaMallKFCs_Id] in table 'DalmaMallKFCSupplier'
ALTER TABLE [dbo].[DalmaMallKFCSupplier]
ADD CONSTRAINT [FK_DalmaMallKFCSupplier_DalmaMallKFC]
    FOREIGN KEY ([DalmaMallKFCs_Id])
    REFERENCES [dbo].[DalmaMallKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Suppliers_Id] in table 'DalmaMallKFCSupplier'
ALTER TABLE [dbo].[DalmaMallKFCSupplier]
ADD CONSTRAINT [FK_DalmaMallKFCSupplier_Supplier]
    FOREIGN KEY ([Suppliers_Id])
    REFERENCES [dbo].[Suppliers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DalmaMallKFCSupplier_Supplier'
CREATE INDEX [IX_FK_DalmaMallKFCSupplier_Supplier]
ON [dbo].[DalmaMallKFCSupplier]
    ([Suppliers_Id]);
GO

-- Creating foreign key on [MoskovyanKFCs_Id] in table 'MoskovyanKFCSupplier'
ALTER TABLE [dbo].[MoskovyanKFCSupplier]
ADD CONSTRAINT [FK_MoskovyanKFCSupplier_MoskovyanKFC]
    FOREIGN KEY ([MoskovyanKFCs_Id])
    REFERENCES [dbo].[MoskovyanKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Suppliers_Id] in table 'MoskovyanKFCSupplier'
ALTER TABLE [dbo].[MoskovyanKFCSupplier]
ADD CONSTRAINT [FK_MoskovyanKFCSupplier_Supplier]
    FOREIGN KEY ([Suppliers_Id])
    REFERENCES [dbo].[Suppliers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MoskovyanKFCSupplier_Supplier'
CREATE INDEX [IX_FK_MoskovyanKFCSupplier_Supplier]
ON [dbo].[MoskovyanKFCSupplier]
    ([Suppliers_Id]);
GO

-- Creating foreign key on [RIOKFCs_Id] in table 'RIOKFCSupplier'
ALTER TABLE [dbo].[RIOKFCSupplier]
ADD CONSTRAINT [FK_RIOKFCSupplier_RIOKFC]
    FOREIGN KEY ([RIOKFCs_Id])
    REFERENCES [dbo].[RIOKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Suppliers_Id] in table 'RIOKFCSupplier'
ALTER TABLE [dbo].[RIOKFCSupplier]
ADD CONSTRAINT [FK_RIOKFCSupplier_Supplier]
    FOREIGN KEY ([Suppliers_Id])
    REFERENCES [dbo].[Suppliers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RIOKFCSupplier_Supplier'
CREATE INDEX [IX_FK_RIOKFCSupplier_Supplier]
ON [dbo].[RIOKFCSupplier]
    ([Suppliers_Id]);
GO

-- Creating foreign key on [RIOKFC_Id] in table 'RIOKFCSupplier1'
ALTER TABLE [dbo].[RIOKFCSupplier1]
ADD CONSTRAINT [FK_RIOKFCSupplier1_RIOKFC]
    FOREIGN KEY ([RIOKFC_Id])
    REFERENCES [dbo].[RIOKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Suppliers1_Id] in table 'RIOKFCSupplier1'
ALTER TABLE [dbo].[RIOKFCSupplier1]
ADD CONSTRAINT [FK_RIOKFCSupplier1_Supplier]
    FOREIGN KEY ([Suppliers1_Id])
    REFERENCES [dbo].[Suppliers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RIOKFCSupplier1_Supplier'
CREATE INDEX [IX_FK_RIOKFCSupplier1_Supplier]
ON [dbo].[RIOKFCSupplier1]
    ([Suppliers1_Id]);
GO

-- Creating foreign key on [KomitasKFCs_Id] in table 'KomitasKFCSupplier'
ALTER TABLE [dbo].[KomitasKFCSupplier]
ADD CONSTRAINT [FK_KomitasKFCSupplier_KomitasKFC]
    FOREIGN KEY ([KomitasKFCs_Id])
    REFERENCES [dbo].[KomitasKFCs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Suppliers_Id] in table 'KomitasKFCSupplier'
ALTER TABLE [dbo].[KomitasKFCSupplier]
ADD CONSTRAINT [FK_KomitasKFCSupplier_Supplier]
    FOREIGN KEY ([Suppliers_Id])
    REFERENCES [dbo].[Suppliers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KomitasKFCSupplier_Supplier'
CREATE INDEX [IX_FK_KomitasKFCSupplier_Supplier]
ON [dbo].[KomitasKFCSupplier]
    ([Suppliers_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------