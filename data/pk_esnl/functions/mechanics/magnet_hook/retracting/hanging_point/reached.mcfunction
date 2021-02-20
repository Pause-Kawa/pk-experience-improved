tag @s add relative_player_reached
# TP hanging point below if against a downward block face depending on the relative player position
tag @s add current
#execute at @s as @a[sort=nearest,limit=1,tag=PK_player_hanging] anchored eyes unless block ~ ~1 ~ #pk_core:raycasting_exclude run tp @e[type=area_effect_cloud,tag=PK_magnet_hook_hanging_point,tag=current] ~ ~-1 ~
tag @s remove current