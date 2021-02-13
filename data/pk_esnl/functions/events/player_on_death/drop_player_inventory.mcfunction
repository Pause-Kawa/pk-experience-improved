# Security : removing previous block (replace with air) to avoid container block conflict
# Then make the player loot the content
# Drop first player's inventory saved container
setblock ~ 0 ~ minecraft:air
setblock ~ 0 ~ minecraft:yellow_shulker_box
data modify block ~ 0 ~ Items set from storage pk_esnl:player_inventory_first Items
loot spawn ~ ~ ~ mine ~ 0 ~ minecraft:air{drop_contents:1b}
# Drop second player's inventory saved container
setblock ~ 0 ~ minecraft:air
setblock ~ 0 ~ minecraft:yellow_shulker_box
data modify block ~ 0 ~ Items set from storage pk_esnl:player_inventory_second Items
loot spawn ~ ~ ~ mine ~ 0 ~ minecraft:air{drop_contents:1b}