# ----------------------------------------
# Alchemy Mastering
# ----------------------------------------

# Villager Converter
# - Trigger when a player place an Alchemist Registry in a lectern
execute as @a[advancements={pk_esnl:triggers/place_alchemist_registry = true}] run function pk_esnl:mechanics/alchemy_mastering/villager_converter/player_placed_alchemist_registry
# - Tick on alchemy mastering lectern marker 
execute as @e[type=area_effect_cloud,tag=pkAlchemyMasteringLectern] at @s run function pk_esnl:mechanics/alchemy_mastering/villager_converter/tick

# Memorial Excerpt
# - Trigger when a memorial excerpt entity exists
execute as @e[type=item,nbt={Item:{tag:{memorialExcerpt:1b}}}] at @s run function pk_esnl:mechanics/alchemy_mastering/memorial_excerpt/tick
# - Reset scoreboard used to know if a player dropped a globe banner pattern
scoreboard players reset @a[scores={dropGBPattern=1..}] dropGBPattern