with fonte_order_details as (

    SELECT *
    FROM {{ source('northwind', 'raw_order_details') }}

)

,renomeado as (

    SELECT
        cast(OrderID as int)        AS fk_order
        ,cast(ProductID as int)     AS fk_product
        ,cast(UnitPrice as numeric(28,2)) AS unit_price
        ,cast(Quantity as int)      AS quantity
        ,cast(Discount as numeric(28,2)) AS discount
        ,_rescued_data

    FROM fonte_order_details

)

SELECT *
FROM renomeado