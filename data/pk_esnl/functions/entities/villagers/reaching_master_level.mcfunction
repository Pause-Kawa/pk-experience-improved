# Mark the current villager as PK_master_init
tag @s add PK_master_init

# Jungle Erudite : change offers if the current villager is a librarian that upgraded in a Jungle biome
execute if entity @s[predicate=pk_core:location/biomes/jungle_biomes,nbt={VillagerData:{profession:"minecraft:librarian"}}] run function pk_esnl:entities/jungle_erudite/init