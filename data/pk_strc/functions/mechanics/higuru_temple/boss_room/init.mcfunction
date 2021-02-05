tag @s add init
# Summon guardians
execute positioned ~-4 ~ ~ run function pk_strc:entities/higuru/spawn/guardian
execute positioned ~ ~ ~-4 run function pk_strc:entities/higuru/spawn/guardian
execute positioned ~4 ~ ~ run function pk_strc:entities/higuru/spawn/guardian
execute positioned ~ ~ ~4 run function pk_strc:entities/higuru/spawn/guardian
# Animations
execute at @e[type=wither_skeleton,tag=guardian,tag=higuru] run particle soul_fire_flame ~ ~ ~ 1 2 1 0.001 20
playsound entity.wither.shoot ambient @a ~ ~ ~ 10 0.6
playsound entity.dragon_fireball.explode ambient @a ~ ~ ~ 10 0.8