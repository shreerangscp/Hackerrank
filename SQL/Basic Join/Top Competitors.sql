select h.hacker_id,'  ', h.name from hackers h, submissions s, challenges c, difficulty d 
where s.challenge_id = c.challenge_id and c.difficulty_level = d.difficulty_level 
and c.difficulty_level = d.difficulty_level and h.hacker_id = s.hacker_id 
and d.score = s.score group by h.hacker_id, h.name 
having count(s.submission_id) > 1 order by count(s.challenge_id) desc, hacker_id asc;  