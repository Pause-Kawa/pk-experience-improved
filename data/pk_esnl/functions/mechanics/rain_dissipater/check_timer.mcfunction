# Check the timer
execute if entity @s[scores={value=1..}] run scoreboard players remove @s value 1
execute if entity @s[scores={value=0}] run function pk_esnl:mechanics/rain_dissipater/execute