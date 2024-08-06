{{ config(
    materialized = 'view',
    tags = ['snowflake', 'ethereum', 'gold_ethereum', 'new_eth'],
    persist_docs ={ "relation": true,
    "columns": true }
) }}

SELECT
    *
FROM
    {{ source(
        'ethereum_db',
        'dim_dex_liquidity_pools'
    ) }}
