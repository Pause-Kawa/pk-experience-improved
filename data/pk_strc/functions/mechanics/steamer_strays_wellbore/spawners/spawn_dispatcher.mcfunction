# Spawn depending on the spawner identity
execute if entity @s[tag=steamer_strays_workers] run function pk_strc:mechanics/steamer_strays_wellbore/spawners/spawn_workers
execute if entity @s[tag=steamer_strays_underground] run function pk_strc:mechanics/steamer_strays_wellbore/spawners/spawn_underground
execute if entity @s[tag=steamer_strays_soldiers] run function pk_strc:mechanics/steamer_strays_wellbore/spawners/spawn_soldiers
# Reset spawner delay and decrease its cap
scoreboard players set @s delay 400
scoreboard players remove @s value 1
# Kill the spawner if it reaches its cap
kill @s[scores={value=0}]