/****** Object:  Table [dbo].[Products]    Script Date: 8/27/2019 11:34:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- Creates the database that will be used for modules 6 and 7
CREATE DATABASE [MergedDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MergedDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\MergedDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MergedDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\MergedDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

USE [MergedDB]
GO

-- Creates the Products table, using similar data types as the source
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Color] [nvarchar](20) NULL,
	[Cost] [money] NOT NULL,
	[RetailPrice] [money] NOT NULL,
	[Size] [nvarchar](20) NULL
) ON [PRIMARY]
GO

-- Creates the Clothes table. It's identical to the Products table, but it will hold clothing only
CREATE TABLE [dbo].[Clothes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Color] [nvarchar](20) NULL,
	[Cost] [money] NOT NULL,
	[RetailPrice] [money] NOT NULL,
	[Size] [nvarchar](20) NULL
) ON [PRIMARY]
GO
