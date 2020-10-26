-- Primary and Foreign Keys 

    -- Primary Key 
        -- column or group of columns used to identify a row uniquely in table 
        -- non-null, integer-based, unique 
        -- allow us to discen what columns to use to join tables together 
    
    -- Foreign Key 
        -- field or group of fields in a table that uniquely identifies a row in another table 
        -- defined in a table that references to the primary key of the other table 
        -- table that contains it is the referencing table/child table 
            -- table to which foreign key references is called referenced table/parent table 
        
    -- Can use constaints to define columns as primary or foreign 
        -- in pg admin can see them, in constraints
        -- gold is pkey = primary key 
        -- silver is fkey = foreign key 
            -- can click on these and check in dependencies what table it is attached too 
            -- right click and hit properties > columns === can see what it's referencing 