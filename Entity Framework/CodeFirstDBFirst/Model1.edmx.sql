
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/21/2019 10:46:38
-- Generated from EDMX file: C:\Users\pqoal\Source\Repos\Entity-Framework2\Entity Framework\CodeFirstDBFirst\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [FIFAdb];
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

-- Creating table 'Footballists'
CREATE TABLE [dbo].[Footballists] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nickname] nvarchar(max)  NOT NULL,
    [FormColor] nvarchar(max)  NOT NULL,
    [Experiance] nvarchar(max)  NOT NULL,
    [Game_Id] int  NOT NULL
);
GO

-- Creating table 'Games'
CREATE TABLE [dbo].[Games] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Location] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Trainers'
CREATE TABLE [dbo].[Trainers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nickname] nvarchar(max)  NOT NULL,
    [Age] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Referees'
CREATE TABLE [dbo].[Referees] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [Experiance] nvarchar(max)  NOT NULL,
    [Isfair] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RefereeGame'
CREATE TABLE [dbo].[RefereeGame] (
    [Referees_Id] int  NOT NULL,
    [Games_Id] int  NOT NULL
);
GO

-- Creating table 'FootballistTrainer'
CREATE TABLE [dbo].[FootballistTrainer] (
    [Footballists_Id] int  NOT NULL,
    [Trainers_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Footballists'
ALTER TABLE [dbo].[Footballists]
ADD CONSTRAINT [PK_Footballists]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Games'
ALTER TABLE [dbo].[Games]
ADD CONSTRAINT [PK_Games]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Trainers'
ALTER TABLE [dbo].[Trainers]
ADD CONSTRAINT [PK_Trainers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Referees'
ALTER TABLE [dbo].[Referees]
ADD CONSTRAINT [PK_Referees]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Referees_Id], [Games_Id] in table 'RefereeGame'
ALTER TABLE [dbo].[RefereeGame]
ADD CONSTRAINT [PK_RefereeGame]
    PRIMARY KEY CLUSTERED ([Referees_Id], [Games_Id] ASC);
GO

-- Creating primary key on [Footballists_Id], [Trainers_Id] in table 'FootballistTrainer'
ALTER TABLE [dbo].[FootballistTrainer]
ADD CONSTRAINT [PK_FootballistTrainer]
    PRIMARY KEY CLUSTERED ([Footballists_Id], [Trainers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Game_Id] in table 'Footballists'
ALTER TABLE [dbo].[Footballists]
ADD CONSTRAINT [FK_FootballistGame]
    FOREIGN KEY ([Game_Id])
    REFERENCES [dbo].[Games]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FootballistGame'
CREATE INDEX [IX_FK_FootballistGame]
ON [dbo].[Footballists]
    ([Game_Id]);
GO

-- Creating foreign key on [Referees_Id] in table 'RefereeGame'
ALTER TABLE [dbo].[RefereeGame]
ADD CONSTRAINT [FK_RefereeGame_Referee]
    FOREIGN KEY ([Referees_Id])
    REFERENCES [dbo].[Referees]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Games_Id] in table 'RefereeGame'
ALTER TABLE [dbo].[RefereeGame]
ADD CONSTRAINT [FK_RefereeGame_Game]
    FOREIGN KEY ([Games_Id])
    REFERENCES [dbo].[Games]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RefereeGame_Game'
CREATE INDEX [IX_FK_RefereeGame_Game]
ON [dbo].[RefereeGame]
    ([Games_Id]);
GO

-- Creating foreign key on [Footballists_Id] in table 'FootballistTrainer'
ALTER TABLE [dbo].[FootballistTrainer]
ADD CONSTRAINT [FK_FootballistTrainer_Footballist]
    FOREIGN KEY ([Footballists_Id])
    REFERENCES [dbo].[Footballists]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Trainers_Id] in table 'FootballistTrainer'
ALTER TABLE [dbo].[FootballistTrainer]
ADD CONSTRAINT [FK_FootballistTrainer_Trainer]
    FOREIGN KEY ([Trainers_Id])
    REFERENCES [dbo].[Trainers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FootballistTrainer_Trainer'
CREATE INDEX [IX_FK_FootballistTrainer_Trainer]
ON [dbo].[FootballistTrainer]
    ([Trainers_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------