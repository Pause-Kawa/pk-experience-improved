tag @s add current
scoreboard players operation #PK_temp value = @s hookUsingID
execute as @a[tag=PK_player_pulled] if score @s hookUsingID = #PK_temp value at @s facing entity @e[type=area_effect_cloud,tag=PK_magnet_hook_latch_point,tag=current] feet run function pk_esnl:mechanics/magnet_hook/pull/player_being_pulled
tag @s remove current