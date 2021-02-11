# Dispatch action and behavior depending on mobs
# This will prevent all mobs to be crawled if not necessary

# Common
execute if entity @s[team=!HiddenName] run team join HiddenName @s

# Higuru Skeleton
#execute if entity @s[tag=higuru] run function pk_strc:entities/higuru/behavior
execute if entity @s[tag=higuru_skeleton,tag=!guardian] run function pk_strc:entities/higuru_skeleton/behavior
execute if entity @s[tag=higuru_skeleton,tag=guardian] run function pk_strc:entities/higuru_skeleton/behavior_guardian