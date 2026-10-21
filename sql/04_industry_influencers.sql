-- 04. Identifying Industry Influencers
-- Find Twitter usernames beginning with 'Silver'.
SELECT first_name, last_name, twitter_username
FROM people
WHERE twitter_username LIKE 'Silver%';
