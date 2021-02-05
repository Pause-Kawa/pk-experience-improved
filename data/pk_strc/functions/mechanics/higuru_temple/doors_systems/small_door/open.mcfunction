# Remove door
# -- Remove lever in priority
setblock ~ ~1 ~ minecraft:air replace
fill ~-1 ~ ~-1 ~1 ~3 ~1 minecraft:air replace
# Animation
particle block iron_bars ~ ~ ~ 1 3 1 0.001 30
playsound block.iron_door.open ambient @a ~ ~ ~ 50 0.4
# Remove entity
kill @s