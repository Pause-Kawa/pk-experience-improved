# ----------------------------------------
# Higuru Temple
# ----------------------------------------

execute as @e[type=area_effect_cloud,tag=PK_ancient_altar] at @s if entity @p[distance=..10] run function pk_strc:mechanics/higuru_temple/ancient_altar/tick