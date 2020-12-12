# ----------------------------------------
# Dispatcher
# ----------------------------------------
# How it works : 
# - Fake player #PK_raycast_to_<id_block> should be set on 1 to know if raycast hit the desired block.
# - During the output, if the score of the fake player has been set on 2, then the desired block has been reached.
# - A temporary marker will also be set on the hit block location.
# - This enable to make the raycast function reusable for several contexts searching for the same block.

# Lectern
execute if score #PK_raycast_to_lectern value matches 1 if block ~ ~ ~ minecraft:lectern run scoreboard players set #PK_raycast_to_lectern value 2

# Marker
summon area_effect_cloud ~ ~ ~ {Duration:0,Tags:["pkRaycastHitBlock"]}