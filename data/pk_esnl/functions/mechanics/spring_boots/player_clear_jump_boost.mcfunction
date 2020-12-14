# Remove tag
tag @s remove PK_jump_boost_prepared
# Clear effect if there're not longer due to any potion consumption (duration > 15 ticks)
execute store result score %PK_temp value run data get entity @s ActiveEffects[{Id:28b}].Duration
execute if score %PK_temp value matches ..15 run effect clear @s jump_boost