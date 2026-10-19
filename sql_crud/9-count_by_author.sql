select author, count(*) as books_per_author
from books
group by author;