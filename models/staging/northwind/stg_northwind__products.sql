with fonte_products as (

    SELECT *
    FROM {{ source('northwind', 'raw_products') }}

)

,renomeado as (

    SELECT
        cast(ProductID as int) AS pk_product
        ,ProductName AS product_name
        ,cast(SupplierID as int) AS fk_supplier
        ,cast(CategoryID as int) AS fk_category
        ,QuantityPerUnit AS quantity_per_unit
        ,cast(UnitPrice as numeric(28,2)) AS unit_price
        ,cast(UnitsInStock as int) AS units_in_stock
        ,cast(UnitsOnOrder as int) AS units_on_order
        ,cast(ReorderLevel as int) AS reorder_level
        ,cast(Discontinued as boolean) AS discontinued
        ,_rescued_data

    FROM fonte_products

)

SELECT *
FROM renomeado