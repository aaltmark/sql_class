-- Between 
    -- match a value against a range of values 
    -- BETWEEN low AND high 
        -- the same as value >= low AND value <= high 
        -- inclusive 
    -- NOT BETWEEN low AND high 
        -- the same as value < low OR value > high 
        -- exclusive 
    -- Can be used with dates 
        -- YYYY-MM-DD
        -- date BETWEEN '2007-01-01' AND '2007-07-07' 
    -- EX: get the # of payments that were between 8 and 9$
        SELECT COUNT(*) FROM payment WHERE amount BETWEEN 8 and 9; 
    -- Ex: get the # of payments not between 8 and 9 $
        SELECT COUNT(*) FROM payment WHERE amount NOT BETWEEN 8 and 9; 