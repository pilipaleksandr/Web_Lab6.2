DROP DATABASE mydb;
CREATE DATABASE mydb;
USE mydb;

-- Таблиця "категорії"
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);


-- Таблиця "продукти"
CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  category_id INT,
  FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO categories (name) VALUES ('кава');
INSERT INTO categories (name) VALUES ('чай');
INSERT INTO categories (name) VALUES ('сніданок');

-- Додавання продуктів до категорії "кава"
INSERT INTO products (name, category_id) VALUES ('Арабіка', 1);
INSERT INTO products (name, category_id) VALUES ('Робуста', 1);
INSERT INTO products (name, category_id) VALUES ('Еспрессо', 1);

-- Додавання продуктів до категорії "чай"
INSERT INTO products (name, category_id) VALUES ('Зелений чай', 2);
INSERT INTO products (name, category_id) VALUES ('Чорний чай', 2);
INSERT INTO products (name, category_id) VALUES ('Фруктовий чай', 2);

-- Додавання продуктів до категорії "сніданок"
INSERT INTO products (name, category_id) VALUES ('Житній хліб', 3);
INSERT INTO products (name, category_id) VALUES ('Мюслі', 3);
INSERT INTO products (name, category_id) VALUES ('Омлет', 3);