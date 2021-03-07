function pk_core:randomizer/next1
execute if score %PK_RNG_1 value matches ..500 positioned ~-1 ~ ~-1 run function pk_strc:entities/steamer_strays/spawn/worker_pickaxe
execute if score %PK_RNG_1 value matches 501.. positioned ~-1 ~ ~-1 run function pk_strc:entities/steamer_strays/spawn/worker_shovel

function pk_core:randomizer/next1
execute if score %PK_RNG_1 value matches ..500 positioned ~-1 ~ ~-1 run function pk_strc:entities/steamer_strays/spawn/worker_pickaxe
execute if score %PK_RNG_1 value matches 501.. positioned ~-1 ~ ~-1 run function pk_strc:entities/steamer_strays/spawn/worker_shovel

# Animation
execute at @e[type=stray,tag=PK_SS_mob,tag=!init,distance=..5,limit=4] run particle flame ~ ~1 ~ 0.4 1 0.4 0.001 4
tag @e[type=stray,tag=PK_SS_mob,tag=!init,distance=..5] add init