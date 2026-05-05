CREATE DATABASE warehouse_inventory;

USE warehouse_inventory;

---------------------------------------------------
-- INVENTORY TABLE
---------------------------------------------------

CREATE TABLE inventory
(
    inventory_id INT PRIMARY KEY,
    inventory_name VARCHAR(100),
    location VARCHAR(100)
);

---------------------------------------------------
-- PRODUCT TABLE
---------------------------------------------------

CREATE TABLE product
(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    brand VARCHAR(50),
    price DOUBLE,
    quantity INT,
    inventory_id INT,

    FOREIGN KEY(inventory_id)
    REFERENCES inventory(inventory_id)
);

---------------------------------------------------
-- CUSTOMER TABLE
---------------------------------------------------

CREATE TABLE customer
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    password VARCHAR(50)
);

---------------------------------------------------
-- ORDERS TABLE
---------------------------------------------------

CREATE TABLE orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(50),
    total_amount DOUBLE,

    FOREIGN KEY(customer_id)
    REFERENCES customer(customer_id)
);

---------------------------------------------------
-- ORDER DETAILS TABLE
---------------------------------------------------

CREATE TABLE order_details
(
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity_ordered INT,
    subtotal DOUBLE,

    FOREIGN KEY(order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY(product_id)
    REFERENCES product(product_id)
);

---------------------------------------------------
-- SUPPLIER TABLE
---------------------------------------------------

CREATE TABLE supplier
(
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50)
);

---------------------------------------------------
-- INSERT DATA INTO INVENTORY
---------------------------------------------------

INSERT INTO inventory VALUES
(1, 'Main Warehouse', 'Bangalore'),
(2, 'Electronics Storage', 'Chennai');

---------------------------------------------------
-- INSERT DATA INTO PRODUCT
---------------------------------------------------

INSERT INTO product VALUES
(101, 'iPhone 15', 'Apple', 70000, 10, 1),
(102, 'Galaxy S25', 'Samsung', 65000, 8, 1),
(103, 'Wireless Mouse', 'Logitech', 1200, 20, 2),
(104, 'Gaming Keyboard', 'HP', 2500, 15, 2);

---------------------------------------------------
-- INSERT DATA INTO CUSTOMER
---------------------------------------------------

INSERT INTO customer VALUES
(1, 'Rahul Sharma', '9876543210', 'Bangalore', 'admin123'),
(2, 'Priya Verma', '9123456780', 'Hyderabad', 'user123');

---------------------------------------------------
-- INSERT DATA INTO SUPPLIER
---------------------------------------------------


---------------------------------------------------
-- SAMPLE ORDERS
---------------------------------------------------

INSERT INTO orders VALUES
(1, 1, '2026-05-01', 'Dispatched', 70000),
(2, 2, '2026-05-01', 'Pending', 2400);

---------------------------------------------------
-- SAMPLE ORDER DETAILS
---------------------------------------------------

INSERT INTO order_details VALUES
(1, 1, 101, 1, 70000),
(2, 2, 103, 2, 2400);

---------------------------------------------------
-- DISPLAY ALL TABLES
---------------------------------------------------

SELECT * FROM inventory;

SELECT * FROM product;

SELECT * FROM customer;

SELECT * FROM orders;

SELECT * FROM order_details;

SELECT * FROM supplier;


INSERT INTO inventory VALUES
(1, 'Main Warehouse', 'Bangalore');


INSERT INTO product VALUES
(101, 'Wireless Mouse', 'Logitech', 1200, 15, 1),
(102, 'Mechanical Keyboard', 'HP', 2500, 10, 1),
(103, 'Gaming Headset', 'Boat', 1800, 12, 1),
(104, 'Bluetooth Speaker', 'JBL', 3500, 8, 1),
(105, 'Smart Watch', 'Noise', 4000, 7, 1),
(106, 'Power Bank 20000mAh', 'Mi', 2200, 20, 1),
(107, 'USB-C Charger', 'Samsung', 1500, 18, 1),
(108, 'External Hard Disk 1TB', 'Seagate', 5500, 6, 1),
(109, 'Gaming Monitor', 'LG', 18000, 5, 1),
(110, 'Wireless Earbuds', 'Realme', 2800, 14, 1),
(111, 'Laptop Cooling Pad', 'Zebronics', 900, 16, 1),
(112, 'Webcam HD', 'Dell', 3200, 9, 1),
(113, 'WiFi Router', 'TP-Link', 2700, 11, 1),
(114, 'Printer Ink Cartridge', 'Canon', 1600, 13, 1),
(115, 'Portable SSD 512GB', 'Sandisk', 6500, 4, 1);





INSERT INTO customer VALUES
(201, 'Rahul Sharma', '9876543210', 'Bangalore', 'rahul123'),
(202, 'Priya Verma', '9123456780', 'Hyderabad', 'priya123'),
(203, 'Arjun Mehta', '9988776655', 'Chennai', 'arjun123'),
(204, 'Sneha Reddy', '9012345678', 'Mumbai', 'sneha123'),
(205, 'Karan Patel', '9871203456', 'Pune', 'karan123'),
(206, 'Neha Kapoor', '9090909090', 'Delhi', 'neha123'),
(207, 'Vikram Joshi', '9345678901', 'Kolkata', 'vikram123');