# Store the current Motion Y of the target
execute store result score @s motionY run data get entity @s Motion[1] 1000
scoreboard players operation @s motionY *= %PK_const_100 value
execute if score @s motionY matches 210000.. run function pk_esnl:mechanics/rain_dissipater/start