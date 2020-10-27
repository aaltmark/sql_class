-- Select
    -- Basic Example Syntax 
        SELECT column_name FROM table_name; --capitalize sql words and ; indicates end (neither are required)
    -- Selecting Two Columns 
        SELECT column_1, column_2 FROM table_name; -- don't need to be in order 
    -- Select All Columns 
        SELECT * FROM table_name; -- not good practice unless needed 

-- Challenge 1 | SELECT 
    -- Situation: send a promotional email to existing customers 
    -- Question: Use SELECT to grab first and last name and email of every customer 
    -- Solution: 
        SELECT first_name, last_name, email FROM customer; 