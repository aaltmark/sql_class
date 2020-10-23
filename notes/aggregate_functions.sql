 -- Aggregation Functions 
        -- Take multiple inputs and return a single output 
        -- Common: 
            -- AVG(): returns a float. can use ROUND() to specify percision 
                SELECT AVG(replacement_cost) FROM film; 
                SELECT ROUND(AVG(replacement_cost), 2) from film; --round to 2 decimal places 
            -- COUNT(): returns number of rows, can use COUNT(*)
                SELECT COUNT(*) FROM film; 
            -- MAX()
                SELECT MAX(replacement_cost) FROM film; -- find max value from column 
            -- MIN()
                SELECT MIN(replacement_cost) FROM film; -- find minimum value from column 
            -- SUM(): totals the columns values
                SELECT SUM(replacement_cost) FROM film; 
            -- Combo 
                SELECT MAX(replacement_cost), MIN(replacement_cost) FROM film; 
        -- Can happen only in the SELECT clause or HAVING clause 