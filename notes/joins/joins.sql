-- Joins 
    -- Combine info from multiple tables 
    -- AS clause 
        -- useful to create an alias - rename a column 
    -- Different join types allow us to decide how to deal with info only present in one of the joined tables 

    -- Inner Join 
        -- Records that match in both tables 
    
    -- Full Outer Joins 
        -- How to deal with values only present in one of the tables being joined 
    
    -- Left Outer Join or 'Left Join'
        -- Results in the set of records in the left table if there is no match with the right table, results are null
    
    -- Right Joins 
        -- Same as left join but tables are switched 
        -- could just switch table order in LEFT JOIN 

    -- Example
        -- Company is holding a conference for people in movie rental industry. 
        -- People register online before and then login the day of the conference 
        -- registration table and login table 
            -- ids indicate order they registered/logged in at conference 
            -- name - are all unique 
        -- Two people logged in but forgot to register 