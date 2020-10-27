-- Views 
    -- used to save queries that you want to use later 
    -- database object that is a stored query 

    -- Create a view 
        CREATE VIEW customer_info AS -- named 
        SELECT first_name, last_name, address FROM customer
        INNER JOIN address 
        ON customer.address_id = address.address_id; 

    -- use a view
        SELECT * FROM customer_info

    -- can update and alter existing views 
        CREATE OR REPLACE VIEW customer_info AS  -- **THIS IS THE KEY LINE 
        SELECT first_name, last_name, address, district FROM customer -- we added district
        INNER JOIN address 
        ON customer.address_id = address.address_id
        
    -- remove a view 
        DROP VIEW customer_info -- CAN ADD IF EXISTS HERE 
    
    -- rename a view 
        ALTER VIEW customer_info RENAME to c_info
