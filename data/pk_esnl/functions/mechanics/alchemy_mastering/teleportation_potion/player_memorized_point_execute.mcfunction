# Place marker to memorized point coordinates
execute store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=PK_consumed_tp_potion] memorizedPointX
execute store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=PK_consumed_tp_potion] memorizedPointY
execute store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=PK_consumed_tp_potion] memorizedPointZ
# Teleport the player
function pk_esnl:mechanics/alchemy_mastering/teleportation_potion/teleport_player_to_marker
# Remove the marker
kill @s 