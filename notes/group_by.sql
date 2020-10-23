-- Group BY 
    -- allows us to aggregate data and apply functions to better understand how data is distributed per category
    -- choose a categorical column that is non-continuous (COULD be numerical)
    -- Basic Syntax 
        SELECT category_col, AGG(data_col) FROM table_name GROUP BY category_col -- group by comes after FROM or WHERE statement
        SELECT category_col, AGG(data_col) FROM table_name WHERE category_col !='A' GROUP BY category_col -- where allows to filter before grouping

    -- To sort results based on aggregation, make sure to reference the full function 
        SELECT company, SUM(sales) -- reference full function 
        FROM finance_table -- where pulled from 
        GROUP BY company 
        ORDER BY SUM(sales) -- reference full function 
        
    -- Examples
            SELECT customer_id FROM payment GROUP BY customer_id; --aggregate all customer_ids together 
        -- What customer is spending the most money?
            SELECT customer_id, SUM(amount) FROM payment 
            GROUP BY customer_id
            ORDER BY SUM(amount) DESC 
        -- Total amount spent per staff per customer - 'customer 1 spend $60 with staff person 1' 
            SELECT customer_id, staff_id, SUM(amount) FROM payment 
            GROUP BY staff_id, customer_id; 
        -- Find the dates with the highest payment amount 
            SELECT DATE(payment_date), SUM(amount) FROM payment --extract date from datetime, show that and sum
            GROUP BY DATE(payment_date) -- group pay each day  
            ORDER BY SUM(amount) DESC; -- show the day with most payment first 

    -- Challenge | GROUP BY  
        -- Situation: 2 staff members (id 1 and 2). gove a bonus to the one who handled the most payments
        -- Question: How many payments did each staff member handle and who gets the bonus? 
        -- Solution: 
            SELECT staff_id, COUNT(*) FROM payment 
            GROUP BY staff_id 
            ORDER BY COUNT(*) DESC; 

     -- Challenge | GROUP BY  
        -- Situation: corp is studying relationship between replacement cost and rating 
        -- Question: Average replacement cost per rating?
        -- Solution: 
            SELECT rating, ROUND(AVG(replacement_cost), 2) FROM film 
            GROUP BY rating; 

    -- Challenge | GROUP BY  
        -- Situation: promotion to reward top 5 customers w coupons 
        -- Question: What are the customer ids of the top 5 customers by total spend?
        -- Solution: 
            SELECT customer_id, SUM(amount) FROM payment 
            GROUP BY customer_id
            ORDER BY SUM(amount) DESC 
            LIMIT 5; 
            
