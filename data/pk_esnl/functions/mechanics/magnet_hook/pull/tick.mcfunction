# Search relative player to pull from latch point (that has not been reached yet by the relative player)
execute as @e[type=area_effect_cloud,tag=PK_magnet_hook_latch_point,tag=init,tag=!reached] run function pk_esnl:mechanics/magnet_hook/pull/latch_point_search_player