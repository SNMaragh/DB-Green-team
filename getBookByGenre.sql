SELECT B.bookTitle, B.ISBN, A.authorName
FROM Book AS B INNER JOIN Author AS A ON B.authorID = A.authorID
WHERE B.genre = "Education";