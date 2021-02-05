# Particular case : if the output item has already an enchantments array but not the targeted enchant ID, append the targeted enchant ID to it.
execute if data storage temp Items[1].tag.Enchantments[] unless data storage temp Items[1].tag.Enchantments[{id:"minecraft:sharpness"}] run data modify storage temp Items[1].tag.Enchantments append value {lvl:1s,id:"minecraft:sharpness"}
# Apply the targeted enchant to the output from the input item
data modify storage temp Items[1].tag.Enchantments[{id:"minecraft:sharpness"}] set from storage temp Items[0].tag.Enchantments[{id:"minecraft:sharpness"}]

# Increment the applied enchantments score
scoreboard players add %PK_ancient_altar_applied_enchants value 1