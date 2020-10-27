-- Alter 
    -- allows for changes to an existing table structure 
    -- Basic Syntax
        ALTER TABLE table_name action -- action calls are outlined below 

    -- adding, dropping, renaming column 
        ALTER TABLE table_name -- consistent 

        ADD COLUMN new_col TYPE  --add column 
        DROP COLUMN col_name -- remove column 

    -- changing columnn 
        ALTER TABLE table_name -- consistent 
        ALTER COLUMN col_name -- rename column 

        SET DEFAULT value --set default value
        DROP DEFAULT --drop default value 
        SET NOT NULL -- setting a not null
        DROP NOT NULL -- dropping not null 
        ADD CONSTRAINT constraint_name --adding constraint 

    -- rename table 


-- Example 
    -- Create table 
        CREATE TABLE information(
            info_id SERIAL PRIMARY KEY, 
            title VARCHAR(500) NOT NULL, 
            person VARCHAR(50) NOT NULL UNIQUE
        )
    -- rename table 
        ALTER TABLE information 
        RENAME TO new_info
    -- rename column 
        ALTER TABLE new_info
        RENAME COLUMN person TO people
    -- alter constraints 
        -- remove constraint 
            ALTER TABLE new_info 
            ALTER COLUMN people DROP NOT NULL --drop is keyword, set is used to set constraint 
