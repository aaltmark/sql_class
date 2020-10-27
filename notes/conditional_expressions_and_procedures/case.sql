-- Case 
    -- only execute SQL code when conditions are met 
    -- similar to if/else statements 

    -- General CASE 
        -- more flexibility
        -- syntax
            CASE 
                WHEN condition1 THEN result1
                WHEN condition2 THEN result2
                ELSE some_other_result 
            END

        -- Example
            SELECT a, --select a column 
                CASE 
                    WHEN a=1 THEN 'one' -- if instance is = 1 then return the string 
                    WHEN a=2 THEN 'two'
                    ELSE 'other' --if doesn't match above return string 'other'
                    AS label -- will name associate column created with strings as 'label'
                END 
            FROM test; -- from table 

        -- More flexibility exemplified 
            SELECT customer_id,  
            CASE 
                WHEN (customer_id <= 100) THEN 'Premium'
                WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus' -- don't have to just do = 
                ELSE 'Normal'
            END AS customer_class --would return list of customer_ids and a column named this with cases
            FROM customer

    -- CASE Expression 
        -- first evaluates an expression then compares the result with each value in the WHEN clauses sequentially
        -- use when checking for equality 

        -- Syntax 
            CASE expression 
                WHEN value1 THEN result1
                WHEN value2 THEN result2
                ELSE some_other_result 
            END 
        
        -- Example 
            SELECT a, --select a column 
            CASE a
                WHEN 1 THEN 'one' -- checking for equality automatically 
                WHEN 2 THEN 'two' -- means a = 2
                ELSE 'other' 
            END 
        FROM test; -- from table 

        -- More complex example - see how many movies are at different price points 
            SELECT 
                SUM(CASE rental_rate 
                        WHEN 0.99 THEN 1
                        ELSE 0
                END) AS bargains,
                SUM(CASE rental_rate
                        WHEN 2.99 THEN 1
                        ELSE 0
                END) AS regular,
                SUM(CASE rental_rate
                        WHEN 4.99 THEN 1
                        ELSE 0
                END) AS premium
            FROM film

