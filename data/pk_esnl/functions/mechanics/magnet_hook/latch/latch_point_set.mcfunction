# Temporary tag the user to retrive it 
tag @s add PK_player_setting_latch_point
tag @s add PK_player_pulled
# Give player a levitation effect during the pull
effect give @s levitation 1 255 true

# Summon AEC
# - If block above (but not below)
execute if score #PK_temp_2 value matches 1 run summon area_effect_cloud ~ ~ ~ {Tags:["PK_magnet_hook_latch_point","ceiling"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
# - If block below (but not above)
execute if score #PK_temp_2 value matches 2 run summon area_effect_cloud ~ ~ ~ {Tags:["PK_magnet_hook_latch_point","ground"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
# - If no block above and below : side hit
execute if score #PK_temp_2 value matches 3 run summon area_effect_cloud ~ ~ ~ {Tags:["PK_magnet_hook_latch_point","side"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
# - Init AEC
execute as @e[type=area_effect_cloud,tag=PK_magnet_hook_latch_point,tag=!init] run function pk_esnl:mechanics/magnet_hook/latch/latch_point_init

# Remove user temp tag
tag @s remove PK_player_setting_latch_point