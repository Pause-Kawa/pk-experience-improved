# Open treasure room door
fill ~-1 ~ ~8 ~1 ~4 ~8 air replace
# Animation
particle block polished_andesite ~ ~ ~ 1 3 1 0.001 40
playsound block.iron_door.open ambient @a ~ ~ ~ 50 0.4
playsound entity.wither.death ambient @a ~ ~ ~ 10 0.6
# Free the temple
execute as @e[type=area_effect_cloud,tag=PK_HT_core,sort=nearest,limit=1] at @s run function pk_strc:mechanics/higuru_temple/temple_core/free