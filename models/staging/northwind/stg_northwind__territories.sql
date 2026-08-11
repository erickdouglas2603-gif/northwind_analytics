with fonte_territories as (

    SELECT *
    FROM {{ source('northwind', 'raw_territories') }}

)

,renomeado as (

    SELECT
        cast(TerritoryID as int) AS pk_territory
        ,TerritoryDescription AS territory_description
        ,cast(RegionID as int) AS fk_region
        ,_rescued_data

    FROM fonte_territories

)

SELECT *
FROM renomeado