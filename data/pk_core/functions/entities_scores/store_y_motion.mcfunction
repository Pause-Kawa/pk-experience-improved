# Store the current Motion Y of the target
# -7900 is the output you'll get when the player is on ground
execute store result score @s motionY run data get entity @s Motion[1] 1000
scoreboard players operation @s motionY *= %PK_const_100 value