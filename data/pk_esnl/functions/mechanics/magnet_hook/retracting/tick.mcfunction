execute as @e[type=area_effect_cloud,tag=PK_magnet_hook_hanging_point,tag=init,tag=!relative_player_reached] run function pk_esnl:mechanics/magnet_hook/retracting/hanging_point/search_relative_player

execute as @e[type=area_effect_cloud,tag=PK_magnet_hook_hanging_point,tag=init,tag=relative_player_reached] run particle flame ~ ~ ~ 0 0 0 0 1