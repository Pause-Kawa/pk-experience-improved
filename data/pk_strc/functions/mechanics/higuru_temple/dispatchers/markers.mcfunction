# Temple Core
execute unless score %PK_param_dev_mode value matches 1 if entity @s[tag=PK_HT_core] run function pk_strc:mechanics/higuru_temple/temple_core/tick

# Doors systems
# - Main doors
execute unless score %PK_param_dev_mode value matches 1 if entity @s[tag=PK_HT_main_door] if score %PK_wither_beaten_once value matches 1 run function pk_strc:mechanics/higuru_temple/doors_systems/main_door/tick
# - Small door
execute unless score %PK_param_dev_mode value matches 1 if entity @s[tag=PK_HT_small_door] run function pk_strc:mechanics/higuru_temple/doors_systems/small_door/tick
# - Boss door lever
execute if entity @s[tag=PK_HT_boss_door_lever] if block ~ ~ ~ lever[powered=true] run function pk_strc:mechanics/higuru_temple/doors_systems/boss_door_lever/search_boss_door
# - Pass floor door lever
execute if entity @s[tag=PK_HT_pass_floor_door_lever] if block ~ ~ ~ lever[powered=true] run function pk_strc:mechanics/higuru_temple/doors_systems/pass_floor_lever/search_pass_floor_door

# Boss room 
execute unless score %PK_param_dev_mode value matches 1 if entity @s[tag=PK_HT_boss_room] run function pk_strc:mechanics/higuru_temple/boss_room/tick

# Traps systems
# - Pit traps
execute unless score %PK_param_dev_mode value matches 1 if entity @s[tag=PK_HT_pit_trap_wire] if block ~ ~-1 ~ tripwire[powered=true] run function pk_strc:mechanics/higuru_temple/traps_systems/pit_trap/search_pit_trap
# - Silverfish trap
execute unless score %PK_param_dev_mode value matches 1 as @s[tag=PK_HT_silverfish_trap] if entity @a[distance=..4] run function pk_strc:mechanics/higuru_temple/traps_systems/silverfish_trap/init

# Ancient Altar
execute if entity @s[tag=PK_ancient_altar] if entity @p[distance=..10] run function pk_strc:mechanics/higuru_temple/ancient_altar/tick

# Spawners
execute unless score %PK_param_dev_mode value matches 1 if entity @s[tag=PK_spawner,tag=higuru,tag=!init] run function pk_strc:mechanics/higuru_temple/spawners/init
execute unless score %PK_param_dev_mode value matches 1 if entity @s[tag=PK_spawner,tag=higuru,tag=init] if entity @p[distance=..50] run function pk_strc:mechanics/higuru_temple/spawners/tick