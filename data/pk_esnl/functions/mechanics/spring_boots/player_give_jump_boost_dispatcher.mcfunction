# Init jump boost delay
scoreboard players set @s jumpBoostDelay 10
# Give effects depending on boosted jumps made in a row
execute unless entity @s[scores={jumpBoostInRow=1..}] run function pk_esnl:mechanics/spring_boots/player_give_small_jump_boost
execute if entity @s[scores={jumpBoostInRow=1..}] run function pk_esnl:mechanics/spring_boots/player_give_high_jump_boost