-- Full Outer Joins 
    -- How to deal with values only present in one of the tables being joined
    -- Basic Syntax 
        SELECT * FROM TableA -- can flip tableA and b 
        FULL OUTER JOIN TableB
        ON TableA.col_match = TableB.col_match
    -- TO GET UNIQUE VALUES 
        SELECT * FROM TableA -- can flip tableA and b 
        FULL OUTER JOIN TableB
        ON TableA.col_match = TableB.col_match
        WHERE TableA.id IS null OR TableB.id IS null; 

    -- Example
        -- Company is holding a conference for people in movie rental industry. 
        -- People register online before and then login the day of the conference 
        -- registration table and login table 
            -- ids indicate order they registered/logged in at conference 
            -- name - are all unique 

        -- Andrew, Bob, Charlie and David registered 
        -- Andrew, Bob, Xavier and Yolanda logged in 
            SELECT * FROM Registrations --grab errything from registrations 
            FULL OUTER JOIN Logins -- matches up/creates columns for everything 
            ON Registrations.name = Logins.name 
                -- would create 6 rows. 
                    --2 full rows for andrew and bob 
                    -- rows for Charlie, David, Xavier and Yolanda that would be half filled in as NULL  
        
        -- To get rows UNIQUE to either table 
            SELECT * FROM Registrations 
            FULL OUTER JOIN Logins 
            ON Registrations.name = Logins.name 
            WHERE Registrations.reg_id IS null OR Logins.log_id IS null; -- look for values where there are nulls
                -- gets rid of the original 2 rows for andrew and bob  

    -- Example 
        -- Privacy rules implemented. Want to make sure customers are associated with payment and vise-versa?
        SELECT * FROM customer
        FULL OUTER JOIN payment
        ON customer.customer_id = payment.customer_id
        WHERE customer.customer_id IS null OR payment.payment.id IS null; --find rows that are unique to either table  