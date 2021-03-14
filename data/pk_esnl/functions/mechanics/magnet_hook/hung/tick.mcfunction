# Tag the relative player
tag @p[tag=PK_player_hung] add PK_player_hung_current
# Block the player on the latch point
execute if entity @s[tag=ceiling] run tp @p[tag=PK_player_hung_current] ~ ~-1 ~
execute if entity @s[tag=!ceiling] run tp @p[tag=PK_player_hung_current] ~ ~ ~
# Add hanging effects
effect give @p[tag=PK_player_hung_current] levitation 1 255 true
effect give @p[tag=PK_player_hung_current] haste 1 2 true
# On sneak, free the hanging player
execute as @p[tag=PK_player_hung_current,predicate=pk_core:flags/is_sneaking] run function pk_esnl:mechanics/magnet_hook/hung/land
# Check if the hanging point is surrounded by at least one solid block : otherweise, force the player to land
execute if block ~ ~1 ~ #pk_core:raycasting_exclude if block ~ ~-1 ~ #pk_core:raycasting_exclude if block ~1 ~ ~ #pk_core:raycasting_exclude if block ~ ~ ~1 #pk_core:raycasting_exclude if block ~-1 ~ ~ #pk_core:raycasting_exclude if block ~ ~ ~-1 #pk_core:raycasting_exclude as @a[tag=PK_player_hung_current] run function pk_esnl:mechanics/magnet_hook/hung/land
# Animation 
execute if entity @s[tag=ground] run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=!ground] run particle soul_fire_flame ~ ~1 ~ 0 0 0 0 1
# Remove the current tag
tag @p[tag=PK_player_hung_current] remove PK_player_hung_current