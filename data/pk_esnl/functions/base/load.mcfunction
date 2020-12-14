# ----------------------------------------
# Scores
# ----------------------------------------
# Used for memorial excerpt
# memorizedPDim enable to store the dimension : 1: overworld - 2: the_nether - 3: the_end
scoreboard objectives add dropGBPattern minecraft.dropped:minecraft.globe_banner_pattern
scoreboard objectives add memorizedPDim dummy
scoreboard objectives add memorizedPointX dummy
scoreboard objectives add memorizedPointY dummy
scoreboard objectives add memorizedPointZ dummy
# Used for spring boots
scoreboard objectives add jumpBoostDelay dummy
scoreboard objectives add jumpBoostInRow dummy
# scoreboard objectives add jumpBInRowDelay dummy

# ----------------------------------------
# Logs
# ----------------------------------------
# To see the log, please be sure that your player has the "dev" tag
tellraw @a[tag=dev] [{"text":"Loaded ","color":"yellow"},{"text":"PK Ex. Remastered - Essentials","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]