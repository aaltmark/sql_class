-- Importing and Exporting Data 
    -- pgAdmin
    -- import from .csv file 
    -- not every data file will work 
    -- must provide 100% correct file path 
    -- does not create a table for you -- assumes a table is already created 

    -- 1. Create a google sheet 
    -- 2. Fill in Data 
    -- 3. Download as CSV
    -- 4. Open in finder 
    -- 5. view in upper bar 
    -- 6. click show the path bar 
    -- 7. right click file
    -- 8. hold option key 
    -- 9. select 'Copy as Pathname' 
    -- pg admin
    -- 10. open query tool 
    -- 11. create table 
        CREATE TABLE simple(
            a INTEGER, 
            b INTEGER, 
            c INTEGER
        )
    -- 12. refresh database
    -- 13. COPY INFO FROM CSV INTO TABLE 
            -- right click table > import/export
            -- toggle to import 
            -- paste path into filename (or you can hit 3 dots and explore)
            -- go to columns and can x out columns if needed 
            -- declare if there is a header (first row that has column names )
            -- select delimiter - like a , seprated file 
            -- quote - if used single or double 
            -- click ok
    
    -- export is virtually the same 
    