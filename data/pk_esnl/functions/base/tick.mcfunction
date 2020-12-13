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

# Teleportation Potion
# - Trigger when a player consume a teleportation potion
execute as @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]}] at @s run function pk_esnl:mechanics/alchemy_mastering/teleportation_potion/consume

# ----------------------------------------
# Rain Dissipater
# ----------------------------------------

# Check motion and init the rain dissipater
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:29b,Amplifier:4b}]},tag=!PK_init] run function pk_esnl:mechanics/rain_dissipater/check_motion
# Trigger the rain dissipater
execute as @e[type=arrow,tag=PK_triggered_rain_dissipater] at @s run function pk_esnl:mechanics/rain_dissipater/check_timer