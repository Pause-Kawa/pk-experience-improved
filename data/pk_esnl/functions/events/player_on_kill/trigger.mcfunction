# Reset player onKill score
scoreboard players reset @s onKill

# Impetuousity Bewitchment
execute if entity @s[predicate=pk_esnl:bewitchment/hold_impetuousity_item] run function pk_esnl:mechanics/bewitchment/impetuousity/player_on_kill