playsound minecraft:entity.skeleton.hurt hostile @a ~ ~ ~ 1 0.7
execute if score %PK_RNG_1 value matches ..250 run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 1 0.75
execute if score %PK_RNG_1 value matches 251..500 run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 1 0.8
execute if score %PK_RNG_1 value matches 501..750 run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 1 0.85
execute if score %PK_RNG_1 value matches 751.. run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 1 0.9