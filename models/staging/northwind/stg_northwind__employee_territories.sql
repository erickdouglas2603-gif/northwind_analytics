with fonte_employee_territories as (

    SELECT *
    FROM {{ source('northwind', 'raw_employee_territories') }}

)

,renomeado as (

    SELECT
        cast(EmployeeID as int)  AS fk_employee
        ,cast(TerritoryID as int) AS fk_territory
        ,_rescued_data

    FROM fonte_employee_territories

)

SELECT *
FROM renomeado