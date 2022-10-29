DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS project_category;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS project;


CREATE TABLE project(
project_id INT AUTO_INCREMENT NOT NULL, 
project_name VARCHAR(128) NOT NULL,
estimated_hours TIME,
actual_hours TIME,
difficulty TEXT,
notes TEXT
);

CREATE TABLE category(
category_id INT AUTO_INCREMENT NOT NULL,
categor_name VARCHAR(64) NOT NULL
);

CREATE TABLE project_category(
project_id INT NOT NULL,
category_id INT NOT NULL
);

CREATE TABLE step(
step_id INT AUTO_INCREMENT NOT NULL,
project_id INT NOT NULL,
step_text TEXT NOT NULL,
step_order INT NOT NULL
);

CREATE TABLE material(
material_id INT AUTO_INCREMENT NOT NULL,
project_id INT NOT NULL,
material_name VARCHAR(64) NOT NULL,
num_required VARCHAR(64),
cost DECIMAL(7, 2)
);