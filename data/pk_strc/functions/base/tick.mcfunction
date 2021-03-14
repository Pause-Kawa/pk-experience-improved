# ----------------------------------------
# Dispatchers
# ----------------------------------------
# Tick functions only on this subpack specific markers and entities in loaded areas
execute as @e[type=area_effect_cloud,tag=PK_strc_marker] at @s run function pk_strc:base/dispatchers/markers
execute as @e[type=#pk_strc:mobs,tag=PK_strc_mob] at @s run function pk_strc:base/dispatchers/mobs
execute as @e[type=item,nbt={Item:{tag:{deathEvent:1b}}}] at @s run function pk_strc:base/dispatchers/events_death

# ----------------------------------------
# Higuru Temple
# ----------------------------------------
# Remove advancement when a player trig a button
execute as @a[advancements={pk_strc:triggers/press_stone_button=true}] run advancement revoke @s only pk_strc:triggers/press_stone_button

# ----------------------------------------
# Steamer Strays Wellbore
# ----------------------------------------
# Release a Zombified Steamerworker from the ice blocks
execute as @e[type=zombie_villager,tag=PK_zombified_steamer_worker,tag=!init] run function pk_strc:entities/zombified_steamerworker/init
execute as @e[type=zombie_villager,tag=PK_zombified_steamer_worker,tag=!free] at @s unless block ~ ~ ~ ice unless block ~ ~1 ~ ice run function pk_strc:entities/zombified_steamerworker/free

# ----------------------------------------
# Swamp Mansory
# ----------------------------------------
# Generate a Swamp Mansory over a Swamp Hut
execute as @e[type=witch,tag=!PK_strc_mob,predicate=pk_strc:location/swamp_hut] unless entity @e[type=area_effect_cloud,tag=PK_strc_swamp_mansory,distance=..20] at @s run function pk_strc:manual_generation/swamp_mansory/generate

# ----------------------------------------
# Player Effect
# ----------------------------------------
# Luck IV (adventure mode)
execute as @a[predicate=pk_strc:effects/luck_iv,predicate=pk_core:gamemode/survival] run function pk_strc:base/force_gamemode/player_set_gamemode_adventure
execute as @a[tag=PK_forced_gamemode_adventure,predicate=!pk_strc:effects/luck_iv] run function pk_strc:base/force_gamemode/player_remove_forced_gamemode