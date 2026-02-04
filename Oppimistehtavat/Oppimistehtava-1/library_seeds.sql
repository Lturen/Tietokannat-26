INSERT INTO books (title, isbn, publication_year) VALUES
( 'The Great Novel', 978-0-00-000001-1, 2020),
( 'Databases', 978-0-00-000002-2, 2019),
( 'Web Development',(NULL), 2021),
( 'Algorithms', 978-0-00-000004-4, 2018);

INSERT INTO authors (full_name) VALUES
('Jane Smith'),
('Mika Virtanen'),
('Aino Laine');

INSERT INTO book_authors (book_id, author_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 2),
(3, 3),
(4, 3);

INSERT INTO members (full_name, email) VALUES
('Aino Laine', 'aino@library.fi'),
('Mika Virtanen', 'mika@library.fi'),
('Sara Niemi', NULL),    
('Olli Koski', 'olli@gmail.com');

INSERT INTO loans (book_id, member_id, loan_date, due_date, return_date) VALUES
(1, 1, '2024-01-01', '2024-01-15', '2024-01-10'),
(2, 1, '2024-02-01', '2024-02-15', NULL),
(1, 2, '2024-01-10', '2024-01-25', '2024-01-20'),
(3, 2, '2024-03-01', '2024-03-15', NULL),
(2, 3, '2024-02-10', '2024-02-24', '2024-02-20'),
(4, 4, '2024-03-10', '2024-03-24', '2024-03-20');

INSERT INTO fines (loan_id, amount, paid) VALUES
(1, 2.00, TRUE),
(3, 5.50, FALSE),
(5, 10.00, TRUE),
(6, 3.00, FALSE);
