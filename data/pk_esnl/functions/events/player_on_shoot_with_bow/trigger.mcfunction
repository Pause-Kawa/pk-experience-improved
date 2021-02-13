# Reset player onShootWithBow score
scoreboard players reset @s onShootWithBow

# Bewitchment Robustness
execute if entity @s[predicate=pk_esnl:bewitchment/hold_robustness_item] run function pk_esnl:mechanics/bewitchment/robustness/player_on_shoot_with_bow