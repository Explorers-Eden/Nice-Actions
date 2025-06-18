execute store result storage eden:temp send_coords.x int 1 run data get entity @s Pos[0]
execute store result storage eden:temp send_coords.y int 1 run data get entity @s Pos[1]
execute store result storage eden:temp send_coords.z int 1 run data get entity @s Pos[2]
data modify storage eden:temp send_coords.dimension set from entity @s Dimension

execute if data entity @s {Dimension:"minecraft:overworld"} run data modify storage eden:temp send_coords.dimension set value "Overworld"
execute if data entity @s {Dimension:"minecraft:the_nether"} run data modify storage eden:temp send_coords.dimension set value "The Nether"
execute if data entity @s {Dimension:"minecraft:the_end"} run data modify storage eden:temp send_coords.dimension set value "The End"
execute if data entity @s {Dimension:"eden:astral_plane"} run data modify storage eden:temp send_coords.dimension set value "Astral Plane"
execute if data entity @s {Dimension:"kattersstructures:deep_blue"} run data modify storage eden:temp send_coords.dimension set value "Deep Blue"

data modify storage eden:temp send_coords.12_hour set from storage eden:calendar global.12_hour
data modify storage eden:temp send_coords.24_hour set from storage eden:calendar global.24_hour
data modify storage eden:temp send_coords.minute set from storage eden:calendar global.minute
data modify storage eden:temp send_coords.meridiem set from storage eden:calendar global.meridiem
data modify storage eden:temp send_coords.day set from storage eden:calendar global.day
data modify storage eden:temp send_coords.month_name set from storage eden:calendar global.month_name
data modify storage eden:temp send_coords.year set from storage eden:calendar global.year
data modify storage eden:temp send_coords.weekday set from storage eden:calendar global.weekday

data modify storage eden:temp send_coords.cost set from storage eden:settings nice_actions.send_coords_cost

function nice_actions:send_coords/display_message with storage eden:temp send_coords
