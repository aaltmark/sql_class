-- NULLIF 
    -- takes 2 inputs 
        -- returns NULL if both are equal
        -- otherwise returns first arg

    -- Basic Syntax 
        NULLIF(arg1, arg2)

    -- Example
        NULLIF(10, 10) --NULL
        NULLIF(10, 12) -- 10
    
    -- Useful where a NULL value would cause an error 
        -- Table with name and department 
        -- Calculate ratio of people in dpt a v. b 
            SELECT (
                SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
                SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END)
            ) AS department_ratio
            FROM depts -- if 2 and 1 would give 2 
        -- if there are 0 people in dpt b this would raise an error(division by 0)
            SELECT (
                SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
                NULLIF(SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END), 0) -- IF RESULT OF SUM IS 0, RETURN NULL (BOTH ARGS ARE 0). otherwise would return whatever the sum is 
            ) AS department_ratio
            FROM depts 