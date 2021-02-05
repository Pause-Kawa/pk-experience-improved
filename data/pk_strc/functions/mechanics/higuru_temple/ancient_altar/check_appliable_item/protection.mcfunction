# Check if the targeted item can receive the enchant
scoreboard players reset %PK_temp_2 value
data modify storage temp AppliableTools set value ["minecraft:leather_helmet","minecraft:leather_chestplate","minecraft:leather_leggings","minecraft:leather_boots","minecraft:iron_helmet","minecraft:iron_chestplate","minecraft:iron_leggings","minecraft:iron_boots","minecraft:chainmail_helmet","minecraft:chainmail_chestplate","minecraft:chainmail_leggings","minecraft:chainmail_boots","minecraft:golden_helmet","minecraft:golden_chestplate","minecraft:golden_leggings","minecraft:golden_boots","minecraft:diamond_helmet","minecraft:diamond_chestplate","minecraft:diamond_leggings","minecraft:diamond_boots","minecraft:netherite_helmet","minecraft:netherite_chestplate","minecraft:netherite_leggings","minecraft:netherite_boots","minecraft:turtle_helmet"]
# - The score count the number of elements in AppliableTools that are different to the item id:
execute store result score %PK_temp_2 value run data modify storage temp AppliableTools[] set from storage temp Items[1].id
# - If success: apply enchant
execute if score %PK_temp_2 value matches 24 run function pk_strc:mechanics/higuru_temple/ancient_altar/enchant_item/protection