{{ config(error_if = '>10', warn_if = '>1') }}

SELECT 
    block_id
FROM {{ ref('silver_terra__blocks') }}
WHERE block_id NOT IN (
    SELECT 
        block_id 
    FROM {{ ref('terra__msgs') }}
)

AND tx_count > 0
AND block_timestamp::date >= '2021-10-01'