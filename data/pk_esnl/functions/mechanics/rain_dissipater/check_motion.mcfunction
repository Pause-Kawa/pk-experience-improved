tag @s add PK_init
# Temporary store the vertical speed value
# - Marks the arrow has rain dissater if launched high enough and in overworld
execute if entity @s[predicate=pk_core:dimension/in_overworld] store result score @s value run data get entity @s Motion[1]
execute if score @s value matches 2.. run function pk_esnl:mechanics/rain_dissipater/start