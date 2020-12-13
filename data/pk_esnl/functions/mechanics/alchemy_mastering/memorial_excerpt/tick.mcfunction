# Directly mark the throwner if the item has been dropped from inventory
execute if entity @s[nbt={Age:0s}] as @p[scores={dropGBPattern=1}] run tag @p add PK_memorial_excerpt_throwner
# Animations
execute if entity @s[nbt={Age:65s}] if entity @a[tag=PK_memorial_excerpt_throwner] run function pk_esnl:mechanics/alchemy_mastering/memorial_excerpt/start_animation
# Save teleportation point
execute if entity @s[nbt={Age:100s}] if entity @a[tag=PK_memorial_excerpt_throwner] run function pk_esnl:mechanics/alchemy_mastering/memorial_excerpt/thrower_memorized_point_store