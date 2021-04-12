with temp as(
select ct.city
	, p.customer_id
	, count(p.payment_id) as avg_pmt
from payment p
	join customer c
		on p.customer_id = c.customer_id
	join address a 
		on c.address_id = a.address_id
	join city ct
		on a.city_id = ct.city_id
where 1=1
	and to_char(p.payment_date, 'yyyy-mm') = '2007-03'
group by ct.city
	, p.customer_id
)
select city
	, avg(avg_pmt)
from temp
group by city
;