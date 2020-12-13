# Mark the player
tag @s add PK_consumed_tp_potion
# If player has saved a memorized point through a memorial excerpt
execute if entity @s[scores={memorizedPDim=1..}] run function pk_esnl:mechanics/alchemy_mastering/teleportation_potion/player_memorized_point_initiate
# If player has a spawnpoint from bed 
execute unless entity @s[scores={memorizedPDim=1..}] if data entity @s SpawnY run function pk_esnl:mechanics/alchemy_mastering/teleportation_potion/player_bed_initiate
# If player has neither bed nor memorized point
execute unless entity @s[scores={memorizedPDim=1..}] unless data entity @s SpawnY run function pk_esnl:mechanics/alchemy_mastering/teleportation_potion/fail