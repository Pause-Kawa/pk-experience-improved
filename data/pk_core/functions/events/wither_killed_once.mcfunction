# Set score when at least one player beat the Wither
# Used to open Higuru Temple main doors
execute unless score %PK_wither_beaten_once value matches 1 if entity @a[advancements={pk_strc:triggers/player_killed_wither=true}] run scoreboard players set %PK_wither_beaten_once value 1