WITH

-- intermediate
users_firstletter_split AS (
    SELECT * FROM {{ ref("int_users_firstletter_split")}}
),

-- filters
filter_by_first_letter AS (
    SELECT *
    FROM users_firstletter_split
    WHERE LOWER(first_letter) = 'c'
)

SELECT * FROM filter_by_first_letter