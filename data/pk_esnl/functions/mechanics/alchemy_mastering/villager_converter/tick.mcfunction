# Remove marker if the current block on it is not a lectern having the alchemist registry anymore
execute unless block ~ ~ ~ minecraft:lectern{Book:{id:"minecraft:written_book",tag:{pkAlchemistRegistry:1b}}} run kill @s

# If a librarian having no XP approches, check if it is the lectern owner
execute at @s as @e[type=villager,nbt={Xp:0,VillagerData:{profession:"minecraft:librarian"}},distance=..3] run function pk_esnl:mechanics/alchemy_mastering/villager_converter/lectern_marker_check_librarian

# Emit particles on the lectern to show the player it has an alchemist registry in it
particle enchant ~ ~0.8 ~ 0.5 0.8 0.5 0.001 2 normal