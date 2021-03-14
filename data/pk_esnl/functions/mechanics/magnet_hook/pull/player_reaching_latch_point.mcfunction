# Remove the pulled player tag and add player hanging tag
tag @s remove PK_player_pulled
tag @s add PK_player_hung
# Repositioning the player depending on latch point position
execute at @e[type=area_effect_cloud,tag=PK_magnet_hook_latch_point,tag=current,tag=ceiling] run tp @s ~ ~-1 ~
execute at @e[type=area_effect_cloud,tag=PK_magnet_hook_latch_point,tag=current,tag=!ceiling] run tp @s ~ ~ ~
# Mark the relative hanging point as reached
execute as @e[type=area_effect_cloud,tag=PK_magnet_hook_latch_point,tag=current] run tag @s add reached