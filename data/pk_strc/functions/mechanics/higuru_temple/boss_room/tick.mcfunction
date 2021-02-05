# Start Animation
execute if entity @s[tag=!init,tag=start_animation,scores={delay=1..}] run scoreboard players remove @s delay 1
execute if entity @s[tag=!init,tag=!start_animation] if entity @a[distance=..5] run function pk_strc:mechanics/higuru_temple/boss_room/start_animation

# Init the boss fight
execute if entity @s[tag=!init,tag=start_animation,scores={delay=..0}] run function pk_strc:mechanics/higuru_temple/boss_room/init

# Check if all guardians have been defeated -> free the temple
execute if entity @s[tag=init] unless entity @e[type=wither_skeleton,tag=higuru,tag=guardian,distance=..15] as @e[type=area_effect_cloud,tag=PK_HT_core,sort=nearest,limit=1] at @s run function pk_strc:mechanics/higuru_temple/temple_core/free

# Check if all players have leave -> reset the boss room
execute if entity @s[tag=init] if entity @e[type=wither_skeleton,tag=higuru,tag=guardian,distance=..15] unless entity @a[distance=..15] run function pk_strc:mechanics/higuru_temple/boss_room/reset