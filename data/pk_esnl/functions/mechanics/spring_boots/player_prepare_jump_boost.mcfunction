# Give effects depending on boosted jumps made in a row
execute unless entity @s[scores={jumpBoostInRow=1..}] run function pk_esnl:mechanics/spring_boots/player_give_small_jump_boost
execute if entity @s[scores={jumpBoostInRow=1..}] run function pk_esnl:mechanics/spring_boots/player_give_high_jump_boost
# Tag the player has jump boost prepared
tag @s add PK_jump_boost_prepared
# Remove the player tag
tag @s remove PK_reached_floor_while_sneaking
