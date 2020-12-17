# Retrieve the thrower of memorial excerpt
# Executing at @s enable to retrieve easily the memorial excerpt which will be the closest one.
# If the potential thrower is too far away (or disconnected), it won't run
execute as @a[distance=..16] run function pk_esnl:mechanics/alchemy_mastering/memorial_excerpt/retrieve_thrower
# If the thrower has been retrieved, store memorized point
execute if entity @p[tag=PK_memorial_excerpt_thrower] run function pk_esnl:mechanics/alchemy_mastering/memorial_excerpt/thrower_memorized_point_store