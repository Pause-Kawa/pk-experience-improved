execute as @a[tag=wild_cushioning_effect] run function pk_esnl:mechanics/bewitchment/wild_cushioning/remove_player_attribute
execute as @a[predicate=pk_core:flags/is_sprinting,predicate=pk_esnl:bewitchment/wear_wild_cushioning_item] run function pk_esnl:mechanics/bewitchment/wild_cushioning/add_player_attribute