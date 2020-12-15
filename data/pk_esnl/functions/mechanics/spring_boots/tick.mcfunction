# Assign is_sneaking predicate as tag for performances
execute if entity @s[tag=!PK_is_sneaking,predicate=pk_core:flags/is_sneaking] run tag @s add PK_is_sneaking
execute if entity @s[tag=PK_is_sneaking,predicate=!pk_core:flags/is_sneaking] run tag @s remove PK_is_sneaking

# Reduce jump boost delay
execute if score @s jumpBoostDelay matches 0.. run scoreboard players remove @s jumpBoostDelay 1

# Checks 
# - Searching player current Y motion
function pk_core:entities_scores/store_y_motion
# - Check if player is still sneaking after a boosted jump
execute if entity @s[tag=PK_keep_sneaking,tag=!PK_is_sneaking] run tag @s remove PK_keep_sneaking
# - Check if player was sneaking on ground before jumping without prepared boost jump : prevent the player to prepare a boosted jump
execute if entity @s[tag=!PK_jump_boost_prepared,tag=PK_is_sneaking] if score @s motionY matches -7900 run tag @s add PK_keep_sneaking

# Main behaviour
# - If sneaking and falling and released sneak key once after a boosted jump : prepare jump boost
execute if entity @s[tag=!PK_keep_sneaking,tag=PK_is_sneaking] unless score @s motionY matches -7900.. run function pk_esnl:mechanics/spring_boots/player_prepare_jump_boost
# - If relasing sneak key : remove jump boost tag
execute if entity @s[tag=PK_jump_boost_prepared,tag=!PK_is_sneaking] run tag @s remove PK_jump_boost_prepared
# - If sneaking and on ground and jump boost has been prepared : give effects and init pkJumpBoostDelay to 10
execute unless score @s jumpBoostDelay matches 0.. if entity @s[tag=PK_jump_boost_prepared,tag=PK_is_sneaking] if score @s motionY matches -7900 run function pk_esnl:mechanics/spring_boots/player_give_jump_boost_dispatcher
# - If sneaking and on ground and jump boost has been prepared : give effects and init pkJumpBoostDelay to 0
execute if score @s jumpBoostDelay matches 0 run function pk_esnl:mechanics/spring_boots/player_clear_jump_boost
# - If jumping with prepared jump boost
execute if entity @s[tag=PK_jump_boost_prepared] unless score @s motionY matches ..-7900 run function pk_esnl:mechanics/spring_boots/player_jump_with_jump_boost

# Behaviour making several boosted jumps in a row
# - If landing without prepared jump boost : reset boosted jumps made in a row score
execute if entity @s[tag=!PK_jump_boost_prepared] if score @s motionY matches -7900 run scoreboard players reset @s jumpBoostInRow