-- Order By 
    -- sort rows based on a column value in ascending or descending order 
    -- Basic Syntax Example 
        SELECT column_1, column_2 FROM table_name ORDER BY column_1 ASC / DESC -- order by at end so you can do selection and filtering first 
            -- if you leave asc/desc blank, default is ASC 
    -- Order By Multiple Columns 
        SELECT company, name, sales FROM table_name ORDER BY company, sales 
            -- sort everything first based on company column -- like Apple in alphabetical 
            -- after, within company we are ordering sales by asc order. so if 2 Apples, show lower sales first 
