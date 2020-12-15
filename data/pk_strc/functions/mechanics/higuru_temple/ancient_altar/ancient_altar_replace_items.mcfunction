# Place the item in the middle of the container
data modify storage temp Items[1].Slot set value 4b
# Remove ancient tablet item
data remove storage temp Items[0]
# Replace items in the ancient altar
data modify block ~ ~ ~ Items set from storage temp Items

# Animations
particle happy_villager ~ ~0.5 ~ 0.5 1.1 0.5 0.001 100
particle enchant ~ ~0.5 ~ 1 1.1 1 0.001 30
playsound block.conduit.activate ambient @a ~ ~ ~ 1 1.4
playsound block.beacon.power_select ambient @a ~ ~ ~ 1 1.2