# Check if the targeted item can receive the enchant
scoreboard players reset %PK_temp_2 value
data modify storage temp AppliableTools set value ["minecraft:wooden_sword","minecraft:wooden_axe","minecraft:stone_sword","minecraft:stone_axe","minecraft:iron_sword","minecraft:iron_axe","minecraft:golden_sword","minecraft:golden_axe","minecraft:diamond_sword","minecraft:diamond_axe","minecraft:netherite_sword","minecraft:netherite_axe"]
# - The score count the number of elements in AppliableTools that are different to the item id:
execute store result score %PK_temp_2 value run data modify storage temp AppliableTools[] set from storage temp Items[1].id
# - If success: apply enchant
execute if score %PK_temp_2 value matches 11 run function pk_strc:mechanics/higuru_temple/ancient_altar/enchant_item/sharpness