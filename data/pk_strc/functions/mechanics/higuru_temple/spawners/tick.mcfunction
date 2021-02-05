# Dispatcher
execute if entity @s[tag=!init] run function pk_strc:mechanics/higuru_temple/spawners/init
execute if entity @s[tag=init] if entity @p[distance=..50] run function pk_strc:mechanics/higuru_temple/spawners/trigger