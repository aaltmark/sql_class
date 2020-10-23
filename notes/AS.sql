-- AS Statement 
    -- Allows us to rename column names | creates an 'alias' 
    -- Example Syntax 
        SELECT column_name AS new_name FROM table_name 
    -- Can be used in functions 
        SELECT SUM(column_name) AS new_name FROM table_name 
    -- Can change multiple columns 
        SELECT customer_id AS id, SUM(amount) AS total_spent
    -- Gets executed at the end of a query, so we can not use inside of a WHERE, only SELECT 
        SELECT customer_id, SUM(amount) AS total_spent
        FROM payment 
        GROUP BY customer_id
        HAVING total_spent > 100; -- THIS LINE WILL NOT WORK 
