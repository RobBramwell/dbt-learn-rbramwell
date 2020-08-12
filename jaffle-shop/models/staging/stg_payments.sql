with source as (

  select

    id as payment_id,
    orderid as order_id,
    amount /100 as amount,
    status as payment_status

    from  {{source('stripe','payment')}}

)

select * from source
