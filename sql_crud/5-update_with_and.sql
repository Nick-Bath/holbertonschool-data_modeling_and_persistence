update books
set price = price * 1.10
where genre = 'tech' and stock > 5;