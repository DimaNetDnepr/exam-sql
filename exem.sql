SELECT Title
FROM Movie
WHERE Directed = "Peter Jackson";


SELECT Directed
FROM Movie
ORDER BY Directed ASC;


SELECT Title, Genre
FROM Movie
WHERE Rating BETWEEN 2 AND 5;


SELECT Title, Directed
FROM Movie
WHERE Genre = "Action" AND Country = "USA";


SELECT Title
FROM Movie
WHERE Directed LIKE "%Lucas";


SELECT MAX(Amount)
FROM Box_office;


SELECT t1.Directed
FROM Movie t1
JOIN Box_office t2
ON t1.id = t2.Movie_id
WHERE Amount > 1000000;


SELECT Country, SUM(Amount) SumAmount
FROM Box_office
GROUP BY Country;


SELECT t2.Country
FROM Movie t1
JOIN Box_office t2
ON t1.id = t2.Movie_id
WHERE t1.Title = "The Legend of Tarzan";


SELECT t1.Title, t1.Rating, t2.Amount
FROM Movie t1
JOIN Box_office t2
ON t1.id = t2.Movie_id
WHERE Country = "Canada";


SELECT Title, Rating
FROM Movie


HAVING Rating > (
SELECT AVG(Rating)
FROM (
SELECT Rating
FROM Movie
) query
);


SELECT t1.Title, t2.COUNT(Country)
FROM Movie t1
JOIN Box_office t2
ON t1.id = t2.Movie_id
GROUP BY Title;


SELECT t1.Title, t2.SUM(Amount)
FROM Movie t1
JOIN Box_office t2
ON t1.id = t2.Movie_id
GROUP BY Title;


SELECT Title
FROM Movie t1
JOIN Box_office t2
ON t1.id = t2.Movie_id
WHERE Country = "USA"
ORDER BY t2.Amount DESC
LIMIT 1;
