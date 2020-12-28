tag @s add PK_init
scoreboard players set @s value 50
# Animation 
playsound block.beacon.deactivate ambient 0.4
playsound block.end_gateway.spawn ambient 0.6
particle portal ~ ~ ~ 2 2 0.5 0.001 100
particle smoke ~ ~ ~ 2 2 0.5 0.001 10