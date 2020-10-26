-- Union 
    -- Combine the result-set of two+ SELECT statements 
    -- Concatenates two results together
    -- Basic Syntax 
        SELECT column_name(s) FROM table1 
        UNION 
        SELECT column_name(s) FROM table 2; 
    
    -- Example 
        -- Organizing sales per year per q
        -- Table 1: q1 with columns name (rep) and amount (sold)
        -- Table 2: q2 with same columns 
        -- Total Results for H1 - paste them on top 
            SELECT * FROM Sales2020_Q1
            UNION 
            SELECT * FROM Sales2021_Q2
            ORDER BY name; 
                -- would have 2 rows for david on top and 2 rows for claire on bottom 