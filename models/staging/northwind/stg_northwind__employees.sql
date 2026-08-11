with fonte_employees as (

    SELECT *
    FROM {{ source('northwind', 'raw_employees') }}

)

,renomeado as (

    SELECT
        cast(EmployeeID as int) AS pk_employee
        ,LastName              AS last_name
        ,FirstName             AS first_name
        ,LastName || ' ' || FirstName AS full_name
        ,Title                 AS title
        ,TitleOfCourtesy       AS title_of_courtesy
        ,cast(BirthDate as date) AS birth_date
        ,cast(HireDate as date)  AS hire_date
        ,Address                AS address
        ,City                   AS city
        ,Region                 AS region
        ,PostalCode             AS postal_code
        ,Country                AS country
        ,HomePhone              AS home_phone
        ,Extension              AS extension
        ,Photo                  AS photo
        ,Notes                  AS notes
        ,cast(ReportsTo as STRING) AS fk_reports_to
        ,PhotoPath              AS photo_path
        ,_rescued_data

    FROM fonte_employees

)

SELECT *
FROM renomeado