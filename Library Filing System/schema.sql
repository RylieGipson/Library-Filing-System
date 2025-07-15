-- All CREATE TABLE statements should be in this file.

CREATE TABLE categories (
    cat_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

GO

CREATE TABLE authors (
    auth_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    birth_year INT CHECK (birth_year > 1000 AND birth_year < 2025)
);

GO

CREATE TABLE books (
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    publi_year INT CHECK (publi_year > 1000),
    cat_id INT REFERENCES categories(cat_id) ON DELETE SET NULL
);

GO

CREATE TABLE book_authors (
    book_id INT REFERENCES books(book_id) ON DELETE CASCADE,
    auth_id INT REFERENCES authors(auth_id) ON DELETE CASCADE,
    PRIMARY KEY (book_id, auth_id)
);

GO

CREATE TABLE members (
    member_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    join_date DATE NOT NULL DEFAULT CAST(GETDATE() AS DATE)
);

GO

CREATE TABLE loans (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    book_id INT REFERENCES books(book_id) ON DELETE CASCADE,
    member_id INT REFERENCES members(member_id) ON DELETE CASCADE,
    loan_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE,
    CONSTRAINT due_after_loan CHECK (due_date >= loan_date)
);

GO

CREATE TABLE fines (
    fine_id INT IDENTITY(1,1) PRIMARY KEY,
    loan_id INT REFERENCES loans(loan_id) UNIQUE,
    fine_amount DECIMAL(10, 2) NOT NULL CHECK (fine_amount >= 0),
    paid BIT DEFAULT 0
);




