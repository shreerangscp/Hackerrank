select hacker_id, 
(select h.name from hackers h where h.hacker_id = maximum.hacker_id), 
sum((maximum.score)) as "SCORES" 
from (select s.hacker_id, max(s.score) as score from submissions s, hackers h group by s.hacker_id, s.challenge_id) maximum 
group by hacker_id having sum((maximum.score)) > 0 
order by sum((maximum.score)) desc, hacker_id asc;