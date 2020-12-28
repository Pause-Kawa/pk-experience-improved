# ----------------------------------------
# Higuru Temple
# ----------------------------------------

# Main Door
execute if entity @s[tag=PK_HT_main_door] if score %PK_wither_beaten_once value matches 1 if entity @p[distance=..4] run function pk_strc:mechanics/higuru_temple/main_door/tick

# Ancient Altar
execute if entity @s[tag=PK_ancient_altar] if entity @p[distance=..10] run function pk_strc:mechanics/higuru_temple/ancient_altar/tick