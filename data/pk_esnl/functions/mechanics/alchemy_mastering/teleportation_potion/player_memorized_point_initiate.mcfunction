# Create marker for teleportation
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["memorized_point_temp_marker"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=memorized_point_temp_marker,limit=1,sort=nearest] run function pk_esnl:mechanics/alchemy_mastering/teleportation_potion/player_memorized_point_execute