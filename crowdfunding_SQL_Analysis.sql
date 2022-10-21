-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT cf_id,backers_count , outcome
FROM campaign
WHERE outcome = 'live'
ORDER BY backers_count DESC



-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT cf_id, Count(backer_id)
FROM backers 
GROUP BY (cf_id)








-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT co.first_name,co.last_name,co.email, c.goal - c.pledged AS Remaining_Goal_Amount
INTO email_contacts_remaining_goal_amount
FROM campaign as c
INNER JOIN contacts as co
ON co.contact_id = c.contact_id			   
WHERE outcome = 'live' 
ORDER BY Remaining_Goal_Amount DESC




			   
			   
-- Check the table
SELECT *
FROM public.email_contacts_remaining_goal_amount

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 



-- Check the table
