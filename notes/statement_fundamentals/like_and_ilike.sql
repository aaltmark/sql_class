-- Like and ILike 
    -- Match against general patterns in a string 
    -- Ex: 'all names that begin with a capital A' 

    -- Like 
        -- Allows ut to perform pattern matching against string data with the use of wildcard chars 
        -- Case sensitive 
        -- Percent % 
            -- matches any sequence of chars 
                WHERE name LIKE 'A%' -- all names that begin with a capital A
                WHERE name LIKE '%a' -- all names that end with an a 
        -- Underscore 
            -- matches any single char 
                WHERE title LIKE 'Mission Impossible _' -- get all mission impossible films 
            -- can use multiple underscores 
                WHERE value LIKE 'Version#__' -- underscores could be any 2 characters 'Version #B7' etc 

        -- Combine 
            WHERE name LIKE '_her%' -- can start with any letter, 'her' directly after and can end in anything 
                -- ex: Cheryl, Theresa, Sherri 

        -- Can do not like 
            WHERE name NOT LIKE 'A%' -- all names that don't start with A 
        
-- ILIKE 
    -- case insensitive 