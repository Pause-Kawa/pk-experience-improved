# ----------------------------------------
# Scores
# ----------------------------------------
# Used for memorial excerpt
scoreboard objectives add dropGBPattern minecraft.dropped:minecraft.globe_banner_pattern
scoreboard objectives add memorizedTPPoint dummy
scoreboard objectives add memorizedPointX dummy
scoreboard objectives add memorizedPointY dummy
scoreboard objectives add memorizedPointZ dummy

# ----------------------------------------
# Logs
# ----------------------------------------
# To see the log, please be sure that your player has the "dev" tag
tellraw @a[tag=dev] [{"text":"Loaded ","color":"yellow"},{"text":"PK Ex. Remastered - Essentials","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]