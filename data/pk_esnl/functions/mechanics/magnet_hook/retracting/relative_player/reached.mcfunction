# Remove the retracting player tag and slow falling effect
tag @s remove PK_player_retracting
# Add player hanging tag
tag @s add PK_player_hanging
effect clear @s[predicate=pk_esnl:effects/levitation_1s_max] levitation
# Mark the relative hanging point as reached
execute as @e[type=area_effect_cloud,tag=PK_magnet_hook_hanging_point,tag=current] run function pk_esnl:mechanics/magnet_hook/retracting/hanging_point/reached