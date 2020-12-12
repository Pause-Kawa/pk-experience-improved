tag @s add PK_raycasting
scoreboard players set #PK_raycast_hit value 0
scoreboard players set #PK_raycast_distance value 0
function pk_core:raycasting/block/ray
tag @s remove PK_raycasting