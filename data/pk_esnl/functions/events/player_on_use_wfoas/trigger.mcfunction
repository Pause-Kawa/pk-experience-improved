# Reset player onKill score
scoreboard players reset @s onUseWFOAS

# Impetuousity Bewitchment
execute if entity @s[scores={hookUsingDelay=0},predicate=pk_esnl:magnet_hook/holding] anchored eyes run function pk_esnl:mechanics/magnet_hook/raycasting/start_ray