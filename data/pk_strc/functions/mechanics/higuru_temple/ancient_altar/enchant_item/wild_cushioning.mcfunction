# If it is not the case yet, mark the item has enchanted (glint only)
execute unless data storage temp Items[1].tag.Enchantments[] run data modify storage temp Items[1].tag.Enchantments set value [{}]
# Apply the item bewitchment tag and lore
data modify storage temp Items[1].tag.pkWildCushioning set value 1b
data modify storage temp Items[1].tag.display.Lore prepend value '{"text":"Wild Cushioning","color":"yellow","italic":false}'
# Increment the applied enchantments score
scoreboard players add %PK_ancient_altar_applied_enchants value 1