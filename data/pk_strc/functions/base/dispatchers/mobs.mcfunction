# ----------------------------------------
# Common
# ----------------------------------------

execute if entity @s[team=!HiddenName] run team join HiddenName @s

# ----------------------------------------
# Higuru
# ----------------------------------------

execute if entity @s[tag=higuru] run function pk_strc:entities/higuru/behavior