-- Left Outer Join or 'Left Join'
    -- Results in the set of records in the left table if there is no match with the right table, results are null
    -- Basic Syntax 
        SELECT * FROM TableA -- A is left table, ORDER MATTERS  
        LEFT OUTER JOIN TableB -- can just type 'LEFT JOIN' 
        ON TableA.col_match = TableB.col_match -- if only found in tableB, it is not returned 
    -- Using WHERE to getting unique values 
        SELECT * FROM TableA  
        LEFT OUTER JOIN TableB  
        ON TableA.col_match = TableB.col_match 
        WHERE TableB.id IS null -- will not return those values 

    -- Example
        -- Company is holding a conference for people in movie rental industry. 
        -- People register online before and then login the day of the conference 
        -- registration table and login table 
            -- ids indicate order they registered/logged in at conference 
            -- name - are all unique 

        -- Andrew, Bob, Charlie and David registered 
        -- Andrew, Bob, Xavier and Yolanda logged in 
            SELECT * FROM Registrations -- everything from registrations will show 
            LEFT OUTER JOIN Logins 
            ON Registrations.name = Logins.name 
                -- going to have 2 full rows for Andrew and Bob 
                -- 2 incomplete rows for Charlie and David with nulls in log_id and name column 
                -- Using WHERE statement to get values unique 
            WHERE Logins.log_id IS null 
                        -- will get rid of Andrew and Bob rows 
    
-- Find films that are not in inventory 
    SELECT film.film_id, title, inventory_id, store_id FROM film 
    LEFT JOIN inventory 
    ON inventory.film_id = film.film_id
    WHERE inventory.film_id IS null 