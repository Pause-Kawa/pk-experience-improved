# Remove the book from the lectern
execute if block ~ ~ ~ lectern[facing=north] run setblock ~ ~ ~ lectern[facing=north] replace
execute if block ~ ~ ~ lectern[facing=east] run setblock ~ ~ ~ lectern[facing=east] replace
execute if block ~ ~ ~ lectern[facing=south] run setblock ~ ~ ~ lectern[facing=south] replace
execute if block ~ ~ ~ lectern[facing=west] run setblock ~ ~ ~ lectern[facing=west] replace
# Remove the marker
kill @s