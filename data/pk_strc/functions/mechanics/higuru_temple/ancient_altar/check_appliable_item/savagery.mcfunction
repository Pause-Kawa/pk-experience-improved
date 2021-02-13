# Check if the targeted item can receive the bewitchement
scoreboard players reset %PK_temp_2 value
data remove storage temp AppliableTools
data modify storage temp AppliableTools set value ["minecraft:wooden_pickaxe","minecraft:stone_pickaxe","minecraft:iron_pickaxe","minecraft:golden_pickaxe","minecraft:diamond_pickaxe","minecraft:netherite_pickaxe"]
# - The score count the number of elements in AppliableTools that are different to the item id:
execute store result score %PK_temp_2 value run data modify storage temp AppliableTools[] set from storage temp Items[1].id
# Check if the tool is one of the appliable tools and doesn't have the bewitchement yet
# - Particularity : Not compatible with Silk Touch enchantment
# - If success: apply bewitchement
execute if score %PK_temp_2 value matches 5 unless data storage temp Items[1].tag.pkSavagery unless data storage temp Items[1].tag.Enchantments[{id:"minecraft:silk_touch"}].lvl run function pk_strc:mechanics/higuru_temple/ancient_altar/enchant_item/savagery