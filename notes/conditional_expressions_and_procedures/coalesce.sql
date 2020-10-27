-- Coalesce 
    -- accepts unlimited # of args 
        -- returns first arg that is not null 
        -- if all args are null, it will return null 

    -- Basic Syntax 
        COALESCE (arg_1,arg_2,...,arg_n)

    -- Examples 
        SELECT COALESCE(1, 2) --=> 1 
        SELECT COALESCE(null, 2, 3) --=> 2 
    
    -- Useful to substitute null with another value 
        -- Table of Products with item name, price and discount 
            -- null listed as discount when it should be 0 
            -- if trying to find final price, this will affect result 
                SELECT item,(price - COALESCE(discount, 0)) -- if discount is null, will be replaced by 0. if number it will just return that #  
                AS final FROM table 
