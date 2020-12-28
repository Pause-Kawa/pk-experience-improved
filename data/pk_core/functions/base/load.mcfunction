# ----------------------------------------
# Variables
# ----------------------------------------
# Scores :
#   value : used for most fake players as value for parameter
#   pos<X/Y/Z> : used for most positions coordinates comparison through scores
# Fakes players :
#   %PK_parameters_<parameter> : parameters of the datapack - <parameter> : string
#   %PK_temp_<x> : used for temporary operations - <x> : integer
#   %PK_RNG_<x> : used for RNG purposes - <x> : integer (1 to 2)

# Value :
scoreboard objectives add value dummy
# Constants :
scoreboard players set %PK_const_100 value 100
# Current Level :
scoreboard objectives add currentLevel dummy
# UUID check :
scoreboard objectives add UUID0 dummy
# Positions :
scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy
# Motion : 
scoreboard objectives add motionY dummy
# Positions - specific to villagers : 
scoreboard objectives add posJobsiteX dummy
scoreboard objectives add posJobsiteY dummy
scoreboard objectives add posJobsiteZ dummy

# ----------------------------------------
# Teams
# ----------------------------------------
team add HiddenName
team modify HiddenName nametagVisibility never
team join HiddenName @e[type=villager,team=!HiddenName]

# ----------------------------------------
# Randomizer
# ----------------------------------------
# Used in order to generate random numbers through %PKT_RNG_<x>
function pk_core:randomizer/init

# ----------------------------------------
# Logs
# ----------------------------------------
# To see the log, please be sure that your player has the "dev" tag
tellraw @a[tag=dev] [{"text":"Loaded ","color":"yellow"},{"text":"PK Ex. Remastered - Core","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]