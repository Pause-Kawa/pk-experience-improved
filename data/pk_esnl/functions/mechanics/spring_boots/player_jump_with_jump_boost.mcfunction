# Animation
playsound minecraft:item.crossbow.hit ambient @a ~ ~ ~ 1 1.7
particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.01 2
# Clear effect and prepared tag
function pk_esnl:mechanics/spring_boots/player_clear_jump_boost
# Increment score boosted jumps made in a row
scoreboard players add @s jumpBoostInRow 1
# Prevent the player to keep use the jump boost without releasing the sneak key once
tag @s add PK_keep_sneaking