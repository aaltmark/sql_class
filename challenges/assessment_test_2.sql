-- Assessment Test 2 

    -- How can you retrieve all the information from the cd.facilities table? 
        SELECT * FROM cd.facilities 

    -- You want to print out a list of all the facilities and their cost to members. 
    -- How would you retrieve a list of only facility names and costs? 
        SELECT name, membercost FROM cd.facilities
    
    -- How can you product a list of facilities that charge a fee to members? 
        SELECT * FROM cd.facilities WHERE membercost > 0; 
    
    -- How can you produce a list of facilities that charge a fee to members, 
    -- and that fee is less than 1/50th of the monthly maintenance cost?
        SELECT * FROM cd.facilities
        WHERE membercost > 0 AND membercost * 50 < monthlymaintenance; 

    -- How can you product a list of all facilities with the word 'Tennis' in their name?
        SELECT * FROM cd.facilities WHERE name LIKE '%Tennis%' 
    
    -- REVIEW THIS QUESTION 
    -- How can you retrieve the details of facilities with ID 1 and 5? 
        SELECT * FROM cd.facilities
        WHERE facid IN (1, 5) -- checks the list 
    
    -- REVIEW THIS QUESTION
    -- How can you produce a list of members who joined after the start of September 2012?
        SELECT memid, surname, firstname, joindate FROM cd.members 
        WHERE joindate >= '2012-09-01' --format this properly 

    -- How can you produce an ordered list of the first 10 surnames in the members table? 
        SELECT DISTINCT(surname) FROM cd.members 
        ORDER BY surname LIMIT 10; 

    -- You'd like to get the signup date of your last member. How can you retrieve this info?  
        SELECT joindate FROM cd.members
        ORDER BY joindate DESC LIMIT 1;

        -- Option 2 
            SELECT MAX(joindate) -- gives most recent. MIN would give the first person to sign up 
            FROM cd.members; 

    -- Produce a count of the number of facilities that have a cost to guests of 10+
        SELECT COUNT(*) FROM cd.facilities
        WHERE guestcost >= 10; 
    
    -- REVIEW THIS QUESTION
    -- Produce a list of the total number of slots booked per facility in the month of Sept 2012. 
    -- Produce an output table, consisting of facility id and slots, sorted by the number of slots. 
        SELECT facid, SUM(slots) AS total_slots FROM cd.bookings 
        WHERE starttime >= '2012-09-01' AND -- handles date component 
        starttime <= '2012-10-01' -- can use between but beware of inclusivity 
        GROUP BY facid -- gives us per facility 
        ORDER BY SUM(slots) -- can't order by alias 
 
    -- REVIEW THIS QUESTION
    -- NOT FINISHED Produce a list of facilities with more than 1000 slots booked. 
        SELECT facid, SUM(slots) FROM cd.bookings 
        GROUP BY facid
        HAVING SUM(slots) > 1000 --filtering on sum. it's a rule of aggregate why you can't use WHERE  
        ORDER BY facid 
    
    -- REVIEW THIS QUESTION 
    -- NOT FINISHED How can you produce a list of the start times for bookings for tennis courts for the date 2012-09-21?
        SELECT starttime, name FROM cd.bookings -- each column is unique so don't need table name.column name 
        INNER JOIN cd.facilities 
        ON cd.bookings.facid = cd.facilities.facid -- put 2 tables together 
        WHERE cd.facilities.name LIKE 'Tennis%' -- just with names that are tennis 
        AND cd.bookings.starttime >= '2012-09-21' -- set date range to get just 21st 
        AND cd.bookings.starttime < '2012-09-22'
        ORDER BY cd.bookings.starttime 

    -- How can you produce a list of the start times for bookings by member 'David Farrell'?
        SELECT starttime FROM cd.bookings
        INNER JOIN cd.facilities --join facilities 
        ON cd.bookings.facid = cd.facilities.facid
        INNER JOIN cd.members -- join members as well 
        ON cd.members.memid = cd.bookings.memid
        WHERE surname LIKE 'Farrell' AND firstname LIKE 'David'
