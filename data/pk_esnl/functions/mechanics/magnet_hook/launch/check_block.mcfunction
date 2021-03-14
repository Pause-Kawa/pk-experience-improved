scoreboard players set #PK_temp_2 value 0

# If block above (but not below)
execute unless block ~ ~1 ~ #pk_core:raycasting_exclude if block ~ ~-1 ~ #pk_core:raycasting_exclude run scoreboard players set #PK_temp_2 value 1
# If block below (but not above)
execute unless block ~ ~-1 ~ #pk_core:raycasting_exclude if block ~ ~1 ~ #pk_core:raycasting_exclude run scoreboard players set #PK_temp_2 value 2
# If no block above and below : side hit
execute if block ~ ~1 ~ #pk_core:raycasting_exclude if block ~ ~-1 ~ #pk_core:raycasting_exclude run scoreboard players set #PK_temp_2 value 3

# If block below and above (too narrow) : fail
execute if score #PK_temp_2 value matches 0 run function pk_esnl:mechanics/magnet_hook/launch/fail
# Else : summoning latch point
execute if score #PK_temp_2 value matches 1..3 run function pk_esnl:mechanics/magnet_hook/latch/latch_point_set