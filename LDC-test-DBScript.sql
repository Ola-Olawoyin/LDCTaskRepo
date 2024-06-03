-- Creating A Retail Analytics Database and adding Businesses, Premises and Footfall tables

CREATE DATABASE RetailAnalytics;

USE retailanalytics;
CREATE TABLE Businesses (
    Id INT PRIMARY KEY,
    Business VARCHAR(255) NOT NULL
);

CREATE TABLE Premises (
    Id INT PRIMARY KEY,
    Street VARCHAR(255) NOT NULL,
    PostCode VARCHAR(10) NOT NULL,
    StreetNo VARCHAR(20),
    BusinessId INT
  
);

CREATE TABLE Footfall (
    WeekNo INT NOT NULL,
    PremisesId INT,
    Count INT NOT NULL
    
);

