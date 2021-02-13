# Place the item in the middle of the container
data modify storage temp Items[1].Slot set value 4b
# Remove ancient tablet item
data remove storage temp Items[0]
# Replace items in the ancient altar
data modify block ~ ~ ~ Items set from storage temp Items

# Remove XP to triggerer and his tag
execute as @p[tag=PK_use_ancient_altar] run function pk_strc:mechanics/higuru_temple/ancient_altar/ancient_altar_remove_xp_to_triggerer

# Animations
particle witch ~ ~0.5 ~ 1 1.1 1 0.1 90
particle dragon_breath ~ ~0.5 ~ 1 1.1 1 0.1 90
particle enchant ~ ~0.5 ~ 1 1.1 1 0.001 100
playsound minecraft:block.end_portal.spawn ambient @a ~ ~ ~ 1 1.7
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 1 1.7