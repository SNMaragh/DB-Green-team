SELECT B.bookTitle, B.genre, BC.ISBN, BC.bookCondition, BC.available
FROM BookCopy AS BC INNER JOIN Book AS B ON BC.ISBN = B.ISBN INNER JOIN Author AS A ON B.authorID = A.authorID
WHERE A.authorName = "William Shakespeare";