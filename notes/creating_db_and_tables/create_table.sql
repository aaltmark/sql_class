-- CREATE Table 
    -- Basic Syntax 
        CREATE TABLE table_name(
            column_name TYPE column_constraint, -- can list all columns needed 
            column_name TYPE column_constraint, 
            table_constraint table_constraint -- list all table constraints, not always needed
        ) INHERITS existing_table_name; -- if inherting, not always needed 
    
    -- Example 
        CREATE TABLE players(
            player_id SERIAL PRIMARY KEY, -- serial automatically gives unique. small serial goes to 30k, serial to like 2b and bigserial even larger
            age SMALLINT NOT NULL -- cannot leave age blank 
        );

    -- Example
        CREATE TABLE account(
            user_id SERIAL PRIMARY KEY, 
            username VARCHAR(50) UNIQUE NOT NULL, -- link 2 constraints, varchar takes max 
            created_on TIMESTAMP 
        );
    
    -- Example - join table 
        CREATE TABLE account_job(
            user_id INTEGER REFERENCES account(user_id) --referenes table_name(column_name)
            job_id INTEGER REFERENCES job(job_id)
        );