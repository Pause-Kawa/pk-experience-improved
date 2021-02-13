# ----------------------------------------
# Scores
# ----------------------------------------
# Used for memorial excerpt
# memorizedPDim enable to store the dimension : 1: overworld - 2: the_nether - 3: the_end
scoreboard objectives add memorizedPDim dummy
scoreboard objectives add memorizedPointX dummy
scoreboard objectives add memorizedPointY dummy
scoreboard objectives add memorizedPointZ dummy
# Used for spring boots
scoreboard objectives add jumpBoostDelay dummy
scoreboard objectives add jumpBoostInRow dummy
# Used for bewitchments
scoreboard objectives add impetuousLevel dummy
scoreboard objectives add impetuousTimer dummy
# Player events
scoreboard objectives add onKill totalKillCount
scoreboard objectives add onDeath deathCount
scoreboard objectives add onShootWithBow minecraft.used:bow

# ----------------------------------------
# Gamerule
# ----------------------------------------
# Custom onDeath event for Faithfulness bewitchment : 
# - gamerule keepInventory is turned to on by default. Players drop their inventory and experience orbs through a custom actions.
gamerule keepInventory true

# ----------------------------------------
# Logs
# ----------------------------------------
# To see the log, please be sure that your player has the "dev" tag
tellraw @a[tag=dev] [{"text":"Loaded ","color":"yellow"},{"text":"PK Ex. Remastered - Essentials","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]