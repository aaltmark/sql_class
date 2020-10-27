-- Check Constraint
    -- allows us to create more customized constraints that adhere to a certain condition 
    -- ex: making sure all insaerted integer values fall below threshold
    -- Basic Syntax 
        CREATE TABLE example(
            ex_id SERIAL PRIMARY KEY,
            age SMALLINT CHECK(age > 21), --set constraint on number 
            parent_age SMALLINT CHECK(
                parent_age > age -- can set constraint based on another column 
            )
        ); 