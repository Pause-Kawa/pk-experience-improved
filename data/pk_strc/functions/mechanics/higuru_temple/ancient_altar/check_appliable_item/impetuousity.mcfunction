# Check if the targeted item can receive the bewitchement
scoreboard players reset %PK_temp_2 value
data remove storage temp AppliableTools
data modify storage temp AppliableTools set value ["minecraft:wooden_axe","minecraft:stone_axe","minecraft:iron_axe","minecraft:golden_axe","minecraft:diamond_axe","minecraft:netherite_axe","minecraft:wooden_sword","minecraft:stone_sword","minecraft:iron_sword","minecraft:golden_sword","minecraft:diamond_sword","minecraft:netherite_sword"]
# - The score count the number of elements in AppliableTools that are different to the item id:
execute store result score %PK_temp_2 value run data modify storage temp AppliableTools[] set from storage temp Items[1].id
# Check if the tool is one of the appliable tools and doesn't have the bewitchement yet
# - If success: apply bewitchement
execute if score %PK_temp_2 value matches 11 unless data storage temp Items[1].tag.pkImpetuousity run function pk_strc:mechanics/higuru_temple/ancient_altar/enchant_item/impetuousity