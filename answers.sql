qn 1 

CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);


INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES
(201, 'Alex Mwangi', 'Laptop'),
(201, 'Alex Mwangi', 'Mouse'),
(202, 'Faith Kamau', 'Tablet'),
(202, 'Faith Kamau', 'Keyboard'),
(202, 'Faith Kamau', 'Mouse'),
(203, 'Brian Otieno', 'Phone');

-- Verify your results
SELECT * FROM ProductDetail_1NF;

qn 2

CREATE TABLE Orders_2NF (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO Orders_2NF (OrderID, CustomerName) VALUES
(301, 'Sarah Njeri'),
(302, 'Kevin Kiptoo'),
(303, 'Mercy Wanjiku');

CREATE TABLE OrderItems_2NF (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders_2NF(OrderID)
);

INSERT INTO OrderItems_2NF (OrderID, Product, Quantity) VALUES
(301, 'Laptop', 1),
(301, 'Mouse', 2),
(302, 'Tablet', 1),
(302, 'Keyboard', 1),
(302, 'Mouse', 1),
(303, 'Phone', 2);


SELECT * FROM Orders_2NF;


SELECT * FROM OrderItems_2NF;
