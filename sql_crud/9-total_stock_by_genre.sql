select genre, SUM(stock) as stock_per_genre
from books
group by genre;