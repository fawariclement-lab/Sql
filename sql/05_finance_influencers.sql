-- 05. Finding Finance Influencers
-- Find Twitter usernames containing 'money' where last names begin with K.
SELECT *
FROM people
WHERE twitter_username LIKE '%money%'
  AND last_name LIKE 'K%';
