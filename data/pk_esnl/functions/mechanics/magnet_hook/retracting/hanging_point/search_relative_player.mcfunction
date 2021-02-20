tag @s add current
scoreboard players operation #PK_temp value = @s hookUsingID
execute as @a[tag=PK_player_retracting] if score @s hookUsingID = #PK_temp value at @s facing entity @e[type=area_effect_cloud,tag=PK_magnet_hook_hanging_point,tag=current] feet run function pk_esnl:mechanics/magnet_hook/retracting/relative_player/retract
tag @s remove current