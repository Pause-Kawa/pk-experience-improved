# ----------------------------------------
# Scores
# ----------------------------------------
# Used for custom mobs sounds
# - Timer before next ambient sound is playable
scoreboard objectives add AmSoundDelay dummy

# ----------------------------------------
# Logs
# ----------------------------------------
# To see the log, please be sure that your player has the "dev" tag
tellraw @a[tag=dev] [{"text":"Loaded ","color":"yellow"},{"text":"PK Ex. Remastered - Structures","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]