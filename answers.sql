-- Question 1: Create the ProductDetail table with sample data (no constraints needed for this step)

CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(100)
);

-- Insert sample records into ProductDetail
INSERT INTO ProductDetail(OrderID, CustomerName, Products)
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');


-- Question 2: Create the orders table

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Insert sample data into Orders
INSERT INTO Orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');


-- Create the product table (instead of OrderDetails) 
-- with foreign key relationship to Orders table

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    productName VARCHAR(100),
    quantity INT,
    order_id INT,
    FOREIGN KEY(order_id) REFERENCES Orders(OrderID)
);

-- Insert data into Product table
INSERT INTO Product(product_id, productName, quantity, order_id)
VALUES 
(1, 'Laptop', 2, 101),
(2, 'Mouse', 1, 101),
(3, 'Tablet', 3, 102),
(4, 'Keyboard', 2, 102),
(5, 'Mouse', 1, 102),
(6, 'Phone', 1, 103);
