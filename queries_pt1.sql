SELECT category, COUNT(isbn) AS count_book FROM books GROUP BY category ORDER BY count_book DESC;

SELECT state, COUNT(user_id) AS count_user FROM users GROUP BY state ORDER BY count_user DESC;

SELECT isbn, AVG(rating) AS average_rating FROM ratings GROUP BY isbn ORDER BY average_rating DESC;

SELECT b.book_title, AVG(r.rating) AS average_rating
FROM books b JOIN ratings r ON b.isbn = r.isbn
WHERE b.category = E'[\'Biography & Autobiography\']'
GROUP BY b.book_title
ORDER BY average_rating DESC;

SELECT b.book_title, AVG(r.rating)  AS average_rating, COUNT(r.rating) AS count_rating
FROM books b
JOIN ratings r ON b.isbn = r.isbn
JOIN users u ON u.user_id = r.user_id
WHERE u.state = 'catalunya'
GROUP BY b.book_title
ORDER BY count_rating DESC;
