-- Delete 
    -- remove rows from a table
    -- Basic Syntax 
        DELETE FROM table_name 
        WHERE condition --WHERE row_id = 1
        RETURNING column_name -- if you want to return data to see what was deleted 
    
    -- Can delete rows based on presence in other tables 
        DELETE FROM tableA
        USING tableB 
        WHERE tableA.id = TableB.id --delete wherever there's a match

    -- Delete all rows 
        DELETE FROM table_name 

