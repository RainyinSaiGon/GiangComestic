-- Seed data for development
-- Insert test customers

INSERT INTO customers (name, email, phone, address) VALUES
  ('John Doe', 'john@example.com', '123-456-7890', '123 Main St, City, State'),
  ('Jane Smith', 'jane@example.com', '098-765-4321', '456 Oak Ave, City, State'),
  ('Bob Johnson', 'bob@example.com', '555-1234', '789 Elm Rd, City, State')
ON CONFLICT DO NOTHING;

-- Insert test products

INSERT INTO products (name, description, price, quantity) VALUES
  ('Face Cream', 'Moisturizing face cream for all skin types', 29.99, 50),
  ('Shampoo', 'Gentle shampoo for daily use', 12.99, 100),
  ('Lipstick', 'Long-lasting matte lipstick', 18.99, 75),
  ('Body Lotion', 'Nourishing body lotion', 15.99, 60),
  ('Face Mask', 'Purifying clay face mask', 24.99, 40)
ON CONFLICT DO NOTHING;

-- Insert test orders

INSERT INTO orders (customer_id, total_amount, status) VALUES
  (1, 49.98, 'COMPLETED'),
  (2, 29.99, 'PENDING'),
  (3, 74.95, 'COMPLETED')
ON CONFLICT DO NOTHING;

-- Insert test order items

INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
  (1, 1, 1, 29.99),
  (1, 2, 1, 12.99),
  (2, 3, 1, 18.99),
  (3, 4, 2, 15.99),
  (3, 5, 1, 24.99)
ON CONFLICT DO NOTHING;

