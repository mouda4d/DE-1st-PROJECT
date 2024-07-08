CREATE DATABASE CompanyDB;
GO
USE CompanyDB;

CREATE TABLE Departments (
  DepartmentID INT PRIMARY KEY,
  DepartmentName VARCHAR(100) NOT NULL,
  Location VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
  EmployeeID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  DepartmentID INT,
  HireDate DATE NOT NULL,
  Position VARCHAR(50),
  Salary DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Projects (
  ProjectID INT PRIMARY KEY,
  ProjectName VARCHAR(100) NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE NOT NULL,
  Budget DECIMAL(15, 2) NOT NULL
);

CREATE TABLE Assignments (
  AssignmentID INT PRIMARY KEY,
  EmployeeID INT NOT NULL,
  ProjectID INT NOT NULL,
  Role VARCHAR(50) NOT NULL,
  AssignmentDate DATE NOT NULL
);

CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(100) NOT NULL,
  ContactNumber VARCHAR(15) NOT NULL,
  Email VARCHAR(100) NOT NULL,
  Address VARCHAR(255) NOT NULL
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT NOT NULL,
  OrderDate DATE NOT NULL,
  TotalAmount DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(100) NOT NULL,
  Category VARCHAR(50) NOT NULL,
  Price DECIMAL(10, 2) NOT NULL,
  StockQuantity INT NOT NULL
);

CREATE TABLE OrderDetails (
  OrderDetailID INT PRIMARY KEY,
  OrderID INT,
  ProductID INT,
  Quantity INT NOT NULL,
  UnitPrice DECIMAL(10, 2) NOT NULL
);
