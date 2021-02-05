# Init player who enter the temple area
execute unless score %PK_param_dev_mode value matches 1 align xyz positioned ~-18 ~-8 ~-18 as @a[predicate=!pk_strc:effects/luck_iv,dx=37,dy=70,dz=37] at @s run function pk_strc:mechanics/higuru_temple/temple_core/player_enter_in_temple
# Preserve mining fatigue effect
execute unless score %PK_param_dev_mode value matches 1 align xyz positioned ~-18 ~-8 ~-18 as @a[predicate=pk_strc:effects/luck_iv_4s,dx=37,dy=70,dz=37] run effect give @s luck 10 3 true