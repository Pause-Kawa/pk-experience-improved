# Spawn if there is 2 or less Higuru (up to a total of 4 Higuru simultaneously)
execute store result score %PK_temp value if entity @e[type=skeleton,tag=higuru_skeleton,distance=..7]
execute if score %PK_temp value matches ..2 run function pk_strc:mechanics/higuru_temple/spawners/spawn
# Reset spawner delay
scoreboard players set @s delay 400