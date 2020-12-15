# Store villager jobsite position
execute as @s run function pk_core:entities_scores/store_villager_jobsite_position

# Check if the jobsite is the lectern on the current marker
# - As the function is executed at the marker we can check for the nearest marker
# - If #PK_temp is still 1 after the check, so the jobsite correspond to the lectern on the marker
scoreboard players set #PK_temp value 1
execute unless score @e[type=area_effect_cloud,tag=PK_alchemy_mastering_lectern,sort=nearest,limit=1] posX = @s posJobsiteX run scoreboard players set #PK_temp value 0
execute unless score @e[type=area_effect_cloud,tag=PK_alchemy_mastering_lectern,sort=nearest,limit=1] posY = @s posJobsiteY run scoreboard players set #PK_temp value 0
execute unless score @e[type=area_effect_cloud,tag=PK_alchemy_mastering_lectern,sort=nearest,limit=1] posZ = @s posJobsiteZ run scoreboard players set #PK_temp value 0

# If the check passed, replace the current librarian by an alchemist master and remove the marker
execute if score #PK_temp value matches 1 at @s run function pk_esnl:mechanics/alchemy_mastering/villager_converter/lectern_marker_convert_librarian
execute if score #PK_temp value matches 1 as @e[type=area_effect_cloud,tag=PK_alchemy_mastering_lectern,sort=nearest,limit=1] at @s run function pk_esnl:mechanics/alchemy_mastering/villager_converter/lectern_marker_clear

# Reset #PK_temp value
scoreboard players reset #PK_temp value