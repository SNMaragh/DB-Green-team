CREATE TABLE Publisher (
	publisherID INT(6) AUTO_INCREMENT NOT NULL,
    publisherName VARCHAR(30) NOT NULL,
    PRIMARY KEY(publisherID)
);

CREATE TABLE Author (
	authorID INT(6) AUTO_INCREMENT NOT NULL,
    authorName VARCHAR(30) NOT NULL,
    PRIMARY KEY (authorID)
);

CREATE TABLE Customer (
	customerID INT(7) AUTO_INCREMENT NOT NULL,
    customerName VARCHAR(30) NOT NULL,
    phoneNo VARCHAR(10) NOT NULL,
    email VARCHAR(30) NOT NUll,
    postalCode VARCHAR(10) NOT NULL,
    PRIMARY KEY (customerID)
);

CREATE TABLE Book (
	ISBN VARCHAR(17) NOT NULL,
    publisherID INT(6) NOT NULL,
    authorID INT(6) NOT NULL,
    bookTitle VARCHAR(50) NOT NULL,
    genre VARCHAR(20) NOT NULL,
    publishDate DATE NOT NULL,
    PRIMARY KEY (ISBN),
    FOREIGN KEY (publisherID) REFERENCES Publisher(publisherID),
    FOREIGN KEY (authorID) REFERENCES Author(authorID)
);

CREATE TABLE BookCopy (
	copyID INT(7) AUTO_INCREMENT NOT NULL,
    ISBN VARCHAR(17) NOT NULL,
    used BOOLEAN NOT NULL,
    bookCondition VARCHAR(4) NOT NULL,
    arrivalDate DATE NOT NULL,
    available BOOLEAN NOT NULL,
    PRIMARY KEY (copyID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);

CREATE TABLE Rental (
	rentalID INT(10) AUTO_INCREMENT NOT NULL,
    customerID INT(7) NOT NULL,
    copyID INT(7) NOT NULL,
    issueDate DATE NOT NULL,
    dueDate DATE NOT NULL,
    returnDate DATE,
    price DECIMAL(6,2),
    PRIMARY KEY (rentalID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
    FOREIGN KEY (copyID) REFERENCES BookCopy(copyID)
);