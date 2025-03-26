CREATE TABLE ProductDetail (
    OrderID INT NOT NULL, 
    CustomerName VARCHAR(100) NOT NULL, 
    Product VARCHAR(100) NOT NULL,
    PRIMARY KEY (OrderID, Product)  -- Composite Primary Key
);


/*  Create Orders Table */
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY, 
    CustomerName VARCHAR(100) NOT NULL
);

/*  Create OrderDetails Table */
CREATE TABLE OrderDetails (
    OrderID INT NOT NULL,
    Product VARCHAR(100) NOT NULL, 
    Quantity INT NOT NULL,
    PRIMARY KEY (OrderID, Product),  -- Composite Key
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
