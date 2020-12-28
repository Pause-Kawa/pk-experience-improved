# Trigger the ancient altar
execute if entity @s[tag=!PK_triggered] at @s if block ~ ~1 ~ #minecraft:buttons[powered=true] run function pk_strc:mechanics/higuru_temple/ancient_altar/ancient_altar_check_triggerer_levels
execute if entity @s[tag=PK_triggered] at @s if block ~ ~1 ~ #minecraft:buttons[powered=false] run tag @s remove PK_triggered

# Animation
particle enchant ~ ~ ~ 1 1.1 1 0.01 1 normal