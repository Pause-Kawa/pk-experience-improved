# Save and drop player inventory and experience points
# - Save current player inventory to drop
function pk_esnl:events/player_on_death/save_player_inventory
# - Save Faithfulness items and remove them from the saved player inventory to drop
function pk_esnl:mechanics/bewitchment/faithfulness/save_items_from_storage
function pk_esnl:mechanics/bewitchment/faithfulness/remove_items_from_storage
# - Drop player inventory and experience points
function pk_esnl:events/player_on_death/drop_player_inventory
function pk_esnl:events/player_on_death/drop_player_experience

# Clear the player
clear @s
xp set @s 0 points
xp set @s 0 levels

# Give the player the Faithfulness items back
function pk_esnl:mechanics/bewitchment/faithfulness/give_items

# Clear the temp container block
function pk_esnl:events/player_on_death/clear_temp_container_block