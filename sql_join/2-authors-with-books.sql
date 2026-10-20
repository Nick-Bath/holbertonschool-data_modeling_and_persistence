select authors.name, books.title
from authors
left join books
    on authors.id = books.author_id
order by authors.name