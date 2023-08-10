WITH

source AS (
    SELECT * FROM {{ source('platform', 'users') }}
),

casts AS (
    SELECT
        CAST(id AS INT) as id,
        first_name,
        last_name,
        email
    FROM source
)

select * from casts
