with source as (

  select

    id as payment_id,
    orderid as order_id,
    amount /100 as amount,
    status as payment_status

    from raw.stripe.payment

)

select * from source
