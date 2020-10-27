-- Select Distinct 
    -- Helps you filter out any duplicate values - "what are the unique values in the table?"
    -- Basic Example Syntax 
        SELECT DISTINCT column_name FROM table_name;  
    -- Can add parenthesis to indicate which column 
        SELECT DISTINCT (column_name) FROM table_name; 

-- Challenge | SELECT DISTINCT
    -- Situation: Aussie visitar isn't familiar with movie ratings. What types of ratings are in database?
    -- Question: Use SELECT DISTINCT to retrieve unique ratings types 
    -- Solution: 
        SELECT DISTINCT rating FROM film; 