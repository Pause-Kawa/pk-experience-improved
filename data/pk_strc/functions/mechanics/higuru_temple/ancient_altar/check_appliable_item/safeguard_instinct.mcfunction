# Check if the targeted item can receive the bewitchement
scoreboard players reset %PK_temp_2 value
data remove storage temp AppliableTools
data modify storage temp AppliableTools set value ["minecraft:leather_chestplate","minecraft:iron_chestplate","minecraft:chainmail_chestplate","minecraft:golden_chestplate","minecraft:diamond_chestplate","minecraft:netherite_chestplate","minecraft:elytra"]
# - The score count the number of elements in AppliableTools that are different to the item id:
execute store result score %PK_temp_2 value run data modify storage temp AppliableTools[] set from storage temp Items[1].id
# Check if the tool is one of the appliable tools and doesn't have the bewitchement yet
# - If success: apply bewitchement
execute if score %PK_temp_2 value matches 6 unless data storage temp Items[1].tag.pkSafeguardInstinct run function pk_strc:mechanics/higuru_temple/ancient_altar/enchant_item/safeguard_instinct