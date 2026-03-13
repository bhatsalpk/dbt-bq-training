select o.order_id ,c.customer_id , c.customer_name ,  p.product_id , p.price , p.category 
from  `gcp-badaadata.staging.orders` as o 
 inner join {{ ref ('stg_customers') }} as c on o.customer_id = c.customer_id 
 inner join `gcp-badaadata.staging.products` as p on p.customer_id = o.customer_id


