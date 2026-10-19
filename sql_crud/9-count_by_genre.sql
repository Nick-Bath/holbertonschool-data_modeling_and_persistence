select genre, count(*) as books_per_genre
from books
GROUP BY genre