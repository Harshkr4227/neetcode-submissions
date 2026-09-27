-- Write your query below
select c.customer_id,
    c.customer_name
from customers c
Join orders o
on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name
having 
    Count(distinct case when o.product_name = 'A' Then o.product_name end) > 0 and
    Count(distinct case when o.product_name = 'B' Then o.product_name end) > 0
    and
    Count(distinct case when o.product_name in ('C')Then o.product_name end) = 0 
order by c.customer_name;