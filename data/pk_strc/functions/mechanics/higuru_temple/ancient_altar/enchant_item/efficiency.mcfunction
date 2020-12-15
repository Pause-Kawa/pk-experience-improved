# Apply the targeted enchant
data modify storage temp Items[1].tag.Enchantments[{id:"minecraft:efficiency"}] set from storage temp Items[0].tag.Enchantments[{id:"minecraft:efficiency"}]

# Increment the applied enchantments score
scoreboard players add %PK_ancient_altar_applied_enchants value 1