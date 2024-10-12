-- DDL Commands (If not using JPA auto-generation)
CREATE TABLE IF NOT EXISTS book (
    book_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) NOT NULL,
    available BOOLEAN DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS member (
    member_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS transaction (
    transaction_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    book_book_id BIGINT,
    member_member_id BIGINT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_book_id) REFERENCES book (book_id),
    FOREIGN KEY (member_member_id) REFERENCES member (member_id)
);
