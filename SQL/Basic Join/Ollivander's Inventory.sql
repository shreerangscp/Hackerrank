select id, age, coins_needed, power 
from wands w, wands_property wp on w.code = wp.code
where coins_needed in 
(select min(w1.coins_needed) 
from wands w1, wands_property wp1 
where w1.code = wp1.code and w.power = w1.power 
and wp.age = wp1.age and wp1.is_evil = 0)
order by power desc, age desc;