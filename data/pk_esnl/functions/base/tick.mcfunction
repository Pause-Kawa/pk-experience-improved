# ----------------------------------------
# Villagers
# ----------------------------------------

# Common to all villagers :
# - Trigger when a villager reaches the Master level (used for Jungle Erudite) :
execute as @e[type=villager,tag=!PK_master_init,nbt={VillagerData:{level:5}}] run function pk_esnl:entities/villagers/reaching_master_level 

# Alchemist Master : Villager Converter
# - Trigger when a player place an Alchemist Registry in a lectern
execute as @a[advancements={pk_esnl:triggers/place_alchemist_registry = true}] run function pk_esnl:mechanics/alchemy_mastering/villager_converter/player_placed_alchemist_registry
# - Tick on alchemy mastering lectern marker 
execute as @e[type=area_effect_cloud,tag=PK_alchemy_mastering_lectern] at @s run function pk_esnl:mechanics/alchemy_mastering/villager_converter/tick

# ----------------------------------------
# Alchemy Mastering
# ----------------------------------------

# Memorial Excerpt
# - Trigger when a memorial excerpt entity exists
execute as @e[type=item,nbt={Item:{tag:{memorialExcerpt:1b}}}] at @s run function pk_esnl:mechanics/alchemy_mastering/memorial_excerpt/tick

# Teleportation Potion
# - Trigger when a player consume a teleportation potion
execute as @a[predicate=pk_esnl:effects/slow_falling_4] at @s run function pk_esnl:mechanics/alchemy_mastering/teleportation_potion/consume


# ----------------------------------------
# Rain Dissipater
# ----------------------------------------

# Check motion and init the rain dissipater
execute as @e[type=arrow,predicate=pk_esnl:rain_dissipater/rain_dissipater,tag=!PK_init] run function pk_esnl:mechanics/rain_dissipater/check_motion
# Trigger the rain dissipater
execute as @e[type=arrow,tag=PK_triggered_rain_dissipater] at @s run function pk_esnl:mechanics/rain_dissipater/check_timer


# ----------------------------------------
# Spring boots
# ----------------------------------------

# Trigger when a player wears spring boots unless it is in liquid or it has the levitation or slow falling effect
execute as @a[predicate=pk_esnl:spring_boots/wearing,predicate=!pk_core:location/block/in_liquid] unless entity @s[predicate=pk_esnl:effects/levitation] unless entity @s[predicate=pk_esnl:effects/slow_falling] at @s run function pk_esnl:mechanics/spring_boots/tick


# ----------------------------------------
# Magnet Hook
# ----------------------------------------

# Init the hookUsingDelay score to 0 for player having not a score value yet
scoreboard players add @a hookUsingDelay 0
# Reduce delay before the hook become usable again after a launch
scoreboard players remove @a[scores={hookUsingDelay=1..}] hookUsingDelay 1
# Pulling player behavior
function pk_esnl:mechanics/magnet_hook/pull/tick
# Hanging behavior 
execute as @e[type=area_effect_cloud,tag=PK_magnet_hook_latch_point,tag=reached] at @s run function pk_esnl:mechanics/magnet_hook/hung/tick
# Clear eventual obsolete hanging points (can happen if a player disconnect / if a player is killed while using the magnet hook)
execute as @e[type=area_effect_cloud,tag=PK_magnet_hook_latch_point] at @s unless entity @a[distance=..16] run kill @s
execute as @a[tag=PK_player_hung] at @s unless entity @e[type=area_effect_cloud,tag=PK_magnet_hook_latch_point,distance=..2] run function pk_esnl:mechanics/magnet_hook/hung/clear
# Animation when magnet hook is reusable
execute as @a[scores={hookUsingDelay=1}] at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 1 1.4


# ----------------------------------------
# Bewitchments
# ----------------------------------------

# Impetuousity
function pk_esnl:mechanics/bewitchment/impetuousity/tick
# Safeguard Instinct
execute as @a[predicate=pk_esnl:bewitchment/wear_safeguard_instinct_item] run function pk_esnl:mechanics/bewitchment/safeguard_instinct/tick
# Wild Cushioning
function pk_esnl:mechanics/bewitchment/wild_cushioning/tick


# ----------------------------------------
# Events
# ----------------------------------------

# On player kill
execute as @a[scores={onKill=1}] at @s run function pk_esnl:events/player_on_kill/trigger
# On player death
execute as @a[scores={onDeath=1}] at @s run function pk_esnl:events/player_on_death/trigger
# On shoot with bow 
execute as @a[scores={onShootWithBow=1}] at @s run function pk_esnl:events/player_on_shoot_with_bow/trigger
# On player use warped fungus stick
execute as @a[scores={onUseWFOAS=1}] at @s run function pk_esnl:events/player_on_use_wfoas/trigger