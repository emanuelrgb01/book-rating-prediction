select category, count(isbn) as count_book from books group by category order by count_book desc;

select state, count(user_id) as count_user from users group by state order by count_user desc;

select isbn, avg(rating) as average_rating from ratings group by isbn order by average_rating desc;

select b.book_title, avg(r.rating) as average_rating
from books b join ratings r on b.isbn = r.isbn
where b.category = E'[\'Biography & Autobiography\']'
group by b.book_title
order by average_rating desc;

select b.book_title, avg(r.rating)  as average_rating, count(r.rating) as count_rating
from books b 
join ratings r on b.isbn = r.isbn
join users u on u.user_id = r.user_id
where u.state = 'catalunya'
group by b.book_title
order by count_rating desc;
