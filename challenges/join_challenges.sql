-- Join Challenges

    -- Challenge | JOINS
        -- Situation: California sales tax laws changed and we need to alert our customers through email 
        -- Question: What are the emails of the customers who live in CA?
        -- Solution: 
            SELECT district, email FROM address -- district is only in address and email only in customer 
            INNER JOIN customer -- inner b/c need entries for both customer and address | could switch address in customer 
            ON address.address_id = customer.address_id -- match up via address_id 
            WHERE district = 'California'; -- only pull in ones who live in CA 
    
    -- Challenge | JOINS
        -- Situation: customer is a fan of actor 'Nick Wahlberg' and want to known which movies he is in 
        -- Question: Get a list of all movies 'Nick Wahlberg' is in 
        -- Solution: 
            SELECT title, first_name, last_name FROM film -- title is only in film, name is only in actor tables 
            JOIN film_actor ON film.film_id = film_actor.film_id -- connect film table to film_actor table(join table) via film id
            JOIN actor ON film_actor.actor_id = actor.actor_id -- connect film actor table to actor table via actor id 
            WHERE first_name = 'Nick' AND last_name = 'Wahlberg'; -- only pull ones that have nick wahlberg 