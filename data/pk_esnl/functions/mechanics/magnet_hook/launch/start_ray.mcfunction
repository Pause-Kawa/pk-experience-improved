# Increment the current hook ID value and assign it to the current user
# - This is used so the player store an ID on its own score that will enable it to retrieve its relative AEC hanging point.
# - It prevents conflict between two or more players that would use the magnet hook at the same time (since the process stretch on several ticks).
scoreboard players add #PK_current_hook_ID value 1
scoreboard players operation @s hookUsingID = #PK_current_hook_ID value
# Reset player hook states 
execute if entity @s[tag=PK_player_hung] run function pk_esnl:mechanics/magnet_hook/hung/land
scoreboard players set @s hookUsingDelay 40
# Animation
playsound minecraft:entity.egg.throw ambient @a ~ ~ ~ 1 1.35
# Start ray
scoreboard players set @s hookRayHit 0
scoreboard players set @s hookRayDistance 0
function pk_esnl:mechanics/magnet_hook/launch/ray