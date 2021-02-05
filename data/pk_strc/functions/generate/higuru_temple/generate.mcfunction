# Surface
setblock ~ ~ ~ structure_block{name:"pk_strc:higuru_temple/surface_1",posX:-16,posY:-2,posZ:-16,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~1 ~ redstone_block replace

# Floor 1
setblock ~ ~-11 ~ structure_block{name:"pk_strc:higuru_temple/floor_one_1",posX:-16,posY:0,posZ:-16,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~-10 ~ redstone_block replace

# Floor 2
setblock ~ ~-20 ~ structure_block{name:"pk_strc:higuru_temple/floor_two_1",posX:-16,posY:0,posZ:-16,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~-19 ~ redstone_block replace

# Pass floor 1 to floor 2
setblock ~6 ~-20 ~6 structure_block{name:"pk_strc:higuru_temple/floor_pass_1",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~6 ~-19 ~6 redstone_block replace

# Floor 3
setblock ~ ~-31 ~ structure_block{name:"pk_strc:higuru_temple/floor_three_1",posX:-16,posY:0,posZ:-16,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~-30 ~ redstone_block replace

# Remove the generation marker
kill @s