# Check and store thrower first UUID sequence in a score
scoreboard players set @s value 0
execute store result score @s value run data get entity @s Thrower[0]
execute unless score @s value matches 0 run tag @s add PK_item_has_thrower