with stg_customers as (
    select customer_id , 
    concat(first_name , ' ', last_name) as customer_name,
    email,
    address as billing_address from gcp-badaadata.staging.customers
) select * from stg_customers