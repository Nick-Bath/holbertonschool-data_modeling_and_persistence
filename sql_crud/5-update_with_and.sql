update books
set price = price * .90
where genre = 'Tech' and stock > 5;