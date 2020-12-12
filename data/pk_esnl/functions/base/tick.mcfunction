# Trigger when a player place an Alchemist Registry in a lectern
execute as @a[advancements={pk_esnl:triggers/place_alchemist_registry = true}] run function pk_esnl:mechanics/alchemy_mastering/villager_converter/player_placed_alchemist_registry

# Alchemy Mastering Tick
execute as @e[type=area_effect_cloud,tag=pkAlchemyMasteringLectern] at @s run function pk_esnl:mechanics/alchemy_mastering/villager_converter/tick