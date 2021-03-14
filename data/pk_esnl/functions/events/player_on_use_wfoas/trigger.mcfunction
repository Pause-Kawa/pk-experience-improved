# Reset player onKill score
scoreboard players reset @s onUseWFOAS

# Magnet Hook
execute if entity @s[scores={hookUsingDelay=0},predicate=pk_esnl:magnet_hook/holding_offhand] anchored eyes run function pk_esnl:mechanics/magnet_hook/launch/start_ray
execute if entity @s[scores={hookUsingDelay=0},predicate=pk_esnl:magnet_hook/holding_mainhand,predicate=!pk_esnl:magnet_hook/holding_offhand] anchored eyes run function pk_esnl:mechanics/magnet_hook/launch/start_ray