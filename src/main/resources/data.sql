-- -- Books

-- INSERT INTO book (title, author, isbn, available) 
-- VALUES ('Effective Java', 'Joshua Bloch', '9780134685991', true);

-- INSERT INTO book (title, author, isbn, available) 
-- VALUES ('Clean Code', 'Robert C. Martin', '9780132350884', true);

-- INSERT INTO book (title, author, isbn, available) 
-- VALUES ('The Pragmatic Programmer', 'Andrew Hunt', '9780201616224', true);

-- INSERT INTO book (title, author, isbn, available) 
-- VALUES ('Introduction to Algorithms', 'Thomas H. Cormen', '9780262033848', true);

-- INSERT INTO book (title, author, isbn, available) 
-- VALUES ('Design Patterns: Elements of Reusable Object-Oriented Software', 'Erich Gamma', '9780201633610', true);

-- INSERT INTO book (title, author, isbn, available) 
-- VALUES ('Refactoring: Improving the Design of Existing Code', 'Martin Fowler', '9780201485677', true);

-- INSERT INTO book (title, author, isbn, available) 
-- VALUES ('Head First Design Patterns', 'Eric Freeman', '9780596007126', true);

-- INSERT INTO book (title, author, isbn, available) 
-- VALUES ('Code Complete', 'Steve McConnell', '9780735619678', true);

-- INSERT INTO book (title, author, isbn, available) 
-- VALUES ('The Mythical Man-Month', 'Frederick P. Brooks Jr.', '9780201835953', true);

-- INSERT INTO book (title, author, isbn, available) 
-- VALUES ('The Art of Computer Programming', 'Donald E. Knuth', '9780201896831', true);


-- -- Members

-- INSERT INTO member (name, email) 
-- VALUES ('John Doe', 'john.doe@example.com');

-- INSERT INTO member (name, email) 
-- VALUES ('Jane Smith', 'jane.smith@example.com');

-- INSERT INTO member (name, email) 
-- VALUES ('Alice Johnson', 'alice.johnson@example.com');

-- INSERT INTO member (name, email) 
-- VALUES ('Bob Brown', 'bob.brown@example.com');

-- INSERT INTO member (name, email) 
-- VALUES ('Charlie Davis', 'charlie.davis@example.com');

-- INSERT INTO member (name, email) 
-- VALUES ('Emily Wilson', 'emily.wilson@example.com');

-- INSERT INTO member (name, email) 
-- VALUES ('Frank Harris', 'frank.harris@example.com');

-- INSERT INTO member (name, email) 
-- VALUES ('Grace Miller', 'grace.miller@example.com');

-- INSERT INTO member (name, email) 
-- VALUES ('Henry Clark', 'henry.clark@example.com');

-- INSERT INTO member (name, email) 
-- VALUES ('Ivy Lee', 'ivy.lee@example.com');



-- -- Transaction 1: Member 1 borrows Book 1 on October 10, 2024
-- INSERT INTO transaction (book_book_id, member_member_id, borrow_date, return_date) 
-- VALUES (1, 1, '2024-10-10', NULL);

-- -- Transaction 2: Member 2 borrows Book 2 on October 11, 2024 and returns it on October 15, 2024
-- INSERT INTO transaction (book_book_id, member_member_id, borrow_date, return_date) 
-- VALUES (2, 2, '2024-10-11', '2024-10-15');

-- -- Transaction 3: Member 3 borrows Book 3 on October 12, 2024
-- INSERT INTO transaction (book_book_id, member_member_id, borrow_date, return_date) 
-- VALUES (3, 3, '2024-10-12', NULL);

-- -- Transaction 4: Member 4 borrows Book 4 on October 13, 2024
-- INSERT INTO transaction (book_book_id, member_member_id, borrow_date, return_date) 
-- VALUES (4, 4, '2024-10-13', NULL);

-- -- Transaction 5: Member 5 borrows Book 5 on October 10, 2024 and returns it on October 18, 2024
-- INSERT INTO transaction (book_book_id, member_member_id, borrow_date, return_date) 
-- VALUES (5, 5, '2024-10-10', '2024-10-18');


-- DML Commands

-- Insert Books
INSERT INTO book (title, author, isbn, available) VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', true),
('1984', 'George Orwell', '9780451524935', true),
('To Kill a Mockingbird', 'Harper Lee', '9780060935467', true),
('The Catcher in the Rye', 'J.D. Salinger', '9780316769488', true),
('Pride and Prejudice', 'Jane Austen', '9781503290563', true),
('The Hobbit', 'J.R.R. Tolkien', '9780547928227', true),
('Moby Dick', 'Herman Melville', '9781503280786', true),
('War and Peace', 'Leo Tolstoy', '9781400079988', true),
('The Odyssey', 'Homer', '9780140268867', true),
('Crime and Punishment', 'Fyodor Dostoevsky', '9780486454115', true);

-- Insert Members
INSERT INTO member (name, email) VALUES
('John Doe', 'johndoe@example.com'),
('Jane Smith', 'janesmith@example.com'),
('Alice Johnson', 'alice.johnson@example.com'),
('Bob Brown', 'bobbrown@example.com'),
('Charlie Davis', 'charliedavis@example.com');

-- Insert Transactions
INSERT INTO transaction (book_book_id, member_member_id, borrow_date, return_date) VALUES
(1, 1, '2024-10-10', NULL),
(2, 2, '2024-10-11', '2024-10-15'),
(3, 3, '2024-10-12', NULL),
(4, 4, '2024-10-13', NULL),
(5, 5, '2024-10-10', '2024-10-18');
