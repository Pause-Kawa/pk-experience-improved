# Decrement impetousTimer
execute as @a[scores={impetuousTimer=1..}] run scoreboard players remove @s impetuousTimer 1
# Reset impetuousLevel
execute as @a[scores={impetuousLevel=1..,impetuousTimer=0}] run scoreboard players set @s impetuousLevel 0

# Apply modifiers
execute as @a[scores={impetuousTimer=1..,impetuousLevel=0..}] run attribute @s generic.attack_damage modifier remove 1-1-16-11-1
execute as @a[scores={impetuousLevel=1}] run attribute @s generic.attack_damage modifier add 1-1-16-11-1 "Impetuousity Bonus" 1 add
execute as @a[scores={impetuousLevel=2}] run attribute @s generic.attack_damage modifier add 1-1-16-11-1 "Impetuousity Bonus" 2 add
execute as @a[scores={impetuousLevel=3}] run attribute @s generic.attack_damage modifier add 1-1-16-11-1 "Impetuousity Bonus" 3 add
execute as @a[scores={impetuousTimer=0}] run attribute @s generic.attack_damage modifier remove 1-1-16-11-1

#Animations
function pk_core:randomizer/next1
execute as @a[scores={impetuousLevel=1..2}] if score %PK_RNG_1 value matches ..50 at @s run particle ambient_entity_effect ~ ~ ~ 0.890 0.149 0.001 1 0 normal
execute as @a[scores={impetuousLevel=3..}] if score %PK_RNG_1 value matches ..200 at @s run particle ambient_entity_effect ~ ~ ~ 0.890 0.149 0.001 1 0 normal