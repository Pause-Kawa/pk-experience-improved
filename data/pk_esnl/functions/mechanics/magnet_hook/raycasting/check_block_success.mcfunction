# Give player a slow falling effect for retracting
effect give @s levitation 1 255 true
# Create the player hanging point a bit back (to prevent it to hang into the block)
execute positioned ^ ^ ^-0.4 align xyz positioned ~0.5 ~ ~0.5 run function pk_esnl:mechanics/magnet_hook/retracting/hanging_point/set
# Create the player hanging point a bit back (to prevent it to hang into the block)
# Animation
playsound minecraft:entity.evoker_fangs.attack ambient @a ~ ~ ~ 1 1.55
particle poof ~ ~ ~ 0.2 0.2 0.2 0.001 2