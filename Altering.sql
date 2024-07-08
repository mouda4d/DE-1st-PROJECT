USE CompanyDB;
GO


ALTER TABLE Departments
ADD CONSTRAINT CHK_DepartmentID CHECK (DepartmentID > 0);
GO

ALTER TABLE Employees
ADD CONSTRAINT CHK_Salary CHECK (Salary > 0);

ALTER TABLE Employees
ADD CONSTRAINT FK_DepartmentID FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);
GO

ALTER TABLE Projects
ADD CONSTRAINT CHK_Budget CHECK (Budget > 0);
GO

ALTER TABLE Assignments
ADD CONSTRAINT FK_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);

ALTER TABLE Assignments
ADD CONSTRAINT FK_ProjectID FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID);
GO

ALTER TABLE Orders
ADD CONSTRAINT CHK_TotalAmount CHECK (TotalAmount > 0);

ALTER TABLE Orders
ADD CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);
GO

ALTER TABLE Products
ADD CONSTRAINT CHK_Price CHECK (Price > 0);

ALTER TABLE Products
ADD CONSTRAINT CHK_StockQuantity CHECK (StockQuantity >= 0);
GO

ALTER TABLE OrderDetails
ADD CONSTRAINT FK_OrderID FOREIGN KEY (OrderID) REFERENCES Orders(OrderID);

ALTER TABLE OrderDetails
ADD CONSTRAINT FK_ProductID FOREIGN KEY (ProductID) REFERENCES Products(ProductID);

ALTER TABLE OrderDetails
ADD CONSTRAINT CHK_Quantity CHECK (Quantity > 0);

ALTER TABLE OrderDetails
ADD CONSTRAINT CHK_UnitPrice CHECK (UnitPrice > 0);
GO