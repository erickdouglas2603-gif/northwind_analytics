with fonte_categories as (

    SELECT *
    FROM {{ source('northwind', 'raw_categories') }}

)

,renomeado as (

    SELECT
        cast(CategoryID as int) AS pk_categoria
        ,CategoryName           AS category_name
        ,Description            AS description
        ,Picture                AS picture
        ,_rescued_data

    FROM fonte_categories

)

SELECT *
FROM renomeado