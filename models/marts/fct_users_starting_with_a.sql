WITH

-- intermediate
users_firstletter_split AS (
    SELECT * FROM {{ ref("int_users_firstletter_split", v='2')}}
),

-- filters
filter_by_first_letter AS (
    SELECT
        id,
        first_letter,
        first_name,
        last_name,
        email
    FROM users_firstletter_split
    WHERE LOWER(first_letter) = 'a'
)

SELECT * FROM filter_by_first_letter