-- Drop Table 
    -- allows complete removal of column in table 
    -- removes all indexes and constraints 
    -- will NOT remove columns used in views, triggers or stored procedures without CASCADE clause
    -- Basic Syntax 
        ALTER TABLE table_name
        DROP COLUMN col_name CASCADE -- cascade is not needed
        -- common to add if exists to avoid error if it doesn't exist
            DROP COLUMN IF EXISTS col_name 
        -- drop multiple 
            DROP COLUMN col_one, 
            DROP COLUMN col_two