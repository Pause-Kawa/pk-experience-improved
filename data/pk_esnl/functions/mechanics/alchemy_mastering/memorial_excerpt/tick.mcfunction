# Check if the memorial excerpt has a thrower or is dropped by a container
execute if entity @s[nbt={Age:0s}] run function pk_esnl:mechanics/alchemy_mastering/memorial_excerpt/store_thrower
# Animation
execute if entity @s[tag=PK_item_has_thrower,nbt={Age:65s}] run function pk_esnl:mechanics/alchemy_mastering/memorial_excerpt/start_animation
# Save teleportation point
execute if entity @s[tag=PK_item_has_thrower,nbt={Age:100s}] run function pk_esnl:mechanics/alchemy_mastering/memorial_excerpt/check_thrower_before_memorized_point_store