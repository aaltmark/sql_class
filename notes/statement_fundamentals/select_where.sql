-- Select Where 
    -- where allows us to specify conditions on columns for the rows to be returned 
    -- Basic Example Syntax 
        SELECT column1 FROM table_name WHERE conditions; --where filters rows returned 
    -- Comparison Operators 
        -- >. <, = etc 
        SELECT name, choice FROM table_name WHERE name = 'David'
    -- Logical Operators 
        --Combine multiple - AND, OR, NOT (!=)
        SELECT name, choice FROM table_name WHERE name = 'David' AND choice='Red'

-- Challenge | SELECT WHERE
    -- Situation: Customer forgot wallet and we need to track down email 
    -- Question: What is the email for the ustomer with the name Nancy Thomas? 
    -- Solution: 
        SELECT email FROM customer WHERE first_name='Nancy' AND last_name='Thomas'

-- Challenge | SELECT WHERE
    -- Situation: customer wants to know what the movie 'Outlaw Hanky' is about?
    -- Question: Give the customer the description 
    -- Solution: 
        SELECT description FROM film WHERE title='Outlaw Hanky';

-- Challenge | SELECT WHERE
    -- Situation: customer is late on movie return. We've mailed them a letter @ '259 Ipoh Drive'. We should also call them 
    -- Question: Can you get the phone # for customer who lives at that address 
    -- Solution: 
        SELECT phone FROM address WHERE address='259 Ipoh Drive';