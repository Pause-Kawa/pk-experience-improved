scoreboard players reset %PK_ancient_altar_applied_enchants value

# Checking for ancient tablet enchantments
# - Faithfulness
execute if data storage temp Items[0].tag.pkAncientTabletFaithfulness run function pk_strc:mechanics/higuru_temple/ancient_altar/check_appliable_item/faithfulness
# - Savagery 
execute if data storage temp Items[0].tag.pkAncientTabletSavagery run function pk_strc:mechanics/higuru_temple/ancient_altar/check_appliable_item/savagery
# - Impetuousity 
execute if data storage temp Items[0].tag.pkAncientTabletImpetuousity run function pk_strc:mechanics/higuru_temple/ancient_altar/check_appliable_item/impetuousity
# - Impetuousity 
execute if data storage temp Items[0].tag.pkAncientTabletRobustness run function pk_strc:mechanics/higuru_temple/ancient_altar/check_appliable_item/robustness


# If at least one enchantment has been successfully applied: replace the container Items by the storage temp Items
execute if score %PK_ancient_altar_applied_enchants value matches 1.. run function pk_strc:mechanics/higuru_temple/ancient_altar/ancient_altar_replace_items
# If not, trigger the fail event
execute unless score %PK_ancient_altar_applied_enchants value matches 1.. run function pk_strc:mechanics/higuru_temple/ancient_altar/fail

# Logs
#tellraw @a [{"text":"Append "},{"score":{"name":"%PK_ancient_altar_applied_enchants","objective":"value"}},{"text":" enchantments."}]