update books
set price = price * 1.10
where genre = 'Tech' and stock > 5;