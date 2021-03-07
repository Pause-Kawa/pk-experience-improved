# Dispatch mechanics markers depending on their relative structure
# This will prevent every marker to be crawled if not necessary

# Higuru Temple
execute if entity @s[tag=PK_HT_mechanic] run function pk_strc:mechanics/higuru_temple/dispatchers/markers

# Swamp Mansory
execute unless score %PK_param_dev_mode value matches 1.. if entity @s[tag=PK_SM_mob_placer] run function pk_strc:mechanics/swamp_mansory/mob_placer/place

# Steamer Strays Wellbore
execute if entity @s[tag=PK_SW_mechanic] run function pk_strc:mechanics/steamer_strays_wellbore/dispatchers/markers