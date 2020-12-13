execute at @s run scoreboard players set @p[tag=PK_memorial_excerpt_throwner] memorizedTPPoint 1
# Store memorial excerpt location in throwner scores
execute store result score @p[tag=PK_memorial_excerpt_throwner] memorizedPointX run data get entity @s Pos[0]
execute store result score @p[tag=PK_memorial_excerpt_throwner] memorizedPointY run data get entity @s Pos[1]
execute store result score @p[tag=PK_memorial_excerpt_throwner] memorizedPointZ run data get entity @s Pos[2]
# Animation
execute at @s run particle minecraft:dragon_breath ~ ~ ~ 0.3 1 0.3 0.01 100
execute at @s run particle minecraft:firework ~ ~ ~ 0.15 0.4 0.15 0.01 30
execute at @s run playsound minecraft:block.beacon.power_select ambient @a
execute at @s run playsound minecraft:entity.elder_guardian.hurt ambient @a
# Remove memorial excerpt and clear player tag
kill @s
tellraw @p[tag=PK_memorial_excerpt_throwner] {"text":"Point memorized"}
tag @p[tag=PK_memorial_excerpt_throwner] remove PK_memorial_excerpt_throwner