with payments as (

  select

    *

  from {{ref('stg_payments')}}

),

orders as (

  select * from {{ref('stg_orders')}}

)

select
  payments.order_id,
  orders.customer_id,
  orders.order_date,
  payments.amount
from orders
left join payments on
orders.order_id = payments.order_id
