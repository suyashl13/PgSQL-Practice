
-- Drop tables if they exist (to avoid conflicts)
DROP TABLE IF EXISTS payments, order_items, orders, products, customers CASCADE;

-- Create customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    stock_quantity INT,
    category VARCHAR(50)
);

-- Create orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'pending'
);

-- Create order_items table
CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    price DECIMAL(10, 2)
);

-- Create payments table
CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(10, 2),
    payment_method VARCHAR(30),
    status VARCHAR(20) DEFAULT 'completed'
);

INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Danielle', 'Johnson', 'jeffreydoyle@hotmail.com', NOW() - interval '81 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Joy', 'Gardner', 'johnsonjeffery@hotmail.com', NOW() - interval '14 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Carolyn', 'Hoffman', 'shaneramirez@gmail.com', NOW() - interval '3 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Katherine', 'Moore', 'joshua35@gmail.com', NOW() - interval '94 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Christopher', 'Davis', 'lindsay78@gmail.com', NOW() - interval '35 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Teresa', 'Gray', 'barbara10@hotmail.com', NOW() - interval '31 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Jeremy', 'Roberts', 'michellejames@reid-diaz.com', NOW() - interval '28 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Michael', 'Santiago', 'amandasanchez@gray-mayo.net', NOW() - interval '17 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Jeffrey', 'Nguyen', 'lydiatrujillo@adams-clark.org', NOW() - interval '94 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Nancy', 'Edwards', 'pwilkerson@yahoo.com', NOW() - interval '13 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Douglas', 'Taylor', 'zhurst@yahoo.com', NOW() - interval '86 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Jeffrey', 'Bright', 'camposmichelle@gmail.com', NOW() - interval '94 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Courtney', 'Conner', 'cruzcaitlin@yahoo.com', NOW() - interval '69 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Allison', 'Maddox', 'maldonadoamanda@mack-peterson.com', NOW() - interval '11 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Ryan', 'Chavez', 'williamrodriguez@hotmail.com', NOW() - interval '75 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Kenneth', 'Fowler', 'nathanielmartin@sellers.com', NOW() - interval '54 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Sarah', 'Koch', 'brianhumphrey@gmail.com', NOW() - interval '4 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Christopher', 'Tucker', 'davidalvarez@martin.com', NOW() - interval '3 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Sarah', 'Campos', 'raymond57@hayes.com', NOW() - interval '11 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Brianna', 'Hall', 'jonescrystal@jones.com', NOW() - interval '27 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Chad', 'Young', 'ambercummings@hotmail.com', NOW() - interval '29 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Barbara', 'Sanchez', 'glee@hotmail.com', NOW() - interval '64 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Ryan', 'Henderson', 'nuneztracey@gmail.com', NOW() - interval '77 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Bruce', 'Chandler', 'jamesherrera@henderson.info', NOW() - interval '3 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('John', 'Leblanc', 'williamsyvette@gmail.com', NOW() - interval '71 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Tanya', 'House', 'richardolson@barrera-martin.com', NOW() - interval '25 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Tricia', 'Baker', 'rodney87@gmail.com', NOW() - interval '91 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('James', 'Robinson', 'adkinsbrian@woods.com', NOW() - interval '83 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Susan', 'Miller', 'larsonemma@powell.com', NOW() - interval '89 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Beth', 'Williams', 'ksandoval@stewart.com', NOW() - interval '69 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('John', 'Foster', 'wstewart@gmail.com', NOW() - interval '53 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Albert', 'Howell', 'medinawilliam@mahoney.com', NOW() - interval '28 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Mike', 'Moore', 'contrerasangela@hotmail.com', NOW() - interval '57 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Dale', 'Humphrey', 'prestonjulia@gmail.com', NOW() - interval '75 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Joseph', 'Jacobs', 'gracefarrell@hotmail.com', NOW() - interval '35 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Tracy', 'Whitehead', 'waltersmaria@smith.com', NOW() - interval '0 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Evan', 'Ramos', 'rodriguezsierra@hotmail.com', NOW() - interval '97 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Rebecca', 'Gardner', 'russellwilliams@yahoo.com', NOW() - interval '20 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Rachel', 'Flynn', 'jason31@deleon-henson.biz', NOW() - interval '89 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Terri', 'Brady', 'theresacochran@johnson-doyle.com', NOW() - interval '54 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Kimberly', 'Jenkins', 'erik16@garrison.com', NOW() - interval '43 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Lisa', 'Stevens', 'jeffreykeller@yahoo.com', NOW() - interval '35 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Mark', 'Lin', 'darlene68@yahoo.com', NOW() - interval '19 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Sheila', 'Wilson', 'beverlyterrell@gmail.com', NOW() - interval '27 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Daniel', 'Hamilton', 'gobrien@gmail.com', NOW() - interval '97 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Paul', 'Ray', 'fletcheraaron@hotmail.com', NOW() - interval '43 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Gloria', 'Bentley', 'ryan59@alvarado-martinez.com', NOW() - interval '13 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('William', 'Estrada', 'jterry@gmail.com', NOW() - interval '11 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('James', 'Ortega', 'christinaturner@hotmail.com', NOW() - interval '48 days');
INSERT INTO customers (first_name, last_name, email, created_at) VALUES ('Martha', 'Torres', 'mfloyd@morris.net', NOW() - interval '12 days');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Material', 'Probably exist professional people.', 182.69, 54, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Better', 'Pull different current agency each.', 135.94, 15, 'Toys');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('May', 'Sure authority increase picture create recent manager during.', 270.43, 58, 'Electronics');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Reality', 'Throughout team those.', 278.26, 90, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Start', 'Despite sound receive let newspaper true.', 443.3, 56, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Campaign', 'Card let most next fish sense kind.', 100.18, 18, 'Electronics');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Teacher', 'Interview trade knowledge city technology late seem.', 332.33, 47, 'Electronics');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Though', 'She miss phone ever back.', 428.38, 22, 'Toys');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Feeling', 'Even floor music catch discuss.', 142.6, 91, 'Books');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Rule', 'Relationship ask imagine my.', 85.51, 55, 'Clothing');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Just', 'Deal information toward once.', 336.74, 99, 'Electronics');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Safe', 'Task she herself.', 306.52, 31, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('According', 'Fear hope through structure Mrs same.', 365.92, 30, 'Toys');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Such', 'Today major event magazine home protect something right.', 192.83, 91, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Though', 'Try wonder move trade option production base.', 113.71, 51, 'Electronics');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Later', 'Term consider employee force.', 118.38, 14, 'Books');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Look', 'Front they everything week instead strong.', 203.58, 18, 'Clothing');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Many', 'See appear weight.', 457.0, 82, 'Books');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Door', 'Sit prepare senior wear.', 110.25, 73, 'Toys');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Decision', 'Perform draw list.', 442.92, 92, 'Toys');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Building', 'Way let eight hard paper white responsibility.', 75.72, 27, 'Clothing');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Star', 'Who blue agent find.', 373.77, 78, 'Books');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Research', 'However resource away real physical big.', 374.77, 64, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Spring', 'Sure outside building worker site.', 202.7, 38, 'Clothing');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Hand', 'Into have media game support state black.', 257.22, 21, 'Electronics');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('High', 'Religious itself safe whole establish space Mrs.', 431.25, 29, 'Clothing');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Member', 'Itself room environmental system store beautiful think.', 397.08, 64, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Either', 'Now property from management foot maintain great.', 36.45, 58, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Evening', 'Evidence other they new might course.', 498.08, 77, 'Books');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Effort', 'Major serve real position make society.', 485.68, 11, 'Electronics');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Better', 'Develop reality fill ok list.', 342.45, 78, 'Books');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Nice', 'International second former reflect even edge.', 385.46, 53, 'Electronics');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Camera', 'Firm sea week real course.', 150.28, 30, 'Toys');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Single', 'Everybody operation set others wonder strategy fast.', 6.61, 43, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Herself', 'Few remain call animal.', 382.17, 74, 'Electronics');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Arm', 'Factor want point sell bill activity expect.', 435.91, 48, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Measure', 'Future whole education technology box assume.', 306.44, 29, 'Books');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Million', 'Officer rather charge specific.', 382.44, 79, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Fly', 'Yes budget share paper.', 459.65, 86, 'Books');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Street', 'Difficult mission late kind team wrong figure perform.', 246.86, 24, 'Books');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Poor', 'Way debate decision produce.', 439.97, 49, 'Clothing');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Close', 'Community avoid able late order.', 33.67, 82, 'Electronics');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Film', 'Discuss religious reflect.', 47.4, 72, 'Electronics');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Long', 'Reach under skin person.', 489.1, 78, 'Clothing');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Recently', 'Interesting name positive training step.', 68.55, 70, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Away', 'Coach film see notice.', 86.74, 77, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Fight', 'Buy read record wall matter management.', 214.45, 37, 'Groceries');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Be', 'Always it focus economy before while structure offer.', 378.86, 98, 'Clothing');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Against', 'Office several compare million kind.', 357.91, 61, 'Books');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Fall', 'Young job sport why.', 221.86, 76, 'Toys');
INSERT INTO orders (customer_id, order_date, status) VALUES (8, NOW() - interval '14 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (5, NOW() - interval '1 days', 'delivered');
INSERT INTO orders (customer_id, order_date, status) VALUES (38, NOW() - interval '37 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (15, NOW() - interval '4 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (46, NOW() - interval '14 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (5, NOW() - interval '21 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (5, NOW() - interval '17 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (43, NOW() - interval '13 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (35, NOW() - interval '46 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (37, NOW() - interval '15 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (31, NOW() - interval '12 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (7, NOW() - interval '42 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (28, NOW() - interval '27 days', 'delivered');
INSERT INTO orders (customer_id, order_date, status) VALUES (27, NOW() - interval '46 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (4, NOW() - interval '3 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (26, NOW() - interval '6 days', 'delivered');
INSERT INTO orders (customer_id, order_date, status) VALUES (16, NOW() - interval '12 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (35, NOW() - interval '8 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (28, NOW() - interval '17 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (30, NOW() - interval '4 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (29, NOW() - interval '3 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (42, NOW() - interval '5 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (49, NOW() - interval '10 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (27, NOW() - interval '30 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (14, NOW() - interval '3 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (11, NOW() - interval '0 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (25, NOW() - interval '50 days', 'delivered');
INSERT INTO orders (customer_id, order_date, status) VALUES (30, NOW() - interval '27 days', 'delivered');
INSERT INTO orders (customer_id, order_date, status) VALUES (45, NOW() - interval '9 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (13, NOW() - interval '13 days', 'delivered');
INSERT INTO orders (customer_id, order_date, status) VALUES (4, NOW() - interval '47 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (21, NOW() - interval '3 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (38, NOW() - interval '32 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (34, NOW() - interval '3 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (33, NOW() - interval '11 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (5, NOW() - interval '43 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (16, NOW() - interval '7 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (37, NOW() - interval '37 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (39, NOW() - interval '39 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (6, NOW() - interval '42 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (38, NOW() - interval '16 days', 'delivered');
INSERT INTO orders (customer_id, order_date, status) VALUES (14, NOW() - interval '15 days', 'delivered');
INSERT INTO orders (customer_id, order_date, status) VALUES (17, NOW() - interval '8 days', 'cancelled');
INSERT INTO orders (customer_id, order_date, status) VALUES (43, NOW() - interval '29 days', 'delivered');
INSERT INTO orders (customer_id, order_date, status) VALUES (21, NOW() - interval '0 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (30, NOW() - interval '4 days', 'pending');
INSERT INTO orders (customer_id, order_date, status) VALUES (35, NOW() - interval '32 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (17, NOW() - interval '22 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (5, NOW() - interval '23 days', 'shipped');
INSERT INTO orders (customer_id, order_date, status) VALUES (19, NOW() - interval '28 days', 'shipped');
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (35, 46, 3, 187.39);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (42, 34, 1, 203.68);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (36, 20, 1, 282.29);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (9, 17, 1, 268.02);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (48, 36, 2, 88.98);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (39, 14, 3, 69.04);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (41, 17, 5, 151.67);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (4, 6, 4, 250.51);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (3, 1, 3, 233.62);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (41, 17, 2, 224.96);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (36, 46, 4, 172.66);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (8, 5, 2, 168.22);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (24, 38, 5, 52.95);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (9, 3, 3, 115.75);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (3, 23, 2, 207.8);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (43, 7, 3, 236.23);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (27, 40, 2, 278.47);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (16, 11, 2, 265.61);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (2, 12, 3, 236.89);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (27, 43, 2, 87.37);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (45, 7, 4, 262.93);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (31, 15, 2, 246.81);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (30, 23, 3, 247.96);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (15, 15, 1, 201.41);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (26, 22, 3, 260.66);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (50, 18, 3, 196.03);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (26, 44, 5, 106.03);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (2, 8, 3, 61.78);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (17, 3, 1, 183.01);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (23, 47, 3, 136.55);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (33, 8, 4, 270.86);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (13, 17, 1, 215.55);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (1, 34, 5, 209.19);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (48, 48, 2, 115.62);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (5, 43, 3, 190.72);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (43, 8, 3, 157.07);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (43, 27, 3, 126.7);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (19, 36, 2, 65.63);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (43, 25, 2, 188.5);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (20, 26, 5, 251.78);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (20, 19, 2, 134.67);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (38, 39, 3, 144.85);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (29, 44, 2, 158.24);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (48, 11, 1, 92.3);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (43, 41, 5, 107.2);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (49, 16, 3, 75.15);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (13, 10, 1, 23.4);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (31, 40, 1, 142.07);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (41, 37, 2, 218.32);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (25, 32, 4, 80.76);
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (42, NOW() - interval '7 days', 693.87, 'Credit Card', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (12, NOW() - interval '17 days', 808.03, 'Net Banking', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (16, NOW() - interval '4 days', 919.12, 'Credit Card', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (30, NOW() - interval '19 days', 674.23, 'UPI', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (47, NOW() - interval '14 days', 894.18, 'Net Banking', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (11, NOW() - interval '8 days', 748.78, 'Net Banking', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (49, NOW() - interval '15 days', 262.29, 'UPI', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (41, NOW() - interval '22 days', 254.46, 'Net Banking', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (19, NOW() - interval '28 days', 249.8, 'UPI', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (35, NOW() - interval '12 days', 98.97, 'PayPal', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (45, NOW() - interval '13 days', 169.75, 'PayPal', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (27, NOW() - interval '1 days', 344.26, 'Net Banking', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (14, NOW() - interval '30 days', 836.23, 'Net Banking', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (45, NOW() - interval '0 days', 39.14, 'Net Banking', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (23, NOW() - interval '17 days', 312.64, 'Net Banking', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (48, NOW() - interval '7 days', 739.94, 'PayPal', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (18, NOW() - interval '10 days', 447.12, 'Credit Card', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (43, NOW() - interval '5 days', 685.56, 'Net Banking', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (30, NOW() - interval '18 days', 921.15, 'Credit Card', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (37, NOW() - interval '13 days', 669.74, 'Credit Card', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (9, NOW() - interval '8 days', 869.51, 'PayPal', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (25, NOW() - interval '10 days', 340.81, 'Net Banking', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (49, NOW() - interval '8 days', 882.05, 'UPI', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (6, NOW() - interval '7 days', 480.9, 'Credit Card', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (42, NOW() - interval '30 days', 87.25, 'Credit Card', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (16, NOW() - interval '4 days', 215.37, 'Credit Card', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (16, NOW() - interval '30 days', 143.7, 'Credit Card', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (14, NOW() - interval '5 days', 475.73, 'UPI', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (39, NOW() - interval '30 days', 615.1, 'Credit Card', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (20, NOW() - interval '18 days', 125.94, 'Credit Card', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (44, NOW() - interval '30 days', 909.87, 'Net Banking', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (46, NOW() - interval '22 days', 214.36, 'PayPal', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (50, NOW() - interval '25 days', 315.55, 'Credit Card', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (3, NOW() - interval '11 days', 360.26, 'Net Banking', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (5, NOW() - interval '27 days', 515.84, 'UPI', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (27, NOW() - interval '30 days', 825.88, 'Credit Card', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (24, NOW() - interval '4 days', 642.87, 'Net Banking', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (28, NOW() - interval '25 days', 192.61, 'UPI', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (35, NOW() - interval '26 days', 779.15, 'Net Banking', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (47, NOW() - interval '26 days', 600.63, 'UPI', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (6, NOW() - interval '24 days', 293.35, 'Net Banking', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (30, NOW() - interval '0 days', 578.45, 'Net Banking', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (32, NOW() - interval '6 days', 853.93, 'PayPal', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (23, NOW() - interval '28 days', 801.88, 'UPI', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (39, NOW() - interval '0 days', 707.16, 'UPI', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (34, NOW() - interval '23 days', 949.1, 'Credit Card', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (27, NOW() - interval '15 days', 498.81, 'PayPal', 'refunded');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (42, NOW() - interval '2 days', 717.61, 'Net Banking', 'completed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (19, NOW() - interval '21 days', 237.16, 'PayPal', 'failed');
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (38, NOW() - interval '23 days', 381.64, 'UPI', 'failed');