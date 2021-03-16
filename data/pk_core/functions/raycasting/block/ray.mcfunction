execute unless block ~ ~ ~ #pk_core:raycasting_exclude run function pk_core:raycasting/block/hit_block
scoreboard players add #PK_raycast_distance value 1
execute if score #PK_raycast_hit value matches 0 if score #PK_raycast_distance value matches ..50 positioned ^ ^ ^0.1 run function pk_core:raycasting/block/ray