select cnt.country
	, ct.city
	, sum(p.amount)
from payment p
	join customer c
		on p.customer_id = c.customer_id
	join address a 
		on c.address_id = a.address_id
	join city ct
		on a.city_id = ct.city_id
	join country cnt
		on ct.country_id = cnt.country_id
group by
grouping sets (
	(cnt.country),
	(cnt.country, ct.city),
	()
)
order by cnt.country
	, ct.city
;