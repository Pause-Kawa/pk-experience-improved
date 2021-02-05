# DON'T RUN THIS FUNCTION IN GAME
# This file is only used to store some usefull commands

# ----------------------------------------
# Higuru Temple
# ----------------------------------------

# Summon an Ancient Altar AEC (one block below)
execute align xyz positioned ~0.5 ~-1 ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PK_strc_marker","PK_ancient_altar","PK_HT_mechanic"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Summon a Higuru spawner AEC
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PK_strc_marker","PK_spawner","higuru","PK_HT_mechanic"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Summon small_door marker (lever)
# - For door mechanic that is keeped by higuru keeper, replace the tag "lever" with "keeper"
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PK_strc_marker","PK_HT_small_door","PK_HT_mechanic","lever"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Summon main_door marker
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PK_strc_marker","PK_HT_main_door","PK_HT_mechanic"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Summon door keeper archer
summon skeleton ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Team:"HiddenName",DeathLootTable:"pk_strc:entities/higuru",Health:60f,Tags:["PK_strc_mob","door_keeper","higuru","archer"],CustomName:'{"text":"Higuru Archer","italic":false}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3s},{id:"minecraft:punch",lvl:1s}]}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8694103}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8694103}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8694103}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;234715373,-507361151,-1308149372,1963184167],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmM3NzgzMmJjMDViYzE3MTY4NDM1NTM2ODk5MzNmODU0OWYxZDI5NjMzOWRkZTYzNDc1MWNiZjg5NzVhZmE0YSJ9fX0="}]}}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:60}]}

# Summon door keeper swordsman
summon skeleton ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Team:"HiddenName",DeathLootTable:"pk_strc:entities/higuru",Health:60f,Tags:["PK_strc_mob","door_keeper","higuru","swordsman"],CustomName:'{"text":"Higuru Swordsman","italic":false}',HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8694103}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8694103}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8694103}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;234715373,-507361151,-1308149372,1963184167],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmM3NzgzMmJjMDViYzE3MTY4NDM1NTM2ODk5MzNmODU0OWYxZDI5NjMzOWRkZTYzNDc1MWNiZjg5NzVhZmE0YSJ9fX0="}]}}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:60},{Name:"generic.attack_damage",Base:10}]}