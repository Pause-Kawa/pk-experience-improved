# ----------------------------------------
# VARIABLES
# ----------------------------------------
# Scores :
#   value : used for most fake players as value for parameter
# Fakes players :
#   %PK_parameters_<parameter> : parameters of the datapack - <parameter> : string
#   %PK_temp_<x> : used for temporary operations - <x> : integer
#   %PK_RNG_<x> : used for RNG purposes - <x> : integer (1 to 2)
scoreboard objectives add value dummy
# Constants :
scoreboard players set %PK_const_100 value 100

# ----------------------------------------
# TEAMS
# ----------------------------------------
team add HiddenName
team modify HiddenName nametagVisibility never

# ----------------------------------------
# RANDOMIZER
# ----------------------------------------
# Used in order to generate random numbers through %PKT_RNG_<x>
function pk_core:randomizer/init

# ----------------------------------------
# LOGS
# ----------------------------------------
# To see the log, please be sure that your player has the "dev" tag
tellraw @a[tag=dev] [{"text":"Loaded ","color":"yellow"},{"text":"PK Ex. Remastered - Core","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]