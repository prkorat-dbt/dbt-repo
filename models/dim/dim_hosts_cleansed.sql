SELECT
    host_id,
    nvl(host_name,'Anonymous') host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    {{ ref("src_hosts") }}
