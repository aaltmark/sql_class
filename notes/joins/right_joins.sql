-- Right Joins 
    -- Same as left join but tables are switched 
    -- could just switch table order in LEFT JOIN 
    -- Basic Syntax 
        SELECT * FROM TableA 
        RIGHT OUTER JOIN TableB -- could do RIGHT JOIN 
        ON TableA.col_match = TableB.col_match -- return rows found exclusively in TableB or in both 
    -- Using WHERE to getting unique values 
        SELECT * FROM TableA  
        RIGHT OUTER JOIN TableB  
        ON TableA.col_match = TableB.col_match 
        WHERE TableA.id IS null -- only want those found in tableB, not in both 