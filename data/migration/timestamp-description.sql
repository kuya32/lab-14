Query 1: 1598607387029 - CREATE TABLE AUTHORS (id SERIAL PRIMARY KEY, name VARCHAR(255));

Query 2: 1598607439076 - INSERT INTO authors(name) SELECT DISTINCT author FROM books;

Query 3: 1598607523012 -  ALTER TABLE books ADD COLUMN author_id INT;

Query 4: 1598607591484 - UPDATE books SET author_id=author.id FROM (SELECT * FROM authors) AS author WHERE books.author = author.name;

Query 5:  1598607674730 - ALTER TABLE books DROP COLUMN author;

Query 6: 1598607730871 - ALTER TABLE books ADD CONSTRAINT fk_authors FOREIGN KEY (author_id) REFERENCES authors(id);
