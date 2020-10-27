-- Insert
    -- add in rows to a table 
    -- Basic Syntax 
        INSERT INTO table_name(column1, column2, ...)
        VALUES 
            (value1, value2, ...), 
            (value1, value2, ...), ...; 
    -- Inserting values from another table 
        INSERT INTO table_name(column1, column2,...)
        SELECT column1, column2,...
        FROM another_table 
        WHERE condition; 
    
    -- Example 
        INSERT INTO account(username,password,email,created_on) -- primary key is auto 
        VALUES
            ('Jose','passsword','jose@mail.com',CURRENT_TIMESTAMP)

    -- Example | Join Table 
        INSERT INTO account_job(user_id,job_id,hire_date)
        VALUES 
            (1,1,CURRENT_TIMESTAMP) --won't work if pass id that doesn't exist 