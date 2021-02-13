# Check dimension to replace the temporary container block
execute if entity @s[predicate=!pk_core:location/dimension/in_the_end] run setblock ~ 0 ~ minecraft:bedrock
execute if entity @s[predicate=pk_core:location/dimension/in_the_end] run setblock ~ 0 ~ minecraft:air