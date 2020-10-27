-- Update 
    -- allows for changing of values in a column
    -- Basic Syntax 
        UPDATE table_name 
        SET column1 = value1, 
            column2 = value2, ...
        WHERE 
            condition; 
    
    -- Example 
        UPDATE account
        SET last_login = CURRENT_TIMESTAMP 
            WHERE last_login IS NULL -- not necessary 
    
    -- Could set based on another column 
        UPDATE account 
        SET last_login = created_on -- both columns 
        RETURNING account_id,last_login -- will return rows affected 
    
    -- Update Join | Could use another table's values 
        UPDATE TableA 
        SET original_col = TableB.new_col 
        FROM tableB 
        WHERE tableA.id = tableB.id 

        UPDATE account_job
        SET hire_date = account.created_on 
        FROM account 
        WHERE account_job.user_id = account.user_id
        