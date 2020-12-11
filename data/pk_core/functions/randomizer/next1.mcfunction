# Return a random value between 0 and %PK_randomizer_max value
scoreboard players operation %PK_randomizer_seed value *= %PK_randomizer_mult value
scoreboard players operation %PK_randomizer_seed value += %PK_randomizer_incr value
scoreboard players operation %PK_RNG_1 value = %PK_randomizer_seed value
scoreboard players operation %PK_RNG_1 value /= %PK_const_100 value
scoreboard players operation %PK_RNG_1 value %= %PK_randomizer_max value