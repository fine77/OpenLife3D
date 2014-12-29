
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/29/2014 01:19:59
-- Generated from EDMX file: D:\Workspace\OpenLife3D\OpenLife3D\OpenLife3DModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[user_accountsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[user_accountsSet];
GO
IF OBJECT_ID(N'[dbo].[user_appearanceSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[user_appearanceSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'user_accountsSet'
CREATE TABLE [dbo].[user_accountsSet] (
    [PrincipalID] nvarchar(36)  NOT NULL,
    [ScopeID] nvarchar(36)  NOT NULL,
    [FirstName] nvarchar(64)  NOT NULL,
    [LastName] nvarchar(64)  NOT NULL,
    [Email] nvarchar(64)  NOT NULL,
    [Created] smallint  NOT NULL,
    [UserLevel] smallint  NOT NULL,
    [UserFlags] smallint  NOT NULL,
    [Name] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'user_appearanceSet'
CREATE TABLE [dbo].[user_appearanceSet] (
    [PrincipalID] nvarchar(36)  NOT NULL,
    [Appearance] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [PrincipalID] in table 'user_accountsSet'
ALTER TABLE [dbo].[user_accountsSet]
ADD CONSTRAINT [PK_user_accountsSet]
    PRIMARY KEY CLUSTERED ([PrincipalID] ASC);
GO

-- Creating primary key on [PrincipalID] in table 'user_appearanceSet'
ALTER TABLE [dbo].[user_appearanceSet]
ADD CONSTRAINT [PK_user_appearanceSet]
    PRIMARY KEY CLUSTERED ([PrincipalID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------