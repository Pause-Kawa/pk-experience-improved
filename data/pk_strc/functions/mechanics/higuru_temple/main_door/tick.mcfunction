execute if entity @s[tag=PK_init,scores={value=1..}] run scoreboard players remove @s value 1
# Start animation
execute if entity @s[tag=!PK_init] run function pk_strc:mechanics/higuru_temple/main_door/start_animation
# Open
execute if entity @s[tag=PK_init,scores={value=0}] run function pk_strc:mechanics/higuru_temple/main_door/open