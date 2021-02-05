# Event that occurs when a specified entity dies
execute if entity @s[nbt={Item:{tag:{higuru:1b}}}] run function pk_strc:entities/higuru/event_death

# Remove the death event marker
kill @s