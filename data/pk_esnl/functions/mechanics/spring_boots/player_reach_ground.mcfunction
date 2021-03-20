# Clear the current jump boost and set the delay
effect clear @s jump_boost
# Reset jump boost delay
scoreboard players set @s[tag=!PK_need_to_release_sneak_once] jumpBoostDelay 5
# Mark the player if it was still sneaking when reaching floor
tag @s[tag=!PK_need_to_release_sneak_once,tag=PK_is_sneaking] add PK_reached_floor_while_sneaking
# Clear player if it reaches the ground while needing to release sneak key once
execute if entity @s[tag=PK_need_to_release_sneak_once] run function pk_esnl:mechanics/spring_boots/player_clear_jump_boost