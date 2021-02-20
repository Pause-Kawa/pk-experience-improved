tag @a[tag=PK_player_hanging,sort=nearest,limit=1] add PK_hanging_player_current
tp @a[tag=PK_hanging_player_current] ~ ~ ~
# Add hanging effects
effect give @a[tag=PK_hanging_player_current] levitation 1 255 true
effect give @a[tag=PK_hanging_player_current] haste 1 2 true
# On sneak, free the hanging player
execute as @a[tag=PK_hanging_player_current,predicate=pk_core:flags/is_sneaking] run function pk_esnl:mechanics/magnet_hook/hanging/land
# Animation 
particle soul_fire_flame ~ ~1 ~ 0 0 0 0 1
# Check if the hanging point is surrounded by at least one solid block : otherweise, force the player to land
execute if block ~ ~1 ~ #pk_core:raycasting_exclude if block ~ ~-1 ~ #pk_core:raycasting_exclude if block ~1 ~ ~ #pk_core:raycasting_exclude if block ~ ~ ~1 #pk_core:raycasting_exclude if block ~-1 ~ ~ #pk_core:raycasting_exclude if block ~ ~ ~-1 #pk_core:raycasting_exclude as @a[tag=PK_hanging_player_current] run function pk_esnl:mechanics/magnet_hook/hanging/land
tag @a[tag=PK_hanging_player_current] remove PK_hanging_player_current