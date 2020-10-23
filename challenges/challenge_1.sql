-- How many payment transactions were greater than $5? 

    SELECT COUNT(*) FROM payment WHERE amount > 5; 

-- How many actors have a first name that starts with the letter P?

    SELECT COUNT(*) FROM actor WHERE first_name LIKE 'P%' 

-- How many unique districts are our customers from?

    SELECT COUNT(DISTINCT(district)) FROM address; -- grab all distinct districts and count them 

-- Retrieve the list of names for those distinc districts from the question above 
    
    SELECT DISTINCT(district) FROM address; 

-- How many films have a rating of R and a replacement cost between $5 and $15? 

    SELECT COUNT(*) FROM film WHERE rating='R' AND replacement_cost BETWEEN 5 and 15; 

-- How many films have the word Truman somewhere in the title? 

    SELECT COUNT(*) FROM film WHERE title LIKE '%Truman%'
