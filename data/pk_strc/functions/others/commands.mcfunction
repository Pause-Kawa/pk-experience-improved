# DON'T RUN THIS FUNCTION IN GAME
# This file is only used to store some usefull commands

# ----------------------------------------
# Higuru Temple
# ----------------------------------------

# Summon an Ancient Altar AEC (one block below)
execute align xyz positioned ~0.5 ~-1 ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PK_strc_marker","PK_ancient_altar","PK_HT_mechanic"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Summon a Higuru spawner AEC
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PK_strc_marker","PK_spawner","higuru_skeleton","PK_HT_mechanic"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Summon small_door marker (lever)
# - For door mechanic that is keeped by higuru keeper, replace the tag "lever" with "keeper"
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PK_strc_marker","PK_HT_small_door","PK_HT_mechanic","lever"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Summon main_door marker
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PK_strc_marker","PK_HT_main_door","PK_HT_mechanic"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Summon treasure_room_door marker
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PK_strc_marker","PK_HT_treasure_room_door","PK_HT_mechanic"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Summon pit_trap_wire marker
# - For pit trap, replace "PK_HT_pit_trap_wire" by "PK_HT_pit_trap"
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PK_strc_marker","PK_HT_pit_trap_wire","PK_HT_mechanic"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Summon door keeper archer
summon skeleton ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Team:"HiddenName",Tags:["PK_strc_mob","door_keeper","higuru_skeleton","archer"],DeathLootTable:"pk_strc:entities/higuru_skeleton",Health:40f,CustomName:'{"text":"Higuru Skeleton","italic":false}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3s},{id:"minecraft:punch",lvl:1s}]}},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:12,Patterns:[{Color:9,Pattern:"ss"},{Color:14,Pattern:"cbo"},{Color:4,Pattern:"bts"},{Color:4,Pattern:"tts"},{Color:4,Pattern:"flo"}]},display:{Name:'{"text":"Higuru Shield","italic":false}'}}}],HandDropChances:[0.050F,0.050F],ArmorItems:[{},{},{},{id:"minecraft:dead_horn_coral_fan",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.attack_damage",Base:7}]}

# Summon door keeper swordsman
execute as @e[tag=swordsman,tag=door_keeper] at @s run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Team:"HiddenName",Tags:["PK_strc_mob","door_keeper","higuru_skeleton","axeman"],DeathLootTable:"pk_strc:entities/higuru_skeleton",Health:40f,CustomName:'{"text":"Higuru Skeleton","italic":false}',HandItems:[{id:"minecraft:stone_axe",Count:1b},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:12,Patterns:[{Color:9,Pattern:"ss"},{Color:14,Pattern:"cbo"},{Color:4,Pattern:"bts"},{Color:4,Pattern:"tts"},{Color:4,Pattern:"flo"}]},display:{Name:'{"text":"Higuru Shield","italic":false}'}}}],HandDropChances:[0.085F,0.050F],ArmorItems:[{},{},{},{id:"minecraft:dead_fire_coral_fan",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.attack_damage",Base:7}]}


# ----------------------------------------
# Swamp Mansory
# ----------------------------------------

# Summon the Swamp Mansory structure marker
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PK_strc_marker","PK_strc_swamp_mansory"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Summon Swamp Mansory mob placer
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PK_strc_marker","PK_SM_mob_placer","witch"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}