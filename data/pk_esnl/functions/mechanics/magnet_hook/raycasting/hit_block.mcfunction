scoreboard players set #PK_temp_2 value 0
scoreboard players set @s hookRayHit 1
# Check if the hit location is a valid point
execute positioned ^ ^ ^-0.2 align xyz unless block ~ ~1 ~ #pk_core:raycasting_exclude unless block ~ ~-1 ~ #pk_core:raycasting_exclude run scoreboard players set #PK_temp_2 value 1
execute if score #PK_temp_2 value matches 1 run function pk_esnl:mechanics/magnet_hook/raycasting/check_block_fail
execute if score #PK_temp_2 value matches 0 run function pk_esnl:mechanics/magnet_hook/raycasting/check_block_success