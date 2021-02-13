# Store player current health (base 1000)
execute as @a store result score @s health run data get entity @s Health 1000
# Decrease Safeguard Instinct effect delay
execute as @a[scores={sgInstinctDelay=1..}] run scoreboard players remove @s sgInstinctDelay 1
# Trigger the Safeguard Instinct effect
execute as @a[scores={health=1..6000}] unless score @s sgInstinctDelay matches 1.. at @s run function pk_esnl:mechanics/bewitchment/safeguard_instinct/give_player_effect