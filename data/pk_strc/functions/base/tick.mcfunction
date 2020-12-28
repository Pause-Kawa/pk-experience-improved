# ----------------------------------------
# Markers
# ----------------------------------------
# This enables to tick functions only on this subpack specific markers in loaded areas
# This prevents checks to be running each tick for nothing
execute as @e[type=area_effect_cloud,tag=PK_strc_marker] at @s run function pk_strc:base/tick_on_markers

# ----------------------------------------
# Higuru Temple
# ----------------------------------------

# Open the temples when at least one player beat the Wither
execute unless score %PK_wither_beaten_once value matches 1 if entity @a[advancements={pk_strc:triggers/player_killed_wither=true}] run scoreboard players set %PK_wither_beaten_once value 1

# Remove advancement when a player trig a button
execute as @a[advancements={pk_strc:triggers/press_stone_button = true}] run advancement revoke @s only pk_strc:triggers/press_stone_button