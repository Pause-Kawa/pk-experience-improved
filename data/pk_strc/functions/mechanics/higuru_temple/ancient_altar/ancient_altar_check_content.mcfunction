# Get the amount of slots taken in the container having a single item in %PK_temp
function pk_strc:mechanics/higuru_temple/ancient_altar/ancient_altar_check_single_items_amount
# If only two slots of single items, check the identity of the items

execute unless score %PK_temp value matches 2 run function pk_strc:mechanics/higuru_temple/ancient_altar/fail
execute if score %PK_temp value matches 2 run function pk_strc:mechanics/higuru_temple/ancient_altar/temp_container_init