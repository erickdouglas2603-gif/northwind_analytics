with fonte_regions as (

    SELECT *
    FROM {{ source('northwind', 'raw_regions') }}

)

,renomeado as (

    SELECT
        cast(RegionID as int) AS pk_region
        ,RegionDescription AS region_description
        ,_rescued_data

    FROM fonte_regions

)

SELECT *
FROM renomeado