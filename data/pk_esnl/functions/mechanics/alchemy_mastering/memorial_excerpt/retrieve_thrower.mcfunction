# Tag the player if it is the thrower
execute store result score @s UUID0 run data get entity @s UUID[0]
execute if score @e[type=item,nbt={Item:{tag:{memorialExcerpt:1b}}},sort=nearest,limit=1] value = @s UUID0 run tag @s add PK_memorial_excerpt_thrower