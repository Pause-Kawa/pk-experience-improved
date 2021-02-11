# Dispatch Event that occurs when a specified entity dies
# This will prevent every marker to be crawled if not necessary

# Higuru Skeleton
execute if entity @s[nbt={Item:{tag:{higuruSkeleton:1b}}}] run function pk_strc:entities/higuru_skeleton/event_death

# Common
kill @s