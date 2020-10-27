-- SubQuery 
    -- allows you to construct more complex query 
    -- query on results of another query 
    -- Simple Syntax 
        SELECT column_name 
        FROM table_name 
        WHERE EXISTS 
        (SELECT column_name FROM table_name WHERE condition); 

    -- ex student names and test scores 
        SELECT student, grade FROM test_scores -- basic
        SELECT AVG(grade) FROM test_scores -- to get test scores 
    -- How can we get a list of students who scorred better than the average grade? 
        SELECT student, grade -- select students whose grades are better than avg 
        FROM test_scores 
        WHERE grade > (SELECT AVG(grade) -- parenthesis runs first
        FROM test_scores) -- picture 70 or whatever instead of parenthesis 
    
    -- Return films that have rental rate higher than average rental rate 
        SELECT title, rental_rate FROM film
        WHERE rental_rate > (SELECT AVG(rental_rate) FROM film)

    -- Grab film title's that have been returned between 2 dates 
        SELECT film_id, title FROM film --return films id and title 
        WHERE film_id IN 
        (SELECT inventory.film_id FROM rental --subquery gives list of film ids 
        INNER JOIN inventory 
        ON inventory.inventory_id = rental.inventory_id
        WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30'); --where return date was in btwn these two 
    
    -- Find customers who have 1 payment greater than 11 
        SELECT first_name, last_name FROM customer AS c 
        WHERE EXISTS --checks if any rows exist within subquery. could add a not to find the inverse 
        (SELECT * FROM payment AS p 
        WHERE p.customer_id = c.customer_id AND amount > 11); -- find if customer made 1 payment and amount > 11