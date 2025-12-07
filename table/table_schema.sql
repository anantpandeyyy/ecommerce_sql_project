-- PRODUCTS table
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name TEXT,
  category TEXT,
  sub_category TEXT,
  cost_price NUMERIC(12,2),
  selling_price NUMERIC(12,2)
);

-- CUSTOMERS table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  signup_date DATE,
  city TEXT,
  state TEXT
);

-- ORDERS table
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  order_amount NUMERIC(12,2),
  discount NUMERIC(12,2),
  payment_method TEXT,
  status TEXT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ORDER ITEMS table
CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  price NUMERIC(12,2),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);
