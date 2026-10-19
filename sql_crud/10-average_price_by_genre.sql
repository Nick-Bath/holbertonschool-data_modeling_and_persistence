select genre, avg(price) as avg_price_genre
from books
group by genre;