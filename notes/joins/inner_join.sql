-- INNER JOIN 
    -- Results with the set of records that match in both tables 
    -- Table order does not matter 
    -- Basic Syntax 
        SELECT * FROM TableA -- get all columns 
        INNER JOIN TableB -- join a with b - CAN FLIP A AND B 
        ON TableA.col_match = TableB.col_match -- only grab rows that are in both tables 

    -- Example
        -- Company is holding a conference for people in movie rental industry. 
        -- People register online before and then login the day of the conference 
        -- registration table and login table 
            -- ids indicate order they registered/logged in at conference 
            -- name - are all unique 

        -- Andrew, Bob, Charlie and David registered 
        -- Andrew, Bob, Xavier and Yolanda logged in 
            SELECT * FROM Registrations -- get all columns  
            INNER JOIN Logins -- join a with b. IF YOU SEE JUST 'JOIN' it defaults to INNER JOIN 
            ON Registrations.name = Logins.name -- only grab rows that are in both tables 
                -- Would make table with reg_id, name, log_id, name 
                -- to get rid of duplication of name 
                    SELECT reg_id, Logins.name, log_id --Logins.name could have also been Registrations.name 
                    FROM Registrations 
                    INNER JOIN Logins 
                    ON Registrations.name = Logins.name 

    -- Example 
        -- Join customer table with payments table to get 
        -- the customer email associated with a specific payment 
            SELECT payment_id, payment.customer_id, first_name FROM payment -- do not need to specify table if column is unique, otherwise table_name.column_name 
            INNER JOIN customer -- will not see customers who have not made a payment 
            ON payment.customer_id = customer.customer_id; 