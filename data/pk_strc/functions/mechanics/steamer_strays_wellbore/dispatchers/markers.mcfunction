# Spawners
execute unless score %PK_param_dev_mode value matches 1.. if entity @s[tag=PK_spawner,tag=!init] run function pk_strc:mechanics/steamer_strays_wellbore/spawners/init
execute unless score %PK_param_dev_mode value matches 1.. if entity @s[tag=PK_spawner,tag=init] if entity @p[distance=..50] run function pk_strc:mechanics/steamer_strays_wellbore/spawners/tick

# Manual post-processors 
execute unless score %PK_param_dev_mode value matches 1.. if entity @s[tag=PK_post_processor] run function pk_strc:manual_generation/steamer_strays_wellbore/post_processor/tick

scoreboard players set @e[tag=PK_SW_mechanic,tag=PK_spawner] value 4
tag @e[tag=PK_SW_mechanic,tag=PK_spawner,tag=init] remove init