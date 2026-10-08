
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/08/2026 12:57:56
-- Generated from EDMX file: C:\Users\opilane\source\repos\KohvikModel\KohvikModel\DBModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Kohvik];
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

-- Creating table 'ametSet'
CREATE TABLE [dbo].[ametSet] (
    [ametId] int IDENTITY(1,1) NOT NULL,
    [amet_Nimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TootajaSet'
CREATE TABLE [dbo].[TootajaSet] (
    [TootajaId] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [amet_ametId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ametId] in table 'ametSet'
ALTER TABLE [dbo].[ametSet]
ADD CONSTRAINT [PK_ametSet]
    PRIMARY KEY CLUSTERED ([ametId] ASC);
GO

-- Creating primary key on [TootajaId] in table 'TootajaSet'
ALTER TABLE [dbo].[TootajaSet]
ADD CONSTRAINT [PK_TootajaSet]
    PRIMARY KEY CLUSTERED ([TootajaId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [amet_ametId] in table 'TootajaSet'
ALTER TABLE [dbo].[TootajaSet]
ADD CONSTRAINT [FK_ametTootaja]
    FOREIGN KEY ([amet_ametId])
    REFERENCES [dbo].[ametSet]
        ([ametId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ametTootaja'
CREATE INDEX [IX_FK_ametTootaja]
ON [dbo].[TootajaSet]
    ([amet_ametId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------