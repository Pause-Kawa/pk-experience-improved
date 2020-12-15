# Place the PK_alchemy_mastering_lectern marker
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["PK_alchemy_mastering_lectern"]}
# Save the new marker position in scores 
execute as @e[type=area_effect_cloud,tag=PK_alchemy_mastering_lectern,distance=..1,limit=1] run function pk_core:entities_scores/store_position
# Remove the PK_raycast_hit_block temporary marker
kill @s