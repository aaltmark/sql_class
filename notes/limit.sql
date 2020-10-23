-- Limit
    -- Limit number of rows returned for a query 
    -- Pairs well with order by 
    -- Basic Syntax Example 
        SELECT * FROM table_name ORDER BY column_name LIMIT 5; -- Goes at the end of the query request 
    -- Example - find 5 most recent payments 
        SELECT * FROM payment ORDER BY payment_date DESC LIMIT 5; -- brings most recent 5 
    -- Use to see general layout of table 
        SELECT * FROM table_name LIMIT 1; 

    -- Challenge | ORDER 
        -- Situation: reward our first 10 paying customers 
        -- Question: What are the customer ids of the first 10 customers who created a payment?
        -- Solution: 
            SELECT customer_id FROM payment ORDER BY payment_date LIMIT 10; 

    -- Challenge | ORDER 
        -- Situation: customer wants to quickly rent a video to watch over their lunch break
        -- Question: What are the titles of the 5 shortest (runtime) movies? 
        -- Solution: 
            SELECT title, length FROM film ORDER BY length LIMIT 5; 
            
        --BONUS: If the customer can watch any movie that is 50 minutes of less in run time, how many options?
            SELECT COUNT(*) FROM film WHERE length <= 50; 