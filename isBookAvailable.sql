SELECT BC.available
FROM BookCopy AS BC INNER JOIN Book AS B ON BC.ISBN = B.ISBN
WHERE B.bookTitle = "Hamlet";