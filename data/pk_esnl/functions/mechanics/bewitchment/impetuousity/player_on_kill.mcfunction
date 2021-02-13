# Init 
execute unless entity @s[scores={impetuousLevel=0..}] run scoreboard players set @s impetuousLevel 0
# Update
scoreboard players add @s[scores={impetuousLevel=..2}] impetuousLevel 1
scoreboard players add @s impetuousTimer 200