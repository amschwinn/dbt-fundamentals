with payments as (
    
    select
        id as payment_id,
        ORDERID as order_id,
        PAYMENTMETHOD as payment_method,
        AMOUNT / 100 as amount,
        CREATED as created_at,
        STATUS

    from raw.stripe.payment
)

select * from payments