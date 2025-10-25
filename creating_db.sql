CREATE DATABASE LibraryManagmentSystem;

use LibraryManagmentSystem;

-- creating tables 
CREATE TABLE category (
    category_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (category_id)
);
CREATE TABLE publisher (
    pub_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    PRIMARY KEY (pub_id)
);
CREATE TABLE member (
    member_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    join_date TIMESTAMP NOT NULL,
    PRIMARY KEY(member_id)
);
CREATE TABLE book (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    price FLOAT(23) NOT NULL,
    pub_id INT(255) NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (book_id),
    FOREIGN KEY (pub_id) REFERENCES publisher(pub_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);
CREATE TABLE borrowing_book (
    member_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date TIMESTAMP,
    due_date TIMESTAMP,
    return_date TIMESTAMP,
    FOREIGN KEY (member_id) REFERENCES member(member_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
); 