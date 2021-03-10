tag @s add PK_init
# Temporary store the vertical speed value
# - Marks the arrow has rain dissater if launched high enough and in overworld
execute if entity @s[predicate=pk_core:location/dimension/in_overworld] run function pk_core:entities_scores/store_y_motion