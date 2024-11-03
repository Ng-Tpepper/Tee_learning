-- Implement a relational database schema based on the provided entities and their attributes.

-- creating a table called 'custmer'
CREATE TABLE customers (
		CustomerID INT PRIMARY KEY,
		FIRSTNAME VARCHAR(100) NOT NULL,
		LASTNAME VARCHAR(100) NOT NULL,
		Email VARCHAR(100) NOT NULL,
		Address VARCHAR(100) NOT NULL,
		city VARCHAR(100) NOT NULL,
		state VARCHAR(100) NOT NULL,
		zipcode VARCHAR(100) NOT NULL,
);


-- creating a table called 'Product'
CREATE TABLE Products(
		ProductID INT PRIMARY KEY NOT NUll,
		ProductName VARCHAR(100) NOT NUll,
		Description VARCHAR(100) NOT NUll,
		Price decimal(10, 2) NOT NUll,
		StockQuantity VARCHAR(100) NOT NUll,
		CategoryID VARCHAR(100) NOT NUll,
		foreign key (categoryID) References categories(categoryID)
);	

-- creating a table called 'Categories'
CREATE TABLE Categories(
		CategoryID INT PRIMARY KEY,
		Categoryname VARCHAR NOT NUll,
		Description VARCHAR NOT NUll,
)
-- creating a table called 'Orders'
CREATE TABLE Orders(
		OrderDetailID INT PRIMARY KEY NOT NUll,
		CustomerID int NOT NUll,
		Oderdate datetime VARCHAR(100) NOT NUll,
		TotalAmount Decimal (10,2)NOT NUll,
		foreign key (CustomerID) References Customers(CustomerID)
)	

-- creating a table called 'OrderDetails'
CREATE TABLE OrderDetails(
		OrderDetailID INT PRIMARY KEY NOT NUll,
		ProductID VARCHAR NOT NUll,
		Quantity INT NOT NUll,
		UnitPrice DECIMAL(10, 2) NOT NUll,
		foreign key (ProductID) References products(ProductID)
)