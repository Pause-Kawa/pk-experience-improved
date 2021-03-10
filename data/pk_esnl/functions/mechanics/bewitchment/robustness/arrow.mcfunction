# Multiply arrow velocity by 1,5
execute store result entity @s Motion[0] double 1.5 run data get entity @s Motion[0]
execute store result entity @s Motion[1] double 1.5 run data get entity @s Motion[1]
execute store result entity @s Motion[2] double 1.5 run data get entity @s Motion[2]

# Add arrow 0,5 damage 
execute store result score @s value run data get entity @s damage 10
scoreboard players add @s value 5
execute store result entity @s damage double 0.1 run scoreboard players get @s value
# Tag arrow
tag @s add robustnessShootedArrow