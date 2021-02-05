execute if entity @s[tag=PK_init,scores={value=1..}] run scoreboard players remove @s value 1
# Start animation
execute if entity @s[tag=!PK_init] if entity @p[distance=..7] run function pk_strc:mechanics/higuru_temple/doors_systems/main_door/start_animation
# Open
execute if entity @s[tag=PK_init,scores={value=0}] run function pk_strc:mechanics/higuru_temple/doors_systems/main_door/open