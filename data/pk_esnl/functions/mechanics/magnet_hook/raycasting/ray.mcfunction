execute if entity @s[scores={hookRayDistance=10..}] run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1
execute unless block ~ ~ ~ #pk_core:raycasting_exclude run function pk_esnl:mechanics/magnet_hook/raycasting/hit_block
scoreboard players add @s hookRayDistance 1
execute if entity @s[scores={hookRayHit=0,hookRayDistance=80}] run particle smoke ~ ~ ~ 0.2 0.2 0.2 0.001 5
execute if entity @s[scores={hookRayHit=0,hookRayDistance=..80}] positioned ^ ^ ^0.2 run function pk_esnl:mechanics/magnet_hook/raycasting/ray