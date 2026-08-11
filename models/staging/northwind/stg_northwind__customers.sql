with fonte_customers as (

    SELECT *
    FROM {{ source('northwind', 'raw_customers') }}

)

,renomeado as (

    SELECT
        cast(CustomerID as STRING) AS pk_cliente
        ,CompanyName            AS company_name
        ,ContactName            AS contact_name
        ,ContactTitle           AS contact_title
        ,Address                AS address
        ,City                   AS city
        ,Region                 AS region
        ,PostalCode             AS postal_code
        ,Country                AS country
        ,Phone                  AS phone
        ,Fax                    AS fax
        ,_rescued_data

    FROM fonte_customers

)

SELECT *
FROM renomeado