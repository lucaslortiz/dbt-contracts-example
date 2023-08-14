WITH

-- intermediate
users_firstletter_split AS (
    SELECT * FROM {{ ref("int_users_firstletter_split")}}
),

-- filters
filter_by_first_letter AS (
    SELECT
        id,
        first_letter,
        first_name,
        last_name,
        email AS email_address
    FROM users_firstletter_split
    WHERE LOWER(first_letter) = 'a'
)

SELECT * FROM filter_by_first_letter