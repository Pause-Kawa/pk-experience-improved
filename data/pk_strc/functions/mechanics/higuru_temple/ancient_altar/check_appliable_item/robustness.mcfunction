# Check if the tool is a bow and doesn't have the bewitchement yet
# - If success: apply bewitchement
execute if data storage temp Items[{"id":"minecraft:bow"}] unless data storage temp Items[1].tag.pkRobustness run function pk_strc:mechanics/higuru_temple/ancient_altar/enchant_item/robustness