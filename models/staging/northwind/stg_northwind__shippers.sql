with fonte_shippers as (

    SELECT *
    FROM {{ source('northwind', 'raw_shippers') }}

)

,renomeado as (

    SELECT
        cast(ShipperID as int) AS pk_shipper
        ,CompanyName AS company_name
        ,Phone AS phone
        ,_rescued_data

    FROM fonte_shippers

)

SELECT *
FROM renomeado