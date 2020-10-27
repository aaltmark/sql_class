-- Cast 
    -- convert one data type into another 
    -- does not work for everything 

    -- Basic Syntax 
        SELECT CAST('5' AS INTEGER)
    
    -- PostgresSQL CAST Operator 
        SELECT '5'::INTEGER --replaces () and AS 
    
    -- Typically within select query 
        SELECT CAST(date AS TIMESTAMP) 
        FROM table_name 
    
    -- Figure out character length of inventory_id (originally int)
        SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental

    
