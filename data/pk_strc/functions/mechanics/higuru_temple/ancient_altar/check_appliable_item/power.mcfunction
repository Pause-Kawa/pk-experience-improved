# Check if the targeted item can receive the enchant
scoreboard players reset %PK_temp_2 value
data modify storage temp AppliableTools set value ["minecraft:bow"]
# - The score count the number of elements in AppliableTools that are different to the item id:
execute store result score %PK_temp_2 value run data modify storage temp AppliableTools[] set from storage temp Items[1].id
# - If success: apply enchant
execute if score %PK_temp_2 value matches 0 run function pk_strc:mechanics/higuru_temple/ancient_altar/enchant_item/power