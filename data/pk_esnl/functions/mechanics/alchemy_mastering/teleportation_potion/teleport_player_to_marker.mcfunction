# Teleport player to marker
tp @a[tag=PK_consumed_tp_potion] @s

# If no memorized point but bed, teleport the player in overworld
execute as @a[tag=PK_consumed_tp_potion] unless score @s memorizedPDim matches 1.. if entity @s[predicate=!pk_core:location/dimension/in_overworld] at @s in minecraft:overworld positioned as @s run tp @s ~ ~ ~

# If a memorized point has been set, teleport the player in the right dimension
execute as @a[tag=PK_consumed_tp_potion,scores={memorizedPDim=1},predicate=!pk_core:location/dimension/in_overworld] at @s in minecraft:overworld positioned as @s run tp @s ~ ~ ~
execute as @a[tag=PK_consumed_tp_potion,scores={memorizedPDim=2},predicate=!pk_core:location/dimension/in_the_nether] at @s in minecraft:the_nether positioned as @s run tp @s ~ ~ ~
execute as @a[tag=PK_consumed_tp_potion,scores={memorizedPDim=3},predicate=!pk_core:location/dimension/in_the_end] at @s in minecraft:the_end positioned as @s run tp @s ~ ~ ~

# Apply animation after teleporation (need to wait for 1 tick)
schedule function pk_esnl:mechanics/alchemy_mastering/teleportation_potion/schedule_gateway_teleport_successfuly 1t