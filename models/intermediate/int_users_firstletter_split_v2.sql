WITH

-- staging
users AS (
    SELECT * FROM {{ ref("stg_users") }}
),

-- transformations
split_first_letter AS (
    SELECT
        id,
        LEFT(first_name, 1) AS first_letter,
        first_name,
        last_name,
        email AS email_address
    FROM users
)

SELECT * FROM split_first_letter