select cnt.country
--	, p.amount
--	, ctg.name
	, sum(p.amount)
	, sum(p.amount) filter (where ctg.name = 'Horror') / sum(p.amount)
from payment p
	join customer c
		on p.customer_id = c.customer_id
	join address a 
		on c.address_id = a.address_id
	join city ct
		on a.city_id = ct.city_id
	join country cnt
		on ct.country_id = cnt.country_id
	join rental r
		on p.rental_id = r.rental_id
	join inventory i
		on r.inventory_id = i.inventory_id
	join film f
		on i.film_id = f.film_id
	join film_category fc
		on f.film_id = fc.film_id
	join category ctg
		on fc.category_id = ctg.category_id 
where 1=1
--	and ctg.name = 'Horror'
group by cnt.country
order by sum(p.amount) filter (where ctg.name = 'Horror') / sum(p.amount) desc
;