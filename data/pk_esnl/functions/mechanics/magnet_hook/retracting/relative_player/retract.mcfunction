# Retract
tp @s ^ ^ ^1

# Check if the player has reached its hanging point : 
execute if entity @e[type=area_effect_cloud,tag=PK_magnet_hook_hanging_point,tag=current,distance=..0.5] run function pk_esnl:mechanics/magnet_hook/retracting/relative_player/reached