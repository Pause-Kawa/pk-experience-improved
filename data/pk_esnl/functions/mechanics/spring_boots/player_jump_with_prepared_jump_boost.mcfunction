# Reset score jump boost delay 
scoreboard players set @s jumpBoostDelay 0
# Increment score boosted jumps made in a row
scoreboard players add @s jumpBoostInRow 1
# Remove player PK_jump_boost_prepared tag
tag @s remove PK_jump_boost_prepared
# Prevent the player to keep use the jump boost without releasing the sneak key once
tag @s add PK_need_to_release_sneak_once
# Animation
playsound minecraft:item.crossbow.hit ambient @a ~ ~ ~ 1 1.7
particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.01 2