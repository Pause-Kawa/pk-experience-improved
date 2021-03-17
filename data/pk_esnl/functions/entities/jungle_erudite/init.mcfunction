tag @s add PK_jungle_erudite

# Remove default Librarian's Nametag offer
data remove entity @s Offers.Recipes[{sell:{id:"minecraft:name_tag"}}]

# Randomly set two Ancient Tablet offers
function pk_esnl:entities/jungle_erudite/set_ancient_tablet_first_offer
function pk_esnl:entities/jungle_erudite/set_ancient_tablet_second_offer