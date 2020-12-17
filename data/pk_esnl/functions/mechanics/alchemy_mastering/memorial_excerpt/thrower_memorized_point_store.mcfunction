# Store the player memorized point dimension
scoreboard players set @p[tag=PK_memorial_excerpt_thrower,predicate=pk_core:location/dimension/in_overworld] memorizedPDim 1
scoreboard players set @p[tag=PK_memorial_excerpt_thrower,predicate=pk_core:location/dimension/in_the_nether] memorizedPDim 2
scoreboard players set @p[tag=PK_memorial_excerpt_thrower,predicate=pk_core:location/dimension/in_the_end] memorizedPDim 3
# Store memorial excerpt location in throwner scores
execute store result score @p[tag=PK_memorial_excerpt_thrower] memorizedPointX run data get entity @s Pos[0]
execute store result score @p[tag=PK_memorial_excerpt_thrower] memorizedPointY run data get entity @s Pos[1]
execute store result score @p[tag=PK_memorial_excerpt_thrower] memorizedPointZ run data get entity @s Pos[2]
# Animation
particle minecraft:dragon_breath ~ ~ ~ 0.3 1 0.3 0.01 100
particle minecraft:firework ~ ~ ~ 0.15 0.4 0.15 0.01 30
playsound minecraft:block.beacon.power_select ambient @a
playsound minecraft:entity.elder_guardian.hurt ambient @a
# Remove memorial excerpt and clear player tag
kill @s
tellraw @p[tag=PK_memorial_excerpt_thrower] {"text":"Point memorized"}
tag @p[tag=PK_memorial_excerpt_thrower] remove PK_memorial_excerpt_thrower
