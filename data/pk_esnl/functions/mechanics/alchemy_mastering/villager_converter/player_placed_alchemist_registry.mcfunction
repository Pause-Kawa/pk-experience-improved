advancement revoke @s only pk_esnl:triggers/place_alchemist_registry

# Check the lectern position and place a pkAlchemyMasteringLectern marker on it
scoreboard players set #PK_raycast_to_lectern value 1
execute at @s anchored eyes run function pk_core:raycasting/block/start
execute if score #PK_raycast_to_lectern value matches 2 as @e[type=area_effect_cloud,tag=pkRaycastHitBlock,sort=nearest,limit=1] at @s run function pk_esnl:mechanics/alchemy_mastering/villager_converter/lectern_marker_place
scoreboard players set #PK_raycast_to_lectern value 0