scoreboard players reset %PK_temp value
scoreboard players reset %PK_ancient_altar_applied_enchants value

# Checking for ancient tablet enchantments
# - Efficiency
execute store result score %PK_temp value run data get storage temp Items[0].tag.Enchantments[{id:"minecraft:efficiency"}].lvl
execute if score %PK_temp value matches 1.. run function pk_strc:mechanics/higuru_temple/ancient_altar/check_appliable_item/efficiency
# - Protection 
execute store result score %PK_temp value run data get storage temp Items[0].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute if score %PK_temp value matches 1.. run function pk_strc:mechanics/higuru_temple/ancient_altar/check_appliable_item/protection
# - Sharpness 
execute store result score %PK_temp value run data get storage temp Items[0].tag.Enchantments[{id:"minecraft:sharpness"}].lvl
execute if score %PK_temp value matches 1.. run function pk_strc:mechanics/higuru_temple/ancient_altar/check_appliable_item/sharpness
# - Sweeping edge 
execute store result score %PK_temp value run data get storage temp Items[0].tag.Enchantments[{id:"minecraft:sweeping"}].lvl
execute if score %PK_temp value matches 1.. run function pk_strc:mechanics/higuru_temple/ancient_altar/check_appliable_item/sweeping
# - Power
execute store result score %PK_temp value run data get storage temp Items[0].tag.Enchantments[{id:"minecraft:power"}].lvl
execute if score %PK_temp value matches 1.. run function pk_strc:mechanics/higuru_temple/ancient_altar/check_appliable_item/power
# - Looting
execute store result score %PK_temp value run data get storage temp Items[0].tag.Enchantments[{id:"minecraft:looting"}].lvl
execute if score %PK_temp value matches 1.. run function pk_strc:mechanics/higuru_temple/ancient_altar/check_appliable_item/looting
# - Knockback
execute store result score %PK_temp value run data get storage temp Items[0].tag.Enchantments[{id:"minecraft:knockback"}].lvl
execute if score %PK_temp value matches 1.. run function pk_strc:mechanics/higuru_temple/ancient_altar/check_appliable_item/knockback


# If at least one enchantment has been successfully applied: replace the container Items by the storage temp Items
execute if score %PK_ancient_altar_applied_enchants value matches 1.. run function pk_strc:mechanics/higuru_temple/ancient_altar/ancient_altar_replace_items
# If not, trigger the fail event
execute unless score %PK_ancient_altar_applied_enchants value matches 1.. run function pk_strc:mechanics/higuru_temple/ancient_altar/fail

# Logs
#tellraw @a [{"text":"Append "},{"score":{"name":"%PK_ancient_altar_applied_enchants","objective":"value"}},{"text":" enchantments."}]