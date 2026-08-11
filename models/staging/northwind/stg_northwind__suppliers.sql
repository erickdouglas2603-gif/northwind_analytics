with fonte_suppliers as (

    SELECT *
    FROM {{ source('northwind', 'raw_suppliers') }}

)

,renomeado as (

    SELECT
        cast(SupplierID as int) AS pk_supplier
        ,CompanyName AS company_name
        ,ContactName AS contact_name
        ,ContactTitle AS contact_title
        ,Address AS address
        ,City AS city
        ,Region AS region
        ,PostalCode AS postal_code
        ,Country AS country
        ,Phone AS phone
        ,Fax AS fax
        ,HomePage AS home_page
        ,_rescued_data

    FROM fonte_suppliers

)

SELECT *
FROM renomeado