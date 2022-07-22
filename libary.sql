CREATE DATABASE Library;

USE Library;
 
CREATE TABLE Author
(
    id INT PRIMARY KEY auto_increment,
    author_name VARCHAR(50) NOT NULL
 );
 
CREATE TABLE Book
(
    id INT PRIMARY KEY auto_increment,
    book_name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    author_id INT NOT NULL
 );
 
USE Library;
 
 INSERT INTO Author 
 
VALUES
(1, 'Author1'),
(2, 'Author2'),
(3, 'Author3'),
(4, 'Author4'),
(5, 'Author5'),
(6, 'Author6'),
(7, 'Author7');
 
 
INSERT INTO Book 
VALUES
(1, 'Book1',500, 1),
(2, 'Book2',300, 2),
(3, 'Book3',700, 1),
(4, 'Book4',400, 3),
(5, 'Book5',650, 5),
(6, 'Book6',400, 3);


select * from Author;
select * from Book;
select A.author_name,B.id, B.book_name,B.price,B.author_id as "Argentia"from Author A inner join Book B on A.id = B.author_id;
select A.author_name,B.id, B.book_name,B.price,B.author_id from Author A left join Book B on A.id = B.author_id;



/*
DELIMITER //

CREATE FUCNTION holaMundo() RETURNS VARCHAR(20)
BEGIN
    RETURN ‘HolaMundo’;
END
// */

















