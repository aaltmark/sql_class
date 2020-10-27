-- Select Count 
    -- Returns the number of input rows that match a specific condition of a query 
    -- Basic Example Syntax; 
        SELECT COUNT (name) FROM table_name; -- how many rows are in column
    -- Each column should have same amount of rows 
        SELECT COUNT(*) FROM table_name; -- will give same answer. Only reason to use column name is later reference 
    -- Good to combine 
        SELECT COUNT(DISTINCT name) from table_name; -- gives a COUNT for how many UNIQUE names are in the table 