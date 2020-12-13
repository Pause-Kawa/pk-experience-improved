tag @s remove PK_consumed_tp_potion
particle minecraft:smoke ~ ~ ~ 0.5 1 0.5 0.01 50
playsound minecraft:block.beacon.deactivate ambient @a
tellraw @s [{"text":"You can't remember any point to teleport to...","color":"red","italic":true}]