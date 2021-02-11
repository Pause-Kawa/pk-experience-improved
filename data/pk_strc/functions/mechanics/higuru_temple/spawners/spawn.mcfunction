function pk_core:randomizer/next1
execute if score %PK_RNG_1 value matches ..500 positioned ~-1 ~ ~-1 run function pk_strc:entities/higuru_skeleton/spawn/axeman
execute if score %PK_RNG_1 value matches 501.. positioned ~-1 ~ ~-1 run function pk_strc:entities/higuru_skeleton/spawn/archer

function pk_core:randomizer/next1
execute if score %PK_RNG_1 value matches ..500 positioned ~1 ~ ~-1 run function pk_strc:entities/higuru_skeleton/spawn/axeman
execute if score %PK_RNG_1 value matches 501.. positioned ~1 ~ ~-1 run function pk_strc:entities/higuru_skeleton/spawn/archer

# Animation
execute at @e[type=skeleton,tag=higuru_skeleton,tag=!init,distance=..5,limit=4] run particle flame ~ ~1 ~ 0.4 1 0.4 0.001 4
tag @e[type=skeleton,tag=higuru_skeleton,tag=!init,distance=..5] add init