# Place the relative mob
execute if entity @s[tag=witch] run summon witch ~ ~ ~ {Tags:["PK_strc_mob"],PersistenceRequired:1b}
execute if entity @s[tag=evoker] run summon evoker ~ ~ ~ {Tags:["PK_strc_mob"],PersistenceRequired:1b}
execute if entity @s[tag=vindicator] run summon vindicator ~ ~ ~ {Tags:["PK_strc_mob"],PersistenceRequired:1b}
execute if entity @s[tag=cat] run summon cat ~ ~ ~ {Tags:["PK_strc_mob"],CatType:10}
# Remove the marker
kill @s