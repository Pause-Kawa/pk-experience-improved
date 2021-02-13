# Add tag to the marker
tag @s add PK_triggered
# Retrieve the button pusher and check its current XP
execute as @p[advancements={pk_strc:triggers/press_stone_button = true}] run tag @s add PK_use_ancient_altar
execute as @p[tag=PK_use_ancient_altar] store result score @s currentLevel run xp query @s levels
# If level over 40, continue the process, else run fail
execute if entity @p[tag=PK_use_ancient_altar,scores={currentLevel=40..}] run function pk_strc:mechanics/higuru_temple/ancient_altar/ancient_altar_check_content
execute if entity @p[tag=PK_use_ancient_altar,scores={currentLevel=..39}] run function pk_strc:mechanics/higuru_temple/ancient_altar/fail