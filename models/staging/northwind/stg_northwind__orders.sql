with fonte_orders as (

    SELECT *
    FROM {{ source('northwind', 'raw_orders') }}

)

,renomeado as (

    SELECT
        cast(OrderID as int)                        AS pk_order
        ,cast(CustomerID as STRING)                 AS fk_customer
        ,cast(EmployeeID as int)                    AS fk_employee
        ,cast(OrderDate as date)                    AS order_date
        ,cast(RequiredDate as date)                 AS required_date
        ,try_cast(ShippedDate as date)              AS shipped_date
        ,cast(ShipVia as int)                       AS fk_shipper
        ,cast(Freight as numeric(28,2))             AS freight
        ,ShipName                                   AS ship_name
        ,ShipAddress                                AS ship_address
        ,ShipCity                                   AS ship_city
        ,ShipRegion                                 AS ship_region
        ,ShipPostalCode                             AS ship_postal_code
        ,ShipCountry                                AS ship_country
        ,_rescued_data

    FROM fonte_orders

)

SELECT *
FROM renomeado