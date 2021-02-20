# Temporary tag the user to retrive it 
tag @s add PK_player_setting_hook_point
tag @s add PK_player_retracting
# Summon and directly init the AEC
summon area_effect_cloud ~ ~ ~ {Tags:["PK_magnet_hook_hanging_point"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=PK_magnet_hook_hanging_point,tag=!init] run function pk_esnl:mechanics/magnet_hook/retracting/hanging_point/init
# Remove user temp tag
tag @s remove PK_player_setting_hook_point