-- String Functions and Operators 
    -- allows us to edit, combine and alter text data columns 

    -- Examples 
        -- Grab length of first name 
            SELECT LENGTH(first_name) FROM customer; 
        -- Put first and last name into full name 
            SELECT first_name || ' ' || last_name AS full_name FROM customer; -- add space in between 
        -- make name capital 
            SELECT upper(first_name) FROM customer; -- ADAM 
        -- create an email for customer 
            SELECT LOWER(LEFT(first_name, 1)) || LOWER(last_name) || '@gmail.com' AS email_address 
            FROM customer; --aaltmark@gmail.com 