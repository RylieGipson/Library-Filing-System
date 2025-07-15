-- All CREATE TABLE statements should be in this file.

CREATE TABLE categories (
    cat_id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
);



