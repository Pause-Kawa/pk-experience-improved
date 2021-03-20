# Player states
# - Assign is_sneaking predicate as tag for performances
tag @s[tag=!PK_is_sneaking,predicate=pk_core:flags/is_sneaking] add PK_is_sneaking
tag @s[tag=PK_is_sneaking,predicate=!pk_core:flags/is_sneaking] remove PK_is_sneaking
# - Saving current vertical motion
function pk_core:entities_scores/store_vertical_motion
# - Reduce jump boost delay
scoreboard players remove @s[scores={jumpBoostDelay=0..}] jumpBoostDelay 1
# - Remove the tag PK_need_to_release_sneak_once if the player release the sneak key
tag @s[tag=PK_need_to_release_sneak_once,tag=!PK_is_sneaking] remove PK_need_to_release_sneak_once

# Main behavior
# - As soon as the player reach the ground : 
execute if entity @s[tag=PK_was_falling_last_tick,predicate=pk_core:location/on_ground] run function pk_esnl:mechanics/spring_boots/player_reach_ground
# - If the player matched condition to prepare jump boost and release the sneak key : 
execute if entity @s[tag=PK_reached_floor_while_sneaking] run function pk_esnl:mechanics/spring_boots/player_prepare_jump_boost
# - If the player don't jump before the jump boost delay reaches 0 :
execute if entity @s[scores={jumpBoostDelay=0},predicate=pk_core:location/on_ground] run function pk_esnl:mechanics/spring_boots/player_clear_jump_boost
# - If jumping with prepared jump boost
execute if entity @s[tag=PK_jump_boost_prepared,scores={motionY=-78..}] run function pk_esnl:mechanics/spring_boots/player_jump_with_prepared_jump_boost

# Mark the player as falling for the next tick
tag @s remove PK_was_falling_last_tick
tag @s[scores={motionY=..-80}] add PK_was_falling_last_tick