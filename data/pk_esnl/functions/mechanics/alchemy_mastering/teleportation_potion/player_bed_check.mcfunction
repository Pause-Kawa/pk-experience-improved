# Place marker to spawnpoint coordinates
execute store result entity @s Pos[0] double 1 run data get entity @a[tag=PK_consumed_tp_potion,limit=1] SpawnX 1
execute store result entity @s Pos[1] double 1 run data get entity @a[tag=PK_consumed_tp_potion,limit=1] SpawnY 1
execute store result entity @s Pos[2] double 1 run data get entity @a[tag=PK_consumed_tp_potion,limit=1] SpawnZ 1
# Check at the marker if the block is still a bed
execute at @s in minecraft:overworld positioned as @s run forceload add ~ ~
execute at @s in minecraft:overworld positioned as @s if block ~ ~ ~ #minecraft:beds run function pk_esnl:mechanics/alchemy_mastering/teleportation_potion/teleport_player_to_marker
execute at @s in minecraft:overworld positioned as @s unless block ~ ~ ~ #minecraft:beds as @a[tag=PK_consumed_tp_potion,limit=1] at @s run function pk_esnl:mechanics/alchemy_mastering/teleportation_potion/fail
execute at @s in minecraft:overworld positioned as @s run forceload remove ~ ~
# Remove marker
kill @s