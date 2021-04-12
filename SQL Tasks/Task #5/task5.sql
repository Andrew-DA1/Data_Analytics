with cat_rev as (
select ctg.name
	, sum(amount) as category_revenue
from payment p
	join customer c
		on p.customer_id = c.customer_id
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
group by ctg.name
), film_rev as (
select ctg.name
	, f.film_id
	, sum(amount) as film_revenue
from payment p
	join customer c
		on p.customer_id = c.customer_id
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
group by ctg.name
	, f.film_id
)
select fr.film_id
	, fr.name
	, fr.film_revenue / cr.category_revenue
from film_rev fr
	join cat_rev cr
		on fr.name = cr.name
;