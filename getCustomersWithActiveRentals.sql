SELECT C.customerName, C.phoneNo, C.email, BC.copyID, B.bookTitle
FROM Customer AS C INNER JOIN Rental AS R ON C.customerID = R.customerID INNER JOIN BookCopy AS BC ON R.copyID = BC.copyID INNER JOIN Book AS B ON BC.ISBN = B.ISBN
WHERE R.returnDate IS NULL;