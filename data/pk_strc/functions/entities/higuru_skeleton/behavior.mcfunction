# Sounds
# - Randomizer
function pk_core:randomizer/next1
# - Hurting sound
execute if entity @s[nbt={HurtTime:10s}] run function pk_strc:entities/higuru_skeleton/sounds/hurt
# - Ambient sound
execute unless entity @s[scores={AmSoundDelay=0}] run scoreboard players remove @s AmSoundDelay 1
execute if score %PK_RNG_1 value matches ..10 unless entity @s[scores={AmSoundDelay=1..}] if entity @s[nbt={HurtTime:0s}] run function pk_strc:entities/higuru_skeleton/sounds/ambient