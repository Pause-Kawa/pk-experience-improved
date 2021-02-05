# Search the door marker and open
execute as @e[type=area_effect_cloud,tag=PK_strc_marker,tag=PK_HT_pass_floor_door,limit=1,sort=nearest] at @s run function pk_strc:mechanics/higuru_temple/doors_systems/small_door/open
# Remove the lever marker
kill @s