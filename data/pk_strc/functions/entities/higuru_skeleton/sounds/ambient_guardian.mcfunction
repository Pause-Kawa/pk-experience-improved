scoreboard players set @s AmSoundDelay 80
playsound minecraft:entity.skeleton.ambient hostile @a ~ ~ ~ 1 0.7
execute if score %PK_RNG_1 value matches ..250 run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 1 0.1
execute if score %PK_RNG_1 value matches 251..500 run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 1 0.2
execute if score %PK_RNG_1 value matches 501..750 run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 1 0.3
execute if score %PK_RNG_1 value matches 751.. run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 1 0.4