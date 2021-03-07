# Minecraft generation invovles an hard post-processor layer that convert natural rocks (diorite, andesite, granite, stone...) into their default ore/rocks/water/lava cave version depending on the current world's seed. This behavior can't be controled through processors, as it is applied after. So here we apply manual processors-like filters that bypass this transformation when the structure is generated.

# Removing cave water and lava single blocks
execute positioned ~-18 ~-37 ~-18 run fill ~ ~ ~ ~37 ~20 ~37 cave_air replace #pk_core:liquid
execute positioned ~-18 ~-17 ~-18 run fill ~ ~ ~ ~37 ~17 ~37 cave_air replace #pk_core:liquid

# Remove the marker
kill @s