-- Table Creation
CREATE TABLE users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR (60) NOT NULL,
  password VARCHAR (60) NOT NULL,
  full_name VARCHAR(60) NOT NULL,
  email VARCHAR(60) NOT NULL,
  phone INT NOT NULL,
  delivery_address VARCHAR (60) NOT NULL,
  is_admin BOOLEAN NOT NULL DEFAULT FALSE,
  is_disabled BOOLEAN DEFAULT FALSE
);

CREATE TABLE products (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR (60) NOT NULL,
  price FLOAT NOT NULL,
  img_url VARCHAR(200) NOT NULL,
  description VARCHAR(150) NOT NULL,
  is_disabled BOOLEAN DEFAULT FALSE
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  status VARCHAR(60) NOT NULL,
  date DATETIME NOT NULL,
  description VARCHAR(150) NOT NULL,
  payment_method VARCHAR (60) NOT NULL,
  total FLOAT NOT NULL,
  user_id INT NOT NULL DEFAULT "0",
  is_disabled BOOLEAN DEFAULT FALSE,
  FOREIGN KEY(user_id) REFERENCES users(user_id)
);

CREATE TABLE orders_products (
  order_prod_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  product_id INT,
  product_amount INT NOT NULL,
  FOREIGN KEY(order_id) REFERENCES orders(order_id),
  FOREIGN KEY(product_id) REFERENCES products(product_id)
);

-- Populate users table
INSERT INTO
  users
VALUES
  (
    NULL,
    "andresrubio",
    "drezrubio",
    "Andres Rubio",
    "drezrubio@gmail.com",
    1122223333,
    "Calle 13 #123",
    TRUE,
    FALSE
  );

INSERT INTO
  users
VALUES
  (
    NULL,
    "alejobo",
    "alebote123",
    "Alejandro Botero",
    "bote@hotmail.com",
    1199998888,
    "Calle 11 #2-3",
    FALSE,
    FALSE
  );

INSERT INTO
  users
VALUES
  (
    NULL,
    "josemiel",
    "josemimiel",
    "Jose Gomez",
    "josemgomez@gmail.com",
    0106926593,
    "Calle Walabee 42 Sidney",
    FALSE,
    FALSE
  );

-- Populate products table
INSERT INTO
  products
VALUES
  (
    NULL,
    "Hamburguesa Doble Carne + papas",
    360,
    "https://via.placeholder.com/732",
    "Porción doble de carne y una porción de papas fritas",
    FALSE
  );

INSERT INTO
  products
VALUES
  (
    NULL,
    "Ensalada César",
    300,
    "https://via.placeholder.com/237",
    "Deliciosa ensalada césar con pollo a la plancha y queso parmesano",
    FALSE
  );

INSERT INTO
  products
VALUES
  (
    NULL,
    "Ensalada César sin pollo",
    265,
    "https://via.placeholder.com/200",
    "Tradicional ensalada césar sin pollo",
    FALSE
  );

INSERT INTO
  products
VALUES
  (
    NULL,
    "Coca cola 350ml",
    60,
    "https://via.placeholder.com/666",
    "Sabor original o zero",
    FALSE
  );

INSERT INTO
  products
VALUES
  (
    NULL,
    "Pizza mozzarella",
    400,
    "https://via.placeholder.com/444",
    "Pizza tradicional 12 porciones",
    FALSE
  );

INSERT INTO
  products
VALUES
  (
    NULL,
    "Pizza hawaiana",
    450,
    "https://via.placeholder.com/999",
    "Pizza hawaiana 12 porciones",
    FALSE
  );

INSERT INTO
  products
VALUES
  (
    NULL,
    "Sánduche milanesa con papas fritas",
    450,
    "https://via.placeholder.com/888",
    "Sánduche con milanesa y porción de papas fritas",
    FALSE
  );

-- Populate orders table
INSERT INTO
  orders
VALUES
  (
    NULL,
    "delivered",
    NOW(),
    "1x HambDobPapas, 2x Coca350",
    "card",
    480,
    1,
    FALSE
  ),
  (
    NULL,
    "canceled",
    NOW(),
    "2x Coca350",
    "card",
    120,
    3,
    FALSE
  ),
  (
    NULL,
    "sending",
    NOW(),
    "2x Coca350",
    "cash",
    120,
    1,
    FALSE
  ),
  (
    NULL,
    "preparing",
    NOW(),
    "1x GdeMozza",
    "cash",
    400,
    3,
    FALSE
  ),
  (
    NULL,
    "confirmed",
    NOW(),
    "1x GdeHawaiana",
    "card",
    450,
    2,
    FALSE
  ),
  (
    NULL,
    "new",
    NOW(),
    "1x SdchMila",
    "cash",
    450,
    1,
    FALSE
  );

-- Populate orders_products table
INSERT INTO
  orders_products
VALUES
  (NULL, 1, 1, 1),
  (NULL, 1, 4, 2),
  (NULL, 2, 4, 2),
  (NULL, 3, 4, 2),
  (NULL, 4, 5, 1),
  (NULL, 5, 6, 1),
  (NULL, 6, 7, 1);

