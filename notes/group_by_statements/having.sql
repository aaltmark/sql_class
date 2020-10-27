-- Having 
    -- Filter after an aggregation has already taken place 
    -- Example - aggregate sales per company besides Google 
        SELECT company, SUM(sales)
        FROM finance_table 
        WHERE company !='Google' -- FILTER 
        GROUP BY company 
        HAVING SUM(sales) > 1000 -- IF WE WANTED TO FILTER BASED ON SALES/AN AGGREGATE CLAUSE 
    -- Example - find stores that have more than 300 customers 
        SELECT store_id, COUNT(*) FROM customer
        GROUP BY store_id
        HAVING COUNT(*) > 300;

    -- Challenge | HAVING
        -- Situation: VIP service for loyal customers who have 40+ transactions 
        -- Question: what customer_ids are eligible as VIPs? 
        -- Solution: 
            SELECT customer_id, COUNT(*) FROM payment
            GROUP BY customer_id
            HAVING COUNT(*) >= 40;

     -- Challenge | HAVING
        -- Situation: what are the customer_ids of customers who have spend > $100 with staff_id 2 
        -- Solution: 
            SELECT customer_id, SUM(amount) FROM payment
            WHERE staff_id = 2
            GROUP BY customer_id
            HAVING SUM(amount) > 100;