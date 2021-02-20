tag @s add init
# reposition the hanging point
execute at @s unless block ~ ~1 ~ #pk_core:raycasting_exclude align xyz run tp @s ~0.5 ~-1 ~0.5
# Create a link between the magnet hook user and the AEC
scoreboard players operation @s hookUsingID = @a[tag=PK_player_setting_hook_point] hookUsingID