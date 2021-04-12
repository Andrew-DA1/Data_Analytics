select count(distinct f.film_id)
from film f
	left join inventory i 
		on f.film_id = i.film_id
where 1=1
	and i.film_id is null
;

select count(f.film_id) filter (where
							   not exists (
							   select 1
							   from inventory i
							   where f.film_id = i.film_id
							   )
							   )::numeric
	/ count(f.film_id)
from film f
;