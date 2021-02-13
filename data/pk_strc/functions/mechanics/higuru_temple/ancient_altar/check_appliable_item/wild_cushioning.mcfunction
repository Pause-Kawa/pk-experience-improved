# Check if the targeted item can receive the bewitchement
scoreboard players reset %PK_temp_2 value
data remove storage temp AppliableTools
data modify storage temp AppliableTools set value ["minecraft:leather_boots","minecraft:iron_boots","minecraft:chainmail_boots","minecraft:golden_boots","minecraft:diamond_boots","minecraft:netherite_boots"]
# - The score count the number of elements in AppliableTools that are different to the item id:
execute store result score %PK_temp_2 value run data modify storage temp AppliableTools[] set from storage temp Items[1].id
# Check if the tool is one of the appliable tools and doesn't have the bewitchement yet
# - If success: apply bewitchement
execute if score %PK_temp_2 value matches 5 unless data storage temp Items[1].tag.pkWildCushioning run function pk_strc:mechanics/higuru_temple/ancient_altar/enchant_item/wild_cushioning