# Remove polished blackstone barrier from floor 1 to floor 2
fill ~-1 ~17 ~-1 ~1 ~20 ~1 air replace
particle block polished_blackstone ~ ~17 ~ 1 3 1 0.001 120
playsound block.gilded_blackstone.break ambient @a ~ ~20 ~ 10 1

# Remove all marker of the temple except ancient altar
execute align xyz positioned ~-18 ~-8 ~-18 run kill @e[tag=PK_strc_marker,tag=!PK_ancient_altar,dx=37,dy=70,dz=37]
