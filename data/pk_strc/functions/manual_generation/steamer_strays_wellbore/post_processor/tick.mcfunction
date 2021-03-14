execute if entity @s[tag=!init] run function pk_strc:manual_generation/steamer_strays_wellbore/post_processor/init
execute if entity @s[tag=init,scores={value=0}] run function pk_strc:manual_generation/steamer_strays_wellbore/post_processor/trigger
scoreboard players remove @s value 1