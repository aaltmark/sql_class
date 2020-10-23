-- In 
    -- Checks to see if a value is included in a list of multiple options 
    -- ex: if a user's name shows up in a list of name
    -- Example Syntax 
        value IN (option1, option2)
    -- Example
        SELECT color FROM table_name WHERE color IN ('red', 'blue') -- similar to OR statements 
    -- Negative 
        SELECT color FROM table_name WHERE color NOT IN ('red', 'blue') -- similar to OR statements 
