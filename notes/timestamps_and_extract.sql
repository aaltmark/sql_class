-- Timestamps and Extract 
    -- Data Types 
        -- Time: contains only time 
        -- Date: contains only date 
        -- Timestamp: combines date and time
        -- Timestamptz: contains date, time and timezone info 
    
    -- Functions and Operations 
        -- Grab current timezone 
            SHOW TIMEZONE; --US/Eastern 
        -- Grab datetime now  
            SELECT NOW() --2020-10-23 14:05:13.314342
        -- TIME AS STRING
            SELECT TIMEOFDAY(); --Fri Oct 23 14:05.....
        -- GET DATE 
            SELECT CURRENT_DATE; --2020-10-23
        -- GET TIME 
            SELECT CURRENT_TIME; --14:06:51.342543
        -- Extract()
            -- Allows you to obtain a sub-component of a date value
            -- Year, month, day, week, quarter 
            -- Syntax 
                EXTRACT(YEAR FROM date_col);
                SELECT EXTRACT(YEAR FROM payment_date) AS myyear FROM payment -- grabs year from column and rennames it with alias 
        -- Age()
            -- Calculates and returns age given a timestamp 
            -- Syntax 
                AGE(date_col); -- 13 years 1 mon 5 days 01:34:13.00949
        -- TO_CHAR()
            -- Convert data types to text -- useful for timestamp formatting 
            -- Syntax 
                TO_CHAR(date_col, 'mm-dd-yyyy'); --second arg is text formatting you want 

    -- Challenge: 
        -- Q: During which months did payments occur? 
        -- Format answer to return back the full month name 
            SELECT DISTINCT (TO_CHAR(payment_date, 'MONTH')) FROM payment; -- don't want dupes 
    
    -- Challenge: 
        -- Q: How many payments occurred on a Monday? 
        -- Format answer to return back the full month name 
            SELECT COUNT(*) FROM payment
            WHERE EXTRACT(dow FROM payment_date) = 1; 
                --extract dow from payment_date will give you numberical 
                --monday = 1 
            
        
