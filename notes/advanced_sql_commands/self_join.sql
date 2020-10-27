-- Self Join 
    -- query in which a table is joined to itself 
    -- useful for comparing values in a column of rows within the same table 
    -- join of two copies of the same table 
    -- no special keyword, just include same table in both parts BUT YOU MUST USE ALIAS 
    -- Basic Syntax
        SELECT tableA.col, tableB.col
        FROM table AS tableA 
        JOIN table as tableB ON 
        tableA.some_col = tableB.other_col; 

    -- Example: 
        -- columns: emp_id, name, report_id
        -- 1 | Andrew | 3
            -- employee 1, andrew, has to send a report to employee 3, charlie  
        -- Instead want it to read 
            -- Name: Andrew | Rep: Charlie 
        
        SELECT emp.name, report.name -- renamed tables as emp and report, need name from both  
        FROM employees AS emp -- rename as emp 
        JOIN employees AS report ON -- rename as report and join on 
        emp.emp_id = report.report_id -- the ids 
    
    -- Find all pairs of films that have the same length 
        SELECT f1.title, f2.title, f1.length -- get the title from both and length  
        FROM film AS f1 -- rename first table as f1
        INNER JOIN film AS f2 ON -- rename copy as f2 and join them 
        f1.film_id != f2.film_id -- where they aren't the same movie 
        AND f1.length = f2.length -- but they have the same length 