select p.customer_id
	, c.first_name
	, c.last_name
	, c.email
	, sum(p.amount)
from payment p
	join customer c
		on p.customer_id = c.customer_id
group by p.customer_id
	, c.first_name
	, c.last_name
	, c.email
having count (p.payment_id) >= 5
order by sum(p.amount)
	, p.customer_id
--limit 1
;