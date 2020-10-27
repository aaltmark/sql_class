-- Mathematical Functions 
    -- % that a rental rate v. replacement cost 
        SELECT ROUND(rental_rate/replacement_cost, 2) * 100 AS percent_cost FROM film -- round to 2 decimals
    -- put deposit down for replacement cost 
        SELECT 0.1 * replacement_cost AS deposit FROM film; 