# Init %PKT_randomizer_max, default : 1000
scoreboard players set %PK_randomizer_max value 1000
# Init randomizer
execute unless score %PK_randomizer_seed value matches -2147483648.. run scoreboard players set %PK_randomizer_seed value 731031
scoreboard players set %PK_randomizer_mult value 1664525
scoreboard players set %PK_randomizer_incr value 1013904223