# Pull
tp @s ^ ^ ^1

# Check if the player will reach its point : 
execute if entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=PK_magnet_hook_latch_point,tag=current,distance=..2] run function pk_esnl:mechanics/magnet_hook/pull/player_reaching_latch_point